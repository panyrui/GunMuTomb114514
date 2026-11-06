
package com.gunmubei.lsposed;

import android.util.Log;

import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.Collections;
import java.util.Date;
import java.util.IdentityHashMap;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

final class SystemServerHookInstaller {

    private static final String TAG_ATMS =
            "com.android.server.wm.ActivityTaskManagerService";

    private static final String TAG_ROOT =
            "com.android.server.wm.RootWindowContainer";

    private static final String TAG_TASK =
            "com.android.server.wm.Task";

    private static final String TAG_ACTIVITY =
            "com.android.server.wm.ActivityRecord";

    private static final String TOP_APP_FIELD = "mTopApp";

    private static final Object READ_FAILED = new Object();

    private static final int STATE_UNKNOWN = -1;
    private static final int STATE_FOREGROUND = 0;
    private static final int STATE_VISIBLE_UNFOCUSED = 1;
    private static final int STATE_BACKGROUND = 2;

    private final ModuleEntry module;
    private final ClassLoader classLoader;

    private final AtomicBoolean callbackErrorLogged =
            new AtomicBoolean(false);

    private final AtomicBoolean fieldErrorLogged =
            new AtomicBoolean(false);

    private final AtomicBoolean visibilityErrorLogged =
            new AtomicBoolean(false);

    private final AtomicInteger lastReportedState =
            new AtomicInteger(STATE_UNKNOWN);

    private final ThreadPoolExecutor logExecutor;

    private final java.text.SimpleDateFormat timeFormat =
            new java.text.SimpleDateFormat(
                    "HH:mm:ss.SSS",
                    Locale.US
            );

    private volatile boolean targetTop;

    private volatile boolean targetVisible;

    private volatile Class<?> activityRecordClass;

    private volatile Class<?> taskClass;

