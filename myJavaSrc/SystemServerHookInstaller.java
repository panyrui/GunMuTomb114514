package com.gunmubei.lsposed;

import android.util.Log;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

final class SystemServerHookInstaller {

    private static final String TAG_TASK_FRAGMENT =
            "com.android.server.wm.TaskFragment";

    private static final String TAG_ACTIVITY =
            "com.android.server.wm.ActivityRecord";

    private static final String TAG_SUPERVISOR =
            "com.android.server.wm.ActivityTaskSupervisor";

    private static final String TAG_WPC =
            "com.android.server.wm.WindowProcessController";

    private static final String TAG_PROCESS_STATE =
            "com.android.server.am.ProcessStateRecord";

    private static final Object READ_FAILED = new Object();

    private static final int SCHED_GROUP_BACKGROUND = 0;

    private static final int STATE_UNKNOWN = -1;
    private static final int STATE_FOREGROUND = 0;
    private static final int STATE_BACKGROUND = 1;

    private static final int GROUP_UNKNOWN = Integer.MIN_VALUE;

    private final ModuleEntry module;

    private final ClassLoader classLoader;

    private final AtomicInteger lastReportedState =
            new AtomicInteger(STATE_UNKNOWN);

    private final AtomicBoolean callbackErrorLogged =
            new AtomicBoolean(false);

    private final AtomicBoolean fieldErrorLogged =
            new AtomicBoolean(false);

    private final AtomicBoolean schedulingErrorLogged =
            new AtomicBoolean(false);

    private final ThreadPoolExecutor logExecutor;

    private final java.text.SimpleDateFormat timeFormat =
            new java.text.SimpleDateFormat(
                    "HH:mm:ss.SSS",
                    Locale.US
            );

    private volatile int targetSchedulingGroup =
            GROUP_UNKNOWN;

    SystemServerHookInstaller(
            ModuleEntry module,
            ClassLoader classLoader
    ) {
        this.module = module;
        this.classLoader = classLoader;

        logExecutor = new ThreadPoolExecutor(
                1,
                1,
                0L,
                TimeUnit.MILLISECONDS,
                new ArrayBlockingQueue<>(32),
                new ThreadFactory() {
                    @Override
                    public Thread newThread(Runnable runnable) {
                        Thread thread = new Thread(
                                runnable,
                                "GunMuBei-StateLog"
                        );

                        thread.setDaemon(true);

                        return thread;
                    }
                },
                new ThreadPoolExecutor.DiscardOldestPolicy()
        );
    }

    // ============================================================
    // 安装
    // ============================================================

    void install() {

        /*
         * 最直接的 Activity resumed 变化入口。
         */
        hookSetResumedActivity();

        /*
         * Top-resumed 状态变化入口。
         */
        hookUpdateTopResumedActivity();

        /*
         * OOM 更新之前的关键快速入口。
         */
        hookAddToPendingTop();

        /*
         * 后台调度组确认。
         */
        hookCurrentSchedulingGroup();

        module.safeLog(
                Log.INFO,
                "STATE_HOOKS_INSTALL_FINISHED",
                null
        );
    }

    // ============================================================
    // Hook 1：
    // TaskFragment.setResumedActivity(ActivityRecord, String)
    //
    // 该方法内部先更新 mResumedActivity，
    // 然后才调用 ActivityTaskSupervisor
    // .updateTopResumedActivityIfNeeded()。
    //
    // 因此在这里前置识别目标 Activity，
    // 不需要等待后续 OOM 调度。
    // ============================================================

    private void hookSetResumedActivity() {

        final Method targetMethod;

        try {
            Class<?> fragmentClass = Class.forName(
                    TAG_TASK_FRAGMENT,
                    false,
                    classLoader
            );

            Class<?> activityClass = Class.forName(
                    TAG_ACTIVITY,
                    false,
                    classLoader
            );

            targetMethod = fragmentClass.getDeclaredMethod(
                    "setResumedActivity",
                    activityClass,
                    String.class
            );

            if (targetMethod.getReturnType() != void.class) {
                throw new IllegalStateException(
                        "Invalid setResumedActivity return type"
                );
            }

            targetMethod.setAccessible(true);

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "SET_RESUMED_ACTIVITY_HOOK_FAILED"
                            + " stage=FIND_METHOD",
                    error
            );

            return;
        }

