
package com.gunmubei.lsposed;

import android.util.Log;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

final class SystemServerHookInstaller {

    private static final String TAG_CLASS =
            "com.android.server.wm.ActivityTaskManagerService";

    private static final String ACTIVITY_RECORD_CLASS =
            "com.android.server.wm.ActivityRecord";

    private static final String METHOD_NAME =
            "updateTopApp";

    private static final String TOP_APP_FIELD =
            "mTopApp";

    private static final Object READ_FAILED = new Object();

    private final ModuleEntry module;
    private final ClassLoader classLoader;

    private final ThreadPoolExecutor logExecutor;

    private final SimpleDateFormat timeFormat =
            new SimpleDateFormat("HH:mm:ss.SSS", Locale.US);

    private final AtomicBoolean callbackLogged =
            new AtomicBoolean(false);

    private final AtomicBoolean callbackErrorLogged =
            new AtomicBoolean(false);

    private final AtomicBoolean fieldErrorLogged =
            new AtomicBoolean(false);

    SystemServerHookInstaller(
            ModuleEntry module,
            ClassLoader classLoader
    ) {
        this.module = module;
        this.classLoader = classLoader;

        this.logExecutor = new ThreadPoolExecutor(
                1,
                1,
                0L,
                TimeUnit.MILLISECONDS,
                new ArrayBlockingQueue<>(128),
                new ThreadFactory() {
                    @Override
                    public Thread newThread(Runnable runnable) {
                        Thread thread = new Thread(
                                runnable,
                                "GunMuBei-TopAppLog"
                        );
                        thread.setDaemon(true);
                        return thread;
                    }
                },
                new ThreadPoolExecutor.DiscardOldestPolicy()
        );
    }

    void install() {
        hookTopAppUpdate();
    }

    /**
     * Hook:
     * ActivityTaskManagerService.updateTopApp(ActivityRecord)
     *
     * 在原方法执行前读取旧 mTopApp，
     * 原方法执行后读取新 mTopApp。
     *
     * 不修改系统参数，不修改系统返回值。
     */
    private void hookTopAppUpdate() {

        final Method targetMethod;

        try {
            Class<?> serviceClass = Class.forName(
                    TAG_CLASS,
                    false,
                    classLoader
            );

            Class<?> activityRecordClass = Class.forName(
                    ACTIVITY_RECORD_CLASS,
                    false,
                    classLoader
            );

            targetMethod = serviceClass.getDeclaredMethod(
                    METHOD_NAME,
                    activityRecordClass
            );

            if (targetMethod.getReturnType() != void.class) {
                module.safeLog(
                        Log.ERROR,
                        "HOOK_FAILED reason=INVALID_RETURN_TYPE",
                        null
                );
                return;
            }

        } catch (Throwable error) {
            module.safeLog(
                    Log.ERROR,
                    "HOOK_FAILED stage=FIND_METHOD"
                            + " method=" + METHOD_NAME,
                    error
            );
            return;
        }

        try {
            module.hook(targetMethod).intercept(chain -> {

                Object service = chain.getThisObject();

                /*
                 * 必须在原方法执行前读取旧值。
                 * null 是合法状态，READ_FAILED 才表示读取失败。
                 */
                Object oldTopApp = readFieldStrict(
                        service,
                        TOP_APP_FIELD
                );

                /*
                 * 原方法必须正常执行。
                 * 如果原方法抛出异常，保持原有异常行为。
                 */
                Object result = chain.proceed();

                try {
                    Object newTopApp = readFieldStrict(
                            service,
                            TOP_APP_FIELD
                    );

                    handleTopAppChange(
                            oldTopApp,
                            newTopApp
                    );

                    logFirstCallback();

                } catch (Throwable error) {
                    reportCallbackError(error);
                }

                return result;
            });

            module.safeLog(
                    Log.INFO,
                    "HOOK_OK class=" + TAG_CLASS
                            + " method=" + METHOD_NAME
                            + "(ActivityRecord)"
                            + " mode=BEFORE_AFTER",
                    null
            );

        } catch (Throwable error) {
            module.safeLog(
                    Log.ERROR,
                    "HOOK_FAILED stage=REGISTER"
                            + " method=" + METHOD_NAME,
                    error
            );
        }
    }

