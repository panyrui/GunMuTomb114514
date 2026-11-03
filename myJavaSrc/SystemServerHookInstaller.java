
package com.gunmubei.lsposed;

import android.util.Log;

import io.github.libxposed.api.XposedInterface;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.lang.ref.WeakReference;
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.Locale;
import java.util.Set;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

final class SystemServerHookInstaller {

    private static final String WPC =
            "com.android.server.wm.WindowProcessController";

    private static final String TRACKER =
            "com.android.server.wm.VisibleActivityProcessTracker";

    private static final String ATS =
            "com.android.server.wm.ActivityTaskSupervisor";

    private static final String PROCESS_RECORD =
            "com.android.server.am.ProcessRecord";

    private static final String PROCESS_STATE =
            "com.android.server.am.ProcessStateRecord";

    private static final String PROCESS_STATS =
            "com.android.server.am.ProcessStatsService";

    private static final File LOG_FILE =
            new File("/storage/emulated/0/Android/滚木碑.log");

    private static final int UNKNOWN =
            Integer.MIN_VALUE;

    private final ModuleEntry module;

    private final ClassLoader classLoader;

    private final ThreadPoolExecutor logExecutor;

    /*
     * 以下日志文件状态只由日志执行器线程访问。
     */
    private BufferedWriter fileLogWriter;

    private boolean fileLogDisabled;

    private boolean fileLogErrorReported;

    private final SimpleDateFormat logTimeFormat =
            new SimpleDateFormat(
                    "yyyy-MM-dd HH:mm:ss.SSS",
                    Locale.US
            );

    private int installedCount;

    /*
     * 弱引用 + 对象身份比较的快照缓存。
     *
     * 不使用 WeakHashMap 的 equals/hashCode 语义。
     * 不强引用 WPC，避免缓存阻止对象回收。
     */
    private final WeakIdentitySnapshotCache lastWpcSnapshots =
            new WeakIdentitySnapshotCache();

