package com.gunmubei.lsposed;

import android.util.Log;

import io.github.libxposed.api.XposedInterface;
import io.github.libxposed.api.XposedModule;
import io.github.libxposed.api.XposedModuleInterface.SystemServerStartingParam;

import java.util.concurrent.atomic.AtomicBoolean;

public final class ModuleEntry extends XposedModule {

    private static final String TAG = "GunMuBei-LSPosed";

    private static final AtomicBoolean STARTED =
            new AtomicBoolean(false);

    @Override
    public void onSystemServerStarting(SystemServerStartingParam param) {

        if (param == null) {
            safeLog(
                    Log.ERROR,
                    "onSystemServerStarting: param is null",
                    null
            );
            return;
        }

        // 确认当前框架具备 system_server Hook 能力。
        try {
            if ((getFrameworkProperties()
                    & XposedInterface.PROP_CAP_SYSTEM) == 0L) {

                safeLog(
                        Log.ERROR,
                        "Framework does not report PROP_CAP_SYSTEM",
                        null
                );
                return;
            }
        } catch (Throwable throwable) {
            safeLog(
                    Log.ERROR,
                    "Cannot read framework capability flags",
                    throwable
            );
            return;
        }

        final ClassLoader classLoader;

        try {
            classLoader = param.getClassLoader();
        } catch (Throwable throwable) {
            safeLog(
                    Log.ERROR,
                    "Cannot obtain system-server class loader",
                    throwable
            );
            return;
        }

        if (classLoader == null) {
            safeLog(
                    Log.ERROR,
                    "System-server class loader is null",
                    null
            );
            return;
        }

        // 防止重复安装 Hook。
        if (!STARTED.compareAndSet(false, true)) {
            safeLog(
                    Log.WARN,
                    "Hooks already initialized",
                    null
            );
            return;
        }

        try {
            safeLog(
                    Log.INFO,
                    "System server callback received",
                    null
            );

            SystemServerHookInstaller installer =
                    new SystemServerHookInstaller(this, classLoader);

            installer.install();

        } catch (Throwable throwable) {
            safeLog(
                    Log.ERROR,
                    "Unexpected error while initializing hooks",
                    throwable
            );
        }
    }

    /**
     * 安全日志接口。
     * 即使日志系统异常，也不能影响 system_server。
     */
    void safeLog(
            int priority,
            String message,
            Throwable throwable
    ) {

        try {
            if (throwable == null) {
                log(priority, TAG, message);
            } else {
                log(priority, TAG, message, throwable);
            }
        } catch (Throwable ignored) {
            // 日志异常不允许向 system_server 继续传播。
        }
    }
}