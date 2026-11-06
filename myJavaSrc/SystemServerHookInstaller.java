
package com.gunmubei.lsposed;

import android.os.Message;
import android.util.Log;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileReader;
import java.lang.reflect.Method;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;

final class SystemServerHookInstaller {

    private static final String TAG_OOM_ADJUSTER =
            "com.android.server.am.OomAdjuster";

    private static final String HOOK_METHOD_NAME =
            "lambda$new$0$com-android-server-am-OomAdjuster";

    private static final String CGROUP_PROCS_PATH =
            "/dev/cpuset/background/cgroup.procs";

    private static final String PROC_PATH =
            "/proc/";

    private static final int STATE_UNKNOWN = -1;
    private static final int STATE_FOREGROUND = 0;
    private static final int STATE_BACKGROUND = 1;

    private final ModuleEntry module;
    private final ClassLoader classLoader;

    private final AtomicInteger lastReportedState =
            new AtomicInteger(STATE_UNKNOWN);

    private final AtomicBoolean callbackErrorLogged =
            new AtomicBoolean(false);

    private final AtomicBoolean cgroupErrorLogged =
            new AtomicBoolean(false);

    private final AtomicBoolean installErrorLogged =
            new AtomicBoolean(false);

    private final ThreadPoolExecutor logExecutor;

    private final java.text.SimpleDateFormat timeFormat =
            new java.text.SimpleDateFormat(
                    "HH:mm:ss.SSS",
                    Locale.US
            );

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

    // ============================================================
    // 安装唯一 Hook
    // ============================================================

    void install() {

        hookOomAdjusterProcessGroupCallback();

        module.safeLog(
                Log.INFO,
                "CGROUP_STATE_HOOK_INSTALL_FINISHED",
                null
        );
    }

    private void hookOomAdjusterProcessGroupCallback() {

        final Method targetMethod;

        try {
            Class<?> oomAdjusterClass = Class.forName(
                    TAG_OOM_ADJUSTER,
                    false,
                    classLoader
            );

            targetMethod = oomAdjusterClass.getDeclaredMethod(
                    HOOK_METHOD_NAME,
                    Message.class
            );

            if (targetMethod.getReturnType() != boolean.class) {
                throw new IllegalStateException(
                        "Unexpected Hook method return type: "
                                + targetMethod.getReturnType()
                );
            }

            targetMethod.setAccessible(true);

        } catch (Throwable error) {

            reportInstallError(
                    "FIND_METHOD",
                    error
            );

            return;
        }

        try {
            module.hook(targetMethod).intercept(chain -> {

                /*
                 * 必须先执行系统原方法。
                 *
                 * 原方法内部负责调用：
                 * 1. Process.setProcessGroup()
                 * 2. Process.setCgroupProcsProcessGroup()
                 *
                 * 两条路径执行完成后，再读取真实 cgroup。
                 */
                Object result = chain.proceed();

                try {
                    Object argument = chain.getArg(0);

                    if (!(argument instanceof Message)) {
                        return result;
                    }

                    Message message = (Message) argument;

                    inspectTargetProcess(message);

                } catch (Throwable error) {

                    reportCallbackError(error);
                }

                return result;
            });

            module.safeLog(
                    Log.INFO,
                    "CGROUP_STATE_HOOK_OK"
                            + " class=" + TAG_OOM_ADJUSTER
                            + " method=" + HOOK_METHOD_NAME
                            + " timing=AFTER_PROCEED"
                            + " source=" + CGROUP_PROCS_PATH,
                    null
            );

        } catch (Throwable error) {

            reportInstallError(
                    "REGISTER",
                    error
            );
        }
    }

    // ============================================================
    // 目标进程检查
    // ============================================================

