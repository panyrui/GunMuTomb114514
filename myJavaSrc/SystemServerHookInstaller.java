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

    private static final String TAG_TASK_FRAGMENT =
            "com.android.server.wm.TaskFragment";

    private static final String TAG_ACTIVITY =
            "com.android.server.wm.ActivityRecord";

    private static final String TOP_APP_FIELD = "mTopApp";

    private static final Object READ_FAILED = new Object();

    private static final int STATE_UNKNOWN = -1;
    private static final int STATE_FOREGROUND = 0;
    private static final int STATE_VISIBLE_UNFOCUSED = 1;
    private static final int STATE_BACKGROUND = 2;

    /*
     * 根据仓库根目录 TaskFragment.smali 确认的真实常量。
     *
     * TASK_FRAGMENT_VISIBILITY_VISIBLE = 0
     * TASK_FRAGMENT_VISIBILITY_VISIBLE_BEHIND_TRANSLUCENT = 1
     * TASK_FRAGMENT_VISIBILITY_INVISIBLE = 2
     */
    private static final int TASK_FRAGMENT_VISIBILITY_VISIBLE = 0;

    private static final int
            TASK_FRAGMENT_VISIBILITY_VISIBLE_BEHIND_TRANSLUCENT = 1;

    private static final int TASK_FRAGMENT_VISIBILITY_INVISIBLE = 2;

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

    /*
     * getVisibility() 实际声明在 TaskFragment，
     * 而不是 Task。
     *
     * Task 继承 TaskFragment，因此可以将 Task 实例
     * 直接传给这个 Method.invoke()。
     */
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

        /*
         * 两种 Hook 独立安装。
         *
         * 即使 Task 可见性方法初始化失败，
         * 也不影响 ATMS 前台状态 Hook。
         */
        hookTopAppUpdate();

        hookTaskVisibilityUpdate();
    }

    /**
     * 初始化 Android system_server 类。
     *
     * 特别注意：
     *
     * Task.smali:
     *     .super Lcom/android/server/wm/TaskFragment;
     *
     * TaskFragment.smali:
     *     .method getVisibility(ActivityRecord)I
     *
     * 所以不能使用：
     *     taskClass.getDeclaredMethod(...)
     *
     * 必须从 TaskFragment 获取该方法。
     */
    private void initializeClasses() {

        /*
         * 初始化 ActivityRecord。
         */
        try {
            activityRecordClass = Class.forName(
                    TAG_ACTIVITY,
                    false,
                    classLoader
            );

            module.safeLog(
                    Log.INFO,
                    "ACTIVITY_RECORD_CLASS_INIT_OK",
                    null
            );

        } catch (Throwable error) {

            activityRecordClass = null;

            module.safeLog(
                    Log.ERROR,
                    "ACTIVITY_RECORD_CLASS_INIT_FAILED",
                    error
            );
        }

        /*
         * 初始化 Task。
         */
        try {
            taskClass = Class.forName(
                    TAG_TASK,
                    false,
                    classLoader
            );

            module.safeLog(
                    Log.INFO,
                    "TASK_CLASS_INIT_OK",
                    null
            );

        } catch (Throwable error) {

            taskClass = null;

            module.safeLog(
                    Log.ERROR,
                    "TASK_CLASS_INIT_FAILED",
                    error
            );
        }

        /*
         * 初始化 TaskFragment.getVisibility(ActivityRecord)。
         */
        if (activityRecordClass == null || taskClass == null) {

            module.safeLog(
                    Log.ERROR,
                    "TASK_VISIBILITY_METHOD_INIT_SKIPPED"
                            + " reason=DEPENDENCY_CLASS_MISSING",
                    null
            );

            return;
        }

        try {
            Class<?> taskFragmentClass = Class.forName(
                    TAG_TASK_FRAGMENT,
                    false,
                    classLoader
            );

            /*
             * 验证当前 ROM 的继承关系。
             *
             * 正常情况下：
             * Task extends TaskFragment
             */
            if (!taskFragmentClass.isAssignableFrom(taskClass)) {

                throw new IllegalStateException(
                        "Task is not assignable to TaskFragment"
                );
            }

            /*
             * 正确的查找位置是 TaskFragment。
             *
             * getVisibility 是非 public 实例方法，
             * 因此后面需要 setAccessible(true)。
             */
            Method visibilityMethod =
                    taskFragmentClass.getDeclaredMethod(
                            "getVisibility",
                            activityRecordClass
                    );

            /*
             * 确认返回类型为 int。
             */
            if (visibilityMethod.getReturnType() != int.class) {

                throw new IllegalStateException(
                        "Unexpected getVisibility return type: "
                                + visibilityMethod.getReturnType()
                );
            }

            visibilityMethod.setAccessible(true);

            taskVisibilityMethod = visibilityMethod;

            module.safeLog(
                    Log.INFO,
                    "TASK_VISIBILITY_METHOD_INIT_OK"
                            + " declaringClass=TaskFragment"
                            + " parameter=ActivityRecord"
                            + " return=int"
                            + " invisibleValue="
                            + TASK_FRAGMENT_VISIBILITY_INVISIBLE,
                    null
            );

        } catch (Throwable error) {

            taskVisibilityMethod = null;

            module.safeLog(
                    Log.ERROR,
                    "TASK_VISIBILITY_METHOD_INIT_FAILED",
                    error
            );
        }
    }

    /**
     * Hook:
     *
     * ActivityTaskManagerService.updateTopApp(ActivityRecord)
     *
     * 仅负责识别交互前台。
     *
     * 不再直接把失去 top-app 身份
     * 当成真正进入后台。
     */
    private void hookTopAppUpdate() {

        if (activityRecordClass == null) {

            module.safeLog(
                    Log.ERROR,
                    "TOP_APP_HOOK_SKIPPED"
                            + " reason=ACTIVITY_RECORD_CLASS_MISSING",
                    null
            );

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
                        "TOP_APP_HOOK_FAILED"
                                + " reason=INVALID_RETURN_TYPE",
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

                /*
                 * 读取调用前的 mTopApp。
                 */
                Object oldTopApp = readFieldStrict(
                        service,
                        TOP_APP_FIELD
                );

                /*
                 * 执行系统原始方法。
                 */
                Object result = chain.proceed();

                try {
                    /*
                     * 读取调用后的 mTopApp。
                     */
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
     * oldTarget=true、newTarget=false
     * 只代表目标应用失去了交互前台身份。
     *
     * 是否真正进入后台，还要结合 Task 可见性。
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
     *
     * RootWindowContainer.ensureActivitiesVisible(...)
     *
     * 在系统完成 Activity 可见性更新后，
     * 遍历当前 WindowContainer 树。
     *
     * 找出目标应用所属的所有 Task，
     * 再调用 TaskFragment.getVisibility(null)
     * 判断每一个 Task 的可见性。
     */
    private void hookTaskVisibilityUpdate() {

        if (activityRecordClass == null
                || taskClass == null
                || taskVisibilityMethod == null) {

            module.safeLog(
                    Log.ERROR,
                    "VISIBILITY_HOOK_SKIPPED"
                            + " reason=CLASS_OR_METHOD_MISSING",
                    null
            );

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
                        "VISIBILITY_HOOK_FAILED"
                                + " reason=METHOD_NOT_FOUND",
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

                /*
                 * 先执行系统原始可见性更新。
                 */
                Object result = chain.proceed();

                try {
                    Object root = chain.getThisObject();

                    /*
                     * 只有确认可见性事务已经结束，
                     * 且 Root 可见性更新没有被延迟，
                     * 才允许获取本次状态快照。
                     *
                     * 读取失败也会跳过本次扫描，
                     * 不会错误地将目标应用判成后台。
                     */
                    if (isVisibilitySnapshotReady(root)) {

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
     * 查找 RootWindowContainer.ensureActivitiesVisible。
     *
     * Android 13 当前仓库确认存在：
     *
     * 1. ensureActivitiesVisible(ActivityRecord, int, boolean)
     * 2. ensureActivitiesVisible(ActivityRecord, int, boolean, boolean)
     *
     * 优先使用四参数版本。
     *
     * 如果 ROM 删除四参数重载，
     * 才退回三参数版本。
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

            /*
             * 四参数版本。
             */
            if (params.length == 4
                    && params[0] == activityRecordClass
                    && params[1] == int.class
                    && params[2] == boolean.class
                    && params[3] == boolean.class) {

                method.setAccessible(true);

                return method;
            }

            /*
             * 三参数版本。
             */
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
     * 判断当前是否已经得到有效的可见性快照时机。
     *
     * 根据仓库 ActivityTaskSupervisor.smali：
     *
     * inActivityVisibilityUpdate()
     *     检查 mVisibilityTransactionDepth 是否大于 0。
     *
     * isRootVisibilityUpdateDeferred()
     *     检查 mDeferRootVisibilityUpdate。
     *
     * 必须同时满足：
     *
     * 1. 当前不处于可见性事务中。
     * 2. 当前没有延迟 Root 可见性更新。
     *
     * 如果任意一个方法读取失败，也返回 false。
     */
    private boolean isVisibilitySnapshotReady(
            Object root
    ) {

        if (root == null) {
            return false;
        }

        Object supervisor = SafeReflection.readField(
                root,
                "mTaskSupervisor"
        );

        if (supervisor == null) {
            return false;
        }

        Object inVisibilityUpdate =
                SafeReflection.invokeNoArg(
                        supervisor,
                        "inActivityVisibilityUpdate"
                );

        Object rootVisibilityDeferred =
                SafeReflection.invokeNoArg(
                        supervisor,
                        "isRootVisibilityUpdateDeferred"
                );

        /*
         * 反射返回 null 代表不能确认状态。
         *
         * 不能将读取失败当成 false，
         * 否则可能在系统尚未完成更新时扫描。
         */
        if (!(inVisibilityUpdate instanceof Boolean)
                || !(rootVisibilityDeferred instanceof Boolean)) {

            return false;
        }

        boolean updating =
                ((Boolean) inVisibilityUpdate).booleanValue();

        boolean deferred =
                ((Boolean) rootVisibilityDeferred).booleanValue();

        return !updating && !deferred;
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

        /*
         * 先确认根容器子节点可读取。
         */
        Object rootChildren = readFieldStrict(
                root,
                "mChildren"
        );

        /*
         * 根容器读取失败时，
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

        /*
         * 遍历整个 WindowContainer 树。
         */
        boolean scanSuccess = scanContainer(
                root,
                null,
                visited,
                targetTasks,
                0
        );

        /*
         * 任意节点读取失败，
         * 保留上次状态。
         */
        if (!scanSuccess) {
            return;
        }

        /*
         * 没有找到目标应用所属 Task。
         *
         * 表示当前窗口容器树中没有可检查的目标 Activity。
         */
        if (targetTasks.isEmpty()) {

            updateTargetVisibility(false);

            return;
        }

        boolean anyVisible = false;

        boolean allReadSuccess = true;

        for (Object task : targetTasks) {

            try {
                /*
                 * 注意：
                 *
                 * 此 Method 实际声明在 TaskFragment。
                 * task 是 Task 实例。
                 *
                 * Task extends TaskFragment，
                 * 因此可以正常调用。
                 *
                 * null 对应 getVisibility(null) 的 starting 参数。
                 */
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
                 * Android 13 TaskFragmentVisibility：
                 *
                 * 0 = VISIBLE
                 * 1 = VISIBLE_BEHIND_TRANSLUCENT
                 * 2 = INVISIBLE
                 *
                 * 0 和 1 都必须认为仍然可见。
                 *
                 * 只有 2 才能判定为不可见。
                 */
                switch (visibility) {

                    case TASK_FRAGMENT_VISIBILITY_VISIBLE:

                    case TASK_FRAGMENT_VISIBILITY_VISIBLE_BEHIND_TRANSLUCENT:

                        anyVisible = true;

                        break;

                    case TASK_FRAGMENT_VISIBILITY_INVISIBLE:

                        /*
                         * 当前 Task 不可见。
                         * 继续检查目标应用的其他 Task。
                         */
                        break;

                    default:

                        /*
                         * 遇到未知状态值时，
                         * 不允许直接判成后台。
                         */
                        allReadSuccess = false;

                        break;
                }

                if (anyVisible) {
                    break;
                }

            } catch (Throwable error) {

                allReadSuccess = false;
            }
        }

        /*
         * 任意一个目标 Task 可见，
         * 就认为目标应用仍然可见。
         *
         * 只有所有目标 Task 都成功读取，
         * 并且全部返回 INVISIBLE，
         * 才能认为目标应用已经完全不可见。
         *
         * 读取失败时保留上次结果。
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
     * currentTask 表示当前 ActivityRecord
     * 最近所属的 Task。
     *
     * 这样可以分别检查目标应用的多个 Task，
     * 不会因为父 Task 可见而覆盖子 Task 的状态。
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

        /*
         * 遇到 Task 时更新当前所属 Task。
         */
        if (taskClass.isInstance(node)) {

            task = node;
        }

        /*
         * 检查 ActivityRecord。
         */
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

        /*
         * 读取 WindowContainer.mChildren。
         *
         * SafeReflection 会沿父类查找字段。
         */
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
     *
     * 1. 交互前台。
     * 2. 可见但失去交互焦点。
     * 3. 完全不可见。
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
     * 区分：
     *
     * 1. 字段实际值为 null。
     * 2. 字段不存在或读取失败。
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
     * 状态更新不在日志线程中执行，
     * 日志排队不会影响状态机更新时机。
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
             * 日志异常不得影响 system_server。
             */
        }
    }
}