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

    private static final String TAG_ACTIVITY =
            "com.android.server.wm.ActivityRecord";

    private static final String TAG_ACTIVITY_STATE =
            "com.android.server.wm.ActivityRecord$State";

    private static final String TAG_ATMS =
            "com.android.server.wm.ActivityTaskManagerService";

    private static final String TAG_TASK =
            "com.android.server.wm.Task";

    private static final String TAG_TASK_FRAGMENT =
            "com.android.server.wm.TaskFragment";

    private static final String TAG_DISPLAY_CONTENT =
            "com.android.server.wm.DisplayContent";

    private static final String TAG_PROCESS_STATE_RECORD =
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
         * 主要前台快速入口：
         * Task 开始移动到前面时触发。
         */
        hookTaskMoveToFront();

        /*
         * Activity 开始恢复时的快速入口。
         */
        hookResumeTopActivity();

        /*
         * WindowManager 设置目标应用焦点。
         */
        hookDisplayFocusedApp();

        /*
         * Activity 生命周期兜底。
         */
        hookActivityState();

        /*
         * Activity 可见性兜底。
         */
        hookVisibleRequested();

        /*
         * ATMS Top-resumed 兜底。
         */
        hookTopAppUpdate();

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
    // Hook 1：Task.moveToFrontInner
    //
    // 主要前台触发入口。
    //
    // 在系统调整 Task 顺序之前，
    // 获取这个 Task 当前的顶部 Activity。
    // ============================================================

    private void hookTaskMoveToFront() {

        final Method moveMethod;

        final Method topActivityMethod;

        try {
            Class<?> taskClass = Class.forName(
                    TAG_TASK,
                    false,
                    classLoader
            );

            moveMethod = taskClass.getDeclaredMethod(
                    "moveToFrontInner",
                    String.class,
                    taskClass
            );

            topActivityMethod =
                    taskClass.getDeclaredMethod(
                            "topRunningActivityLocked"
                    );

            if (moveMethod.getReturnType() != void.class
                    || topActivityMethod.getReturnType() !=
                    Class.forName(
                            TAG_ACTIVITY,
                            false,
                            classLoader
                    )) {

                throw new IllegalStateException(
                        "Unexpected Task method signature"
                );
            }

            moveMethod.setAccessible(true);
            topActivityMethod.setAccessible(true);

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "TASK_MOVE_TO_FRONT_HOOK_FAILED"
                            + " stage=FIND_METHOD",
                    error
            );

            return;
        }

        try {
            module.hook(moveMethod).intercept(chain -> {

                /*
                 * 必须在原方法执行之前识别。
                 */
                try {
                    Object task = chain.getThisObject();

                    Object activity =
                            topActivityMethod.invoke(task);

                    publishForegroundIfTargetActivity(
                            activity,
                            "Task.moveToFrontInner"
                    );

                } catch (Throwable error) {

                    reportCallbackError(error);
                }

                return chain.proceed();
            });

            module.safeLog(
                    Log.INFO,
                    "TASK_MOVE_TO_FRONT_HOOK_OK"
                            + " method=Task.moveToFrontInner"
                            + " timing=BEFORE_PROCEED",
                    null
            );

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "TASK_MOVE_TO_FRONT_HOOK_FAILED"
                            + " stage=REGISTER",
                    error
            );
        }
    }

    // ============================================================
    // Hook 2：TaskFragment.resumeTopActivity
    //
    // 在真正开始恢复顶部 Activity 时，
    // 直接识别即将恢复的目标 Activity。
    // ============================================================

    private void hookResumeTopActivity() {

        final Method resumeMethod;

        final Method topActivityMethod;

        try {
            Class<?> fragmentClass = Class.forName(
                    TAG_TASK_FRAGMENT,
                    false,
                    classLoader
            );

            Class<?> activityRecordClass = Class.forName(
                    TAG_ACTIVITY,
                    false,
                    classLoader
            );

            Class<?> optionsClass = Class.forName(
                    "android.app.ActivityOptions",
                    false,
                    classLoader
            );

            resumeMethod = fragmentClass.getDeclaredMethod(
                    "resumeTopActivity",
                    activityRecordClass,
                    optionsClass,
                    boolean.class
            );

            topActivityMethod =
                    fragmentClass.getDeclaredMethod(
                            "topRunningActivity",
                            boolean.class
                    );

            if (resumeMethod.getReturnType() != boolean.class
                    || topActivityMethod.getReturnType() !=
                    activityRecordClass) {

                throw new IllegalStateException(
                        "Unexpected TaskFragment method signature"
                );
            }

            resumeMethod.setAccessible(true);
            topActivityMethod.setAccessible(true);

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "RESUME_TOP_ACTIVITY_HOOK_FAILED"
                            + " stage=FIND_METHOD",
                    error
            );

            return;
        }

        try {
            module.hook(resumeMethod).intercept(chain -> {

                try {
                    Object fragment = chain.getThisObject();

                    /*
                     * TaskFragment.resumeTopActivity 内部
                     * 首先也是通过 topRunningActivity(true)
                     * 获取即将恢复的 Activity。
                     *
                     * 这里提前执行同样的查询。
                     */
                    Object activity = topActivityMethod.invoke(
                            fragment,
                            Boolean.TRUE
                    );

                    publishForegroundIfTargetActivity(
                            activity,
                            "TaskFragment.resumeTopActivity"
                    );

                } catch (Throwable error) {

                    reportCallbackError(error);
                }

                return chain.proceed();
            });

            module.safeLog(
                    Log.INFO,
                    "RESUME_TOP_ACTIVITY_HOOK_OK"
                            + " method=TaskFragment.resumeTopActivity"
                            + " timing=BEFORE_PROCEED",
                    null
            );

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "RESUME_TOP_ACTIVITY_HOOK_FAILED"
                            + " stage=REGISTER",
                    error
            );
        }
    }

    // ============================================================
    // Hook 3：DisplayContent.setFocusedApp
    //
    // 只在焦点设置为目标 Activity 时触发前台。
    //
    // 焦点转移到其他应用时不处理，
    // 因为失焦不能证明目标应用已经进入后台。
    // ============================================================

    private void hookDisplayFocusedApp() {

        final Method targetMethod;

        try {
            Class<?> displayClass = Class.forName(
                    TAG_DISPLAY_CONTENT,
                    false,
                    classLoader
            );

            Class<?> activityRecordClass = Class.forName(
                    TAG_ACTIVITY,
                    false,
                    classLoader
            );

            targetMethod = displayClass.getDeclaredMethod(
                    "setFocusedApp",
                    activityRecordClass
            );

            if (targetMethod.getReturnType() != boolean.class) {
                throw new IllegalStateException(
                        "Invalid setFocusedApp return type"
                );
            }

            targetMethod.setAccessible(true);

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "DISPLAY_FOCUSED_APP_HOOK_FAILED"
                            + " stage=FIND_METHOD",
                    error
            );

            return;
        }

        try {
            module.hook(targetMethod).intercept(chain -> {

                try {
                    Object activity = chain.getArg(0);

                    publishForegroundIfTargetActivity(
                            activity,
                            "DisplayContent.setFocusedApp"
                    );

                } catch (Throwable error) {

                    reportCallbackError(error);
                }

                return chain.proceed();
            });

            module.safeLog(
                    Log.INFO,
                    "DISPLAY_FOCUSED_APP_HOOK_OK"
                            + " method=DisplayContent.setFocusedApp"
                            + " mode=TARGET_ONLY",
                    null
            );

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "DISPLAY_FOCUSED_APP_HOOK_FAILED"
                            + " stage=REGISTER",
                    error
            );
        }
    }

    // ============================================================
    // Hook 4：ActivityRecord.setState
    //
    // RESUMED 时前台兜底。
    // ============================================================

    private void hookActivityState() {

        final Method targetMethod;

        try {
            Class<?> activityRecordClass = Class.forName(
                    TAG_ACTIVITY,
                    false,
                    classLoader
            );

            Class<?> stateClass = Class.forName(
                    TAG_ACTIVITY_STATE,
                    false,
                    classLoader
            );

            targetMethod = activityRecordClass.getDeclaredMethod(
                    "setState",
                    stateClass,
                    String.class
            );

            targetMethod.setAccessible(true);

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "ACTIVITY_STATE_HOOK_FAILED"
                            + " stage=FIND_METHOD",
                    error
            );

            return;
        }

        try {
            module.hook(targetMethod).intercept(chain -> {

                try {
                    Object nextState = chain.getArg(0);

                    if (nextState instanceof Enum<?>
                            && "RESUMED".equals(
                                    ((Enum<?>) nextState).name()
                            )) {

                        publishForegroundIfTargetActivity(
                                chain.getThisObject(),
                                "ActivityRecord.setState(RESUMED)"
                        );
                    }

                } catch (Throwable error) {

                    reportCallbackError(error);
                }

                return chain.proceed();
            });

            module.safeLog(
                    Log.INFO,
                    "ACTIVITY_STATE_HOOK_OK"
                            + " method=ActivityRecord.setState",
                    null
            );

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "ACTIVITY_STATE_HOOK_FAILED stage=REGISTER",
                    error
            );
        }
    }

    // ============================================================
    // Hook 5：ActivityRecord.setVisibleRequested
    // ============================================================

    private void hookVisibleRequested() {

        final Method targetMethod;

        try {
            Class<?> activityRecordClass = Class.forName(
                    TAG_ACTIVITY,
                    false,
                    classLoader
            );

            targetMethod = activityRecordClass.getDeclaredMethod(
                    "setVisibleRequested",
                    boolean.class
            );

            targetMethod.setAccessible(true);

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "VISIBLE_REQUESTED_HOOK_FAILED"
                            + " stage=FIND_METHOD",
                    error
            );

            return;
        }

        try {
            module.hook(targetMethod).intercept(chain -> {

                try {
                    Object requested = chain.getArg(0);

                    if (requested instanceof Boolean
                            && ((Boolean) requested).booleanValue()) {

                        publishForegroundIfTargetActivity(
                                chain.getThisObject(),
                                "ActivityRecord.setVisibleRequested(true)"
                        );
                    }

                } catch (Throwable error) {

                    reportCallbackError(error);
                }

                return chain.proceed();
            });

            module.safeLog(
                    Log.INFO,
                    "VISIBLE_REQUESTED_HOOK_OK",
                    null
            );

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "VISIBLE_REQUESTED_HOOK_FAILED stage=REGISTER",
                    error
            );
        }
    }

    // ============================================================
    // Hook 6：ATMS.updateTopApp
    //
    // 前台兜底。
    // ============================================================

    private void hookTopAppUpdate() {

        final Method targetMethod;

        try {
            Class<?> activityRecordClass = Class.forName(
                    TAG_ACTIVITY,
                    false,
                    classLoader
            );

            Class<?> serviceClass = Class.forName(
                    TAG_ATMS,
                    false,
                    classLoader
            );

            targetMethod = serviceClass.getDeclaredMethod(
                    "updateTopApp",
                    activityRecordClass
            );

            targetMethod.setAccessible(true);

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "TOP_APP_HOOK_FAILED stage=FIND_METHOD",
                    error
            );

            return;
        }

        try {
            module.hook(targetMethod).intercept(chain -> {

                try {
                    Object activity = chain.getArg(0);

                    if (activity == null) {

                        Object root = readFieldStrict(
                                chain.getThisObject(),
                                "mRootWindowContainer"
                        );

                        if (root != READ_FAILED && root != null) {

                            activity =
                                    SafeReflection.invokeNoArg(
                                            root,
                                            "getTopResumedActivity"
                                    );
                        }
                    }

                    publishForegroundIfTargetActivity(
                            activity,
                            "ATMS.updateTopApp"
                    );

                } catch (Throwable error) {

                    reportCallbackError(error);
                }

                return chain.proceed();
            });

            module.safeLog(
                    Log.INFO,
                    "TOP_APP_HOOK_OK"
                            + " method=ATMS.updateTopApp",
                    null
            );

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "TOP_APP_HOOK_FAILED stage=REGISTER",
                    error
            );
        }
    }

    // ============================================================
    // Hook 7：ProcessStateRecord.setCurrentSchedulingGroup
    //
    // 只在真正发生调度组变化时发布。
    //
    // 非 0 -> 0：后台
    // 0 -> 非 0：前台兜底
    //
    // 0 -> 0：忽略
    // ============================================================

    private void hookCurrentSchedulingGroup() {

        final Method targetMethod;

        try {
            Class<?> stateRecordClass = Class.forName(
                    TAG_PROCESS_STATE_RECORD,
                    false,
                    classLoader
            );

            targetMethod = stateRecordClass.getDeclaredMethod(
                    "setCurrentSchedulingGroup",
                    int.class
            );

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
                 * 读取旧值。
                 */
                Object oldGroupValue = readFieldStrict(
                        stateRecord,
                        "mCurSchedGroup"
                );

                /*
                 * 读取目标值。
                 */
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

                    String processName =
                            SafeReflection.readString(
                                    processRecord,
                                    "processName"
                            );

                    /*
                     * 仅处理主进程。
                     */
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
                     * 没有实际变化，不触发。
                     */
                    if (oldGroup == newGroup) {
                        return result;
                    }

                    if (newGroup == SCHED_GROUP_BACKGROUND) {

                        /*
                         * 只有从非后台切换到后台，
                         * 才认定为进入后台。
                         */
                        publishBackground(
                                "ProcessStateRecord.setCurrentSchedulingGroup",
                                newGroup
                        );

                    } else {

                        /*
                         * 仅作为前台兜底。
                         */
                        publishForeground(
                                "ProcessStateRecord.setCurrentSchedulingGroup",
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
                            + " method=ProcessStateRecord."
                            + "setCurrentSchedulingGroup"
                            + " transitionOnly=true",
                    null
            );

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "SCHEDULING_GROUP_HOOK_FAILED stage=REGISTER",
                    error
            );
        }
    }

    // ============================================================
    // 目标 Activity 判断
    // ============================================================

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

        if (!ProcessSnapshot.isTargetWpc(wpc)) {
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
                        : eventGroup
                                + "("
                                + getSchedulingGroupName(eventGroup)
                                + ")";

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

        /*
         * 状态切换在 Hook 回调中同步完成。
         * 仅日志写入异步执行。
         */
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

    private static String getSchedulingGroupName(int group) {

        switch (group) {

            case 0:
                return "BACKGROUND";

            case 1:
                return "RESTRICTED";

            case 2:
                return "DEFAULT";

            case 3:
                return "TOP_APP";

            case 4:
                return "TOP_APP_BOUND";

            default:
                return "NON_BACKGROUND";
        }
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