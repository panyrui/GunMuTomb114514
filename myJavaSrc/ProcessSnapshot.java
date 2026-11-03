package com.gunmubei.lsposed;

import java.util.Locale;

final class ProcessSnapshot {

    // 当前测试目标。
    static final String TARGET_PACKAGE =
            "com.openai.chatgpt";

    private static final int UNKNOWN_INT =
            Integer.MIN_VALUE;

    private ProcessSnapshot() {
    }

    /**
     * 判断 WPC 是否属于目标应用。
     *
     * 优先读取 WPC 自身的 mInfo 和 mName；
     * 无法匹配时，再尝试读取 mOwner 对应的 ProcessRecord。
     */
    static boolean isTargetWpc(Object wpc) {

        if (wpc == null) {
            return false;
        }

        String processName =
                SafeReflection.readString(wpc, "mName");

        Object appInfo =
                SafeReflection.readField(wpc, "mInfo");

        String packageName =
                SafeReflection.readString(appInfo, "packageName");

        if (isTarget(packageName, processName)) {
            return true;
        }

        Object owner =
                SafeReflection.readField(wpc, "mOwner");

        return isTargetProcessRecord(owner);
    }

    /**
     * 判断 ProcessRecord 是否属于目标应用。
     */
    static boolean isTargetProcessRecord(
            Object processRecord
    ) {

        if (processRecord == null) {
            return false;
        }

        Object appInfo =
                SafeReflection.readField(processRecord, "info");

        String packageName =
                SafeReflection.readString(appInfo, "packageName");

        String processName =
                SafeReflection.readString(
                        processRecord,
                        "processName"
                );

        return isTarget(packageName, processName);
    }

    private static boolean isTarget(
            String packageName,
            String processName
    ) {

        if (TARGET_PACKAGE.equals(packageName)) {
            return true;
        }

        return processName != null
                && (
                TARGET_PACKAGE.equals(processName)
                || processName.startsWith(TARGET_PACKAGE + ":")
        );
    }

    /**
     * 提取 WindowProcessController 状态。
     */
    static String describeWpc(
            String event,
            Object wpc
    ) {

        if (wpc == null) {
            return event + " wpc=null";
        }

        String processName =
                valueOrUnknown(
                        SafeReflection.readString(wpc, "mName")
                );

        Object appInfo =
                SafeReflection.readField(wpc, "mInfo");

        String packageName =
                SafeReflection.readString(
                        appInfo,
                        "packageName"
                );

        Object owner =
                SafeReflection.readField(wpc, "mOwner");

        // mInfo 不可读取时，尝试从 ProcessRecord 获取包名。
        if (packageName == null) {

            Object ownerInfo =
                    SafeReflection.readField(owner, "info");

            packageName =
                    SafeReflection.readString(
                            ownerInfo,
                            "packageName"
                    );
        }

        packageName = valueOrUnknown(packageName);

        int uid =
                SafeReflection.readInt(
                        wpc,
                        "mUid",
                        UNKNOWN_INT
                );

        int pid =
                SafeReflection.readInt(
                        wpc,
                        "mPid",
                        UNKNOWN_INT
                );

        int flags =
                SafeReflection.readInt(
                        wpc,
                        "mActivityStateFlags",
                        UNKNOWN_INT
                );

        long startSeq = readStartSeq(owner);

        int ownerId = owner == null
                ? 0
                : System.identityHashCode(owner);

        StringBuilder out = new StringBuilder(240);

        out.append(event)
                .append(" package=").append(packageName)
                .append(" process=").append(processName)
                .append(" uid=").append(formatInt(uid))
                .append(" pid=").append(formatInt(pid))
                .append(" wpcId=0x")
                .append(Integer.toHexString(
                        System.identityHashCode(wpc)
                ))
                .append(" processRecordId=")
                .append(
                        owner == null
                                ? "null"
                                : "0x" + Integer.toHexString(ownerId)
                )
                .append(" startSeq=")
                .append(
                        startSeq < 0L
                                ? "unknown"
                                : Long.toString(startSeq)
                )
                .append(" flags=")
                .append(decodeFlags(flags));

        return out.toString();
    }

    /**
     * 提取 ProcessRecord 身份信息。
     */
    static String describeProcessRecord(
            String event,
            Object processRecord
    ) {

        if (processRecord == null) {
            return event + " processRecord=null";
        }

        Object appInfo =
                SafeReflection.readField(processRecord, "info");

        String packageName =
                valueOrUnknown(
                        SafeReflection.readString(
                                appInfo,
                                "packageName"
                        )
                );

        String processName =
                valueOrUnknown(
                        SafeReflection.readString(
                                processRecord,
                                "processName"
                        )
                );

        int uid =
                SafeReflection.readInt(
                        processRecord,
                        "uid",
                        UNKNOWN_INT
                );

        int pid =
                SafeReflection.readInt(
                        processRecord,
                        "mPid",
                        UNKNOWN_INT
                );

        long startSeq = readStartSeq(processRecord);

        StringBuilder out = new StringBuilder(180);

        out.append(event)
                .append(" package=").append(packageName)
                .append(" process=").append(processName)
                .append(" uid=").append(formatInt(uid))
                .append(" pid=").append(formatInt(pid))
                .append(" processRecordId=0x")
                .append(Integer.toHexString(
                        System.identityHashCode(processRecord)
                ))
                .append(" startSeq=")
                .append(
                        startSeq < 0L
                                ? "unknown"
                                : Long.toString(startSeq)
                );

        return out.toString();
    }

    /**
     * 获取进程 startSeq。
     *
     * 优先调用 getStartSeq()；
     * 失败时再尝试读取 mStartSeq。
     */
    static long readStartSeq(Object processRecord) {

        if (processRecord == null) {
            return -1L;
        }

        Object value =
                SafeReflection.invokeNoArg(
                        processRecord,
                        "getStartSeq"
                );

        if (value instanceof Number) {
            return ((Number) value).longValue();
        }

        return SafeReflection.readLong(
                processRecord,
                "mStartSeq",
                -1L
        );
    }

    /**
     * 解析 WPC 的 mActivityStateFlags。
     */
    private static String decodeFlags(int flags) {

        if (flags == UNKNOWN_INT) {
            return "unknown";
        }

        boolean visibleRequested =
                (flags & 0x10000) != 0;

        boolean pausingOrPaused =
                (flags & 0x20000) != 0;

        boolean stopping =
                (flags & 0x40000) != 0;

        boolean stoppingFinishing =
                (flags & 0x80000) != 0;

        boolean windowVisible =
                (flags & 0x100000) != 0;

        boolean resumed =
                (flags & 0x200000) != 0;

        boolean task =
                (flags & 0x400000) != 0;

        int layer = flags & 0xFFFF;

        return String.format(
                Locale.US,
                "0x%08X[V=%d,P=%d,S=%d,F=%d,W=%d,R=%d,Task=%d,Layer=%d,AnyVisible=%d]",
                flags,
                bit(visibleRequested),
                bit(pausingOrPaused),
                bit(stopping),
                bit(stoppingFinishing),
                bit(windowVisible),
                bit(resumed),
                bit(task),
                layer,
                bit(visibleRequested || windowVisible)
        );
    }

    private static int bit(boolean value) {
        return value ? 1 : 0;
    }

    private static String formatInt(int value) {
        return value == UNKNOWN_INT
                ? "unknown"
                : Integer.toString(value);
    }

    private static String valueOrUnknown(String value) {
        return value == null || value.isEmpty()
                ? "unknown"
                : value;
    }
}