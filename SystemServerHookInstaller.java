
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

    private static final String WPC_CLASS =
            "com.android.server.wm.WindowProcessController";

    private static final String METHOD_NAME =
            "computeProcessActivityState";

    /*
     * 与 Android 13 WPC 中的可见状态判断保持一致。
     *
     * 0x10000：存在可见 Activity
     * 0x100000：存在可见请求 Activity
     */
    private static final int VISIBLE_MASK = 0x110000;

    private final ModuleEntry module;
    private final ClassLoader classLoader;
    private final ThreadPoolExecutor logExecutor;

    private final SimpleDateFormat timeFormat =
            new SimpleDateFormat("HH:mm:ss.SSS", Locale.US);

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
                        return thread;
                    }
                },
                new ThreadPoolExecutor.DiscardOldestPolicy()
        );
    }

    void install() {
        hookComputeProcessActivityState();
    }

    /**
     * 观察 WindowProcessController 的 Activity 可见状态变化。
     *
     * 原方法执行前读取旧 flags；
     * 原方法执行后读取新 flags；
     * 只记录目标应用的可见状态变化。
     *
     * 不修改参数、不修改返回值、不改变系统行为。
     */
    private void hookComputeProcessActivityState() {

        final Method targetMethod;

        try {
            Class<?> ownerClass = Class.forName(
                    WPC_CLASS,
                    false,
                    classLoader
            );

            targetMethod = findTargetMethod(ownerClass);

            if (targetMethod == null) {
                module.safeLog(
                        Log.ERROR,
                        "HOOK_FAILED reason=METHOD_NOT_FOUND"
                                + " class=" + WPC_CLASS
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

        try {
            module.hook(targetMethod).intercept(chain -> {

                Object receiver = chain.getThisObject();

                int oldFlags = Integer.MIN_VALUE;
                boolean target = false;
                String targetDescription = null;

                try {
                    if (callbackLogged.compareAndSet(
                            false,
                            true
                    )) {
                        String receiverName =
                                receiver == null
                                        ? "null"
                                        : receiver.getClass().getName();

                        postLog(
                                System.currentTimeMillis(),
                                "HOOK_CALLBACK"
                                        + " method=" + METHOD_NAME
                                        + " receiver=" + receiverName
                        );
                    }

                    /*
                     * 先识别目标 WPC。
                     */
                    target = ProcessSnapshot.isTargetWpc(receiver);

                    if (target) {
                        oldFlags = SafeReflection.readInt(
                                receiver,
                                "mActivityStateFlags",
                                Integer.MIN_VALUE
                        );

                        if (targetLogged.compareAndSet(
                                false,
                                true
                        )) {
                            targetDescription =
                                    ProcessSnapshot.describeWpc(
                                            "HOOK_TARGET",
                                            receiver
                                    );
                        }
                    }

                } catch (Throwable error) {
                    reportCallbackError(error);
                }

                /*
                 * 必须执行原方法。
                 */
                Object result = chain.proceed();

                /*
                 * 原方法执行后读取新状态。
                 */
                if (target) {
                    try {
                        int newFlags = SafeReflection.readInt(
                                receiver,
                                "mActivityStateFlags",
                                Integer.MIN_VALUE
                        );

                        if (targetDescription != null) {
                            postLog(
                                    System.currentTimeMillis(),
                                    targetDescription
                                            + " oldFlags=0x"
                                            + Integer.toHexString(oldFlags)
                                            + " newFlags=0x"
                                            + Integer.toHexString(newFlags)
                            );
                        }

                        /*
                         * 只有新旧 flags 都成功读取，
                         * 才判断前后台状态。
                         */
                        if (oldFlags != Integer.MIN_VALUE
                                && newFlags != Integer.MIN_VALUE) {

                            boolean wasVisible =
                                    (oldFlags & VISIBLE_MASK) != 0;

                            boolean isVisible =
                                    (newFlags & VISIBLE_MASK) != 0;

                            if (wasVisible != isVisible) {

                                String description =
                                        ProcessSnapshot.describeWpc(
                                                isVisible
                                                        ? "[前台]"
                                                        : "[后台]",
                                                receiver
                                        );

                                postLog(
                                        System.currentTimeMillis(),
                                        description
                                                + " oldVisible="
                                                + wasVisible
                                                + " newVisible="
                                                + isVisible
                                                + " oldFlags=0x"
                                                + Integer.toHexString(oldFlags)
                                                + " newFlags=0x"
                                                + Integer.toHexString(newFlags)
                                );
                            }
                        }

                    } catch (Throwable error) {
                        reportCallbackError(error);
                    }
                }

                return result;
            });

            module.safeLog(
                    Log.INFO,
                    "HOOK_OK"
                            + " class=" + WPC_CLASS
                            + " method=" + METHOD_NAME
                            + "()",
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

    private static Method findTargetMethod(
            Class<?> ownerClass
    ) {
        for (Method method : ownerClass.getDeclaredMethods()) {

            if (!METHOD_NAME.equals(method.getName())) {
                continue;
            }

            if (method.getParameterTypes().length != 0) {
                continue;
            }

            if (method.getReturnType() != void.class) {
                continue;
            }

            return method;
        }

        return null;
    }

    private void reportCallbackError(Throwable error) {
        if (callbackErrorLogged.compareAndSet(false, true)) {
            module.safeLog(
                    Log.ERROR,
                    "HOOK_ERROR stage=CALLBACK",
                    error
            );
        }
    }

    private void postLog(
            long eventTime,
            String message
    ) {
        try {
            logExecutor.execute(() -> {
                try {
                    String timestamp =
                            timeFormat.format(new Date(eventTime));

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