    /*
     * 状态字段读取失败诊断去重。
     *
     * 同一个字段只报告一次，避免高频 Hook 刷屏。
     */
    private final Set<String> reportedStateReadFailures =
            ConcurrentHashMap.newKeySet();

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
                new ArrayBlockingQueue<>(512),
                new ThreadFactory() {

                    @Override
                    public Thread newThread(Runnable runnable) {

                        Thread thread = new Thread(
                                runnable,
                                "GunMuBei-ObserverLog"
                        );

                        thread.setDaemon(true);

                        try {
                            thread.setPriority(Thread.MIN_PRIORITY);
                        } catch (SecurityException ignored) {
                        }

                        return thread;
                    }
                },
                new ThreadPoolExecutor.DiscardOldestPolicy()
        );

        /*
         * 每次 system_server 启动时重置日志文件。
         *
         * 该任务先于 install() 中提交的 Hook 日志进入队列，
         * 因此正常情况下会先删除旧日志并创建新日志。
         */
        try {

            logExecutor.execute(
                    this::resetLogFileForBoot
            );

        } catch (RuntimeException error) {

            module.safeLog(
                    Log.ERROR,
                    "Cannot schedule boot log reset",
                    error
            );
        }
    }

    /**
     * 安装全部观察型 Hook。
     */
    void install() {

        hookAfter(
                TRACKER,
                "onAnyActivityVisible",
                new String[]{WPC},
                chain -> logWpcEvent(
                        "TRACKER_VISIBLE",
                        chain.getArg(0)
                )
        );

        hookAfter(
                TRACKER,
                "onAllActivitiesInvisible",
                new String[]{WPC},
                chain -> logWpcEvent(
                        "TRACKER_INVISIBLE",
                        chain.getArg(0)
                )
        );

        hookAfter(
                WPC,
                "computeProcessActivityState",
                new String[0],
                chain -> logWpcEvent(
                        "WPC_COMPUTE",
                        chain.getThisObject()
                )
        );

        /*
         * 保留 ATS Hook 点位。
         * 不输出全系统事务日志，避免刷屏。
         */
        hookAfter(
                ATS,
                "endActivityVisibilityUpdate",
                new String[0],
                chain -> {
                    // 当前阶段不需要记录全局事务事件。
                }
        );

        // ProcessRecord：PID 更新。
        hookAfter(
                PROCESS_RECORD,
                "setPid",
                new String[]{"int"},
                chain -> {

                    Object processRecord =
                            chain.getThisObject();

                    if (!ProcessSnapshot.isTargetProcessRecord(
                            processRecord
                    )) {
                        return;
                    }

                    Object arg = chain.getArg(0);

                    String requestedPid =
                            arg instanceof Number
                                    ? Integer.toString(
                                            ((Number) arg).intValue()
                                    )
                                    : "unknown";

                    postLog(
                            Log.INFO,
                            ProcessSnapshot.describeProcessRecord(
                                    "PROCESS_PID_SET requestedPid="
                                            + requestedPid,
                                    processRecord
                            )
                    );
                }
        );

        // ProcessRecord：清理过程。
        hookCleanup();

        // ProcessStateRecord：当前进程状态变化。
        hookProcessStateSetter(
                "setCurProcState",
                "mCurProcState",
                "PROCESS_STATE_CUR"
        );

        // ProcessStateRecord：已提交进程状态变化。
        hookProcessStateSetter(
                "setSetProcState",
                "mSetProcState",
                "PROCESS_STATE_SET"
        );

        postLog(
                Log.INFO,
                "Hook installation finished"
                        + " installed=" + installedCount
                        + " targetPackage="
                        + ProcessSnapshot.TARGET_PACKAGE
                        + " mode=observation-only"
        );
    }

    /**
     * 每次 system_server 启动时：
     *
     * 1. 删除旧日志。
     * 2. 创建父目录（不存在时）。
     * 3. 创建新的空日志文件。
     * 4. 打开追加写入流。
     *
     * 只允许日志执行器线程调用。
     */
    private void resetLogFileForBoot() {

        try {

            File parent = LOG_FILE.getParentFile();

            if (parent == null) {

                throw new IOException(
                        "Log parent directory is null"
                );
            }

            if (!parent.exists()) {

                if (!parent.mkdirs()
                        && !parent.isDirectory()) {

                    throw new IOException(
                            "Cannot create log directory: "
                                    + parent.getAbsolutePath()
                    );
                }
            }

            if (!parent.isDirectory()) {

                throw new IOException(
                        "Log parent is not a directory: "
                                + parent.getAbsolutePath()
                );
            }

            /*
             * 旧文件存在时先删除。
             */
            if (LOG_FILE.exists()) {

                if (!LOG_FILE.isFile()) {

                    throw new IOException(
                            "Log path exists but is not a file: "
                                    + LOG_FILE.getAbsolutePath()
                    );
                }

                if (!LOG_FILE.delete()) {

                    throw new IOException(
                            "Cannot delete previous log file: "
                                    + LOG_FILE.getAbsolutePath()
                    );
                }
            }

            /*
             * 创建新日志文件。
             */
            if (!LOG_FILE.createNewFile()
                    && !LOG_FILE.isFile()) {

                throw new IOException(
                        "Cannot create log file: "
                                + LOG_FILE.getAbsolutePath()
                );
            }

            /*
             * 文件已创建，使用追加模式打开。
             */
            fileLogWriter = new BufferedWriter(
                    new OutputStreamWriter(
                            new FileOutputStream(LOG_FILE, true),
                            StandardCharsets.UTF_8
                    )
            );

            fileLogDisabled = false;

            module.safeLog(
                    Log.INFO,
                    "Log file reset successfully: "
                            + LOG_FILE.getAbsolutePath(),
                    null
            );

        } catch (Throwable error) {

            disableFileLogging(error);
        }
    }

    /**
     * Hook ProcessStateRecord 的状态设置方法。
     *
     * 原方法执行前读取旧状态，
     * 原方法执行后读取新状态。
     *
     * 只有字段真实发生变化才输出日志。
     */
    private void hookProcessStateSetter(
            String methodName,
            String fieldName,
            String eventName
    ) {

        hookMethod(
                PROCESS_STATE,
                methodName,
                new String[]{"int"},
                method -> {

                    module.hook(method).intercept(chain -> {

                        Object processState =
                                chain.getThisObject();

                        Object processRecord =
                                SafeReflection.readField(
                                        processState,
                                        "mApp"
                                );

                        boolean target =
                                ProcessSnapshot.isTargetProcessRecord(
                                        processRecord
                                );

                        int before = UNKNOWN;

                        if (target) {

                            before = SafeReflection.readInt(
                                    processState,
                                    fieldName,
                                    UNKNOWN
                            );

                            if (before == UNKNOWN) {
                                reportStateReadFailure(fieldName);
                            }
                        }

                        /*
                         * 先执行原方法。
                         * 原方法异常原样传播。
                         */
                        Object result = chain.proceed();

                        if (!target) {
                            return result;
                        }

                        int after = SafeReflection.readInt(
                                processState,
                                fieldName,
                                UNKNOWN
                        );

                        if (after == UNKNOWN) {
                            reportStateReadFailure(fieldName);
                        }

                        /*
                         * 只有前后均成功读取且数值不同才记录。
                         */
                        if (before != UNKNOWN
                                && after != UNKNOWN
                                && before != after) {

                            postLog(
                                    Log.INFO,
                                    ProcessSnapshot.describeProcessRecord(
                                            eventName
                                                    + " old=" + before
                                                    + " new=" + after,
                                            processRecord
                                    )
                            );
                        }

                        return result;
                    });
                }
        );
    }

    /**
     * 同一个字段的读取失败只报告一次。
     */
    private void reportStateReadFailure(String fieldName) {

        if (reportedStateReadFailures.add(fieldName)) {

            postLog(
                    Log.WARN,
                    "PROCESS_STATE_READ_FAILED field="
                            + fieldName
            );
        }
    }

    /**
     * Hook ProcessRecord.onCleanupApplicationRecordLSP。
     *
     * 在原方法执行前保存身份信息，
     * 因为原方法内部会清理包列表。
     */
    private void hookCleanup() {

        hookMethod(
                PROCESS_RECORD,
                "onCleanupApplicationRecordLSP",
                new String[]{
                        PROCESS_STATS,
                        "boolean",
                        "boolean"
                },
                method -> {

                    module.hook(method).intercept(chain -> {

                        Object processRecord =
                                chain.getThisObject();

                        boolean target =
                                ProcessSnapshot.isTargetProcessRecord(
                                        processRecord
                                );

                        String before = target
                                ? ProcessSnapshot.describeProcessRecord(
                                        "PROCESS_CLEANUP_PRE_SNAPSHOT",
                                        processRecord
                                )
                                : null;

                        try {

                            Object result = chain.proceed();

                            if (before != null) {

                                postLog(
                                        Log.INFO,
                                        before
                                                + " cleanupReturned="
                                                + String.valueOf(result)
                                );
                            }

                            return result;

                        } catch (Throwable originalError) {

                            if (before != null) {

                                postLog(
                                        Log.ERROR,
                                        before + " cleanupThrew",
                                        originalError
                                );
                            }

                            throw originalError;
                        }
                    });
                }
        );
    }

    /**
     * 安装 after 型 Hook。
     */
    private void hookAfter(
            String className,
            String methodName,
            String[] parameterTypeNames,
            AfterAction action
    ) {

        hookMethod(
                className,
                methodName,
                parameterTypeNames,
                method -> {

                    module.hook(method).intercept(chain -> {

                        Object result = chain.proceed();

                        try {

                            action.run(chain);

                        } catch (Throwable observerError) {

                            postLog(
                                    Log.ERROR,
                                    "Observer callback failed at "
                                            + className
                                            + "."
                                            + methodName,
                                    observerError
                            );
                        }

                        return result;
                    });
                }
        );
    }

    /**
     * 根据类名、方法名、参数类型精确寻找方法并安装 Hook。
     */
    private void hookMethod(
            String className,
            String methodName,
            String[] parameterTypeNames,
            MethodInstaller installer
    ) {

        final Class<?> ownerClass;

        try {

            ownerClass = Class.forName(
                    className,
                    false,
                    classLoader
            );

        } catch (ClassNotFoundException | LinkageError error) {

            postLog(
                    Log.ERROR,
                    "Hook class unavailable: " + className,
                    error
            );

            return;

        } catch (Throwable error) {

            postLog(
                    Log.ERROR,
                    "Unexpected error loading class: " + className,
                    error
            );

            return;
        }

        Method found = null;

        try {

            for (Method method : ownerClass.getDeclaredMethods()) {

                if (!method.getName().equals(methodName)) {
                    continue;
                }

                Class<?>[] actual =
                        method.getParameterTypes();

                if (actual.length != parameterTypeNames.length) {
                    continue;
                }

                boolean matches = true;

                for (int i = 0; i < actual.length; i++) {

                    if (!actual[i].getName().equals(
                            parameterTypeNames[i]
                    )) {

                        matches = false;
                        break;
                    }
                }

                if (matches) {
                    found = method;
                    break;
                }
            }

        } catch (Throwable error) {

            postLog(
                    Log.ERROR,
                    "Failed enumerating methods: "
                            + className + "." + methodName,
                    error
            );

            return;
        }

        if (found == null) {

            postLog(
                    Log.WARN,
                    "Exact method not found: "
                            + className + "." + methodName
            );

            return;
        }

        try {

            installer.install(found);

            installedCount++;

            postLog(
                    Log.INFO,
                    "HOOK_OK " + className + "." + methodName
            );

        } catch (Throwable error) {

            postLog(
                    Log.ERROR,
                    "HOOK_FAILED "
                            + className + "." + methodName,
                    error
            );
        }
    }

    /**
     * 记录 WPC 事件。
     *
     * Tracker 边沿事件始终记录。
     * WPC_COMPUTE 只有快照变化才记录。
     */
    private void logWpcEvent(
            String event,
            Object wpc
    ) {

        if (!ProcessSnapshot.isTargetWpc(wpc)) {
            return;
        }

        String snapshot =
                ProcessSnapshot.describeWpc(
                        "WPC_STATE",
                        wpc
                );

        if ("WPC_COMPUTE".equals(event)) {

            String previous =
                    lastWpcSnapshots.get(wpc);

            if (snapshot.equals(previous)) {
                return;
            }

            lastWpcSnapshots.put(
                    wpc,
                    snapshot
            );

            postLog(
                    Log.INFO,
                    snapshot.replaceFirst(
                            "^WPC_STATE",
                            "WPC_COMPUTE"
                    )
            );

            return;
        }

        postLog(
                Log.INFO,
                ProcessSnapshot.describeWpc(
                        event,
                        wpc
                )
        );
    }

    /**
     * 异步提交日志。
     */
    private void postLog(
            int priority,
            String message
    ) {

        postLog(priority, message, null);
    }

    private void postLog(
            int priority,
            String message,
            Throwable throwable
    ) {

        try {

            logExecutor.execute(
                    () -> writeLog(
                            priority,
                            message,
                            throwable
                    )
            );

        } catch (RuntimeException ignored) {

            // 日志提交失败不能影响 system_server。
        }
    }

    /**
     * 日志线程执行：
     *
     * 1. 写入 LSPosed 原生日志。
     * 2. 追加写入外部日志文件。
     */
    private void writeLog(
            int priority,
            String message,
            Throwable throwable
    ) {

        module.safeLog(
                priority,
                message,
                throwable
        );

        if (fileLogDisabled || fileLogWriter == null) {
            return;
        }

        try {

            fileLogWriter.write("[");
            fileLogWriter.write(
                    logTimeFormat.format(new Date())
            );

            fileLogWriter.write("] [");
            fileLogWriter.write(priorityName(priority));
            fileLogWriter.write("] ");

            fileLogWriter.write(
                    message == null ? "null" : message
            );

            fileLogWriter.newLine();

            if (throwable != null) {

                StringWriter stringWriter =
                        new StringWriter();

                PrintWriter printWriter =
                        new PrintWriter(stringWriter);

                throwable.printStackTrace(printWriter);
                printWriter.flush();

                String stackTrace =
                        stringWriter.toString();

                fileLogWriter.write(stackTrace);

                if (!stackTrace.endsWith("\n")) {
                    fileLogWriter.newLine();
                }
            }

            fileLogWriter.flush();

        } catch (Throwable error) {

            disableFileLogging(error);
        }
    }

    /**
     * 文件日志不可用时关闭 Writer。
     */
    private void disableFileLogging(Throwable error) {

        fileLogDisabled = true;

        if (fileLogWriter != null) {

            try {

                fileLogWriter.close();

            } catch (Throwable ignored) {
            }

            fileLogWriter = null;
        }

        if (!fileLogErrorReported) {

            fileLogErrorReported = true;

            module.safeLog(
                    Log.ERROR,
                    "File logging disabled: "
                            + LOG_FILE.getAbsolutePath(),
                    error
            );
        }
    }

    private static String priorityName(int priority) {

        switch (priority) {

            case Log.VERBOSE:
                return "V";

            case Log.DEBUG:
                return "D";

            case Log.INFO:
                return "I";

            case Log.WARN:
                return "W";

            case Log.ERROR:
                return "E";

            case Log.ASSERT:
                return "A";

            default:
                return Integer.toString(priority);
        }
    }

    /**
     * 弱引用对象身份快照缓存。
     *
     * 使用 == 比较对象身份，不调用 equals/hashCode。
     * 每次操作都会清理已经回收的 WPC 引用。
     */
    private static final class WeakIdentitySnapshotCache {

        private final ArrayList<SnapshotEntry> entries =
                new ArrayList<>();

        synchronized String get(Object key) {

            if (key == null) {
                return null;
            }

            String result = null;

            Iterator<SnapshotEntry> iterator =
                    entries.iterator();

            while (iterator.hasNext()) {

                SnapshotEntry entry = iterator.next();

                Object current = entry.reference.get();

                if (current == null) {

                    iterator.remove();
                    continue;
                }

                if (current == key) {
                    result = entry.snapshot;
                }
            }

            return result;
        }

        synchronized void put(
                Object key,
                String snapshot
        ) {

            if (key == null) {
                return;
            }

            Iterator<SnapshotEntry> iterator =
                    entries.iterator();

            while (iterator.hasNext()) {

                SnapshotEntry entry = iterator.next();

                Object current = entry.reference.get();

                if (current == null) {

                    iterator.remove();
                    continue;
                }

                if (current == key) {

                    entry.snapshot = snapshot;
                    return;
                }
            }

            entries.add(
                    new SnapshotEntry(key, snapshot)
            );
        }
    }

    private static final class SnapshotEntry {

        final WeakReference<Object> reference;

        String snapshot;

        SnapshotEntry(
                Object key,
                String snapshot
        ) {

            this.reference = new WeakReference<>(key);

            this.snapshot = snapshot;
        }
    }

    private interface AfterAction {

        void run(XposedInterface.Chain chain)
                throws Throwable;
    }

    private interface MethodInstaller {

        void install(Method method)
                throws Throwable;
    }
}