    /**
     * 根据 mTopApp 的前后变化判断目标应用状态。
     */
    private void handleTopAppChange(
            Object oldTopApp,
            Object newTopApp
    ) {

        if (oldTopApp == READ_FAILED
                || newTopApp == READ_FAILED) {

            reportFieldError();
            return;
        }

        boolean oldTarget =
                ProcessSnapshot.isTargetWpc(oldTopApp);

        boolean newTarget =
                ProcessSnapshot.isTargetWpc(newTopApp);

        /*
         * 目标应用状态没有变化，不产生重复事件。
         */
        if (oldTarget == newTarget) {
            return;
        }

        Object targetWpc = newTarget
                ? newTopApp
                : oldTopApp;

        String status = newTarget
                ? "[前台]"
                : "[后台]";

        StringBuilder message = new StringBuilder(400);

        message.append(
                ProcessSnapshot.describeWpc(
                        status,
                        targetWpc
                )
        );

        message.append(" source=ATMS.updateTopApp");

        message.append(" oldTarget=")
                .append(oldTarget);

        message.append(" newTarget=")
                .append(newTarget);

        message.append(" topNow=")
                .append(describeTopApp(newTopApp));

        /*
         * 时间戳在 Hook 回调内获取。
         * 后续日志线程即使有排队，也不会改变事件时间。
         */
        postLog(
                System.currentTimeMillis(),
                message.toString()
        );
    }

    /**
     * 描述当前 Top App。
     */
    private static String describeTopApp(Object wpc) {

        if (wpc == null) {
            return "null";
        }

        if (wpc == READ_FAILED) {
            return "unavailable";
        }

        String processName =
                SafeReflection.readString(
                        wpc,
                        "mName"
                );

        int uid =
                SafeReflection.readInt(
                        wpc,
                        "mUid",
                        Integer.MIN_VALUE
                );

        int pid =
                SafeReflection.readInt(
                        wpc,
                        "mPid",
                        Integer.MIN_VALUE
                );

        return "process=" + valueOrUnknown(processName)
                + ",uid=" + formatInt(uid)
                + ",pid=" + formatInt(pid)
                + ",wpcId=0x"
                + Integer.toHexString(
                        System.identityHashCode(wpc)
                );
    }

    /**
     * 严格读取字段。
     *
     * 与 SafeReflection.readField 不同，
     * 这里需要区分：
     * 1. 字段真实值为 null。
     * 2. 字段读取失败。
     */
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

    private void logFirstCallback() {

        if (!callbackLogged.compareAndSet(false, true)) {
            return;
        }

        postLog(
                System.currentTimeMillis(),
                "HOOK_CALLBACK method=" + METHOD_NAME
        );
    }

    private void reportFieldError() {

        if (!fieldErrorLogged.compareAndSet(false, true)) {
            return;
        }

        module.safeLog(
                Log.ERROR,
                "HOOK_ERROR stage=READ_TOP_APP_FIELD",
                null
        );
    }

    private void reportCallbackError(Throwable error) {

        if (!callbackErrorLogged.compareAndSet(false, true)) {
            return;
        }

        module.safeLog(
                Log.ERROR,
                "HOOK_ERROR stage=CALLBACK",
                error
        );
    }

    /**
     * 异步输出日志，避免在 system_server 的调用路径中
     * 执行日期格式化和日志输出。
     */
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
             * 日志队列异常不能影响 system_server。
             */
        }
    }

    private static String valueOrUnknown(String value) {
        return value == null || value.isEmpty()
                ? "unknown"
                : value;
    }

    private static String formatInt(int value) {
        return value == Integer.MIN_VALUE
                ? "unknown"
                : Integer.toString(value);
    }
}
