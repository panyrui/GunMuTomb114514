
package com.gunmubei.lsposed;

import android.util.Log;

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

    private static final String PROCESS_STATE =
            "com.android.server.am.ProcessStateRecord";

    private static final String METHOD_NAME =
            "setHasForegroundActivities";

    private final ModuleEntry module;
    private final ClassLoader classLoader;

    private final ThreadPoolExecutor logExecutor;

    private final SimpleDateFormat timeFormat =
            new SimpleDateFormat("HH:mm:ss.SSS", Locale.US);

    /*
     * 诊断日志只输出一次，避免高频调用刷屏。
     */
    private final AtomicBoolean callbackLogged =
            new AtomicBoolean(false);

    private final AtomicBoolean targetLogged =
            new AtomicBoolean(false);

    private final AtomicBoolean callbackErrorLogged =
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
                new ArrayBlockingQueue<>(256),
                new ThreadFactory() {

                    @Override
                    public Thread newThread(Runnable runnable) {

                        Thread thread = new Thread(
                                runnable,
                                "GunMuBei-ObserverLog"
                        );

                        thread.setDaemon(true);

                        try {
                            thread.setPriority(
                                    Thread.NORM_PRIORITY
                            );
                        } catch (SecurityException ignored) {
                        }

                        return thread;
                    }
                },
                new ThreadPoolExecutor.DiscardOldestPolicy()
        );
    }

    void install() {
        hookForegroundActivityState();
    }

    /**
     * Hook ProcessStateRecord.setHasForegroundActivities(boolean)。
     *
     * 观察 AMS 对进程前台 Activity 状态的更新。
     * 不修改参数、不改变原方法行为。
     */
    private void hookForegroundActivityState() {

        final Method targetMethod;

        /*
         * 第一阶段：定位目标方法。
         */
        try {

            Class<?> ownerClass = Class.forName(
                    PROCESS_STATE,
                    false,
                    classLoader
            );

            targetMethod = findTargetMethod(ownerClass);

            if (targetMethod == null) {

                module.safeLog(
                        Log.ERROR,
                        "HOOK_FAILED reason=METHOD_NOT_FOUND"
                                + " class=" + PROCESS_STATE
                                + " method=" + METHOD_NAME,
                        null
                );

                return;
            }

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "HOOK_FAILED stage=FIND_METHOD",
                    error
            );

            return;
        }

        /*
         * 第二阶段：注册 Hook。
         */
        try {

            module.hook(targetMethod).intercept(chain -> {

                String logMessage = null;
                long eventTime = System.currentTimeMillis();

                try {

                    /*
                     * 首次回调确认。
                     *
                     * 不检查包名、PID 或状态，
                     * 只要目标方法进入就记录。
                     */
                    if (callbackLogged.compareAndSet(
                            false,
                            true
                    )) {

                        postLog(
                                eventTime,
                                "HOOK_CALLBACK"
                                        + " method=" + METHOD_NAME
                                        + " receiver="
                                        + chain.getThisObject()
                                                .getClass()
                                                .getName()
                        );
                    }

                    Object processState =
                            chain.getThisObject();

                    /*
                     * ProcessStateRecord.mApp
                     * 对应 ProcessRecord。
                     */
                    Object processRecord =
                            SafeReflection.readField(
                                    processState,
                                    "mApp"
                            );

                    /*
                     * 只观察目标应用。
                     */
                    if (ProcessSnapshot.isTargetProcessRecord(
                            processRecord
                    )) {

                        Object arg = chain.getArg(0);

                        boolean nextState =
                                arg instanceof Boolean
                                        && (Boolean) arg;

                        Object oldValue =
                                SafeReflection.readField(
                                        processState,
                                        "mHasForegroundActivities"
                                );

                        int pid =
                                SafeReflection.readInt(
                                        processRecord,
                                        "mPid",
                                        -1
                                );

                        String packageName =
                                readPackageName(processRecord);

                        /*
                         * 首次识别目标进程时输出一次。
                         *
                         * 即使 PID 或旧状态读取失败，
                         * 也能看到目标进程是否被识别。
                         */
                        if (targetLogged.compareAndSet(
                                false,
                                true
                        )) {

                            postLog(
                                    eventTime,
                                    "HOOK_TARGET"
                                            + " package=" + packageName
                                            + " pid=" + pid
                                            + " oldState=" + oldValue
                                            + " newState=" + arg
                            );
                        }

                        /*
                         * 只有旧状态确实是 Boolean，
                         * 且新旧状态不同，才输出状态变化。
                         *
                         * 不再要求 pid > 0。
                         */
                        if (oldValue instanceof Boolean
                                && arg instanceof Boolean) {

                            boolean oldState =
                                    (Boolean) oldValue;

                            if (oldState != nextState) {

                                String event =
                                        nextState
                                                ? "[前台] "
                                                : "[后台] ";

                                logMessage =
                                        event
                                                + packageName
                                                + " (pid "
                                                + pid
                                                + ")";

                                eventTime =
                                        System.currentTimeMillis();
                            }
                        }
                    }

                } catch (Throwable error) {

                    /*
                     * 观察逻辑异常只报告一次。
                     * 不允许影响原方法执行。
                     */
                    if (callbackErrorLogged.compareAndSet(
                            false,
                            true
                    )) {

                        module.safeLog(
                                Log.ERROR,
                                "HOOK_ERROR stage=CALLBACK",
                                error
                        );
                    }
                }

                /*
                 * 原方法正常执行。
                 */
                Object result = chain.proceed();

                /*
                 * 原方法执行完成后提交状态变化日志。
                 */
                if (logMessage != null) {

                    postLog(
                            eventTime,
                            logMessage
                    );
                }

                return result;
            });

            /*
             * 只有 intercept 正常返回后，
             * 才报告 Hook 注册成功。
             */
            module.safeLog(
                    Log.INFO,
                    "HOOK_OK"
                            + " class=" + PROCESS_STATE
                            + " method=" + METHOD_NAME
                            + "(boolean)",
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
     * 精确查找 setHasForegroundActivities(boolean)。
     */
    private static Method findTargetMethod(
            Class<?> ownerClass
    ) {

        for (Method method : ownerClass.getDeclaredMethods()) {

            if (!METHOD_NAME.equals(method.getName())) {
                continue;
            }

            Class<?>[] parameters =
                    method.getParameterTypes();

            if (parameters.length != 1) {
                continue;
            }

            if (parameters[0] != boolean.class) {
                continue;
            }

            return method;
        }

        return null;
    }

    /**
     * 获取目标进程所属包名。
     */
    private static String readPackageName(
            Object processRecord
    ) {

        Object appInfo =
                SafeReflection.readField(
                        processRecord,
                        "info"
                );

        String packageName =
                SafeReflection.readString(
                        appInfo,
                        "packageName"
                );

        if (packageName == null
                || packageName.isEmpty()) {

            return ProcessSnapshot.TARGET_PACKAGE;
        }

        return packageName;
    }

    /**
     * 异步提交日志。
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
        }
    }
}