    private volatile Method taskVisibilityMethod;

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
        hookTopAppUpdate();
        hookTaskVisibilityUpdate();
    }

    /**
     * 初始化 Android 13 system_server 类。
     */
    private void initializeClasses() {

        try {
            activityRecordClass = Class.forName(
                    TAG_ACTIVITY,
                    false,
                    classLoader
            );

            taskClass = Class.forName(
                    TAG_TASK,
                    false,
                    classLoader
            );

            taskVisibilityMethod =
                    taskClass.getDeclaredMethod(
                            "getVisibility",
                            activityRecordClass
                    );

            taskVisibilityMethod.setAccessible(true);

            module.safeLog(
                    Log.INFO,
                    "CLASS_INIT_OK"
                            + " activityRecord=true"
                            + " task=true"
                            + " taskVisibility=true",
                    null
            );

        } catch (Throwable error) {
            module.safeLog(
                    Log.ERROR,
                    "CLASS_INIT_FAILED",
                    error
            );
        }
    }

    /**
     * Hook:
     * ActivityTaskManagerService.updateTopApp(ActivityRecord)
     *
     * 仅负责识别交互前台。
     * 不再直接把失去 top-app 身份当成真正后台。
     */
    private void hookTopAppUpdate() {

        if (activityRecordClass == null) {
            return;
        }

        final Method targetMethod;

        try {
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
                module.safeLog(
                        Log.ERROR,
                        "TOP_APP_HOOK_FAILED reason=INVALID_RETURN_TYPE",
                        null
                );
                return;
            }

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

                Object service = chain.getThisObject();

                Object oldTopApp = readFieldStrict(
                        service,
                        TOP_APP_FIELD
                );

                Object result = chain.proceed();

                try {
                    Object newTopApp = readFieldStrict(
                            service,
                            TOP_APP_FIELD
                    );

                    if (oldTopApp == READ_FAILED
                            || newTopApp == READ_FAILED) {
                        reportFieldError();
                        return result;
                    }

                    handleTopAppChange(
                            oldTopApp,
                            newTopApp
                    );

                } catch (Throwable error) {
                    reportCallbackError(error);
                }

                return result;
            });

            module.safeLog(
                    Log.INFO,
                    "TOP_APP_HOOK_OK"
                            + " method=ATMS.updateTopApp"
                            + " mode=BEFORE_AFTER",
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

    /**
     * 处理 top-app 变化。
     *
     * 重要：
     * oldTarget=true、newTarget=false
     * 只代表目标应用失去了交互前台身份。
     *
     * 是否真正后台，还要结合 Task 可见性。
     */
    private void handleTopAppChange(
            Object oldTopApp,
            Object newTopApp
    ) {

        boolean oldTarget =
                ProcessSnapshot.isTargetWpc(oldTopApp);

        boolean newTarget =
                ProcessSnapshot.isTargetWpc(newTopApp);

        targetTop = newTarget;

        if (oldTarget == newTarget) {
            return;
        }

        publishState("ATMS.updateTopApp");
    }

    /**
     * Hook:
     * RootWindowContainer.ensureActivitiesVisible(...)
     *
     * 在系统完成 Activity 可见性更新后，
     * 遍历当前窗口容器树，找出目标应用所在的 Task，
     * 再调用 Task.getVisibility(null) 判断 Task 是否可见。
     */
    private void hookTaskVisibilityUpdate() {

        if (activityRecordClass == null
                || taskClass == null
                || taskVisibilityMethod == null) {
            return;
        }

        final Method targetMethod;

        try {
            Class<?> rootClass = Class.forName(
                    TAG_ROOT,
                    false,
                    classLoader
            );

            targetMethod = findEnsureActivitiesVisibleMethod(
                    rootClass
            );

            if (targetMethod == null) {
                module.safeLog(
                        Log.ERROR,
                        "VISIBILITY_HOOK_FAILED reason=METHOD_NOT_FOUND",
                        null
                );
                return;
            }

        } catch (Throwable error) {
            module.safeLog(
                    Log.ERROR,
                    "VISIBILITY_HOOK_FAILED stage=FIND_METHOD",
                    error
            );
            return;
        }

        try {
            module.hook(targetMethod).intercept(chain -> {

                Object result = chain.proceed();

                try {
                    Object root = chain.getThisObject();

                    /*
                     * 忽略可见性更新过程中的递归调用。
                     * 只在最外层可见性更新完成后扫描。
                     */
                    if (!isVisibilityUpdateInProgress(root)) {
                        refreshTargetTaskVisibility(root);
                    }

                } catch (Throwable error) {
                    reportVisibilityError(error);
                }

                return result;
            });

            module.safeLog(
                    Log.INFO,
                    "VISIBILITY_HOOK_OK"
                            + " method=RootWindowContainer."
                            + targetMethod.getName()
                            + " parameterCount="
                            + targetMethod.getParameterCount(),
                    null
            );

        } catch (Throwable error) {
            module.safeLog(
                    Log.ERROR,
                    "VISIBILITY_HOOK_FAILED stage=REGISTER",
                    error
            );
        }
    }

    /**
     * Android 13 优先使用四参数版本。
     * 如果系统 ROM 删除了该重载，再尝试三参数版本。
     */
    private Method findEnsureActivitiesVisibleMethod(
            Class<?> rootClass
    ) {

        Method fallback = null;

        for (Method method : rootClass.getDeclaredMethods()) {

            if (!"ensureActivitiesVisible".equals(
                    method.getName()
            )) {
                continue;
            }

            Class<?>[] params = method.getParameterTypes();

            if (params.length == 4
                    && params[0] == activityRecordClass
                    && params[1] == int.class
                    && params[2] == boolean.class
                    && params[3] == boolean.class) {

                method.setAccessible(true);
                return method;
            }

            if (params.length == 3
                    && params[0] == activityRecordClass
                    && params[1] == int.class
                    && params[2] == boolean.class) {

                fallback = method;
            }
        }

        if (fallback != null) {
            fallback.setAccessible(true);
        }

        return fallback;
    }

    /**
     * 判断当前是否还处于系统可见性更新过程中。
     */
    private boolean isVisibilityUpdateInProgress(
            Object root
    ) {

        Object supervisor = SafeReflection.readField(
                root,
                "mTaskSupervisor"
        );

        if (supervisor == null) {
            return false;
        }

        Object value = SafeReflection.invokeNoArg(
                supervisor,
                "inActivityVisibilityUpdate"
        );

        return Boolean.TRUE.equals(value);
    }

    /**
     * 刷新目标应用的 Task 可见性。
     */
    private void refreshTargetTaskVisibility(
            Object root
    ) {

        if (root == null) {
            return;
        }

        Object rootChildren = readFieldStrict(
                root,
                "mChildren"
        );

        /*
         * 根容器的子节点读取失败时，
         * 不允许错误地把目标应用判成后台。
         */
        if (!(rootChildren instanceof Iterable)) {
            return;
        }

        Set<Object> visited =
                Collections.newSetFromMap(
                        new IdentityHashMap<>()
                );

        Set<Object> targetTasks =
                Collections.newSetFromMap(
                        new IdentityHashMap<>()
                );

        boolean scanSuccess = scanContainer(
                root,
                null,
                visited,
                targetTasks,
                0
        );

        if (!scanSuccess) {
            return;
        }

        /*
         * 没有找到目标应用所属 Task，
         * 表示当前没有可检查的目标 Activity。
         */
        if (targetTasks.isEmpty()) {
            updateTargetVisibility(false);
            return;
        }

        boolean anyVisible = false;
        boolean allReadSuccess = true;

        for (Object task : targetTasks) {

            try {
                Object value = taskVisibilityMethod.invoke(
                        task,
                        new Object[]{null}
                );

                if (!(value instanceof Number)) {
                    allReadSuccess = false;
                    continue;
                }

                int visibility =
                        ((Number) value).intValue();

                /*
                 * Android 13:
                 * 0 = INVISIBLE
                 * 非 0 = 仍然可见
                 *
                 * 包含被半透明窗口遮挡但仍可见的情况。
                 */
                if (visibility != 0) {
                    anyVisible = true;
                    break;
                }

            } catch (Throwable error) {
                allReadSuccess = false;
            }
        }

        /*
         * 任意一个目标 Task 可见，就保护目标应用。
         *
         * 如果所有 Task 都成功读取且全部不可见，
         * 才能更新为不可见。
         *
         * 如果读取失败，则保留上次结果，避免误冻结。
         */
        if (anyVisible) {
            updateTargetVisibility(true);
        } else if (allReadSuccess) {
            updateTargetVisibility(false);
        }
    }

    /**
     * 遍历 WindowContainer 树。
     *
     * currentTask 表示当前 ActivityRecord 最近所属的 Task。
     * 这样可以分别检查目标应用的多个 Task，
     * 不会因为父 Task 可见而错误覆盖子 Task 的状态。
     */
    private boolean scanContainer(
            Object node,
            Object currentTask,
            Set<Object> visited,
            Set<Object> targetTasks,
            int depth
    ) {

        if (node == null || depth > 80) {
            return true;
        }

        if (!visited.add(node)) {
            return true;
        }

        Object task = currentTask;

        if (taskClass.isInstance(node)) {
            task = node;
        }

        if (activityRecordClass.isInstance(node)) {

            Object wpc = SafeReflection.readField(
                    node,
                    "app"
            );

            if (ProcessSnapshot.isTargetWpc(wpc)
                    && task != null) {
                targetTasks.add(task);
            }

            return true;
        }

        Object children = readFieldStrict(
                node,
                "mChildren"
        );

        if (children == READ_FAILED) {
            return false;
        }

        if (children == null) {
            return true;
        }

        if (!(children instanceof Iterable)) {
            return false;
        }

        for (Object child : (Iterable<?>) children) {

            if (child == null) {
                continue;
            }

            if (!scanContainer(
                    child,
                    task,
                    visited,
                    targetTasks,
                    depth + 1
            )) {
                return false;
            }
        }

        return true;
    }

    /**
     * 更新目标应用的 Task 可见性。
     */
    private void updateTargetVisibility(
            boolean visible
    ) {

        boolean oldValue = targetVisible;

        if (oldValue == visible) {
            return;
        }

        targetVisible = visible;

        publishState(
                "RootWindowContainer.ensureActivitiesVisible"
        );
    }

    /**
     * 统一状态机。
     *
     * 优先级：
     * 1. 交互前台
     * 2. 可见但失去交互焦点
     * 3. 完全不可见
     */
    private void publishState(String source) {

        final int state;

        if (targetTop) {
            state = STATE_FOREGROUND;

        } else if (targetVisible) {
            state = STATE_VISIBLE_UNFOCUSED;

        } else {
            state = STATE_BACKGROUND;
        }

        int previous = lastReportedState.getAndSet(state);

        if (previous == state) {
            return;
        }

        String label;

        switch (state) {

            case STATE_FOREGROUND:
                label = "[前台]";
                break;

            case STATE_VISIBLE_UNFOCUSED:
                label = "[可见-失焦]";
                break;

            case STATE_BACKGROUND:
                label = "[后台]";
                break;

            default:
                return;
        }

        String message =
                label
                        + " package="
                        + ProcessSnapshot.TARGET_PACKAGE
                        + " top="
                        + targetTop
                        + " taskVisible="
                        + targetVisible
                        + " source="
                        + source;

        postLog(
                System.currentTimeMillis(),
                message
        );
    }

    /**
     * 严格读取字段。
     *
     * 区分字段值为 null 和字段读取失败。
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

    private void reportFieldError() {

        if (!fieldErrorLogged.compareAndSet(false, true)) {
            return;
        }

        module.safeLog(
                Log.ERROR,
                "TOP_APP_FIELD_READ_FAILED",
                null
        );
    }

    private void reportCallbackError(Throwable error) {

        if (!callbackErrorLogged.compareAndSet(false, true)) {
            return;
        }

        module.safeLog(
                Log.ERROR,
                "TOP_APP_CALLBACK_ERROR",
                error
        );
    }

    private void reportVisibilityError(Throwable error) {

        if (!visibilityErrorLogged.compareAndSet(false, true)) {
            return;
        }

        module.safeLog(
                Log.ERROR,
                "TASK_VISIBILITY_CALLBACK_ERROR",
                error
        );
    }

    /**
     * 异步日志。
     *
     * 状态更新不在这个线程中执行，
     * 因此日志排队不会影响状态机的更新时机。
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
            // 日志异常不得影响 system_server。
        }
    }
}
