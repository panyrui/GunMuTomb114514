
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

    private static final String ANDROID_PROCESS =
            "android.os.Process";

    private static final File LOG_FILE =
            new File("/storage/emulated/0/Android/滚木碑.log");

    private static final int UNKNOWN =
            Integer.MIN_VALUE;

    private static final long NS_PER_MS = 1_000_000L;

    private final ModuleEntry module;

    private final ClassLoader classLoader;

    private final ThreadPoolExecutor logExecutor;

    private BufferedWriter fileLogWriter;

    private boolean fileLogDisabled;

    private boolean fileLogErrorReported;

    private final SimpleDateFormat logTimeFormat =
            new SimpleDateFormat(
                    "yyyy-MM-dd HH:mm:ss.SSS",
                    Locale.US
            );

    private int installedCount;

    private final WeakIdentitySnapshotCache lastWpcSnapshots =
            new WeakIdentitySnapshotCache();

    private final Set<String> reportedStateReadFailures =
            ConcurrentHashMap.newKeySet();

    /*
     * 目标应用 PID -> ProcessRecord 弱引用。
     *
     * 不强引用 ProcessRecord，避免影响对象回收。
     * PID 变化和进程清理时主动移除旧映射。
     */
    private final ConcurrentHashMap<Integer, WeakReference<Object>>
            targetProcessRecordsByPid =
            new ConcurrentHashMap<>();

    /*
     * 记录目标进程上一次成功设置的 process group。
     *
     * 只在 group 发生变化时输出日志，避免重复刷屏。
     */
    private final ConcurrentHashMap<Integer, Integer>
            lastObservedProcessGroups =
            new ConcurrentHashMap<>();

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
                            thread.setPriority(Thread.NORM_PRIORITY);
                        } catch (SecurityException ignored) {
                        }

                        return thread;
                    }
                },
                new ThreadPoolExecutor.DiscardOldestPolicy()
        );

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

        hookAfter(
                ATS,
                "endActivityVisibilityUpdate",
                new String[0],
                chain -> {
                    // 当前阶段不记录全局事务事件。
                }
        );

        /*
         * 先建立 ProcessRecord -> PID 映射。
         */
        hookProcessPidSetter();

        /*
         * 观察 android.os.Process.setProcessGroup。
         */
        hookProcessGroup();

        /*
         * 进程清理时移除 PID 映射。
         */
        hookCleanup();

        hookProcessStateSetter(
                "setCurProcState",
                "mCurProcState",
                "PROCESS_STATE_CUR"
        );

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

            if (!LOG_FILE.createNewFile()
                    && !LOG_FILE.isFile()) {

                throw new IOException(
                        "Cannot create log file: "
                                + LOG_FILE.getAbsolutePath()
                );
            }

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
     * Hook ProcessRecord.setPid。
     *
     * 在原方法执行前保存旧 PID，
     * 原方法成功后更新目标应用 PID 映射。
     */
    private void hookProcessPidSetter() {

        hookMethod(
                PROCESS_RECORD,
                "setPid",
                new String[]{"int"},
                method -> {

                    module.hook(method).intercept(chain -> {

                        Object processRecord =
                                chain.getThisObject();

                        boolean target =
                                ProcessSnapshot.isTargetProcessRecord(
                                        processRecord
                                );

                        int oldPid = target
                                ? SafeReflection.readInt(
                                        processRecord,
                                        "mPid",
                                        UNKNOWN
                                )
                                : UNKNOWN;

                        Object arg = chain.getArg(0);

                        int requestedPid =
                                arg instanceof Number
                                        ? ((Number) arg).intValue()
                                        : UNKNOWN;

                        /*
                         * 原方法异常时不更新映射。
                         */
                        Object result = chain.proceed();

                        if (!target) {
                            return result;
                        }

                        int newPid = requestedPid;

                        if (newPid == UNKNOWN) {

                            newPid = SafeReflection.readInt(
                                    processRecord,
                                    "mPid",
                                    UNKNOWN
                            );
                        }

                        /*
                         * PID 发生变化时先清除旧映射。
                         */
                        if (oldPid > 0
                                && oldPid != newPid) {

                            removeTrackedTargetPid(
                                    oldPid,
                                    processRecord
                            );
                        }

                        if (newPid > 0) {

                            WeakReference<Object> oldReference =
                                    targetProcessRecordsByPid.put(
                                            newPid,
                                            new WeakReference<>(
                                                    processRecord
                                            )
                                    );

                            /*
                             * PID 被新 ProcessRecord 复用时，
                             * 清除旧的 group 缓存。
                             */
                            if (oldReference == null
                                    || oldReference.get()
                                    != processRecord) {

                                lastObservedProcessGroups.remove(
                                        newPid
                                );
                            }

                        } else if (oldPid > 0) {

                            removeTrackedTargetPid(
                                    oldPid,
                                    processRecord
                            );
                        }

                        postLog(
                                Log.INFO,
                                ProcessSnapshot.describeProcessRecord(
                                        "PROCESS_PID_SET requestedPid="
                                                + requestedPid,
                                        processRecord
                                )
                        );

                        return result;
                    });
                }
        );
    }

    /**
     * 观察目标进程的 process group 变化。
     *
     * 这里只调用原方法，不修改参数、不阻止原方法执行。
     * 只有原方法正常返回后才记录成功事件。
     */
    private void hookProcessGroup() {

        hookMethod(
                ANDROID_PROCESS,
                "setProcessGroup",
                new String[]{"int", "int"},
                method -> {

                    module.hook(method).intercept(chain -> {

                        Object pidArg = chain.getArg(0);
                        Object groupArg = chain.getArg(1);

                        if (!(pidArg instanceof Number)
                                || !(groupArg instanceof Number)) {

                            return chain.proceed();
                        }

                        int pid =
                                ((Number) pidArg).intValue();

                        int group =
                                ((Number) groupArg).intValue();

                        if (pid <= 0) {
                            return chain.proceed();
                        }

                        WeakReference<Object> reference =
                                targetProcessRecordsByPid.get(pid);

                        Object processRecord =
                                reference == null
                                        ? null
                                        : reference.get();

                        /*
                         * 非目标进程不记录。
                         */
                        if (processRecord == null) {

                            if (reference != null) {

                                targetProcessRecordsByPid.remove(
                                        pid,
                                        reference
                                );

                                lastObservedProcessGroups.remove(pid);
                            }

                            return chain.proceed();
                        }

                        if (!ProcessSnapshot.isTargetProcessRecord(
                                processRecord
                        )) {

                            removeTrackedTargetPid(
                                    pid,
                                    processRecord
                            );

                            return chain.proceed();
                        }

                        /*
                         * 检查 PID 与 ProcessRecord 当前身份是否一致。
                         * 防止 PID 复用或清理过程中的旧映射串号。
                         */
                        int recordPid =
                                SafeReflection.readInt(
                                        processRecord,
                                        "mPid",
                                        UNKNOWN
                                );

                        if (recordPid != UNKNOWN
                                && recordPid != pid) {

                            removeTrackedTargetPid(
                                    pid,
                                    processRecord
                            );

                            return chain.proceed();
                        }

                        /*
                         * 先执行 Android 原生方法。
                         *
                         * 若 SetTaskProfiles 等操作失败并抛出异常，
                         * 不会被错误记录成成功迁移。
                         */
                        Object result = chain.proceed();

                        Integer previousGroup =
                                lastObservedProcessGroups.put(
                                        pid,
                                        group
                                );

                        /*
                         * 只有 group 确实发生变化才输出。
                         */
                        if (previousGroup == null
                                || previousGroup.intValue() != group) {

                            String oldGroupName =
                                    previousGroup == null
                                            ? "UNKNOWN"
                                            : processGroupName(
                                                    previousGroup
                                            );

                            String newGroupName =
                                    processGroupName(group);

                            String profileHint =
                                    processGroupProfileHint(group);

                            postLog(
                                    Log.INFO,
                                    ProcessSnapshot.describeProcessRecord(
                                            "CPUSET_GROUP_APPLIED"
                                                    + " requestedPid=" + pid
                                                    + " oldGroup="
                                                    + oldGroupName
                                                    + "(" + previousGroup + ")"
                                                    + " newGroup="
                                                    + newGroupName
                                                    + "(" + group + ")"
                                                    + " profileHint="
                                                    + profileHint,
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
     * 将 group 数值转换成 Android 调度组名称。
     */
    private static String processGroupName(int group) {

        switch (group) {

            case -1:
                return "DEFAULT";

            case 0:
                return "BACKGROUND";

            case 1:
                return "FOREGROUND_RESERVED";

            case 2:
                return "SYSTEM";

            case 3:
                return "AUDIO_APP";

            case 4:
                return "AUDIO_SYS";

            case 5:
                return "TOP_APP";

            case 6:
                return "RT_APP";

            case 7:
                return "RESTRICTED";

            default:
                return "UNKNOWN";
        }
    }

    /**
     * 仅给出 AOSP 默认配置中有明确对应关系的 profile 提示。
     *
     * 这不是对厂商实际配置的保证。
     */
    private static String processGroupProfileHint(int group) {

        switch (group) {

            case 0:
                return "CPUSET_SP_BACKGROUND";

            case 5:
                return "CPUSET_SP_TOP_APP";

            case 7:
                return "CPUSET_SP_RESTRICTED";

            case -1:
                return "DEFAULT_MIXED_POLICY";

            default:
                return "UNKNOWN_OR_DEVICE_SPECIFIC";
        }
    }

    /**
     * 移除指定 ProcessRecord 对应的 PID 映射。
     *
     * 必须同时验证弱引用指向的对象身份，
     * 避免旧 ProcessRecord 清理时误删已经复用的 PID。
     */
    private void removeTrackedTargetPid(
            int pid,
            Object processRecord
    ) {

        if (pid <= 0 || processRecord == null) {
            return;
        }

        WeakReference<Object> reference =
                targetProcessRecordsByPid.get(pid);

        if (reference == null) {
            return;
        }

        if (reference.get() == processRecord) {

            targetProcessRecordsByPid.remove(
                    pid,
                    reference
            );

            lastObservedProcessGroups.remove(pid);
        }
    }

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

    private void reportStateReadFailure(String fieldName) {

        if (reportedStateReadFailures.add(fieldName)) {

            postLog(
                    Log.WARN,
                    "PROCESS_STATE_READ_FAILED field="
                            + fieldName
            );
        }
    }

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

                        int trackedPid = target
                                ? SafeReflection.readInt(
                                        processRecord,
                                        "mPid",
                                        UNKNOWN
                                )
                                : UNKNOWN;

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

                        } finally {

                            if (trackedPid > 0) {

                                removeTrackedTargetPid(
                                        trackedPid,
                                        processRecord
                                );
                            }
                        }
                    });
                }
        );
    }

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
     *
     * eventTimeNs：调用 postLog 时记录的时间。
     * enqueueTimeNs：任务提交队列前记录的时间。
     *
     * 两个时间点都使用单调时钟。
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

        final long eventTimeNs = System.nanoTime();
        final long enqueueTimeNs = System.nanoTime();

        try {

            logExecutor.execute(
                    () -> writeLog(
                            priority,
                            message,
                            throwable,
                            eventTimeNs,
                            enqueueTimeNs
                    )
            );

        } catch (RuntimeException ignored) {

            // 日志提交失败不能影响 system_server。
        }
    }

    /**
     * 日志线程执行。
     */
    private void writeLog(
            int priority,
            String message,
            Throwable throwable,
            long eventTimeNs,
            long enqueueTimeNs
    ) {

        final long writeStartNs = System.nanoTime();

        long queueDelayMs =
                Math.max(
                        0L,
                        (writeStartNs - enqueueTimeNs) / NS_PER_MS
                );

        long eventAgeMs =
                Math.max(
                        0L,
                        (writeStartNs - eventTimeNs) / NS_PER_MS
                );

        String timedMessage =
                (message == null ? "null" : message)
                        + " eventAgeMs=" + eventAgeMs
                        + " queueDelayMs=" + queueDelayMs;

        module.safeLog(
                priority,
                timedMessage,
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

            fileLogWriter.write(timedMessage);

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