        try {
            module.hook(targetMethod).intercept(chain -> {

                try {
                    Object activity = chain.getArg(0);

                    /*
                     * null 表示清除当前 Resumed Activity，
                     * 不代表目标应用进入前台。
                     */
                    publishForegroundIfTargetActivity(
                            activity,
                            "TaskFragment.setResumedActivity"
                    );

                } catch (Throwable error) {

                    reportCallbackError(error);
                }

                return chain.proceed();
            });

            module.safeLog(
                    Log.INFO,
                    "SET_RESUMED_ACTIVITY_HOOK_OK"
                            + " method=TaskFragment.setResumedActivity"
                            + " timing=BEFORE_PROCEED",
                    null
            );

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "SET_RESUMED_ACTIVITY_HOOK_FAILED"
                            + " stage=REGISTER",
                    error
            );
        }
    }

    // ============================================================
    // Hook 2：
    // ActivityTaskSupervisor.updateTopResumedActivityIfNeeded
    //
    // 在原方法执行之前，从当前 RootWindowContainer
    // 获取系统即将使用的 Top Display Focused Root Task，
    // 再获取它的 Top Resumed Activity。
    //
    // 这个检查发生在原方法内部 updateOomAdj() 之前。
    // ============================================================

    private void hookUpdateTopResumedActivity() {

        final Method targetMethod;

        try {
            Class<?> supervisorClass = Class.forName(
                    TAG_SUPERVISOR,
                    false,
                    classLoader
            );

            targetMethod =
                    supervisorClass.getDeclaredMethod(
                            "updateTopResumedActivityIfNeeded",
                            String.class
                    );

            if (targetMethod.getReturnType() != void.class) {
                throw new IllegalStateException(
                        "Invalid updateTopResumedActivityIfNeeded return type"
                );
            }

            targetMethod.setAccessible(true);

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "UPDATE_TOP_RESUMED_HOOK_FAILED"
                            + " stage=FIND_METHOD",
                    error
            );

            return;
        }

        try {
            module.hook(targetMethod).intercept(chain -> {

                try {
                    Object supervisor = chain.getThisObject();

                    Object root = readFieldStrict(
                            supervisor,
                            "mRootWindowContainer"
                    );

                    if (root == READ_FAILED || root == null) {
                        return chain.proceed();
                    }

                    /*
                     * 获取系统当前 Top Display Focused Root Task。
                     */
                    Object topRootTask =
                            SafeReflection.invokeNoArg(
                                    root,
                                    "getTopDisplayFocusedRootTask"
                            );

                    if (topRootTask == null) {
                        return chain.proceed();
                    }

                    /*
                     * 获取该 Task 的 Top Resumed Activity。
                     */
                    Object activity =
                            SafeReflection.invokeNoArg(
                                    topRootTask,
                                    "getTopResumedActivity"
                            );

                    publishForegroundIfTargetActivity(
                            activity,
                            "ActivityTaskSupervisor."
                                    + "updateTopResumedActivityIfNeeded"
                    );

                } catch (Throwable error) {

                    reportCallbackError(error);
                }

                return chain.proceed();
            });

            module.safeLog(
                    Log.INFO,
                    "UPDATE_TOP_RESUMED_HOOK_OK"
                            + " timing=BEFORE_PROCEED",
                    null
            );

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "UPDATE_TOP_RESUMED_HOOK_FAILED"
                            + " stage=REGISTER",
                    error
            );
        }
    }

    // ============================================================
    // Hook 3：
    // WindowProcessController.addToPendingTop()
    //
    // 这是本次最重要的快速入口。
    //
    // 仓库中的真实调用顺序：
    //
    // 1. ActivityTaskSupervisor 更新 mTopResumedActivity
    // 2. 调用目标 WPC.addToPendingTop()
    // 3. 调用 ActivityTaskManagerService.updateOomAdj()
    // 4. 后续才调用 updateTopApp()
    //
    // 因此在这里识别目标进程，
    // 可以避开 updateOomAdj() 的耗时。
    // ============================================================

    private void hookAddToPendingTop() {

        final Method targetMethod;

        try {
            Class<?> wpcClass = Class.forName(
                    TAG_WPC,
                    false,
                    classLoader
            );

            targetMethod = wpcClass.getDeclaredMethod(
                    "addToPendingTop"
            );

            if (targetMethod.getReturnType() != void.class) {
                throw new IllegalStateException(
                        "Invalid addToPendingTop return type"
                );
            }

            targetMethod.setAccessible(true);

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "ADD_PENDING_TOP_HOOK_FAILED"
                            + " stage=FIND_METHOD",
                    error
            );

            return;
        }

        try {
            module.hook(targetMethod).intercept(chain -> {

                try {
                    /*
                     * addToPendingTop() 的 this 就是目标 WPC。
                     */
                    Object wpc = chain.getThisObject();

                    if (isTargetMainWpc(wpc)) {

                        publishForeground(
                                "WindowProcessController.addToPendingTop",
                                GROUP_UNKNOWN
                        );
                    }

                } catch (Throwable error) {

                    reportCallbackError(error);
                }

                /*
                 * 继续执行系统原方法。
                 */
                return chain.proceed();
            });

            module.safeLog(
                    Log.INFO,
                    "ADD_PENDING_TOP_HOOK_OK"
                            + " timing=BEFORE_PROCEED",
                    null
            );

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "ADD_PENDING_TOP_HOOK_FAILED"
                            + " stage=REGISTER",
                    error
            );
        }
    }

    // ============================================================
    // Hook 4：
    // ProcessStateRecord.setCurrentSchedulingGroup(int)
    //
    // 只负责确认后台：
    //
    // old != 0 && new == 0
    //
    // 非 0 不再负责前台正常触发。
    // 前台已由上面三个更早的入口处理。
    // ============================================================

    private void hookCurrentSchedulingGroup() {

        final Method targetMethod;

        try {
            Class<?> stateClass = Class.forName(
                    TAG_PROCESS_STATE,
                    false,
                    classLoader
            );

            targetMethod = stateClass.getDeclaredMethod(
                    "setCurrentSchedulingGroup",
                    int.class
            );

            if (targetMethod.getReturnType() != void.class) {
                throw new IllegalStateException(
                        "Invalid scheduling group return type"
                );
            }

            targetMethod.setAccessible(true);

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "SCHEDULING_GROUP_HOOK_FAILED"
                            + " stage=FIND_METHOD",
                    error
            );

            return;
        }

        try {
            module.hook(targetMethod).intercept(chain -> {

                Object stateRecord = chain.getThisObject();

                /*
                 * 在原方法执行前保存旧值。
                 */
                Object oldGroupValue = readFieldStrict(
                        stateRecord,
                        "mCurSchedGroup"
                );

                Object newGroupValue = chain.getArg(0);

                Object processRecord = readFieldStrict(
                        stateRecord,
                        "mApp"
                );

                Object result = chain.proceed();

                try {
                    if (processRecord == READ_FAILED
                            || processRecord == null) {

                        return result;
                    }

                    if (!ProcessSnapshot.isTargetProcessRecord(
                            processRecord
                    )) {

                        return result;
                    }

                    /*
                     * 只监控主进程。
                     */
                    String processName =
                            SafeReflection.readString(
                                    processRecord,
                                    "processName"
                            );

                    if (!ProcessSnapshot.TARGET_PACKAGE.equals(
                            processName
                    )) {

                        return result;
                    }

                    if (!(oldGroupValue instanceof Number)
                            || !(newGroupValue instanceof Number)) {

                        reportSchedulingError();

                        return result;
                    }

                    int oldGroup =
                            ((Number) oldGroupValue).intValue();

                    int newGroup =
                            ((Number) newGroupValue).intValue();

                    targetSchedulingGroup = newGroup;

                    /*
                     * 没有发生调度组变化，不触发。
                     */
                    if (oldGroup == newGroup) {
                        return result;
                    }

                    /*
                     * 只有从非后台组切换为后台组，
                     * 才确认进入后台。
                     */
                    if (newGroup == SCHED_GROUP_BACKGROUND) {

                        publishBackground(
                                "ProcessStateRecord."
                                        + "setCurrentSchedulingGroup",
                                newGroup
                        );
                    }

                } catch (Throwable error) {

                    reportCallbackError(error);
                }

                return result;
            });

            module.safeLog(
                    Log.INFO,
                    "SCHEDULING_GROUP_HOOK_OK"
                            + " backgroundValue=0"
                            + " mode=BACKGROUND_ONLY",
                    null
            );

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "SCHEDULING_GROUP_HOOK_FAILED"
                            + " stage=REGISTER",
                    error
            );
        }
    }

    // ============================================================
    // 目标进程判断
    // ============================================================

    private boolean isTargetMainWpc(Object wpc) {

        if (wpc == null) {
            return false;
        }

        if (!ProcessSnapshot.isTargetWpc(wpc)) {
            return false;
        }

        /*
         * 只认主进程，不让辅助进程覆盖状态。
         */
        String processName =
                SafeReflection.readString(
                        wpc,
                        "mName"
                );

        return ProcessSnapshot.TARGET_PACKAGE.equals(
                processName
        );
    }

    private void publishForegroundIfTargetActivity(
            Object activity,
            String source
    ) {

        if (activity == null) {
            return;
        }

        Object wpc = readFieldStrict(
                activity,
                "app"
        );

        if (wpc == READ_FAILED || wpc == null) {
            return;
        }

        if (!isTargetMainWpc(wpc)) {
            return;
        }

        publishForeground(
                source,
                GROUP_UNKNOWN
        );
    }

    // ============================================================
    // 状态发布
    // ============================================================

    private void publishForeground(
            String source,
            int group
    ) {

        publishState(
                STATE_FOREGROUND,
                source,
                group
        );
    }

    private void publishBackground(
            String source,
            int group
    ) {

        publishState(
                STATE_BACKGROUND,
                source,
                group
        );
    }

    private void publishState(
            int state,
            String source,
            int eventGroup
    ) {

        int previous = lastReportedState.getAndSet(state);

        if (previous == state) {
            return;
        }

        String label = state == STATE_FOREGROUND
                ? "[前台]"
                : "[后台]";

        String groupText =
                eventGroup == GROUP_UNKNOWN
                        ? "unknown"
                        : Integer.toString(eventGroup);

        String message =
                label
                        + " package="
                        + ProcessSnapshot.TARGET_PACKAGE
                        + " schedGroup="
                        + groupText
                        + " lastSchedGroup="
                        + formatGroup(targetSchedulingGroup)
                        + " source="
                        + source;

        postLog(
                System.currentTimeMillis(),
                message
        );
    }

    private static String formatGroup(int group) {

        return group == GROUP_UNKNOWN
                ? "unknown"
                : Integer.toString(group);
    }

    // ============================================================
    // 严格反射
    // ============================================================

    private static Object readFieldStrict(
            Object target,
            String fieldName
    ) {

        if (target == null
                || fieldName == null
                || fieldName.isEmpty()) {

            return READ_FAILED;
        }

        Class<?> current = target.getClass();

        while (current != null) {

            try {
                Field field =
                        current.getDeclaredField(fieldName);

                try {
                    field.setAccessible(true);

                    return field.get(target);

                } catch (
                        IllegalAccessException
                        | RuntimeException
                        | LinkageError error
                ) {

                    return READ_FAILED;
                }

            } catch (NoSuchFieldException ignored) {

                current = current.getSuperclass();

            } catch (
                    RuntimeException
                    | LinkageError error
            ) {

                return READ_FAILED;
            }
        }

        return READ_FAILED;
    }

    // ============================================================
    // 错误处理
    // ============================================================

    private void reportFieldError() {

        if (!fieldErrorLogged.compareAndSet(false, true)) {
            return;
        }

        module.safeLog(
                Log.ERROR,
                "STATE_FIELD_READ_FAILED",
                null
        );
    }

    private void reportCallbackError(Throwable error) {

        if (!callbackErrorLogged.compareAndSet(false, true)) {
            return;
        }

        module.safeLog(
                Log.ERROR,
                "STATE_CALLBACK_ERROR",
                error
        );
    }

    private void reportSchedulingError() {

        if (!schedulingErrorLogged.compareAndSet(false, true)) {
            return;
        }

        module.safeLog(
                Log.ERROR,
                "SCHEDULING_GROUP_READ_FAILED",
                null
        );
    }

    // ============================================================
    // 异步日志
    // ============================================================

    private void postLog(
            long eventTime,
            String message
    ) {

        try {
            logExecutor.execute(() -> {

                try {
                    String timestamp =
                            timeFormat.format(
                                    new Date(eventTime)
                            );

                    module.safeLog(
                            Log.INFO,
                            timestamp + " " + message,
                            null
                    );

                } catch (Throwable ignored) {
                }
            });

        } catch (RuntimeException ignored) {
            /*
             * 日志异常不能影响 system_server。
             */
        }
    }
}