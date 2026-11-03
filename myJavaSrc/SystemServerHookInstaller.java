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
import java.lang.reflect.Method;
import java.nio.charset.StandardCharsets;
import java.text.SimpleDateFormat;
import java.util.Collections;
import java.util.Date;
import java.util.Locale;
import java.util.Map;
import java.util.WeakHashMap;
import java.util.concurrent.ArrayBlockingQueue;
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

    /*
     * 日志单线程执行器。
     *
     * Hook 回调只采集数据并提交日志，
     * 不在 system_server 原始调用线程中执行文件 I/O。
     */
    private final ThreadPoolExecutor logExecutor;

    /*
     * 文件日志状态只允许日志执行器线程访问。
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
     * WPC 快照去重缓存。
     *
     * 使用 WeakHashMap，避免缓存长期强引用 WPC。
     * 同步 Map，保证不同 Hook 回调访问时的线程安全。
     */
    private final Map<Object, String> lastWpcSnapshots =
            Collections.synchronizedMap(
                    new WeakHashMap<>()
            );

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
    }

    /**
     * 安装全部观察型 Hook。
     */
    void install() {

        // Tracker：整体可见性上升沿。
        hookAfter(
                TRACKER,
                "onAnyActivityVisible",
                new String[]{WPC},
                chain -> logWpcEvent(
                        "TRACKER_VISIBLE",
                        chain.getArg(0)
                )
        );

        // Tracker：整体可见性下降沿。
        hookAfter(
                TRACKER,
                "onAllActivitiesInvisible",
                new String[]{WPC},
                chain -> logWpcEvent(
                        "TRACKER_INVISIBLE",
                        chain.getArg(0)
                )
        );

        // WPC：进程 Activity 状态重新计算完成。
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
         * ATS：可见性事务结束。
         *
         * 保留原 Hook 点位。
         * 不再记录全系统 depth=0 事件，
         * 避免无关应用产生大量日志。
         */
        hookAfter(
                ATS,
                "endActivityVisibilityUpdate",
                new String[0],
                chain -> {
                    // 仅观察 Hook 是否正常触发，不输出全局事务日志。
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
                        }

                        /*
                         * 必须先执行原方法。
                         *
                         * 原方法抛出异常时直接向外传播，
                         * 不改变原方法异常行为。
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

                        /*
                         * 读取失败时不猜测状态。
                         * 只有前后都成功读取且数值不同才记录。
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

                            // 原方法异常原样抛出。
                            throw originalError;
                        }
                    });
                }
        );
    }

    /**
     * 安装 after 型 Hook。
     *
     * 先执行原方法。
     * 观察代码出错时只记录异常，不影响原方法结果。
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
     *
     * 单个 Hook 安装失败不会阻止后续 Hook。
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
     * Tracker 事件是可见性边沿，始终记录。
     *
     * WPC_COMPUTE 是高频计算事件，
     * 只有快照发生变化才记录。
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

            String previous;

            synchronized (lastWpcSnapshots) {

                previous = lastWpcSnapshots.get(wpc);

                if (snapshot.equals(previous)) {
                    return;
                }

                lastWpcSnapshots.put(
                        wpc,
                        snapshot
                );
            }

            postLog(
                    Log.INFO,
                    snapshot.replaceFirst(
                            "^WPC_STATE",
                            "WPC_COMPUTE"
                    )
            );

            return;
        }

        // Tracker 边沿事件不参与去重。
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

        // 保留 LSPosed 原生日志。
        module.safeLog(
                priority,
                message,
                throwable
        );

        if (fileLogDisabled) {
            return;
        }

        try {

            if (fileLogWriter == null) {
                openLogFile();
            }

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
     * 创建日志目录并以追加模式打开日志文件。
     */
    private void openLogFile() throws IOException {

        File parent = LOG_FILE.getParentFile();

        if (parent == null) {

            throw new IOException(
                    "Log parent directory is null"
            );
        }

        if (!parent.exists()) {

            if (!parent.mkdirs() && !parent.isDirectory()) {

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

        fileLogWriter = new BufferedWriter(
                new OutputStreamWriter(
                        new FileOutputStream(LOG_FILE, true),
                        StandardCharsets.UTF_8
                )
        );
    }

    /**
     * 文件日志不可用时关闭 Writer。
     *
     * 只向 LSPosed 原生日志报告一次，
     * 防止文件权限错误造成无限日志递归。
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

    private interface AfterAction {

        void run(XposedInterface.Chain chain)
                throws Throwable;
    }

    private interface MethodInstaller {

        void install(Method method)
                throws Throwable;
    }
}