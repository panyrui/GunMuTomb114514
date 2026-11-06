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

    private static final String TAG_SUPERVISOR =
            "com.android.server.wm.ActivityTaskSupervisor";

    private static final String TOP_APP_FIELD = "mTopApp";

    private static final Object READ_FAILED = new Object();

    private static final int STATE_UNKNOWN = -1;
    private static final int STATE_FOREGROUND = 0;
    private static final int STATE_VISIBLE_UNFOCUSED = 1;
    private static final int STATE_BACKGROUND = 2;

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

    private final AtomicBoolean visibilityDirty =
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

    private volatile Class<?> supervisorClass;

    private volatile Method taskVisibilityMethod;

    private volatile Method setVisibleRequestedMethod;

    private volatile Method endActivityVisibilityUpdateMethod;

    private volatile Method ensureActivitiesVisibleMethod;

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

        hookVisibleRequested();

        hookEndActivityVisibilityUpdate();

        hookEnsureActivitiesVisible();
    }

    // ============================================================
    // 初始化
    // ============================================================

    private void initializeClasses() {

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

        try {
            supervisorClass = Class.forName(
                    TAG_SUPERVISOR,
                    false,
                    classLoader
            );

            module.safeLog(
                    Log.INFO,
                    "ACTIVITY_TASK_SUPERVISOR_CLASS_INIT_OK",
                    null
            );

        } catch (Throwable error) {

            supervisorClass = null;

            module.safeLog(
                    Log.ERROR,
                    "ACTIVITY_TASK_SUPERVISOR_CLASS_INIT_FAILED",
                    error
            );
        }

        initializeTaskVisibilityMethod();

        initializeVisibleRequestedMethod();

        initializeEndVisibilityMethod();
    }

    private void initializeTaskVisibilityMethod() {

        if (activityRecordClass == null || taskClass == null) {
            return;
        }

        try {
            Class<?> taskFragmentClass = Class.forName(
                    TAG_TASK_FRAGMENT,
                    false,
                    classLoader
            );

            if (!taskFragmentClass.isAssignableFrom(taskClass)) {
                throw new IllegalStateException(
                        "Task is not assignable to TaskFragment"
                );
            }

            Method method = taskFragmentClass.getDeclaredMethod(
                    "getVisibility",
                    activityRecordClass
            );

            if (method.getReturnType() != int.class) {
                throw new IllegalStateException(
                        "Unexpected getVisibility return type"
                );
            }

            method.setAccessible(true);

            taskVisibilityMethod = method;

            module.safeLog(
                    Log.INFO,
                    "TASK_VISIBILITY_METHOD_INIT_OK"
                            + " declaringClass=TaskFragment"
                            + " parameter=ActivityRecord"
                            + " return=int",
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

    private void initializeVisibleRequestedMethod() {

        if (activityRecordClass == null) {
            return;
        }

        try {
            Method method =
                    activityRecordClass.getDeclaredMethod(
                            "setVisibleRequested",
                            boolean.class
                    );

            if (method.getReturnType() != void.class) {
                throw new IllegalStateException(
                        "Unexpected setVisibleRequested return type"
                );
            }

            method.setAccessible(true);

            setVisibleRequestedMethod = method;

            module.safeLog(
                    Log.INFO,
                    "VISIBLE_REQUESTED_METHOD_INIT_OK"
                            + " method=ActivityRecord.setVisibleRequested"
                            + " parameter=boolean"
                            + " private="
                            + java.lang.reflect.Modifier.isPrivate(
                                    method.getModifiers()
                            ),
                    null
            );

        } catch (Throwable error) {

            setVisibleRequestedMethod = null;

            module.safeLog(
                    Log.ERROR,
                    "VISIBLE_REQUESTED_METHOD_INIT_FAILED",
                    error
            );
        }
    }

    private void initializeEndVisibilityMethod() {

        if (supervisorClass == null) {
            return;
        }

        try {
            Method method =
                    supervisorClass.getDeclaredMethod(
                            "endActivityVisibilityUpdate"
                    );

            if (method.getReturnType() != void.class) {
                throw new IllegalStateException(
                        "Unexpected endActivityVisibilityUpdate return type"
                );
            }

            method.setAccessible(true);

            endActivityVisibilityUpdateMethod = method;

            module.safeLog(
                    Log.INFO,
                    "END_VISIBILITY_METHOD_INIT_OK",
                    null
            );

        } catch (Throwable error) {

            endActivityVisibilityUpdateMethod = null;

            module.safeLog(
                    Log.ERROR,
                    "END_VISIBILITY_METHOD_INIT_FAILED",
                    error
            );
        }
    }

    // ============================================================
    // Hook 1：ATMS.updateTopApp
    // ============================================================

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
                            + " method=ATMS.updateTopApp",
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

    // ============================================================
    // Hook 2：ActivityRecord.setVisibleRequested(boolean)
    // ============================================================

    private void hookVisibleRequested() {

        if (setVisibleRequestedMethod == null) {

            module.safeLog(
                    Log.ERROR,
                    "VISIBLE_REQUESTED_HOOK_SKIPPED"
                            + " reason=METHOD_MISSING",
                    null
            );

            return;
        }

        try {
            module.hook(setVisibleRequestedMethod).intercept(chain -> {

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

                    /*
                     * 必须确认前后值均可读取。
                     *
                     * 读取失败时不标记为后台，
                     * 也不清除已有的 dirty。
                     */
                    if (!(beforeValue instanceof Boolean)
                            || !(afterValue instanceof Boolean)) {

                        return result;
                    }

                    boolean before =
                            ((Boolean) beforeValue).booleanValue();

                    boolean after =
                            ((Boolean) afterValue).booleanValue();

                    /*
                     * 只处理真正发生变化的调用。
                     */
                    if (before == after) {
                        return result;
                    }

                    Object wpc = readFieldStrict(
                            activity,
                            "app"
                    );

                    if (wpc == READ_FAILED) {
                        return result;
                    }

                    if (!ProcessSnapshot.isTargetWpc(wpc)) {
                        return result;
                    }

                    /*
                     * 目标应用可见性发生变化。
                     *
                     * 这里不直接判断前台或后台，
                     * 只记录需要重新计算状态。
                     */
                    visibilityDirty.set(true);

                    Object supervisor = readFieldStrict(
                            activity,
                            "mTaskSupervisor"
                    );

                    if (supervisor == READ_FAILED
                            || supervisor == null) {

                        return result;
                    }

                    Object updating =
                            SafeReflection.invokeNoArg(
                                    supervisor,
                                    "inActivityVisibilityUpdate"
                            );

                    Object deferred =
                            SafeReflection.invokeNoArg(
                                    supervisor,
                                    "isRootVisibilityUpdateDeferred"
                            );

                    /*
                     * 事务状态无法读取时，
                     * 等待 endActivityVisibilityUpdate
                     * 或 ensureActivitiesVisible 兜底。
                     */
                    if (!(updating instanceof Boolean)
                            || !(deferred instanceof Boolean)) {

                        return result;
                    }

                    boolean inUpdate =
                            ((Boolean) updating).booleanValue();

                    boolean rootDeferred =
                            ((Boolean) deferred).booleanValue();

                    /*
                     * 正处于可见性事务中：
                     * 不提前扫描，等待事务结束。
                     */
                    if (inUpdate) {
                        return result;
                    }

                    /*
                     * Root 更新被延迟：
                     * 保留 dirty，等待后续兜底入口。
                     */
                    if (rootDeferred) {
                        return result;
                    }

                    /*
                     * 没有事务且 Root 没有延迟，
                     * 可以立即扫描。
                     */
                    Object root = readFieldStrict(
                            supervisor,
                            "mRootWindowContainer"
                    );

                    if (root == READ_FAILED || root == null) {
                        return result;
                    }

                    refreshIfReady(
                            root,
                            supervisor,
                            "ActivityRecord.setVisibleRequested"
                    );

                } catch (Throwable error) {

                    reportVisibilityError(error);
                }

                return result;
            });

            module.safeLog(
                    Log.INFO,
                    "VISIBLE_REQUESTED_HOOK_OK"
                            + " method=ActivityRecord.setVisibleRequested",
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
    // Hook 3：ActivityTaskSupervisor.endActivityVisibilityUpdate
    // ============================================================

    private void hookEndActivityVisibilityUpdate() {

        if (endActivityVisibilityUpdateMethod == null) {

            module.safeLog(
                    Log.ERROR,
                    "END_VISIBILITY_HOOK_SKIPPED"
                            + " reason=METHOD_MISSING",
                    null
            );

            return;
        }

        try {
            module.hook(
                    endActivityVisibilityUpdateMethod
            ).intercept(chain -> {

                Object supervisor = chain.getThisObject();

                /*
                 * 先执行系统原始方法。
                 *
                 * 仓库 Smali 显示：
                 * depth 归零后会执行批量状态计算，
                 * 随后调用 updateActivitiesVisibility。
                 *
                 * 因此在 proceed() 返回后检查，
                 * 可以避开事务尚未结束的中间状态。
                 */
                Object result = chain.proceed();

                try {
                    if (!visibilityDirty.get()) {
                        return result;
                    }

                    Object updating =
                            SafeReflection.invokeNoArg(
                                    supervisor,
                                    "inActivityVisibilityUpdate"
                            );

                    Object deferred =
                            SafeReflection.invokeNoArg(
                                    supervisor,
                                    "isRootVisibilityUpdateDeferred"
                            );

                    if (!(updating instanceof Boolean)
                            || !(deferred instanceof Boolean)) {

                        return result;
                    }

                    boolean inUpdate =
                            ((Boolean) updating).booleanValue();

                    boolean rootDeferred =
                            ((Boolean) deferred).booleanValue();

                    /*
                     * endActivityVisibilityUpdate 可能嵌套调用。
                     * 只有最外层事务真正结束才扫描。
                     */
                    if (inUpdate || rootDeferred) {
                        return result;
                    }

                    Object root = readFieldStrict(
                            supervisor,
                            "mRootWindowContainer"
                    );

                    if (root == READ_FAILED || root == null) {
                        return result;
                    }

                    refreshIfReady(
                            root,
                            supervisor,
                            "ActivityTaskSupervisor.endActivityVisibilityUpdate"
                    );

                } catch (Throwable error) {

                    reportVisibilityError(error);
                }

                return result;
            });

            module.safeLog(
                    Log.INFO,
                    "END_VISIBILITY_HOOK_OK"
                            + " method=ActivityTaskSupervisor."
                            + "endActivityVisibilityUpdate",
                    null
            );

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "END_VISIBILITY_HOOK_FAILED stage=REGISTER",
                    error
            );
        }
    }

    // ============================================================
    // Hook 4：RootWindowContainer.ensureActivitiesVisible
    // ============================================================

    private void hookEnsureActivitiesVisible() {

        if (activityRecordClass == null
                || taskClass == null
                || taskVisibilityMethod == null) {

            module.safeLog(
                    Log.ERROR,
                    "ENSURE_VISIBILITY_HOOK_SKIPPED"
                            + " reason=DEPENDENCY_MISSING",
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
                throw new NoSuchMethodException(
                        "ensureActivitiesVisible"
                );
            }

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "ENSURE_VISIBILITY_HOOK_FAILED stage=FIND_METHOD",
                    error
            );

            return;
        }

        try {
            module.hook(targetMethod).intercept(chain -> {

                Object result = chain.proceed();

                try {
                    /*
                     * 这是补充检查入口。
                     *
                     * 不再每次无条件遍历整棵树，
                     * 只有存在待处理变化时才扫描。
                     */
                    if (!visibilityDirty.get()) {
                        return result;
                    }

                    Object root = chain.getThisObject();

                    Object supervisor = readFieldStrict(
                            root,
                            "mTaskSupervisor"
                    );

                    if (supervisor == READ_FAILED
                            || supervisor == null) {

                        return result;
                    }

                    refreshIfReady(
                            root,
                            supervisor,
                            "RootWindowContainer.ensureActivitiesVisible"
                    );

                } catch (Throwable error) {

                    reportVisibilityError(error);
                }

                return result;
            });

            ensureActivitiesVisibleMethod = targetMethod;

            module.safeLog(
                    Log.INFO,
                    "ENSURE_VISIBILITY_HOOK_OK"
                            + " method=RootWindowContainer."
                            + targetMethod.getName()
                            + " parameterCount="
                            + targetMethod.getParameterCount(),
                    null
            );

        } catch (Throwable error) {

            module.safeLog(
                    Log.ERROR,
                    "ENSURE_VISIBILITY_HOOK_FAILED stage=REGISTER",
                    error
            );
        }
    }

    /**
     * 优先使用四参数版本。
     * 如果不存在，才使用三参数版本。
     *
     * 只注册一个重载，避免双重扫描。
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

    // ============================================================
    // 快照触发与事务检查
    // ============================================================

    private void refreshIfReady(
            Object root,
            Object supervisor,
            String source
    ) {

        if (root == null || supervisor == null) {
            return;
        }

        if (!visibilityDirty.get()) {
            return;
        }

        Object updating =
                SafeReflection.invokeNoArg(
                        supervisor,
                        "inActivityVisibilityUpdate"
                );

        Object deferred =
                SafeReflection.invokeNoArg(
                        supervisor,
                        "isRootVisibilityUpdateDeferred"
                );

        /*
         * null 表示反射读取失败。
         * 不允许把读取失败当作 false。
         */
        if (!(updating instanceof Boolean)
                || !(deferred instanceof Boolean)) {

            return;
        }

        if (((Boolean) updating).booleanValue()) {
            return;
        }

        if (((Boolean) deferred).booleanValue()) {
            return;
        }

        /*
         * refreshTargetTaskVisibility 只有在扫描完整、
         * 结果可靠时才返回 true。
         */
        boolean success = refreshTargetTaskVisibility(root);

        if (!success) {
            return;
        }

        /*
         * 只有成功完成扫描才清除 dirty。
         *
         * 使用 compareAndSet，避免覆盖扫描期间
         * 其他线程刚刚产生的新变化。
         */
        visibilityDirty.compareAndSet(true, false);

        publishState(source);
    }

    // ============================================================
    // Task 可见性扫描
    // ============================================================

    private boolean refreshTargetTaskVisibility(
            Object root
    ) {

        if (root == null
                || taskVisibilityMethod == null
                || taskClass == null
                || activityRecordClass == null) {

            return false;
        }

        Object rootChildren = readFieldStrict(
                root,
                "mChildren"
        );

        if (!(rootChildren instanceof Iterable)) {
            return false;
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
            return false;
        }

        /*
         * 没有目标 Task：
         * 当前 WindowContainer 树中没有目标应用 Activity。
         *
         * 只有完整扫描成功后，才允许更新为不可见。
         */
        if (targetTasks.isEmpty()) {

            updateTargetVisibility(false);

            return true;
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

                switch (visibility) {

                    case TASK_FRAGMENT_VISIBILITY_VISIBLE:

                    case TASK_FRAGMENT_VISIBILITY_VISIBLE_BEHIND_TRANSLUCENT:

                        /*
                         * 任意一个 Task 可见，
                         * 就足以确认目标应用仍然可见。
                         */
                        anyVisible = true;

                        break;

                    case TASK_FRAGMENT_VISIBILITY_INVISIBLE:

                        break;

                    default:

                        allReadSuccess = false;

                        break;
                }

                /*
                 * 已经确认至少一个 Task 可见，
                 * 不需要再依赖其他 Task 的结果来判定可见。
                 */
                if (anyVisible) {
                    break;
                }

            } catch (Throwable error) {

                allReadSuccess = false;
            }
        }

        if (anyVisible) {

            updateTargetVisibility(true);

            return true;
        }

        /*
         * 没有可见 Task 时，必须确认所有 Task
         * 都成功返回 INVISIBLE。
         */
        if (!allReadSuccess) {
            return false;
        }

        updateTargetVisibility(false);

        return true;
    }

    /**
     * 遍历 WindowContainer 树。
     *
     * currentTask 保存当前 ActivityRecord 所属 Task。
     */
    private boolean scanContainer(
            Object node,
            Object currentTask,
            Set<Object> visited,
            Set<Object> targetTasks,
            int depth
    ) {

        if (node == null) {
            return true;
        }

        if (depth > 80) {
            return false;
        }

        if (!visited.add(node)) {
            return true;
        }

        Object task = currentTask;

        if (taskClass.isInstance(node)) {
            task = node;
        }

        if (activityRecordClass.isInstance(node)) {

            Object wpc = readFieldStrict(
                    node,
                    "app"
            );

            /*
             * app 为 null 可能表示 Activity 正在销毁。
             * 不能因此直接判定目标应用后台。
             *
             * READ_FAILED 更不能被当成 null。
             */
            if (wpc == READ_FAILED) {
                return false;
            }

            if (ProcessSnapshot.isTargetWpc(wpc)) {

                if (task == null) {
                    return false;
                }

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

    // ============================================================
    // 状态机
    // ============================================================

    private void updateTargetVisibility(
            boolean visible
    ) {

        targetVisible = visible;
    }

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
                        + " dirty="
                        + visibilityDirty.get()
                        + " source="
                        + source;

        postLog(
                System.currentTimeMillis(),
                message
        );
    }

    // ============================================================
    // 反射与错误处理
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
                "VISIBILITY_CALLBACK_ERROR",
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
             * 日志异常不得影响 system_server。
             */
        }
    }
}