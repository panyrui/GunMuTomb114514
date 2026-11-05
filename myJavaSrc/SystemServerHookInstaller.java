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

final class SystemServerHookInstaller {

    private static final String PROCESS_STATE =
            "com.android.server.am.ProcessStateRecord";

    private static final String METHOD_NAME =
            "setHasForegroundActivities";

    private final ModuleEntry module;
    private final ClassLoader classLoader;

    /*
     * 日志只在独立线程输出。
     * Hook 回调内不执行文件 I/O。
     */
    private final ThreadPoolExecutor logExecutor;

    /*
     * 只有一个日志线程访问此格式化器。
     */
    private final SimpleDateFormat timeFormat =
            new SimpleDateFormat("HH:mm:ss", Locale.US);

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
     * 观察 ProcessStateRecord.setHasForegroundActivities(boolean)。
     *
     * 设备 Smali 已确认：
     *
     * .method setHasForegroundActivities(Z)V
     *
     * 方法内部直接更新：
     *
     * mHasForegroundActivities
     *
     * OomAdjuster 的调用顺序是：
     *
     * setHasForegroundActivities(...)
     * setCurrentSchedulingGroup(...)
     *
     * 因此这里可以在调度组更新之前获知 AMS 计算出的前台 Activity 状态。
     */
    private void hookForegroundActivityState() {

        final Method targetMethod;

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
                        "Hook method not found: "
                                + PROCESS_STATE
                                + "."
                                + METHOD_NAME
                                + "(boolean)",
                        null
                );

                return;
            }

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "Cannot locate foreground state method",
                    error
            );

            return;
        }

        try {

            module.hook(targetMethod).intercept(chain -> {

                String logMessage = null;
                long eventTime = 0L;

                /*
                 * 只观察目标应用。
                 * 任何观察异常都不能影响原方法。
                 */
                try {

                    Object processState =
                            chain.getThisObject();

                    Object processRecord =
                            SafeReflection.readField(
                                    processState,
                                    "mApp"
                            );

                    if (ProcessSnapshot.isTargetProcessRecord(
                            processRecord
                    )) {

                        Object arg = chain.getArg(0);

                        if (arg instanceof Boolean) {

                            boolean nextState =
                                    (Boolean) arg;

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

                            /*
                             * 只在状态确实变化时输出。
                             * PID 尚未建立时不输出。
                             */
                            if (oldValue instanceof Boolean
                                    && pid > 0) {

                                boolean oldState =
                                        (Boolean) oldValue;

                                if (oldState != nextState) {

                                    String packageName =
                                            readPackageName(
                                                    processRecord
                                            );

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

                                    /*
                                     * 时间戳在 Hook 回调中取得，
                                     * 不使用日志线程执行时的时间。
                                     */
                                    eventTime =
                                            System.currentTimeMillis();
                                }
                            }
                        }
                    }

                } catch (Throwable ignored) {
                    /*
                     * 观察逻辑异常不能干扰 system_server。
                     */
                }

                /*
                 * 原方法正常执行。
                 * 不修改参数，不改变系统状态。
                 */
                Object result = chain.proceed();

                /*
                 * 原方法完成后立即提交日志。
                 * 时间戳仍然是进入 Hook 时记录的时间。
                 */
                if (logMessage != null) {

                    postLog(
                            eventTime,
                            logMessage
                    );
                }

                return result;
            });

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "Cannot install foreground state hook",
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
     * 异步提交状态变化日志。
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
             * 队列提交失败不影响 system_server。
             */
        }
    }
}