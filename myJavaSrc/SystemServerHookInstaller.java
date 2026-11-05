package com.gunmubei.lsposed;

import android.util.Log;

import java.lang.reflect.Method;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Locale;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

final class SystemServerHookInstaller {

    private static final String ACTIVITY_RECORD_CLASS =
            "com.android.server.wm.ActivityRecord";

    private static final String SET_VISIBLE_METHOD = "setVisible";
    private static final String SET_VISIBLE_REQUESTED_METHOD =
            "setVisibleRequested";

    private final ModuleEntry module;
    private final ClassLoader classLoader;
    private final ThreadPoolExecutor logExecutor;

    private final SimpleDateFormat timeFormat =
            new SimpleDateFormat("HH:mm:ss.SSS", Locale.US);

    private final AtomicBoolean setVisibleCallbackLogged =
            new AtomicBoolean(false);

    private final AtomicBoolean setVisibleRequestedCallbackLogged =
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
        hookVisibilitySetter(SET_VISIBLE_METHOD, false);
        hookVisibilitySetter(SET_VISIBLE_REQUESTED_METHOD, true);
    }

    /**
     * 在 ActivityRecord 的单个可见性字段即将改变时观察进程级状态。
     *
     * mVisible 与 mVisibleRequested 都参与 Android 13 WPC 的可见状态
     * 汇总，因此两个 setter 是同一主观察点的两个必要入口，不是慢 Hook
     * 的辅助或回退方案。
     *
     * 回调发生在字段写入和后续 onProcessActivityStateChanged 之前。
     * 本 Hook 只读取状态并记录，不改写系统参数或返回值。
     */
    private void hookVisibilitySetter(
            String methodName,
            boolean requestedField
    ) {
        final Method targetMethod;

        try {
            Class<?> ownerClass = Class.forName(
                    ACTIVITY_RECORD_CLASS,
                    false,
                    classLoader
            );

            targetMethod = findBooleanSetter(ownerClass, methodName);
            if (targetMethod == null) {
                module.safeLog(
                        Log.ERROR,
                        "HOOK_FAILED reason=METHOD_NOT_FOUND"
                                + " class=" + ACTIVITY_RECORD_CLASS
                                + " method=" + methodName + "(boolean)",
                        null
                );
                return;
            }
        } catch (Throwable error) {
            module.safeLog(
                    Log.ERROR,
                    "HOOK_FAILED stage=FIND_METHOD method=" + methodName,
                    error
            );
            return;
        }

        try {
            module.hook(targetMethod).intercept(chain -> {
                try {
                    Object activityRecord = chain.getThisObject();
                    Object arg = chain.getArg(0);

                    if (arg instanceof Boolean) {
                        boolean requestedValue = (Boolean) arg;
                        String event = inspectVisibilityTransition(
                                activityRecord,
                                requestedField,
                                requestedValue,
                                methodName
                        );

                        if (event != null) {
                            /*
                             * 先入日志队列，再进入原 setter。
                             * 时间戳取自 Hook 入口，避免把后续 WPC 汇总耗时
                             * 混入事件发生时间。
                             */
                            postLog(System.currentTimeMillis(), event);
                        }
                    }

                    logFirstCallback(methodName, requestedField);
                } catch (Throwable error) {
                    reportCallbackError(error);
                }

                return chain.proceed();
            });

            module.safeLog(
                    Log.INFO,
                    "HOOK_OK class=" + ACTIVITY_RECORD_CLASS
                            + " method=" + methodName
                            + "(boolean) mode=PRE_FIELD_UPDATE",
                    null
            );
        } catch (Throwable error) {
            module.safeLog(
                    Log.ERROR,
                    "HOOK_FAILED stage=REGISTER method=" + methodName,
                    error
            );
        }
    }

    /**
     * 用当前 ActivityRecord 的新字段值，计算同一 WPC 下所有 Activity
     * 的旧/新聚合可见性。判断口径与 Android 13 WPC 的 0x110000
     * 可见掩码一致：任一 Activity 的 mVisible 或 mVisibleRequested 为
     * true，进程就仍视为有可见 Activity。
     */
    private static String inspectVisibilityTransition(
            Object changedActivity,
            boolean requestedField,
            boolean newValue,
            String trigger
    ) {
        if (changedActivity == null) {
            return null;
        }

        Object wpc = SafeReflection.readField(changedActivity, "app");
        if (!ProcessSnapshot.isTargetWpc(wpc)) {
            return null;
        }

        Object activitiesObject =
                SafeReflection.readField(wpc, "mActivities");

        if (!(activitiesObject instanceof List<?>)) {
            return null;
        }

        List<?> activities = (List<?>) activitiesObject;
        boolean oldAnyVisible = false;
        boolean newAnyVisible = false;
        boolean changedRecordFound = false;

        for (Object activity : activities) {
            if (activity == null) {
                continue;
            }

            boolean oldVisible = readBooleanField(activity, "mVisible");
            boolean oldRequested = readBooleanField(activity, "mVisibleRequested");

            boolean newVisible = oldVisible;
            boolean newRequested = oldRequested;

            if (activity == changedActivity) {
                changedRecordFound = true;
                if (requestedField) {
                    newRequested = newValue;
                } else {
                    newVisible = newValue;
                }
            }

            oldAnyVisible |= oldVisible || oldRequested;
            newAnyVisible |= newVisible || newRequested;
        }

        /*
         * 兼容刚挂接到 WPC、但尚未进入 mActivities 的短暂窗口。
         * 如果当前记录不在列表中，只把当前记录计入聚合值。
         */
        if (!changedRecordFound) {
            boolean oldVisible = readBooleanField(changedActivity, "mVisible");
            boolean oldRequested = readBooleanField(changedActivity, "mVisibleRequested");
            boolean newVisible = requestedField ? oldVisible : newValue;
            boolean newRequested = requestedField ? newValue : oldRequested;

            oldAnyVisible |= oldVisible || oldRequested;
            newAnyVisible |= newVisible || newRequested;
        }

        if (oldAnyVisible == newAnyVisible) {
            return null;
        }

        String status = newAnyVisible ? "[前台]" : "[后台]";
        return ProcessSnapshot.describeWpc(status, wpc)
                + " trigger=" + trigger
                + " oldVisible=" + oldAnyVisible
                + " newVisible=" + newAnyVisible
                + " activityId=0x"
                + Integer.toHexString(
                        System.identityHashCode(changedActivity)
                );
    }

    private void logFirstCallback(
            String methodName,
            boolean requestedField
    ) {
        AtomicBoolean marker = requestedField
                ? setVisibleRequestedCallbackLogged
                : setVisibleCallbackLogged;

        if (marker.compareAndSet(false, true)) {
            postLog(
                    System.currentTimeMillis(),
                    "HOOK_CALLBACK method=" + methodName
            );
        }
    }

    private static Method findBooleanSetter(
            Class<?> ownerClass,
            String methodName
    ) {
        for (Method method : ownerClass.getDeclaredMethods()) {
            if (!methodName.equals(method.getName())) {
                continue;
            }

            Class<?>[] parameters = method.getParameterTypes();
            if (parameters.length != 1
                    || parameters[0] != boolean.class
                    || method.getReturnType() != void.class) {
                continue;
            }

            return method;
        }
        return null;
    }

    private static boolean readBooleanField(
            Object target,
            String fieldName
    ) {
        Object value = SafeReflection.readField(target, fieldName);
        return Boolean.TRUE.equals(value);
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

    private void postLog(long eventTime, String message) {
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
            /* 日志队列异常不能影响 system_server。 */
        }
    }
}
