
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
import java.util.Date;
import java.util.Locale;
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
            new File("/data/media/0/Android/墓碑日志.log");

    private final ModuleEntry module;

    private final ClassLoader classLoader;

    /*
     * 日志单线程执行器。
     *
     * Hook 回调只采集少量数据并提交日志，
     * 不在 system_server 原始调用线程中做 I/O。
     *
     * 队列有上限，避免异常情况下日志堆积。
     */
    private final ThreadPoolExecutor logExecutor;

    /*
     * 以下文件日志状态只允许日志执行器线程访问。
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

        // ATS：可见性事务结束。
        hookAfter(
                ATS,
                "endActivityVisibilityUpdate",
                new String[0],
                chain -> {

                    Object supervisor =
                            chain.getThisObject();

                    int depth =
                            SafeReflection.readInt(
                                    supervisor,
                                    "mVisibilityTransactionDepth",
                                    Integer.MIN_VALUE
                            );

                    if (depth == 0) {

                        postLog(
                                Log.INFO,
                                "VISIBILITY_TX_COMMIT depth=0"
                        );

                    } else if (depth == Integer.MIN_VALUE) {

                        postLog(
                                Log.WARN,
                                "VISIBILITY_TX_END depth=unknown"
                        );
                    }
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
                "PROCESS_STATE_CUR"
        );

        // ProcessStateRecord：已提交进程状态变化。
        hookProcessStateSetter(
                "setSetProcState",
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
     */
    private void hookProcessStateSetter(
            String methodName,
            String eventName
    ) {

        hookAfter(
                PROCESS_STATE,
                methodName,
                new String[]{"int"},
                chain -> {

                    Object processState =
                            chain.getThisObject();

                    Object processRecord =
                            SafeReflection.readField(
                                    processState,
                                    "mApp"
                            );

                    if (!ProcessSnapshot.isTargetProcessRecord(
                            processRecord
                    )) {
                        return;
                    }

                    Object value = chain.getArg(0);

                    String state =
                            value instanceof Number
                                    ? Integer.toString(
                                            ((Number) value).intValue()
                                    )
                                    : "unknown";

                    postLog(
                            Log.INFO,
                            ProcessSnapshot.describeProcessRecord(
                                    eventName + " value=" + state,
                                    processRecord
                            )
                    );
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

                            // 原方法异常原样抛出，不能吞掉。
                            throw originalError;
                        }
                    });
                }
        );
    }

    /**
     * 安装 after 型 Hook。
     *
     * 必须先执行原方法。
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
     */
    private void logWpcEvent(
            String event,
            Object wpc
    ) {

        if (!ProcessSnapshot.isTargetWpc(wpc)) {
            return;
        }

        postLog(
                Log.INFO,
                ProcessSnapshot.describeWpc(event, wpc)
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
     * 1. 写入 LSPosed 原生日志。
     * 2. 追加写入外部日志文件。
     */
    private void writeLog(
            int priority,
            String message,
            Throwable throwable
    ) {

        // 保留 LSPosed 原生日志。
        module.safeLog(priority, message, throwable);

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

            // 及时刷新，降低异常退出造成的日志丢失。
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
