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
         * 前台快速入口。
         */
        hookTopAppUpdate();

        /*
         * 前台可见性快速入口。
         */
        hookVisibleRequested();

        /*
         * 后台判断入口。
         */
        hookCurrentSchedulingGroup();

        module.safeLog(
                Log.INFO,
                "STATE_HOOKS_INSTALL_FINISHED",
                null
        );
    }

    // ============================================================
    // Hook 1：ATMS.updateTopApp(ActivityRecord)
    //
    // 只负责确认前台。
    //
    // 当目标应用成为 top-resumed Activity 所属进程时，
    // 同步输出前台。
    //
    // 当目标应用失去 top 身份时，不做后台判断。
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

                Object result = chain.proceed();

                try {
                    Object service = chain.getThisObject();

                    /*
                     * updateTopApp 执行后，
                     * mTopApp 就是系统更新后的 top WPC。
                     */
                    Object newTopApp = readFieldStrict(
                            service,
                            "mTopApp"
                    );

                    if (newTopApp == READ_FAILED) {
                        reportFieldError();
                        return result;
                    }

                    /*
                     * 只有目标应用成为 top 时才触发前台。
                     *
                     * 目标应用失去 top 身份时不处理，
                     * 避免小窗失焦被判后台。
                     */
                    if (ProcessSnapshot.isTargetWpc(newTopApp)) {

                        publishForeground(
                                "ATMS.updateTopApp",
                                GROUP_UNKNOWN
                        );
                    }

                } catch (Throwable error) {

                    reportCallbackError(error);
                }

                return result;
            });

            module.safeLog(
                    Log.INFO,
                    "TOP_APP_HOOK_OK"
                            + " method=ATMS.updateTopApp"
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
    // Hook 2：ActivityRecord.setVisibleRequested(boolean)
    //
    // 只捕获目标 Activity 从不可见变为可见。
    //
    // 不等待 Task 扫描，也不等待 OOM 调度更新。
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

                Object activity = chain.getThisObject();

                Object beforeValue = readFieldStrict(
                        activity,
                        "mVisibleRequested"
                );

                Object result = chain.proceed();

                try {
                    Object afterValue = readFieldStrict(
                            activity,
                            "mVisibleRequested"
                    );

                    if (!(afterValue instanceof Boolean)) {
                        return result;
                    }

                    boolean visible =
                            ((Boolean) afterValue).booleanValue();

                    if (!visible) {
                        return result;
                    }

                    /*
                     * 已经可见且没有发生变化，
                     * 不需要重复触发。
                     */
                    if (beforeValue instanceof Boolean
                            && ((Boolean) beforeValue).booleanValue()) {

                        return result;
                    }

                    Object wpc = readFieldStrict(
                            activity,
                            "app"
                    );

                    if (wpc == READ_FAILED || wpc == null) {
                        return result;
                    }

                    if (!ProcessSnapshot.isTargetWpc(wpc)) {
                        return result;
                    }

                    /*
                     * 目标应用可见性变为 true。
                     *
                     * 直接更新状态，不等待调度组。
                     */
                    publishForeground(
                            "ActivityRecord.setVisibleRequested",
                            GROUP_UNKNOWN
                    );

                } catch (Throwable error) {

                    reportCallbackError(error);
                }

                return result;
            });

            module.safeLog(
                    Log.INFO,
                    "VISIBLE_REQUESTED_HOOK_OK"
                            + " method=ActivityRecord."
                            + "setVisibleRequested"
                            + " mode=TRUE_ONLY",
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
    // Hook 3：ProcessStateRecord.setCurrentSchedulingGroup(int)
    //
    // 只用于后台确认和前台兜底。
    //
    // group == 0：后台
    // group != 0：前台
    //
    // 前台不再依赖这个 Hook。
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

                    /*
                     * 只监听主进程。
                     *
                     * 避免辅助进程状态覆盖主进程。
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
                            + " backgroundValue=0"
                            + " mode=BACKGROUND_CONFIRM",
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
             * 非 0 组是前台调度组。
             *
             * 这里仅作为兜底。
             * 正常前台应当由 updateTopApp 或
             * setVisibleRequested 更早触发。
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

        /*
         * 状态未变化，不重复输出。
         */
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
         * 状态机在 Hook 回调中同步更新。
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