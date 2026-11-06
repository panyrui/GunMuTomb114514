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

    private static final String TAG_PROCESS_STATE_RECORD =
            "com.android.server.am.ProcessStateRecord";

    /*
     * ProcessList.smali 中确认：
     *
     * SCHED_GROUP_BACKGROUND = 0
     * SCHED_GROUP_RESTRICTED = 1
     * SCHED_GROUP_DEFAULT = 2
     * SCHED_GROUP_TOP_APP = 3
     * SCHED_GROUP_TOP_APP_BOUND = 4
     *
     * 本模块只区分：
     *
     * 0     = 后台
     * 非 0  = 前台
     */
    private static final int SCHED_GROUP_BACKGROUND = 0;

    private static final int STATE_UNKNOWN = -1;
    private static final int STATE_FOREGROUND = 0;
    private static final int STATE_BACKGROUND = 1;

    private static final Object READ_FAILED = new Object();

    private final ModuleEntry module;

    private final ClassLoader classLoader;

    private final AtomicInteger lastReportedState =
            new AtomicInteger(STATE_UNKNOWN);

    private final AtomicBoolean callbackErrorLogged =
            new AtomicBoolean(false);

    private final AtomicBoolean fieldErrorLogged =
            new AtomicBoolean(false);

    private final AtomicBoolean groupMethodErrorLogged =
            new AtomicBoolean(false);

    private final ThreadPoolExecutor logExecutor;

    private final java.text.SimpleDateFormat timeFormat =
            new java.text.SimpleDateFormat(
                    "HH:mm:ss.SSS",
                    Locale.US
            );

    private volatile Class<?> processStateRecordClass;

    private volatile Method currentSchedulingGroupMethod;

    private volatile int targetSchedulingGroup =
            Integer.MIN_VALUE;

    private volatile boolean targetBackground;

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

        initializeClasses();

        hookCurrentSchedulingGroup();
    }

    // ============================================================
    // 初始化
    // ============================================================

    private void initializeClasses() {

        try {
            processStateRecordClass = Class.forName(
                    TAG_PROCESS_STATE_RECORD,
                    false,
                    classLoader
            );

            module.safeLog(
                    Log.INFO,
                    "PROCESS_STATE_RECORD_CLASS_INIT_OK",
                    null
            );

        } catch (Throwable error) {

            processStateRecordClass = null;

            module.safeLog(
                    Log.ERROR,
                    "PROCESS_STATE_RECORD_CLASS_INIT_FAILED",
                    error
            );

            return;
        }

        try {
            Method method =
                    processStateRecordClass.getDeclaredMethod(
                            "setCurrentSchedulingGroup",
                            int.class
                    );

            if (method.getReturnType() != void.class) {
                throw new IllegalStateException(
                        "Unexpected return type: "
                                + method.getReturnType()
                );
            }

            method.setAccessible(true);

            currentSchedulingGroupMethod = method;

            module.safeLog(
                    Log.INFO,
                    "CURRENT_SCHEDULING_GROUP_METHOD_INIT_OK"
                            + " method=ProcessStateRecord."
                            + "setCurrentSchedulingGroup"
                            + " parameter=int",
                    null
            );

        } catch (Throwable error) {

            currentSchedulingGroupMethod = null;

            module.safeLog(
                    Log.ERROR,
                    "CURRENT_SCHEDULING_GROUP_METHOD_INIT_FAILED",
                    error
            );
        }
    }

    // ============================================================
    // Hook：ProcessStateRecord.setCurrentSchedulingGroup(int)
    // ============================================================

    private void hookCurrentSchedulingGroup() {

        if (currentSchedulingGroupMethod == null) {

            module.safeLog(
                    Log.ERROR,
                    "SCHEDULING_GROUP_HOOK_SKIPPED"
                            + " reason=METHOD_MISSING",
                    null
            );

            return;
        }

        try {
            module.hook(
                    currentSchedulingGroupMethod
            ).intercept(chain -> {

                Object stateRecord = chain.getThisObject();

                /*
                 * mApp 是 ProcessStateRecord 对应的
                 * ProcessRecord。
                 *
                 * 在执行原方法前取得对象引用。
                 */
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

                    /*
                     * 先确认属于目标应用。
                     */
                    if (!ProcessSnapshot.isTargetProcessRecord(
                            processRecord
                    )) {

                        return result;
                    }

                    /*
                     * 只使用目标应用主进程。
                     *
                     * 不让同一应用的辅助进程调度组
                     * 覆盖主进程的前后台判断。
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

                    /*
                     * 原方法已经执行完成。
                     *
                     * 直接读取它刚刚更新的 mCurSchedGroup，
                     * 不依赖 chain 参数接口。
                     */
                    Object groupValue = readFieldStrict(
                            stateRecord,
                            "mCurSchedGroup"
                    );

                    if (!(groupValue instanceof Number)) {

                        reportFieldError();

                        return result;
                    }

                    int schedulingGroup =
                            ((Number) groupValue).intValue();

                    handleSchedulingGroupChange(
                            schedulingGroup,
                            processName
                    );

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
                            + " backgroundValue="
                            + SCHED_GROUP_BACKGROUND
                            + " mode=BACKGROUND_ONLY",
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
    // 前后台判断
    // ============================================================

    private void handleSchedulingGroupChange(
            int schedulingGroup,
            String processName
    ) {

        targetSchedulingGroup = schedulingGroup;

        /*
         * 唯一判定规则：
         *
         * group == 0：后台
         * group != 0：前台
         *
         * 不考虑 top-app 身份。
         * 不考虑 Task visibility。
         * 不考虑 ActivityRecord 可见性。
         */
        boolean background =
                schedulingGroup == SCHED_GROUP_BACKGROUND;

        targetBackground = background;

        int state = background
                ? STATE_BACKGROUND
                : STATE_FOREGROUND;

        int previous = lastReportedState.getAndSet(state);

        /*
         * 同一状态不重复输出。
         */
        if (previous == state) {
            return;
        }

        String label = background
                ? "[后台]"
                : "[前台]";

        String message =
                label
                        + " package="
                        + ProcessSnapshot.TARGET_PACKAGE
                        + " process="
                        + processName
                        + " schedGroup="
                        + schedulingGroup
                        + " schedGroupName="
                        + getSchedulingGroupName(
                                schedulingGroup
                        )
                        + " source="
                        + "ProcessStateRecord.setCurrentSchedulingGroup";

        postLog(
                System.currentTimeMillis(),
                message
        );
    }

    private String getSchedulingGroupName(int group) {

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
    // 反射
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
                "SCHEDULING_GROUP_FIELD_READ_FAILED",
                null
        );
    }

    private void reportCallbackError(Throwable error) {

        if (!callbackErrorLogged.compareAndSet(false, true)) {
            return;
        }

        module.safeLog(
                Log.ERROR,
                "SCHEDULING_GROUP_CALLBACK_ERROR",
                error
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