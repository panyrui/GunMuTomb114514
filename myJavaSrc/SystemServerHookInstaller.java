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

    private static final String TAG_ATMS =
            "com.android.server.wm.ActivityTaskManagerService";

    private static final String TAG_ACTIVITY =
            "com.android.server.wm.ActivityRecord";

    private static final String TAG_ACTIVITY_STATE =
            "com.android.server.wm.ActivityRecord$State";

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

    void install() {

        /*
         * 最早的 Activity 生命周期入口。
         */
        hookActivityState();

        /*
         * Activity 可见性请求入口。
         */
        hookVisibleRequested();

        /*
         * Top-resumed 入口。
         */
        hookTopAppUpdate();

        /*
         * 后台调度组入口。
         */
        hookCurrentSchedulingGroup();

        module.safeLog(
                Log.INFO,
                "STATE_HOOKS_INSTALL_FINISHED",
                null
        );
    }

    // ============================================================
    // Hook 1：ActivityRecord.setState(State, String)
    //
    // 在原方法执行之前判断即将进入的状态。
    //
    // RESUMED 是目标应用进入活动生命周期的直接信号。
    // 不等待原方法完成，也不等待后续 OOM 调度。
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

            if (targetMethod.getReturnType() != void.class) {
                throw new IllegalStateException(
                        "Invalid ActivityRecord.setState return type"
                );
            }

            targetMethod.setAccessible(true);

            module.safeLog(
                    Log.INFO,
                    "ACTIVITY_STATE_METHOD_INIT_OK"
                            + " method=ActivityRecord.setState"
                            + " parameters=State,String",
                    null
            );

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "ACTIVITY_STATE_HOOK_FAILED stage=FIND_METHOD",
                    error
            );

            return;
        }

        try {
            module.hook(targetMethod).intercept(chain -> {

                /*
                 * 第一个参数是即将设置的新状态。
                 *
                 * 必须在 chain.proceed() 之前读取。
                 */
                try {
                    Object nextState = chain.getArg(0);

                    if (nextState instanceof Enum<?>) {

                        String stateName =
                                ((Enum<?>) nextState).name();

                        if ("RESUMED".equals(stateName)) {

                            Object activity =
                                    chain.getThisObject();

                            publishForegroundIfTargetActivity(
                                    activity,
                                    "ActivityRecord.setState(RESUMED)"
                            );
                        }
                    }

                } catch (Throwable error) {

                    reportCallbackError(error);
                }

                /*
                 * 原方法正常执行。
                 */
                return chain.proceed();
            });

            module.safeLog(
                    Log.INFO,
                    "ACTIVITY_STATE_HOOK_OK"
                            + " method=ActivityRecord.setState"
                            + " trigger=RESUMED"
                            + " timing=BEFORE_PROCEED",
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
    // Hook 2：ActivityRecord.setVisibleRequested(boolean)
    //
    // 请求变为可见时立即识别前台。
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

            if (targetMethod.getReturnType() != void.class) {
                throw new IllegalStateException(
                        "Invalid setVisibleRequested return type"
                );
            }

            targetMethod.setAccessible(true);

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "VISIBLE_REQUESTED_HOOK_FAILED stage=FIND_METHOD",
                    error
            );

            return;
        }

        try {
            module.hook(targetMethod).intercept(chain -> {

                try {
                    Object requestedValue = chain.getArg(0);

                    if (!(requestedValue instanceof Boolean)
                            || !((Boolean) requestedValue).booleanValue()) {

                        return chain.proceed();
                    }

                    Object activity = chain.getThisObject();

                    Object oldValue = readFieldStrict(
                            activity,
                            "mVisibleRequested"
                    );

                    /*
                     * 只处理从不可见变为可见。
                     */
                    if (oldValue instanceof Boolean
                            && ((Boolean) oldValue).booleanValue()) {

                        return chain.proceed();
                    }

                    publishForegroundIfTargetActivity(
                            activity,
                            "ActivityRecord.setVisibleRequested(true)"
                    );

                } catch (Throwable error) {

                    reportCallbackError(error);
                }

                return chain.proceed();
            });

            module.safeLog(
                    Log.INFO,
                    "VISIBLE_REQUESTED_HOOK_OK"
                            + " method=ActivityRecord.setVisibleRequested"
                            + " trigger=TRUE"
                            + " timing=BEFORE_PROCEED",
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
    // Hook 3：ATMS.updateTopApp(ActivityRecord)
    //
    // 在原方法执行之前读取即将设置的 Top Activity。
    //
    // 只负责前台，不负责后台。
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

            if (targetMethod.getReturnType() != void.class) {
                throw new IllegalStateException(
                        "Invalid updateTopApp return type"
                );
            }

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
                    Object service = chain.getThisObject();

                    Object nextActivity = chain.getArg(0);

                    /*
                     * updateTopApp(null) 时，
                     * 系统会从 RootWindowContainer
                     * 获取当前 Top-resumed Activity。
                     */
                    if (nextActivity == null) {

                        Object root = readFieldStrict(
                                service,
                                "mRootWindowContainer"
                        );

                        if (root != READ_FAILED && root != null) {

                            nextActivity =
                                    SafeReflection.invokeNoArg(
                                            root,
                                            "getTopResumedActivity"
                                    );
                        }
                    }

                    publishForegroundIfTargetActivity(
                            nextActivity,
                            "ATMS.updateTopApp"
                    );

                } catch (Throwable error) {

                    reportCallbackError(error);
                }

                /*
                 * 原方法继续执行。
                 */
                return chain.proceed();
            });

            module.safeLog(
                    Log.INFO,
                    "TOP_APP_HOOK_OK"
                            + " method=ATMS.updateTopApp"
                            + " timing=BEFORE_PROCEED"
                            + " mode=FOREGROUND_ONLY",
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
    // Hook 4：ProcessStateRecord.setCurrentSchedulingGroup(int)
    //
    // 唯一后台判断入口：
    //
    // 0     = BACKGROUND
    // 非 0  = 非后台
    //
    // 前台快速响应不依赖这个 Hook。
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

            if (targetMethod.getReturnType() != void.class) {
                throw new IllegalStateException(
                        "Invalid scheduling group return type"
                );
            }

            targetMethod.setAccessible(true);

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "SCHEDULING_GROUP_HOOK_FAILED stage=FIND_METHOD",
                    error
            );

            return;
        }

        try {
            module.hook(targetMethod).intercept(chain -> {

                Object stateRecord = chain.getThisObject();

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
                     * 只监听目标应用主进程。
                     */
                    if (!ProcessSnapshot.TARGET_PACKAGE.equals(
                            processName
                    )) {

                        return result;
                    }

                    Object groupValue = readFieldStrict(
                            stateRecord,
                            "mCurSchedGroup"
                    );

                    if (!(groupValue instanceof Number)) {

                        reportSchedulingError();

                        return result;
                    }

                    int group =
                            ((Number) groupValue).intValue();

                    handleSchedulingGroup(group);

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
                            + " backgroundValue=0",
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
    // ActivityRecord 目标应用判断
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
    // 调度组处理
    // ============================================================

    private void handleSchedulingGroup(int group) {

        targetSchedulingGroup = group;

        if (group == SCHED_GROUP_BACKGROUND) {

            publishBackground(
                    "ProcessStateRecord.setCurrentSchedulingGroup",
                    group
            );

        } else {

            /*
             * 非 0 调度组属于非后台状态。
             *
             * 这里仅作为前台兜底，
             * 正常情况下由 Activity 生命周期 Hook
             * 更早完成前台切换。
             */
            publishForeground(
                    "ProcessStateRecord.setCurrentSchedulingGroup",
                    group
            );
        }
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

        String groupText;

        if (eventGroup == GROUP_UNKNOWN) {

            groupText = "unknown";

        } else {

            groupText =
                    eventGroup
                            + "("
                            + getSchedulingGroupName(eventGroup)
                            + ")";
        }

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
         * 状态在 Hook 回调里同步切换。
         * 日志异步输出，不阻塞 system_server。
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