    private void inspectTargetProcess(Message message) {

        if (message == null) {
            return;
        }

        /*
         * 根据 OomAdjuster.smali：
         *
         * arg1 = PID
         * arg2 = group
         * obj  = ProcessRecord
         */
        int messagePid = message.arg1;
        int messageGroup = message.arg2;

        Object processRecord = message.obj;

        if (messagePid <= 0 || processRecord == null) {
            return;
        }

        /*
         * 只处理目标应用的 ProcessRecord。
         */
        if (!ProcessSnapshot.isTargetProcessRecord(
                processRecord
        )) {
            return;
        }

        /*
         * 只监控主进程。
         * 不允许辅助进程覆盖主进程状态。
         */
        String processName =
                SafeReflection.readString(
                        processRecord,
                        "processName"
                );

        if (!ProcessSnapshot.TARGET_PACKAGE.equals(
                processName
        )) {
            return;
        }

        /*
         * 核对 Message PID 与 ProcessRecord PID。
         *
         * 防止旧 Message、进程退出或 PID 复用造成误判。
         */
        int recordPid =
                SafeReflection.readInt(
                        processRecord,
                        "mPid",
                        -1
                );

        if (recordPid <= 0 || recordPid != messagePid) {
            return;
        }

        /*
         * 进程必须仍然存在。
         */
        File procDirectory = new File(
                PROC_PATH + messagePid
        );

        if (!procDirectory.isDirectory()) {
            return;
        }

        /*
         * 最终状态只由 cgroup 文件决定。
         *
         * 不使用 messageGroup 推断前后台。
         */
        int state = readCgroupState(messagePid);

        if (state == STATE_UNKNOWN) {
            return;
        }

        publishState(
                state,
                messagePid,
                messageGroup
        );
    }

    // ============================================================
    // 读取真实 cgroup 状态
    // ============================================================

    private int readCgroupState(int targetPid) {

        if (targetPid <= 0) {
            return STATE_UNKNOWN;
        }

        BufferedReader reader = null;

        try {
            reader = new BufferedReader(
                    new FileReader(CGROUP_PROCS_PATH)
            );

            String line;

            while ((line = reader.readLine()) != null) {

                String value = line.trim();

                if (value.isEmpty()) {
                    continue;
                }

                /*
                 * 精确匹配 PID。
                 *
                 * 不使用 contains()，
                 * 防止 PID 12 错误匹配 PID 123。
                 */
                int parsedPid;

                try {
                    parsedPid = Integer.parseInt(value);
                } catch (NumberFormatException ignored) {
                    continue;
                }

                if (parsedPid == targetPid) {
                    return STATE_BACKGROUND;
                }
            }

            /*
             * 文件完整读取成功，
             * 且目标 PID 不在 background cgroup 中。
             *
             * 重新检查进程是否仍然存在，
             * 避免读取过程中进程退出。
             */
            File procDirectory = new File(
                    PROC_PATH + targetPid
            );

            if (!procDirectory.isDirectory()) {
                return STATE_UNKNOWN;
            }

            return STATE_FOREGROUND;

        } catch (Throwable error) {

            reportCgroupError(error);

            /*
             * 读取失败不能当作前台。
             */
            return STATE_UNKNOWN;

        } finally {

            if (reader != null) {
                try {
                    reader.close();
                } catch (Throwable ignored) {
                }
            }
        }
    }

    // ============================================================
    // 状态发布
    // ============================================================

    private void publishState(
            int state,
            int pid,
            int messageGroup
    ) {

        if (state != STATE_FOREGROUND
                && state != STATE_BACKGROUND) {
            return;
        }

        /*
         * 状态没有变化时不输出日志。
         */
        int previous = lastReportedState.getAndSet(state);

        if (previous == state) {
            return;
        }

        String label = state == STATE_FOREGROUND
                ? "[前台]"
                : "[后台]";

        String message =
                label
                        + " package="
                        + ProcessSnapshot.TARGET_PACKAGE
                        + " pid="
                        + pid
                        + " cgroup="
                        + CGROUP_PROCS_PATH
                        + " messageGroup="
                        + messageGroup
                        + " source=OomAdjuster.Handler";

        postLog(
                System.currentTimeMillis(),
                message
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
             * 日志失败不能影响 system_server。
             */
        }
    }

    // ============================================================
    // 错误处理
    // ============================================================

    private void reportInstallError(
            String stage,
            Throwable error
    ) {

        if (!installErrorLogged.compareAndSet(
                false,
                true
        )) {
            return;
        }

        module.safeLog(
                Log.ERROR,
                "CGROUP_STATE_HOOK_INSTALL_FAILED"
                        + " stage=" + stage,
                error
        );
    }

    private void reportCallbackError(Throwable error) {

        if (!callbackErrorLogged.compareAndSet(
                false,
                true
        )) {
            return;
        }

        module.safeLog(
                Log.ERROR,
                "CGROUP_STATE_CALLBACK_ERROR",
                error
        );
    }

    private void reportCgroupError(Throwable error) {

        if (!cgroupErrorLogged.compareAndSet(
                false,
                true
        )) {
            return;
        }

        module.safeLog(
                Log.ERROR,
                "CGROUP_FILE_READ_FAILED"
                        + " path=" + CGROUP_PROCS_PATH,
                error
        );
    }
}
