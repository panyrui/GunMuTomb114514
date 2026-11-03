
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
