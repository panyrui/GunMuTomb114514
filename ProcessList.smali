# classes.dex

.class public final Lcom/android/server/am/ProcessList;
.super Ljava/lang/Object;
.source "ProcessList.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;,
        Lcom/android/server/am/ProcessList$ProcStartHandler;,
        Lcom/android/server/am/ProcessList$ProcStateMemTracker;,
        Lcom/android/server/am/ProcessList$KillHandler;,
        Lcom/android/server/am/ProcessList$MyProcessMap;,
        Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;,
        Lcom/android/server/am/ProcessList$IsolatedUidRange;
    }
.end annotation


# static fields
.field static final ANDROID_APP_DATA_ISOLATION_ENABLED_PROPERTY:Ljava/lang/String; = "persist.zygote.app_data_isolation"

.field static final ANDROID_VOLD_APP_DATA_ISOLATION_ENABLED_PROPERTY:Ljava/lang/String; = "persist.sys.vold_app_data_isolation_enabled"

.field private static final APP_DATA_DIRECTORY_ISOLATION:J = 0x89450c5L

.field public static final BACKUP_APP_ADJ:I = 0x12c

.field static final CACHED_APP_IMPORTANCE_LEVELS:I = 0x5

.field public static final CACHED_APP_LMK_FIRST_ADJ:I = 0x3b6

.field public static final CACHED_APP_MAX_ADJ:I = 0x3e7

.field public static final CACHED_APP_MIN_ADJ:I = 0x384

.field private static final DEF_MIN_EXTRA_FREE_KB:I

.field private static final ENABLE_MI_EXTRA_FREE:Z

.field public static final FOREGROUND_APP_ADJ:I = 0x0

.field public static final HEAVY_WEIGHT_APP_ADJ:I = 0x190

.field public static final HOME_APP_ADJ:I = 0x258

.field public static final INVALID_ADJ:I = -0x2710

.field private static final LMKD_RECONNECT_DELAY_MS:J = 0x3e8L

.field static final LMK_ASYNC_EVENT_KILL:I = 0x0

.field static final LMK_ASYNC_EVENT_STAT:I = 0x1

.field static final LMK_GAME:B = 0x11t

.field static final LMK_GETKILLCNT:B = 0x4t

.field static final LMK_KILL_OCCURRED:B = 0x8t

.field static final LMK_PROCKILL:B = 0x6t

.field static final LMK_PROCPRIO:B = 0x1t

.field static final LMK_PROCPURGE:B = 0x3t

.field static final LMK_PROCREMOVE:B = 0x2t

.field static final LMK_SPTM:B = 0x10t

.field static final LMK_STATE_CHANGED:B = 0x9t

.field static final LMK_SUBSCRIBE:B = 0x5t

.field static final LMK_TARGET:B = 0x0t

.field static final LMK_UPDATE_PROPS:B = 0x7t

.field private static final MAX_ZYGOTE_UNSOLICITED_MESSAGE_SIZE:I = 0x10

.field static final MIN_CACHED_APPS:I = 0x2

.field public static final NATIVE_ADJ:I = -0x3e8

.field static final NETWORK_STATE_BLOCK:I = 0x1

.field static final NETWORK_STATE_NO_CHANGE:I = 0x0

.field static final NETWORK_STATE_UNBLOCK:I = 0x2

.field static final PAGE_SIZE:I = 0x1000

.field public static final PERCEPTIBLE_APP_ADJ:I = 0xc8

.field public static final PERCEPTIBLE_LOW_APP_ADJ:I = 0xfa

.field public static final PERCEPTIBLE_MEDIUM_APP_ADJ:I = 0xe1

.field public static final PERCEPTIBLE_RECENT_FOREGROUND_APP_ADJ:I = 0x32

.field public static final PERSISTENT_PROC_ADJ:I = -0x320

.field public static final PERSISTENT_SERVICE_ADJ:I = -0x2bc

.field public static final PREVIOUS_APP_ADJ:I = 0x2bc

.field public static final PROC_MEM_CACHED:I = 0x4

.field public static final PROC_MEM_IMPORTANT:I = 0x2

.field public static final PROC_MEM_NUM:I = 0x5

.field public static final PROC_MEM_PERSISTENT:I = 0x0

.field public static final PROC_MEM_SERVICE:I = 0x3

.field public static final PROC_MEM_TOP:I = 0x1

.field private static final PROPERTY_USE_APP_IMAGE_STARTUP_CACHE:Ljava/lang/String; = "persist.device_config.runtime_native.use_app_image_startup_cache"

.field public static final PSS_ALL_INTERVAL:I = 0x124f80

.field private static final PSS_FIRST_ASLEEP_BACKGROUND_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_ASLEEP_CACHED_INTERVAL:I = 0xea60

.field private static final PSS_FIRST_ASLEEP_PERSISTENT_INTERVAL:I = 0xea60

.field private static final PSS_FIRST_ASLEEP_TOP_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_BACKGROUND_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_CACHED_INTERVAL:I = 0x4e20

.field private static final PSS_FIRST_PERSISTENT_INTERVAL:I = 0x7530

.field private static final PSS_FIRST_TOP_INTERVAL:I = 0x2710

.field public static final PSS_MAX_INTERVAL:I = 0x36ee80

.field public static final PSS_MIN_TIME_FROM_STATE_CHANGE:I = 0x3a98

.field public static final PSS_SAFE_TIME_FROM_STATE_CHANGE:I = 0x3e8

.field private static final PSS_SAME_CACHED_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_IMPORTANT_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_PERSISTENT_INTERVAL:I = 0x927c0

.field private static final PSS_SAME_SERVICE_INTERVAL:I = 0x493e0

.field private static final PSS_SAME_TOP_INTERVAL:I = 0xea60

.field private static final PSS_TEST_FIRST_BACKGROUND_INTERVAL:I = 0x1388

.field private static final PSS_TEST_FIRST_TOP_INTERVAL:I = 0xbb8

.field public static final PSS_TEST_MIN_TIME_FROM_STATE_CHANGE:I = 0x2710

.field private static final PSS_TEST_SAME_BACKGROUND_INTERVAL:I = 0x3a98

.field private static final PSS_TEST_SAME_IMPORTANT_INTERVAL:I = 0x2710

.field static final SCHED_GROUP_BACKGROUND:I = 0x0

.field static final SCHED_GROUP_DEFAULT:I = 0x2

.field static final SCHED_GROUP_RESTRICTED:I = 0x1

.field public static final SCHED_GROUP_TOP_APP:I = 0x3

.field static final SCHED_GROUP_TOP_APP_BOUND:I = 0x4

.field public static final SERVICE_ADJ:I = 0x1f4

.field public static final SERVICE_B_ADJ:I = 0x320

.field public static final SYSTEM_ADJ:I = -0x384

.field static final TAG:Ljava/lang/String; = "ActivityManager"

.field static final TAG_PROCESS_OBSERVERS:Ljava/lang/String; = "ActivityManager"

.field static final TRIM_CRITICAL_THRESHOLD:I = 0x3

.field static final TRIM_LOW_THRESHOLD:I = 0x5

.field public static final UNKNOWN_ADJ:I = 0x3e9

.field private static final UNSOL_ZYGOTE_MSG_SOCKET_PATH:Ljava/lang/String; = "/data/system/unsolzygotesocket"

.field public static final VISIBLE_APP_ADJ:I = 0x64

.field static final VISIBLE_APP_LAYER_MAX:I = 0x63

.field public static mPerfServiceStartHint:Landroid/util/BoostFramework;

.field private static final sFirstAsleepPssTimes:[J

.field private static final sFirstAwakePssTimes:[J

.field static sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

.field static sKillThread:Lcom/android/server/ServiceThread;

.field private static sLmkdConnection:Lcom/android/server/am/LmkdConnection;

.field private static final sProcStateToProcMem:[I

.field private static final sSameAsleepPssTimes:[J

.field private static final sSameAwakePssTimes:[J

.field private static final sTestFirstPssTimes:[J

.field private static final sTestSamePssTimes:[J


# instance fields
.field private mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

.field mActiveUids:Lcom/android/server/am/ActiveUids;

.field private mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppDataIsolationEnabled:Z

.field final mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

.field mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

.field final mAppZygoteProcesses:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Landroid/os/AppZygote;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field final mAppZygotes:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Landroid/os/AppZygote;",
            ">;"
        }
    .end annotation
.end field

.field final mAppsInBackgroundRestricted:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mAvailProcessChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;",
            ">;"
        }
    .end annotation
.end field

.field private mCachedRestoreLevel:J

.field private mCurGameOomEnable:Z

.field final mDyingProcesses:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

.field private mHaveDisplaySize:Z

.field mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

.field final mIsolatedProcesses:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLastOomMinFreeComm:Ljava/nio/ByteBuffer;

.field private mLruProcessActivityStart:I

.field private mLruProcessServiceStart:I

.field private final mLruProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mLruSeq:I

.field private final mOomAdj:[I

.field private mOomLevelsSet:Z

.field private final mOomMinFree:[I

.field private final mOomMinFreeHigh:[I

.field private final mOomMinFreeLow:[I

.field private final mPendingProcessChanges:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;",
            ">;"
        }
    .end annotation
.end field

.field final mPendingStarts:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

.field mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private mProcStartSeqCounter:J

.field volatile mProcStateSeqCounter:J

.field private final mProcessChangeLock:Ljava/lang/Object;

.field private final mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

.field private final mProcessObservers:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList<",
            "Landroid/app/IProcessObserver;",
            ">;"
        }
    .end annotation
.end field

.field final mRemovedProcesses:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field mService:Lcom/android/server/am/ActivityManagerService;

.field final mStringBuilder:Ljava/lang/StringBuilder;

.field private mSystemServerSocketForZygote:Landroid/net/LocalSocket;

.field private final mTotalMemMb:J

.field private mVoldAppDataIsolationEnabled:Z

.field private final mZygoteSigChldMessage:[I

.field private final mZygoteUnsolicitedMessage:[B


# direct methods
.method public static synthetic $r8$lambda$eEVoHjWPClUsVDRm3xBMVJVcgcw(Lcom/android/server/am/ProcessList;Ljava/io/FileDescriptor;I)I
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessList;->handleZygoteMessages(Ljava/io/FileDescriptor;I)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mhandlePredecessorProcDied(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessList;->handlePredecessorProcDied(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$sfgetsLmkdConnection()Lcom/android/server/am/LmkdConnection;
    .registers 1

    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    return-object v0
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 322
    const-string/jumbo v0, "persist.sys.spc.extra_free_enable"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    sput-boolean v0, Lcom/android/server/am/ProcessList;->ENABLE_MI_EXTRA_FREE:Z

    .line 324
    const-string/jumbo v0, "persist.sys.spc.extra_free_kbytes"

    const v1, 0xb13f

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    sput v0, Lcom/android/server/am/ProcessList;->DEF_MIN_EXTRA_FREE_KB:I

    .line 383
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 384
    sput-object v0, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    .line 414
    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    .line 545
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/am/ProcessList;->mPerfServiceStartHint:Landroid/util/BoostFramework;

    .line 1307
    const/16 v0, 0x14

    new-array v0, v0, [I

    fill-array-data v0, :array_5a

    sput-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    .line 1330
    const/4 v0, 0x5

    new-array v1, v0, [J

    fill-array-data v1, :array_86

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    .line 1338
    new-array v1, v0, [J

    fill-array-data v1, :array_9e

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    .line 1346
    new-array v1, v0, [J

    fill-array-data v1, :array_b6

    sput-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    .line 1354
    new-array v1, v0, [J

    fill-array-data v1, :array_ce

    sput-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    .line 1362
    new-array v1, v0, [J

    fill-array-data v1, :array_e6

    sput-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    .line 1370
    new-array v0, v0, [J

    fill-array-data v0, :array_fe

    sput-object v0, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    return-void

    nop

    :array_5a
    .array-data 4
        0x0
        0x0
        0x1
        0x2
        0x1
        0x2
        0x2
        0x2
        0x2
        0x2
        0x3
        0x4
        0x1
        0x2
        0x4
        0x4
        0x4
        0x4
        0x4
        0x4
    .end array-data

    :array_86
    .array-data 8
        0x7530
        0x2710
        0x4e20
        0x4e20
        0x4e20
    .end array-data

    :array_9e
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_b6
    .array-data 8
        0xea60
        0x4e20
        0x7530
        0x7530
        0xea60
    .end array-data

    :array_ce
    .array-data 8
        0x927c0
        0xea60
        0x927c0
        0x493e0
        0x927c0
    .end array-data

    :array_e6
    .array-data 8
        0xbb8
        0xbb8
        0x1388
        0x1388
        0x1388
    .end array-data

    :array_fe
    .array-data 8
        0x3a98
        0x2710
        0x2710
        0x3a98
        0x3a98
    .end array-data
.end method

.method constructor <init>()V
    .registers 7

    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 389
    const/4 v1, 0x6

    new-array v2, v1, [I

    fill-array-data v2, :array_e6

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    .line 395
    new-array v3, v1, [I

    fill-array-data v3, :array_f6

    iput-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    .line 401
    new-array v1, v1, [I

    fill-array-data v1, :array_106

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    .line 406
    array-length v1, v2

    new-array v1, v1, [I

    iput-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    .line 416
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    .line 418
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    .line 420
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    .line 424
    iput-boolean v1, p0, Lcom/android/server/am/ProcessList;->mCurGameOomEnable:Z

    .line 429
    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x100

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 439
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    .line 445
    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    .line 453
    new-instance v2, Landroid/util/LongSparseArray;

    invoke-direct {v2}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    .line 460
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 466
    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 473
    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 479
    iput v1, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 488
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    .line 494
    new-instance v2, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v2}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    .line 500
    new-instance v2, Lcom/android/server/am/AppExitInfoTracker;

    invoke-direct {v2}, Lcom/android/server/am/AppExitInfoTracker;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    .line 506
    new-instance v2, Landroid/util/ArrayMap;

    invoke-direct {v2}, Landroid/util/ArrayMap;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    .line 513
    new-instance v2, Landroid/util/ArraySet;

    invoke-direct {v2}, Landroid/util/ArraySet;-><init>()V

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    .line 516
    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 533
    const/16 v0, 0x10

    new-array v0, v0, [B

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    .line 538
    const/4 v0, 0x3

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    .line 657
    new-instance v0, Lcom/android/server/am/ProcessList$IsolatedUidRange;

    const v2, 0x182b8

    const v3, 0x1869f

    invoke-direct {v0, p0, v2, v3}, Lcom/android/server/am/ProcessList$IsolatedUidRange;-><init>(Lcom/android/server/am/ProcessList;II)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    .line 665
    new-instance v0, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    const v2, 0x15f90

    const v3, 0x182b7

    const/16 v4, 0x64

    invoke-direct {v0, p0, v2, v3, v4}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;-><init>(Lcom/android/server/am/ProcessList;III)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    .line 674
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    .line 680
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    .line 684
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    .line 688
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 690
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    .line 693
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    .line 699
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    .line 707
    new-instance v0, Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessList$MyProcessMap;-><init>(Lcom/android/server/am/ProcessList;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    .line 765
    new-instance v0, Lcom/android/internal/util/MemInfoReader;

    invoke-direct {v0}, Lcom/android/internal/util/MemInfoReader;-><init>()V

    .line 766
    .local v0, "minfo":Lcom/android/internal/util/MemInfoReader;
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->readMemInfo()V

    .line 767
    invoke-virtual {v0}, Lcom/android/internal/util/MemInfoReader;->getTotalSize()J

    move-result-wide v2

    const-wide/32 v4, 0x100000

    div-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    .line 768
    invoke-direct {p0, v1, v1, v1}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 769
    return-void

    nop

    :array_e6
    .array-data 4
        0x0
        0x64
        0xc8
        0xfa
        0x384
        0x3b6
    .end array-data

    :array_f6
    .array-data 4
        0x3000
        0x4800
        0x6000
        0x9000
        0xa800
        0xc000
    .end array-data

    :array_106
    .array-data 4
        0x12000
        0x16800
        0x1b000
        0x1f800
        0x24000
        0x2d000
    .end array-data
.end method

.method public static appendRamKb(Ljava/lang/StringBuilder;J)V
    .registers 7
    .param p0, "sb"  # Ljava/lang/StringBuilder;
    .param p1, "ramKb"  # J

    .line 1225
    const/4 v0, 0x0

    .local v0, "j":I
    const/16 v1, 0xa

    .local v1, "fact":I
    :goto_3
    const/4 v2, 0x6

    if-ge v0, v2, :cond_15

    .line 1226
    int-to-long v2, v1

    cmp-long v2, p1, v2

    if-gez v2, :cond_10

    .line 1227
    const/16 v2, 0x20

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1225
    :cond_10
    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v1, v1, 0xa

    goto :goto_3

    .line 1230
    .end local v0  # "j":I
    .end local v1  # "fact":I
    :cond_15
    invoke-virtual {p0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 1231
    return-void
.end method

.method private static buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;
    .registers 9
    .param p0, "prefix"  # Ljava/lang/String;
    .param p1, "compactPrefix"  # Ljava/lang/String;
    .param p2, "space"  # Ljava/lang/String;
    .param p3, "val"  # I
    .param p4, "base"  # I
    .param p5, "compact"  # Z

    .line 1101
    sub-int v0, p3, p4

    .line 1102
    .local v0, "diff":I
    if-nez v0, :cond_1c

    .line 1103
    if-eqz p5, :cond_7

    .line 1104
    return-object p1

    .line 1106
    :cond_7
    if-nez p2, :cond_a

    return-object p0

    .line 1107
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1109
    :cond_1c
    const/16 v1, 0xa

    const-string v2, "+"

    if-ge v0, v1, :cond_41

    .line 1110
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz p5, :cond_2e

    goto :goto_30

    :cond_2e
    const-string v2, "+ "

    :goto_30
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1112
    :cond_41
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private checkSlow(JLjava/lang/String;)V
    .registers 10
    .param p1, "startTime"  # J
    .param p3, "where"  # Ljava/lang/String;

    .line 1668
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 1669
    .local v0, "now":J
    sub-long v2, v0, p1

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-lez v2, :cond_31

    .line 1671
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Slow operation: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sub-long v3, v0, p1

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "ms so far, now at "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1673
    :cond_31
    return-void
.end method

.method public static computeEmptyProcessLimit(I)I
    .registers 2
    .param p0, "totalProcessLimit"  # I

    .line 1096
    div-int/lit8 v0, p0, 0x2

    return v0
.end method

.method private computeGidsForProcess(II[IZ)[I
    .registers 13
    .param p1, "mountExternal"  # I
    .param p2, "uid"  # I
    .param p3, "permGids"  # [I
    .param p4, "externalStorageAccess"  # Z

    .line 1677
    new-instance v0, Ljava/util/ArrayList;

    array-length v1, p3

    add-int/lit8 v1, v1, 0x5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 1679
    .local v0, "gidList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    invoke-static {v1}, Landroid/os/UserHandle;->getSharedAppGid(I)I

    move-result v1

    .line 1680
    .local v1, "sharedAppGid":I
    invoke-static {p2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    invoke-static {v2}, Landroid/os/UserHandle;->getCacheAppGid(I)I

    move-result v2

    .line 1681
    .local v2, "cacheAppGid":I
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Landroid/os/UserHandle;->getUserGid(I)I

    move-result v3

    .line 1685
    .local v3, "userGid":I
    array-length v4, p3

    const/4 v5, 0x0

    :goto_22
    if-ge v5, v4, :cond_30

    aget v6, p3, v5

    .line 1686
    .local v6, "permGid":I
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1685
    .end local v6  # "permGid":I
    add-int/lit8 v5, v5, 0x1

    goto :goto_22

    .line 1688
    :cond_30
    const/4 v4, -0x1

    if-eq v1, v4, :cond_3a

    .line 1689
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1691
    :cond_3a
    if-eq v2, v4, :cond_43

    .line 1692
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1694
    :cond_43
    if-eq v3, v4, :cond_4c

    .line 1695
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1697
    :cond_4c
    const/4 v4, 0x4

    const/4 v5, 0x3

    const/16 v6, 0x437

    if-eq p1, v4, :cond_54

    if-ne p1, v5, :cond_75

    .line 1704
    :cond_54
    invoke-static {p2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    const/16 v7, 0x3f7

    invoke-static {v4, v7}, Landroid/os/UserHandle;->getUid(II)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1709
    const/16 v4, 0x436

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1710
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1712
    :cond_75
    const/4 v4, 0x2

    if-ne p1, v4, :cond_7f

    .line 1714
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1716
    :cond_7f
    if-ne p1, v5, :cond_8a

    .line 1720
    const/16 v4, 0x3ff

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1722
    :cond_8a
    if-eqz p4, :cond_95

    .line 1725
    const/16 v4, 0x435

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1728
    :cond_95
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    new-array v4, v4, [I

    .line 1729
    .local v4, "gidArray":[I
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_9c
    array-length v6, v4

    if-ge v5, v6, :cond_ae

    .line 1730
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    aput v6, v4, v5

    .line 1729
    add-int/lit8 v5, v5, 0x1

    goto :goto_9c

    .line 1732
    .end local v5  # "i":I
    :cond_ae
    return-object v4
.end method

.method public static computeNextPssTime(ILcom/android/server/am/ProcessList$ProcStateMemTracker;ZZJ)J
    .registers 15
    .param p0, "procState"  # I
    .param p1, "tracker"  # Lcom/android/server/am/ProcessList$ProcStateMemTracker;
    .param p2, "test"  # Z
    .param p3, "sleeping"  # Z
    .param p4, "now"  # J

    .line 1441
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v0, v0, p0

    .line 1442
    .local v0, "memState":I
    if-eqz p1, :cond_2d

    .line 1443
    iget v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    if-ge v0, v1, :cond_c

    .line 1444
    move v1, v0

    goto :goto_e

    :cond_c
    iget v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mTotalHighestMem:I

    .line 1445
    .local v1, "highestMemState":I
    :goto_e
    iget-object v2, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mHighestMem:[I

    aget v2, v2, v0

    if-ge v1, v2, :cond_16

    const/4 v2, 0x1

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    .line 1446
    .local v2, "first":Z
    :goto_17
    iput v0, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingMemState:I

    .line 1447
    iput v1, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingHighestMemState:I

    .line 1448
    if-eqz v2, :cond_23

    .line 1449
    const/high16 v3, 0x3f800000  # 1.0f

    move v4, v3

    .local v4, "scalingFactor":F
    iput v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    goto :goto_2c

    .line 1451
    .end local v4  # "scalingFactor":F
    :cond_23
    iget-object v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mScalingFactor:[F

    aget v4, v3, v0

    .line 1452
    .restart local v4  # "scalingFactor":F
    const/high16 v3, 0x3fc00000  # 1.5f

    mul-float/2addr v3, v4

    iput v3, p1, Lcom/android/server/am/ProcessList$ProcStateMemTracker;->mPendingScalingFactor:F

    .line 1454
    .end local v1  # "highestMemState":I
    :goto_2c
    goto :goto_30

    .line 1455
    .end local v2  # "first":Z
    .end local v4  # "scalingFactor":F
    :cond_2d
    const/4 v2, 0x1

    .line 1456
    .restart local v2  # "first":Z
    const/high16 v4, 0x3f800000  # 1.0f

    .line 1458
    .restart local v4  # "scalingFactor":F
    :goto_30
    if-eqz p2, :cond_3a

    .line 1459
    if-eqz v2, :cond_37

    .line 1460
    sget-object v1, Lcom/android/server/am/ProcessList;->sTestFirstPssTimes:[J

    goto :goto_4b

    .line 1461
    :cond_37
    sget-object v1, Lcom/android/server/am/ProcessList;->sTestSamePssTimes:[J

    goto :goto_4b

    .line 1462
    :cond_3a
    if-eqz v2, :cond_44

    .line 1463
    if-eqz p3, :cond_41

    sget-object v1, Lcom/android/server/am/ProcessList;->sFirstAsleepPssTimes:[J

    goto :goto_4b

    :cond_41
    sget-object v1, Lcom/android/server/am/ProcessList;->sFirstAwakePssTimes:[J

    goto :goto_4b

    .line 1464
    :cond_44
    if-eqz p3, :cond_49

    sget-object v1, Lcom/android/server/am/ProcessList;->sSameAsleepPssTimes:[J

    goto :goto_4b

    :cond_49
    sget-object v1, Lcom/android/server/am/ProcessList;->sSameAwakePssTimes:[J

    :goto_4b
    nop

    .line 1465
    .local v1, "table":[J
    aget-wide v5, v1, v0

    long-to-float v3, v5

    mul-float/2addr v3, v4

    float-to-long v5, v3

    .line 1466
    .local v5, "delay":J
    const-wide/32 v7, 0x36ee80

    cmp-long v3, v5, v7

    if-lez v3, :cond_5b

    .line 1467
    const-wide/32 v5, 0x36ee80

    .line 1469
    :cond_5b
    add-long v7, p4, v5

    return-wide v7
.end method

.method private createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;
    .registers 15
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 2213
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2216
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v1

    .line 2217
    .local v1, "uid":I
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/AppZygote;

    move-object v8, v2

    .line 2219
    .local v8, "appZygote":Landroid/os/AppZygote;
    if-nez v8, :cond_80

    .line 2220
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v2, :cond_28

    .line 2221
    const-string v2, "ActivityManager"

    const-string v3, "Creating new app zygote."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2223
    :cond_28
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2225
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v4

    .line 2224
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v2

    move-object v9, v2

    .line 2226
    .local v9, "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v2

    move v10, v2

    .line 2229
    .local v10, "userId":I
    iget v2, v9, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mFirstUid:I

    invoke-static {v10, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v6

    .line 2230
    .local v6, "firstUid":I
    iget v2, v9, Lcom/android/server/am/ProcessList$IsolatedUidRange;->mLastUid:I

    invoke-static {v10, v2}, Landroid/os/UserHandle;->getUid(II)I

    move-result v7

    .line 2231
    .local v7, "lastUid":I
    new-instance v2, Landroid/content/pm/ApplicationInfo;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v2, v3}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    move-object v11, v2

    .line 2238
    .local v11, "appInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getDefiningPackageName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2239
    iput v1, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2240
    new-instance v12, Landroid/os/AppZygote;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    move-object v2, v12

    move-object v3, v11

    move v5, v1

    invoke-direct/range {v2 .. v7}, Landroid/os/AppZygote;-><init>(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;III)V

    move-object v8, v12

    .line 2241
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3, v1, v8}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 2242
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2243
    .local v2, "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v3, v8, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2244
    nop

    .end local v6  # "firstUid":I
    .end local v7  # "lastUid":I
    .end local v9  # "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    .end local v10  # "userId":I
    .end local v11  # "appInfo":Landroid/content/pm/ApplicationInfo;
    goto :goto_9c

    .line 2245
    .end local v2  # "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_80
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v2, :cond_8b

    .line 2246
    const-string v2, "ActivityManager"

    const-string v3, "Reusing existing app zygote."

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2248
    :cond_8b
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x47

    invoke-virtual {v2, v3, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2249
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2, v8}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2255
    .restart local v2  # "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :goto_9c
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2257
    monitor-exit v0
    :try_end_a0
    .catchall {:try_start_3 .. :try_end_a0} :catchall_a4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-object v8

    .line 2258
    .end local v1  # "uid":I
    .end local v2  # "zygoteProcessList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v8  # "appZygote":Landroid/os/AppZygote;
    :catchall_a4
    move-exception v1

    :try_start_a5
    monitor-exit v0
    :try_end_a6
    .catchall {:try_start_a5 .. :try_end_a6} :catchall_a4

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private createSystemServerSocketForZygote()Landroid/net/LocalSocket;
    .registers 6

    .line 5060
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/system/unsolzygotesocket"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 5061
    .local v0, "socketFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_10

    .line 5062
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 5065
    :cond_10
    const/4 v2, 0x0

    .line 5067
    .local v2, "serverSocket":Landroid/net/LocalSocket;
    :try_start_11
    new-instance v3, Landroid/net/LocalSocket;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/net/LocalSocket;-><init>(I)V

    move-object v2, v3

    .line 5068
    new-instance v3, Landroid/net/LocalSocketAddress;

    sget-object v4, Landroid/net/LocalSocketAddress$Namespace;->FILESYSTEM:Landroid/net/LocalSocketAddress$Namespace;

    invoke-direct {v3, v1, v4}, Landroid/net/LocalSocketAddress;-><init>(Ljava/lang/String;Landroid/net/LocalSocketAddress$Namespace;)V

    invoke-virtual {v2, v3}, Landroid/net/LocalSocket;->bind(Landroid/net/LocalSocketAddress;)V

    .line 5070
    const/16 v3, 0x1b6

    invoke-static {v1, v3}, Landroid/system/Os;->chmod(Ljava/lang/String;I)V
    :try_end_27
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_27} :catch_28

    .line 5079
    goto :goto_31

    .line 5071
    :catch_28
    move-exception v1

    .line 5072
    .local v1, "e":Ljava/lang/Exception;
    if-eqz v2, :cond_31

    .line 5074
    :try_start_2b
    invoke-virtual {v2}, Landroid/net/LocalSocket;->close()V
    :try_end_2e
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_2e} :catch_2f

    .line 5076
    goto :goto_30

    .line 5075
    :catch_2f
    move-exception v3

    .line 5077
    :goto_30
    const/4 v2, 0x0

    .line 5080
    .end local v1  # "e":Ljava/lang/Exception;
    :cond_31
    :goto_31
    return-object v2
.end method

.method private dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V
    .registers 9
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "index"  # I
    .param p3, "proc"  # Lcom/android/server/am/ProcessRecord;
    .param p4, "prefix"  # Ljava/lang/String;

    .line 4054
    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4055
    const/16 v0, 0x23

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4056
    const/16 v0, 0x20

    const/16 v1, 0xa

    if-ge p2, v1, :cond_11

    .line 4057
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4059
    :cond_11
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(I)V

    .line 4060
    const-string v1, ": "

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4061
    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4062
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4063
    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4064
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4065
    iget-object v1, p3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v1

    invoke-static {p1, v1}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/io/PrintWriter;I)V

    .line 4066
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4067
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4068
    iget-object v0, p3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4069
    .local v0, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v1

    if-nez v1, :cond_61

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v1

    if-nez v1, :cond_61

    .line 4070
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v1

    if-eqz v1, :cond_aa

    .line 4071
    :cond_61
    const-string v1, " act:"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4072
    const/4 v1, 0x0

    .line 4073
    .local v1, "printed":Z
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v2

    if-eqz v2, :cond_73

    .line 4074
    const-string v2, "activities"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4075
    const/4 v1, 0x1

    .line 4077
    :cond_73
    invoke-virtual {p3}, Lcom/android/server/am/ProcessRecord;->hasRecentTasks()Z

    move-result v2

    const-string/jumbo v3, "|"

    if-eqz v2, :cond_88

    .line 4078
    if-eqz v1, :cond_81

    .line 4079
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4081
    :cond_81
    const-string/jumbo v2, "recents"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4082
    const/4 v1, 0x1

    .line 4084
    :cond_88
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v2

    if-eqz v2, :cond_99

    .line 4085
    if-eqz v1, :cond_93

    .line 4086
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4088
    :cond_93
    const-string v2, "client"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4089
    const/4 v1, 0x1

    .line 4091
    :cond_99
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 4092
    if-eqz v1, :cond_a4

    .line 4093
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4095
    :cond_a4
    const-string/jumbo v2, "treated"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4098
    .end local v1  # "printed":Z
    :cond_aa
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4099
    return-void
.end method

.method private static dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z
    .registers 35
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p1, "service"  # Lcom/android/server/am/ActivityManagerService;
    .param p3, "prefix"  # Ljava/lang/String;
    .param p4, "normalLabel"  # Ljava/lang/String;
    .param p5, "persistentLabel"  # Ljava/lang/String;
    .param p6, "inclDetails"  # Z
    .param p7, "dumpPackage"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/PrintWriter;",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 4453
    .local p2, "origList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p2

    move-object/from16 v3, p7

    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->sortProcessOomList(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    .line 4454
    .local v4, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_14

    return v6

    .line 4456
    :cond_14
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 4457
    .local v7, "curUptime":J
    move-object/from16 v5, p1

    iget-wide v9, v5, Lcom/android/server/am/ActivityManagerService;->mLastPowerCheckUptime:J

    sub-long v9, v7, v9

    .line 4459
    .local v9, "uptimeSince":J
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v11

    const/4 v12, 0x1

    sub-int/2addr v11, v12

    .local v11, "i":I
    :goto_24
    if-ltz v11, :cond_2e1

    .line 4460
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroid/util/Pair;

    iget-object v13, v13, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Lcom/android/server/am/ProcessRecord;

    .line 4461
    .local v13, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v14, v13, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4462
    .local v14, "state":Lcom/android/server/am/ProcessStateRecord;
    iget-object v15, v13, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4463
    .local v15, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v12

    invoke-static {v12, v6}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    move-result-object v12

    .line 4465
    .local v12, "oomAdj":Ljava/lang/String;
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v17

    packed-switch v17, :pswitch_data_2e4

    .line 4482
    const/16 v17, 0x3f

    move/from16 v6, v17

    .local v17, "schedGroup":C
    goto :goto_60

    .line 4479
    .end local v17  # "schedGroup":C
    :pswitch_48  #0x4
    const/16 v17, 0x42

    .line 4480
    .restart local v17  # "schedGroup":C
    move/from16 v6, v17

    goto :goto_60

    .line 4473
    .end local v17  # "schedGroup":C
    :pswitch_4d  #0x3
    const/16 v17, 0x54

    .line 4474
    .restart local v17  # "schedGroup":C
    move/from16 v6, v17

    goto :goto_60

    .line 4470
    .end local v17  # "schedGroup":C
    :pswitch_52  #0x2
    const/16 v17, 0x46

    .line 4471
    .restart local v17  # "schedGroup":C
    move/from16 v6, v17

    goto :goto_60

    .line 4476
    .end local v17  # "schedGroup":C
    :pswitch_57  #0x1
    const/16 v17, 0x52

    .line 4477
    .restart local v17  # "schedGroup":C
    move/from16 v6, v17

    goto :goto_60

    .line 4467
    .end local v17  # "schedGroup":C
    :pswitch_5c  #0x0
    const/16 v17, 0x62

    .line 4468
    .restart local v17  # "schedGroup":C
    move/from16 v6, v17

    .line 4486
    .end local v17  # "schedGroup":C
    .local v6, "schedGroup":C
    :goto_60
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v17

    if-eqz v17, :cond_6b

    .line 4487
    const/16 v17, 0x41

    move/from16 v2, v17

    .local v17, "foreground":C
    goto :goto_7a

    .line 4488
    .end local v17  # "foreground":C
    :cond_6b
    invoke-virtual {v15}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v17

    if-eqz v17, :cond_76

    .line 4489
    const/16 v17, 0x53

    move/from16 v2, v17

    .restart local v17  # "foreground":C
    goto :goto_7a

    .line 4491
    .end local v17  # "foreground":C
    :cond_76
    const/16 v17, 0x20

    move/from16 v2, v17

    .line 4493
    .local v2, "foreground":C
    :goto_7a
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v17

    invoke-static/range {v17 .. v17}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    .line 4494
    .local v3, "procState":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4495
    invoke-virtual {v13}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v17

    if-eqz v17, :cond_8e

    move-object/from16 v5, p5

    goto :goto_90

    :cond_8e
    move-object/from16 v5, p4

    :goto_90
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4496
    const-string v5, " #"

    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4497
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v5

    const/16 v16, 0x1

    add-int/lit8 v5, v5, -0x1

    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v4

    .end local v4  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    .local v18, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    move-object/from16 v4, v17

    check-cast v4, Landroid/util/Pair;

    iget-object v4, v4, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    sub-int/2addr v5, v4

    .line 4498
    .local v5, "num":I
    const/16 v4, 0xa

    move-wide/from16 v19, v7

    .end local v7  # "curUptime":J
    .local v19, "curUptime":J
    const/16 v7, 0x20

    if-ge v5, v4, :cond_be

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 4499
    :cond_be
    invoke-virtual {v0, v5}, Ljava/io/PrintWriter;->print(I)V

    .line 4500
    const-string v8, ": "

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4501
    invoke-virtual {v0, v12}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4502
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 4503
    invoke-virtual {v0, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 4504
    const/16 v8, 0x2f

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 4505
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(C)V

    .line 4506
    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(C)V

    .line 4507
    invoke-virtual {v0, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4508
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 4509
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v8

    invoke-static {v0, v8}, Landroid/app/ActivityManager;->printCapabilitiesSummary(Ljava/io/PrintWriter;I)V

    .line 4510
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 4511
    const-string v8, " t:"

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4512
    iget-object v8, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v8

    if-ge v8, v4, :cond_fa

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 4513
    :cond_fa
    iget-object v8, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 4514
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(C)V

    .line 4515
    invoke-virtual {v13}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4516
    const-string v7, " ("

    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4517
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4518
    const/16 v8, 0x29

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(C)V

    .line 4519
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v8

    const-string v4, "    "

    if-nez v8, :cond_130

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_12d

    goto :goto_130

    :cond_12d
    move/from16 v21, v2

    goto :goto_1a1

    .line 4520
    :cond_130
    :goto_130
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4521
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4522
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Landroid/content/ComponentName;

    move/from16 v21, v2

    .end local v2  # "foreground":C
    .local v21, "foreground":C
    const-string/jumbo v2, "{null}"

    if-eqz v8, :cond_151

    .line 4523
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_166

    .line 4524
    :cond_151
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_163

    .line 4525
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_166

    .line 4527
    :cond_163
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4529
    :goto_166
    const-string v8, "<="

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4530
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v8

    instance-of v8, v8, Lcom/android/server/am/ProcessRecord;

    if-eqz v8, :cond_18c

    .line 4531
    const-string v2, "Proc{"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4532
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4533
    const-string/jumbo v2, "}"

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1a1

    .line 4534
    :cond_18c
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_19e

    .line 4535
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_1a1

    .line 4537
    :cond_19e
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4540
    :goto_1a1
    if-eqz p6, :cond_2ca

    .line 4541
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4542
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4543
    const-string/jumbo v2, "oom: max="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4544
    const-string v2, " curRaw="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4545
    const-string v2, " setRaw="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetRawAdj()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4546
    const-string v2, " cur="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4547
    const-string v2, " set="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 4548
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4549
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4550
    const-string/jumbo v8, "state: cur="

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v8

    invoke-static {v8}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4551
    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v2

    invoke-static {v2}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4552
    const-string v2, " lastPss="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4553
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v22

    const-wide/16 v24, 0x400

    move-object v8, v3

    .end local v3  # "procState":Ljava/lang/String;
    .local v8, "procState":Ljava/lang/String;
    mul-long v2, v22, v24

    invoke-static {v0, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 4554
    const-string v2, " lastSwapPss="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4555
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getLastSwapPss()J

    move-result-wide v2

    mul-long v2, v2, v24

    invoke-static {v0, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 4556
    const-string v2, " lastCachedPss="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4557
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessProfileRecord;->getLastCachedPss()J

    move-result-wide v2

    mul-long v2, v2, v24

    invoke-static {v0, v2, v3}, Landroid/util/DebugUtils;->printSizeValue(Ljava/io/PrintWriter;J)V

    .line 4558
    invoke-virtual/range {p0 .. p0}, Ljava/io/PrintWriter;->println()V

    .line 4559
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4560
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4561
    const-string v2, "cached="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 4562
    const-string v2, " empty="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->isEmpty()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Z)V

    .line 4563
    const-string v2, " hasAboveClient="

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15}, Lcom/android/server/am/ProcessServiceRecord;->hasAboveClient()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->println(Z)V

    .line 4565
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v2

    const/16 v3, 0xa

    if-lt v2, v3, :cond_2c5

    .line 4566
    iget-object v2, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v2

    .line 4567
    .local v2, "lastCpuTime":J
    const-wide/16 v22, 0x0

    cmp-long v17, v2, v22

    if-eqz v17, :cond_2be

    cmp-long v17, v9, v22

    if-lez v17, :cond_2be

    .line 4568
    move/from16 v17, v5

    .end local v5  # "num":I
    .local v17, "num":I
    iget-object v5, v13, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v5, v5, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v22

    move/from16 v24, v6

    .end local v6  # "schedGroup":C
    .local v24, "schedGroup":C
    sub-long v5, v22, v2

    .line 4569
    .local v5, "timeUsed":J
    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4570
    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4571
    const-string/jumbo v4, "run cpu over "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4572
    invoke-static {v9, v10, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4573
    const-string v4, " used "

    invoke-virtual {v0, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4574
    invoke-static {v5, v6, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 4575
    invoke-virtual {v0, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4576
    const-wide/16 v22, 0x64

    mul-long v22, v22, v5

    move-wide/from16 v25, v2

    .end local v2  # "lastCpuTime":J
    .local v25, "lastCpuTime":J
    div-long v1, v22, v9

    invoke-virtual {v0, v1, v2}, Ljava/io/PrintWriter;->print(J)V

    .line 4577
    const-string v1, "%)"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_2cf

    .line 4567
    .end local v17  # "num":I
    .end local v24  # "schedGroup":C
    .end local v25  # "lastCpuTime":J
    .restart local v2  # "lastCpuTime":J
    .local v5, "num":I
    .restart local v6  # "schedGroup":C
    :cond_2be
    move-wide/from16 v25, v2

    move/from16 v17, v5

    move/from16 v24, v6

    .end local v2  # "lastCpuTime":J
    .end local v5  # "num":I
    .end local v6  # "schedGroup":C
    .restart local v17  # "num":I
    .restart local v24  # "schedGroup":C
    .restart local v25  # "lastCpuTime":J
    goto :goto_2cf

    .line 4565
    .end local v17  # "num":I
    .end local v24  # "schedGroup":C
    .end local v25  # "lastCpuTime":J
    .restart local v5  # "num":I
    .restart local v6  # "schedGroup":C
    :cond_2c5
    move/from16 v17, v5

    move/from16 v24, v6

    .end local v5  # "num":I
    .end local v6  # "schedGroup":C
    .restart local v17  # "num":I
    .restart local v24  # "schedGroup":C
    goto :goto_2cf

    .line 4540
    .end local v8  # "procState":Ljava/lang/String;
    .end local v17  # "num":I
    .end local v24  # "schedGroup":C
    .restart local v3  # "procState":Ljava/lang/String;
    .restart local v5  # "num":I
    .restart local v6  # "schedGroup":C
    :cond_2ca
    move-object v8, v3

    move/from16 v17, v5

    move/from16 v24, v6

    .line 4459
    .end local v3  # "procState":Ljava/lang/String;
    .end local v5  # "num":I
    .end local v6  # "schedGroup":C
    .end local v12  # "oomAdj":Ljava/lang/String;
    .end local v13  # "r":Lcom/android/server/am/ProcessRecord;
    .end local v14  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v15  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v21  # "foreground":C
    :goto_2cf
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v5, p1

    move-object/from16 v2, p2

    move-object/from16 v1, p3

    move-object/from16 v3, p7

    move-object/from16 v4, v18

    move-wide/from16 v7, v19

    const/4 v6, 0x0

    const/4 v12, 0x1

    goto/16 :goto_24

    .line 4582
    .end local v11  # "i":I
    .end local v18  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    .end local v19  # "curUptime":J
    .restart local v4  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    .restart local v7  # "curUptime":J
    :cond_2e1
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_2e4
    .packed-switch 0x0
        :pswitch_5c  #00000000
        :pswitch_57  #00000001
        :pswitch_52  #00000002
        :pswitch_4d  #00000003
        :pswitch_48  #00000004
    .end packed-switch
.end method

.method public static final getLmkdKillCount(II)Ljava/lang/Integer;
    .registers 6
    .param p0, "min_oom_adj"  # I
    .param p1, "max_oom_adj"  # I

    .line 1539
    const/16 v0, 0xc

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1540
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/16 v1, 0x8

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 1541
    .local v1, "repl":Ljava/nio/ByteBuffer;
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1542
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1543
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1545
    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1546
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 1547
    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    if-ne v3, v2, :cond_32

    .line 1548
    new-instance v2, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v3

    invoke-direct {v2, v3}, Ljava/lang/Integer;-><init>(I)V

    return-object v2

    .line 1550
    :cond_32
    const/4 v2, 0x0

    return-object v2
.end method

.method private getOrCreateIsolatedUidRangeLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessList$IsolatedUidRange;
    .registers 6
    .param p1, "info"  # Landroid/content/pm/ApplicationInfo;
    .param p2, "hostingRecord"  # Lcom/android/server/am/HostingRecord;

    .line 3096
    if-eqz p2, :cond_16

    invoke-virtual {p2}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_16

    .line 3100
    :cond_9
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v1, p1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 3101
    invoke-virtual {p2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v2

    .line 3100
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getOrCreateIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v0

    return-object v0

    .line 3098
    :cond_16
    :goto_16
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    return-object v0
.end method

.method private getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;
    .registers 16
    .param p1, "pmInt"  # Landroid/content/pm/PackageManagerInternal;
    .param p2, "packages"  # [Ljava/lang/String;
    .param p3, "uid"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageManagerInternal;",
            "[",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 2263
    new-instance v0, Landroid/util/ArrayMap;

    array-length v1, p2

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(I)V

    .line 2264
    .local v0, "result":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    invoke-static {p3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    .line 2265
    .local v1, "userId":I
    array-length v2, p2

    const/4 v3, 0x0

    :goto_c
    if-ge v3, v2, :cond_67

    aget-object v4, p2, v3

    .line 2266
    .local v4, "packageName":Ljava/lang/String;
    invoke-virtual {p1, v4}, Landroid/content/pm/PackageManagerInternal;->getPackageStateInternal(Ljava/lang/String;)Lcom/android/server/pm/pkg/PackageStateInternal;

    move-result-object v5

    .line 2267
    .local v5, "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    const-string v6, "ActivityManager"

    if-nez v5, :cond_2f

    .line 2268
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unknown package:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2269
    goto :goto_64

    .line 2271
    :cond_2f
    invoke-interface {v5}, Lcom/android/server/pm/pkg/PackageStateInternal;->getVolumeUuid()Ljava/lang/String;

    move-result-object v7

    .line 2272
    .local v7, "volumeUuid":Ljava/lang/String;
    invoke-interface {v5, v1}, Lcom/android/server/pm/pkg/PackageStateInternal;->getUserStateOrDefault(I)Lcom/android/server/pm/pkg/PackageUserStateInternal;

    move-result-object v8

    invoke-interface {v8}, Lcom/android/server/pm/pkg/PackageUserStateInternal;->getCeDataInode()J

    move-result-wide v8

    .line 2273
    .local v8, "inode":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-nez v10, :cond_59

    .line 2274
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " inode == 0 (b/152760674)"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2275
    const/4 v2, 0x0

    return-object v2

    .line 2277
    :cond_59
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-static {v7, v6}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v6

    invoke-interface {v0, v4, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2265
    .end local v4  # "packageName":Ljava/lang/String;
    .end local v5  # "packageState":Lcom/android/server/pm/pkg/PackageStateInternal;
    .end local v7  # "volumeUuid":Ljava/lang/String;
    .end local v8  # "inode":J
    :goto_64
    add-int/lit8 v3, v3, 0x1

    goto :goto_c

    .line 2280
    :cond_67
    return-object v0
.end method

.method private handlePredecessorProcDied(Lcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 2157
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_20

    .line 2158
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is really gone now"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2162
    :cond_20
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessorStartRunnable:Ljava/lang/Runnable;

    .line 2163
    .local v0, "start":Ljava/lang/Runnable;
    if-eqz v0, :cond_2a

    .line 2164
    const/4 v1, 0x0

    iput-object v1, p1, Lcom/android/server/am/ProcessRecord;->mSuccessorStartRunnable:Ljava/lang/Runnable;

    .line 2165
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2167
    :cond_2a
    return-void
.end method

.method private handleProcessStart(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 26
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "entryPoint"  # Ljava/lang/String;
    .param p3, "gids"  # [I
    .param p4, "runtimeFlags"  # I
    .param p5, "zygotePolicyFlags"  # I
    .param p6, "mountExternal"  # I
    .param p7, "requiredAbi"  # Ljava/lang/String;
    .param p8, "instructionSet"  # Ljava/lang/String;
    .param p9, "invokeWith"  # Ljava/lang/String;
    .param p10, "startSeq"  # J

    .line 2076
    new-instance v13, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda1;

    move-object v0, v13

    move-object v1, p0

    move-object v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    move-object/from16 v10, p9

    move-wide/from16 v11, p10

    invoke-direct/range {v0 .. v12}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    .line 2099
    .local v0, "startRunnable":Ljava/lang/Runnable;
    move-object v1, p1

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    .line 2100
    .local v2, "predecessor":Lcom/android/server/am/ProcessRecord;
    if-eqz v2, :cond_2a

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getDyingPid()I

    move-result v3

    if-lez v3, :cond_2a

    .line 2101
    move-object v3, p0

    invoke-direct {p0, v2, v0}, Lcom/android/server/am/ProcessList;->handleProcessStartWithPredecessor(Lcom/android/server/am/ProcessRecord;Ljava/lang/Runnable;)V

    goto :goto_2e

    .line 2100
    :cond_2a
    move-object v3, p0

    .line 2104
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2106
    :goto_2e
    return-void
.end method

.method private handleProcessStartWithPredecessor(Lcom/android/server/am/ProcessRecord;Ljava/lang/Runnable;)V
    .registers 7
    .param p1, "predecessor"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "successorStartRunnable"  # Ljava/lang/Runnable;

    .line 2115
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessorStartRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_1d

    .line 2117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "We\'ve been watching for the death of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2118
    return-void

    .line 2120
    :cond_1d
    iput-object p2, p1, Lcom/android/server/am/ProcessRecord;->mSuccessorStartRunnable:Ljava/lang/Runnable;

    .line 2121
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Lcom/android/server/am/ProcessList$ProcStartHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mProcessKillTimeoutMs:J

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/am/ProcessList$ProcStartHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2124
    return-void
.end method

.method private handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;Landroid/os/Process$ProcessStartResult;J)Z
    .registers 13
    .param p1, "pending"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "startResult"  # Landroid/os/Process$ProcessStartResult;
    .param p3, "expectedStartSeq"  # J

    .line 2677
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, p3, p4}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_17

    .line 2678
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    iget v1, p2, Landroid/os/Process$ProcessStartResult;->pid:I

    if-ne v0, v1, :cond_15

    .line 2679
    iget-boolean v0, p2, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 2682
    :cond_15
    const/4 v0, 0x0

    return v0

    .line 2684
    :cond_17
    iget v3, p2, Landroid/os/Process$ProcessStartResult;->pid:I

    iget-boolean v4, p2, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-wide v5, p3

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z

    move-result v0

    return v0
.end method

.method private handleZygoteMessages(Ljava/io/FileDescriptor;I)I
    .registers 11
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "events"  # I

    .line 5087
    invoke-virtual {p1}, Ljava/io/FileDescriptor;->getInt$()I

    move-result v0

    .line 5088
    .local v0, "eventFd":I
    and-int/lit8 v1, p2, 0x1

    const/4 v2, 0x1

    if-eqz v1, :cond_46

    .line 5091
    :try_start_9
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    array-length v3, v1

    const/4 v4, 0x0

    invoke-static {p1, v1, v4, v3}, Landroid/system/Os;->read(Ljava/io/FileDescriptor;[BII)I

    move-result v1

    .line 5093
    .local v1, "len":I
    if-lez v1, :cond_2c

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    array-length v5, v3

    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mZygoteUnsolicitedMessage:[B

    invoke-static {v6, v1, v3}, Lcom/android/internal/os/Zygote;->nativeParseSigChld([BI[I)I

    move-result v3

    if-ne v5, v3, :cond_2c

    .line 5095
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mZygoteSigChldMessage:[I

    aget v4, v5, v4

    aget v6, v5, v2

    const/4 v7, 0x2

    aget v5, v5, v7

    invoke-virtual {v3, v4, v6, v5}, Lcom/android/server/am/AppExitInfoTracker;->handleZygoteSigChld(III)V
    :try_end_2c
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_2c} :catch_2d

    .line 5102
    .end local v1  # "len":I
    :cond_2c
    goto :goto_46

    .line 5100
    :catch_2d
    move-exception v1

    .line 5101
    .local v1, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception in reading unsolicited zygote message: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5104
    .end local v1  # "e":Ljava/lang/Exception;
    :cond_46
    :goto_46
    return v2
.end method

.method private hasAppStorage(Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;)Z
    .registers 7
    .param p1, "pmInt"  # Landroid/content/pm/PackageManagerInternal;
    .param p2, "packageName"  # Ljava/lang/String;

    .line 2462
    invoke-virtual {p1, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(Ljava/lang/String;)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v0

    .line 2463
    .local v0, "pkg":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    const/4 v1, 0x0

    if-nez v0, :cond_20

    .line 2464
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unknown package "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2465
    return v1

    .line 2467
    :cond_20
    nop

    .line 2468
    invoke-interface {v0}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getProperties()Ljava/util/Map;

    move-result-object v2

    const-string v3, "android.internal.PROPERTY_NO_APP_DATA_STORAGE"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/PackageManager$Property;

    .line 2469
    .local v2, "noAppStorageProp":Landroid/content/pm/PackageManager$Property;
    if-eqz v2, :cond_35

    invoke-virtual {v2}, Landroid/content/pm/PackageManager$Property;->getBoolean()Z

    move-result v3

    if-nez v3, :cond_36

    :cond_35
    const/4 v1, 0x1

    :cond_36
    return v1
.end method

.method private isProcStartValidLocked(Lcom/android/server/am/ProcessRecord;J)Ljava/lang/String;
    .registers 8
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "expectedStartSeq"  # J

    .line 2640
    const/4 v0, 0x0

    .line 2641
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v1

    if-eqz v1, :cond_15

    .line 2642
    if-nez v0, :cond_f

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 2643
    :cond_f
    const-string/jumbo v1, "killedByAm=true;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2645
    :cond_15
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    if-eq v1, p1, :cond_2e

    .line 2646
    if-nez v0, :cond_29

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 2647
    :cond_29
    const-string v1, "No entry in mProcessNames;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2649
    :cond_2e
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v1

    if-nez v1, :cond_42

    .line 2650
    if-nez v0, :cond_3c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 2651
    :cond_3c
    const-string/jumbo v1, "pendingStart=false;"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2653
    :cond_42
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v1

    cmp-long v1, v1, p2

    if-lez v1, :cond_7d

    .line 2654
    if-nez v0, :cond_52

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v1

    .line 2655
    :cond_52
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "seq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",expected="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ";"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2658
    :cond_7d
    :try_start_7d
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-interface {v1, v2, v3}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_8a
    .catch Landroid/os/RemoteException; {:try_start_7d .. :try_end_8a} :catch_a3
    .catch Ljava/lang/SecurityException; {:try_start_7d .. :try_end_8a} :catch_8b

    goto :goto_a4

    .line 2661
    :catch_8b
    move-exception v1

    .line 2662
    .local v1, "e":Ljava/lang/SecurityException;
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    if-eqz v2, :cond_a2

    .line 2663
    if-nez v0, :cond_9c

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v0, v2

    .line 2664
    :cond_9c
    const-string v2, "Package is frozen;"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_a5

    .line 2667
    :cond_a2
    throw v1

    .line 2659
    .end local v1  # "e":Ljava/lang/SecurityException;
    :catch_a3
    move-exception v1

    .line 2669
    :goto_a4
    nop

    .line 2670
    :goto_a5
    if-nez v0, :cond_a9

    const/4 v1, 0x0

    goto :goto_ad

    :cond_a9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_ad
    return-object v1
.end method

.method static killProcessGroup(II)V
    .registers 4
    .param p0, "uid"  # I
    .param p1, "pid"  # I

    .line 1603
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    if-eqz v0, :cond_e

    .line 1604
    const/16 v1, 0xfa0

    .line 1605
    invoke-virtual {v0, v1, p0, p1}, Lcom/android/server/am/ProcessList$KillHandler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 1604
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$KillHandler;->sendMessage(Landroid/os/Message;)Z

    goto :goto_18

    .line 1607
    :cond_e
    const-string v0, "ActivityManager"

    const-string v1, "Asked to kill process group before system bringup!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    invoke-static {p0, p1}, Landroid/os/Process;->killProcessGroup(II)I

    .line 1610
    :goto_18
    return-void
.end method

.method static synthetic lambda$updateApplicationInfoLOSP$2(ZLjava/util/List;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Ljava/lang/String;)V
    .registers 9
    .param p0, "updateFrameworkRes"  # Z
    .param p1, "packagesToUpdate"  # Ljava/util/List;
    .param p2, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p3, "targetProcesses"  # Ljava/util/ArrayList;
    .param p4, "packageName"  # Ljava/lang/String;

    .line 4833
    if-nez p0, :cond_8

    invoke-interface {p1, p4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4f

    .line 4835
    :cond_8
    :try_start_8
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    const-wide/16 v1, 0x400

    iget v3, p2, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 4836
    invoke-interface {v0, p4, v1, v2, v3}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4837
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_39

    .line 4838
    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 4839
    iput-object v0, p2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 4840
    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    move-result-object v1

    .line 4841
    invoke-virtual {v1, v0}, Lcom/android/server/am/PlatformCompatCache;->onApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 4843
    :cond_2b
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/app/IApplicationThread;->scheduleApplicationInfoChanged(Landroid/content/pm/ApplicationInfo;)V

    .line 4844
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    invoke-virtual {p3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_39
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_39} :catch_3a

    .line 4849
    .end local v0  # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_39
    goto :goto_4f

    .line 4846
    :catch_3a
    move-exception v0

    .line 4847
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p4, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const-string v2, "Failed to update %s ApplicationInfo for %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4851
    .end local v0  # "e":Landroid/os/RemoteException;
    :cond_4f
    :goto_4f
    return-void
.end method

.method public static makeOomAdjString(IZ)Ljava/lang/String;
    .registers 9
    .param p0, "setAdj"  # I
    .param p1, "compact"  # Z

    .line 1116
    const/16 v0, 0x384

    if-lt p0, v0, :cond_13

    .line 1117
    const/16 v5, 0x384

    const-string v1, "cch"

    const-string v2, "cch"

    const-string v3, "   "

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1119
    :cond_13
    const/16 v0, 0x320

    if-lt p0, v0, :cond_27

    .line 1120
    const/4 v3, 0x0

    const/16 v5, 0x320

    const-string/jumbo v1, "svcb  "

    const-string/jumbo v2, "svcb"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1122
    :cond_27
    const/16 v0, 0x2bc

    if-lt p0, v0, :cond_3b

    .line 1123
    const/4 v3, 0x0

    const/16 v5, 0x2bc

    const-string/jumbo v1, "prev  "

    const-string/jumbo v2, "prev"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1125
    :cond_3b
    const/16 v0, 0x258

    if-lt p0, v0, :cond_4f

    .line 1126
    const/4 v3, 0x0

    const/16 v5, 0x258

    const-string/jumbo v1, "home  "

    const-string/jumbo v2, "home"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1128
    :cond_4f
    const/16 v0, 0x1f4

    if-lt p0, v0, :cond_63

    .line 1129
    const/4 v3, 0x0

    const/16 v5, 0x1f4

    const-string/jumbo v1, "svc   "

    const-string/jumbo v2, "svc"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1131
    :cond_63
    const/16 v0, 0x190

    if-lt p0, v0, :cond_77

    .line 1132
    const/4 v3, 0x0

    const/16 v5, 0x190

    const-string/jumbo v1, "hvy   "

    const-string/jumbo v2, "hvy"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1134
    :cond_77
    const/16 v0, 0x12c

    if-lt p0, v0, :cond_89

    .line 1135
    const/4 v3, 0x0

    const/16 v5, 0x12c

    const-string v1, "bkup  "

    const-string v2, "bkup"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1137
    :cond_89
    const/16 v0, 0xfa

    if-lt p0, v0, :cond_9d

    .line 1138
    const/4 v3, 0x0

    const/16 v5, 0xfa

    const-string/jumbo v1, "prcl  "

    const-string/jumbo v2, "prcl"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1140
    :cond_9d
    const/16 v0, 0xe1

    if-lt p0, v0, :cond_b1

    .line 1141
    const/4 v3, 0x0

    const/16 v5, 0xe1

    const-string/jumbo v1, "prcm  "

    const-string/jumbo v2, "prcm"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1143
    :cond_b1
    const/16 v0, 0xc8

    if-lt p0, v0, :cond_c5

    .line 1144
    const/4 v3, 0x0

    const/16 v5, 0xc8

    const-string/jumbo v1, "prcp  "

    const-string/jumbo v2, "prcp"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1146
    :cond_c5
    const/16 v0, 0x64

    if-lt p0, v0, :cond_da

    .line 1147
    const/16 v5, 0x64

    const-string/jumbo v1, "vis"

    const-string/jumbo v2, "vis"

    const-string v3, "   "

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1149
    :cond_da
    if-ltz p0, :cond_ea

    .line 1150
    const/4 v5, 0x0

    const-string v1, "fg "

    const-string v2, "fg "

    const-string v3, "   "

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1152
    :cond_ea
    const/16 v0, -0x2bc

    if-lt p0, v0, :cond_fe

    .line 1153
    const/4 v3, 0x0

    const/16 v5, -0x2bc

    const-string/jumbo v1, "psvc  "

    const-string/jumbo v2, "psvc"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1155
    :cond_fe
    const/16 v0, -0x320

    if-lt p0, v0, :cond_112

    .line 1156
    const/4 v3, 0x0

    const/16 v5, -0x320

    const-string/jumbo v1, "pers  "

    const-string/jumbo v2, "pers"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1158
    :cond_112
    const/16 v0, -0x384

    if-lt p0, v0, :cond_126

    .line 1159
    const/4 v3, 0x0

    const/16 v5, -0x384

    const-string/jumbo v1, "sys   "

    const-string/jumbo v2, "sys"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1161
    :cond_126
    const/16 v0, -0x3e8

    if-lt p0, v0, :cond_13a

    .line 1162
    const/4 v3, 0x0

    const/16 v5, -0x3e8

    const-string/jumbo v1, "ntv  "

    const-string/jumbo v2, "ntv"

    move v4, p0

    move v6, p1

    invoke-static/range {v1 .. v6}, Lcom/android/server/am/ProcessList;->buildOomTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIZ)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1165
    :cond_13a
    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static makeProcStateProtoEnum(I)I
    .registers 2
    .param p0, "curProcState"  # I

    .line 1174
    packed-switch p0, :pswitch_data_48

    .line 1220
    const/16 v0, 0x3e6

    return v0

    .line 1216
    :pswitch_6  #0x14
    const/16 v0, 0x3fb

    return v0

    .line 1214
    :pswitch_9  #0x13
    const/16 v0, 0x3fa

    return v0

    .line 1212
    :pswitch_c  #0x12
    const/16 v0, 0x3f9

    return v0

    .line 1210
    :pswitch_f  #0x11
    const/16 v0, 0x3f8

    return v0

    .line 1208
    :pswitch_12  #0x10
    const/16 v0, 0x3f7

    return v0

    .line 1206
    :pswitch_15  #0xf
    const/16 v0, 0x3f6

    return v0

    .line 1204
    :pswitch_18  #0xe
    const/16 v0, 0x3f5

    return v0

    .line 1198
    :pswitch_1b  #0xd
    const/16 v0, 0x3f4

    return v0

    .line 1188
    :pswitch_1e  #0xc
    const/16 v0, 0x3f3

    return v0

    .line 1202
    :pswitch_21  #0xb
    const/16 v0, 0x3f2

    return v0

    .line 1200
    :pswitch_24  #0xa
    const/16 v0, 0x3f1

    return v0

    .line 1196
    :pswitch_27  #0x9
    const/16 v0, 0x3f0

    return v0

    .line 1194
    :pswitch_2a  #0x8
    const/16 v0, 0x3ef

    return v0

    .line 1192
    :pswitch_2d  #0x7
    const/16 v0, 0x3ee

    return v0

    .line 1190
    :pswitch_30  #0x6
    const/16 v0, 0x3ed

    return v0

    .line 1186
    :pswitch_33  #0x5
    const/16 v0, 0x3ec

    return v0

    .line 1184
    :pswitch_36  #0x4
    const/16 v0, 0x3eb

    return v0

    .line 1182
    :pswitch_39  #0x3
    const/16 v0, 0x3fc

    return v0

    .line 1180
    :pswitch_3c  #0x2
    const/16 v0, 0x3ea

    return v0

    .line 1178
    :pswitch_3f  #0x1
    const/16 v0, 0x3e9

    return v0

    .line 1176
    :pswitch_42  #0x0
    const/16 v0, 0x3e8

    return v0

    .line 1218
    :pswitch_45  #0xffffffff
    const/16 v0, 0x3e7

    return v0

    :pswitch_data_48
    .packed-switch -0x1
        :pswitch_45  #ffffffff
        :pswitch_42  #00000000
        :pswitch_3f  #00000001
        :pswitch_3c  #00000002
        :pswitch_39  #00000003
        :pswitch_36  #00000004
        :pswitch_33  #00000005
        :pswitch_30  #00000006
        :pswitch_2d  #00000007
        :pswitch_2a  #00000008
        :pswitch_27  #00000009
        :pswitch_24  #0000000a
        :pswitch_21  #0000000b
        :pswitch_1e  #0000000c
        :pswitch_1b  #0000000d
        :pswitch_18  #0000000e
        :pswitch_15  #0000000f
        :pswitch_12  #00000010
        :pswitch_f  #00000011
        :pswitch_c  #00000012
        :pswitch_9  #00000013
        :pswitch_6  #00000014
    .end packed-switch
.end method

.method public static makeProcStateString(I)Ljava/lang/String;
    .registers 2
    .param p0, "curProcState"  # I

    .line 1170
    invoke-static {p0}, Landroid/app/ActivityManager;->procStateToString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static minTimeFromStateChange(Z)J
    .registers 3
    .param p0, "test"  # Z

    .line 1434
    if-eqz p0, :cond_5

    const-wide/16 v0, 0x2710

    goto :goto_7

    :cond_5
    const-wide/16 v0, 0x3a98

    :goto_7
    return-wide v0
.end method

.method private needsStorageDataIsolation(Landroid/os/storage/StorageManagerInternal;Lcom/android/server/am/ProcessRecord;)Z
    .registers 5
    .param p1, "storageManagerInternal"  # Landroid/os/storage/StorageManagerInternal;
    .param p2, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 2285
    invoke-virtual {p2}, Lcom/android/server/am/ProcessRecord;->getMountMode()I

    move-result v0

    .line 2286
    .local v0, "mountMode":I
    iget-boolean v1, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    if-eqz v1, :cond_25

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v1

    if-eqz v1, :cond_25

    iget v1, p2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2287
    invoke-virtual {p1, v1}, Landroid/os/storage/StorageManagerInternal;->isExternalStorageService(I)Z

    move-result v1

    if-nez v1, :cond_25

    const/4 v1, 0x4

    if-eq v0, v1, :cond_25

    const/4 v1, 0x3

    if-eq v0, v1, :cond_25

    const/4 v1, 0x2

    if-eq v0, v1, :cond_25

    if-eqz v0, :cond_25

    const/4 v1, 0x1

    goto :goto_26

    :cond_25
    const/4 v1, 0x0

    .line 2286
    :goto_26
    return v1
.end method

.method private printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "name"  # Ljava/lang/String;
    .param p3, "adj"  # I

    .line 4586
    const-string v0, "    "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4587
    const/16 v0, 0x20

    if-ltz p3, :cond_14

    .line 4588
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4589
    const/16 v1, 0xa

    if-ge p3, v1, :cond_1b

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    goto :goto_1b

    .line 4591
    :cond_14
    const/16 v1, -0xa

    if-le p3, v1, :cond_1b

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 4593
    :cond_1b
    :goto_1b
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(I)V

    .line 4594
    const-string v0, ": "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4595
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4596
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4597
    invoke-virtual {p0, p3}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    const/16 v2, 0x400

    invoke-static {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->stringifySize(JI)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4598
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4599
    return-void
.end method

.method private static procStateToImportance(IILandroid/app/ActivityManager$RunningAppProcessInfo;I)I
    .registers 6
    .param p0, "procState"  # I
    .param p1, "memAdj"  # I
    .param p2, "currApp"  # Landroid/app/ActivityManager$RunningAppProcessInfo;
    .param p3, "clientTargetSdk"  # I

    .line 3848
    invoke-static {p0, p3}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportanceForTargetSdk(II)I

    move-result v0

    .line 3850
    .local v0, "imp":I
    const/16 v1, 0x190

    if-ne v0, v1, :cond_b

    .line 3851
    iput p1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    goto :goto_e

    .line 3853
    :cond_b
    const/4 v1, 0x0

    iput v1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lru:I

    .line 3855
    :goto_e
    return v0
.end method

.method public static procStatesDifferForMem(II)Z
    .registers 4
    .param p0, "procState1"  # I
    .param p1, "procState2"  # I

    .line 1430
    sget-object v0, Lcom/android/server/am/ProcessList;->sProcStateToProcMem:[I

    aget v1, v0, p0

    aget v0, v0, p1

    if-eq v1, v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    return v0
.end method

.method public static final remove(I)V
    .registers 3
    .param p0, "pid"  # I

    .line 1526
    if-gtz p0, :cond_3

    .line 1527
    return-void

    .line 1529
    :cond_3
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1530
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1531
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1532
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1533
    return-void
.end method

.method private removeProcessFromAppZygoteLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 9
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 2185
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2187
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v2

    .line 2186
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->getIsolatedUidRangeLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v0

    .line 2188
    .local v0, "appUidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    if-eqz v0, :cond_19

    .line 2189
    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->freeIsolatedUidLocked(I)V

    .line 2192
    :cond_19
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 2193
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v3

    .line 2192
    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/AppZygote;

    .line 2194
    .local v1, "appZygote":Landroid/os/AppZygote;
    if-eqz v1, :cond_67

    .line 2195
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/ArrayList;

    .line 2196
    .local v2, "zygoteProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2197
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_67

    .line 2198
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x47

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 2199
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v3

    if-eqz v3, :cond_54

    .line 2202
    const/4 v3, 0x0

    invoke-virtual {p0, v1, v3}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    goto :goto_67

    .line 2204
    :cond_54
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    .line 2205
    .local v3, "msg":Landroid/os/Message;
    iput-object v1, v3, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2206
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const-wide/16 v5, 0x1388

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2210
    .end local v2  # "zygoteProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v3  # "msg":Landroid/os/Message;
    :cond_67
    :goto_67
    return-void
.end method

.method public static setOomAdj(III)V
    .registers 12
    .param p0, "pid"  # I
    .param p1, "uid"  # I
    .param p2, "amt"  # I

    .line 1501
    if-gtz p0, :cond_3

    .line 1502
    return-void

    .line 1504
    :cond_3
    const/16 v0, 0x3e9

    if-ne p2, v0, :cond_8

    .line 1505
    return-void

    .line 1507
    :cond_8
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1508
    .local v0, "start":J
    const/16 v2, 0x10

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1509
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1510
    invoke-virtual {v2, p0}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1511
    invoke-virtual {v2, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1512
    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1513
    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1514
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 1515
    .local v3, "now":J
    sub-long v5, v3, v0

    const-wide/16 v7, 0xfa

    cmp-long v5, v5, v7

    if-lez v5, :cond_5e

    .line 1516
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SLOW OOM ADJ: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v6, v3, v0

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "ms for pid "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityManager"

    invoke-static {v6, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1519
    :cond_5e
    return-void
.end method

.method private static sortProcessOomList(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 9
    .param p1, "dumpPackage"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Landroid/util/Pair<",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 4311
    .local p0, "origList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    new-instance v0, Ljava/util/ArrayList;

    .line 4312
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4313
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    .local v2, "size":I
    :goto_e
    if-ge v1, v2, :cond_38

    .line 4314
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 4315
    .local v3, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz p1, :cond_23

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_23

    .line 4316
    goto :goto_35

    .line 4318
    :cond_23
    new-instance v4, Landroid/util/Pair;

    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4313
    .end local v3  # "r":Lcom/android/server/am/ProcessRecord;
    :goto_35
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 4321
    .end local v1  # "i":I
    .end local v2  # "size":I
    :cond_38
    new-instance v1, Lcom/android/server/am/ProcessList$2;

    invoke-direct {v1}, Lcom/android/server/am/ProcessList$2;-><init>()V

    .line 4343
    .local v1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 4344
    return-object v0
.end method

.method private startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;
    .registers 57
    .param p1, "hostingRecord"  # Lcom/android/server/am/HostingRecord;
    .param p2, "entryPoint"  # Ljava/lang/String;
    .param p3, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p4, "uid"  # I
    .param p5, "gids"  # [I
    .param p6, "runtimeFlags"  # I
    .param p7, "zygotePolicyFlags"  # I
    .param p8, "mountExternal"  # I
    .param p9, "seInfo"  # Ljava/lang/String;
    .param p10, "requiredAbi"  # Ljava/lang/String;
    .param p11, "instructionSet"  # Ljava/lang/String;
    .param p12, "invokeWith"  # Ljava/lang/String;
    .param p13, "startTime"  # J

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move/from16 v15, p4

    move-wide/from16 v13, p13

    .line 2301
    const-wide/16 v11, 0x40

    :try_start_a
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Start proc: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v11, v12, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 2303
    const-string/jumbo v0, "startProcess: asking zygote to start proc"

    invoke-direct {v1, v13, v14, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2304
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->isTopApp()Z

    move-result v0

    move/from16 v26, v0

    .line 2305
    .local v26, "isTopApp":Z
    const/4 v0, 0x1

    if-eqz v26, :cond_36

    .line 2309
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3, v0}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    .line 2314
    :cond_36
    const/4 v3, 0x0

    .line 2315
    .local v3, "bindMountAppStorageDirs":Z
    iget-boolean v4, v1, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    const/4 v5, 0x0

    if-eqz v4, :cond_5b

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2316
    invoke-static {v4}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-nez v4, :cond_4c

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v4

    if-eqz v4, :cond_5b

    :cond_4c
    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    const-wide/32 v6, 0x89450c5

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 2317
    invoke-virtual {v4, v6, v7, v8}, Lcom/android/server/compat/PlatformCompat;->isChangeEnabled(JLandroid/content/pm/ApplicationInfo;)Z

    move-result v4

    if-eqz v4, :cond_5b

    move v4, v0

    goto :goto_5c

    :cond_5b
    move v4, v5

    .line 2321
    .local v4, "bindMountAppsData":Z
    :goto_5c
    iget-object v6, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v6}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v6

    move-object v10, v6

    .line 2322
    .local v10, "pmInt":Landroid/content/pm/PackageManagerInternal;
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v10, v6, v7}, Landroid/content/pm/PackageManagerInternal;->getSharedUserPackagesForPackage(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v6

    move-object v9, v6

    .line 2324
    .local v9, "sharedPackages":[Ljava/lang/String;
    array-length v6, v9

    if-nez v6, :cond_7a

    .line 2325
    new-array v6, v0, [Ljava/lang/String;

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v7, v6, v5

    goto :goto_7b

    :cond_7a
    move-object v6, v9

    :goto_7b
    move-object v8, v6

    .line 2327
    .local v8, "targetPackagesList":[Ljava/lang/String;
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-direct {v1, v10, v6}, Lcom/android/server/am/ProcessList;->hasAppStorage(Landroid/content/pm/PackageManagerInternal;Ljava/lang/String;)Z

    move-result v6

    move/from16 v27, v6

    .line 2329
    .local v27, "hasAppStorage":Z
    invoke-direct {v1, v10, v8, v15}, Lcom/android/server/am/ProcessList;->getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v6

    .line 2330
    .local v6, "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    if-nez v6, :cond_8d

    .line 2333
    const/4 v4, 0x0

    .line 2338
    :cond_8d
    new-instance v7, Landroid/util/ArraySet;
    :try_end_8f
    .catchall {:try_start_a .. :try_end_8f} :catchall_348

    :try_start_8f
    iget-object v11, v1, Lcom/android/server/am/ProcessList;->mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;

    invoke-direct {v7, v11}, Landroid/util/ArraySet;-><init>(Ljava/util/Collection;)V

    move-object v12, v7

    .line 2339
    .local v12, "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    array-length v7, v8

    move v11, v5

    :goto_97
    if-ge v11, v7, :cond_a7

    aget-object v18, v8, v11

    move-object/from16 v19, v18

    .line 2340
    .local v19, "pkg":Ljava/lang/String;
    move-object/from16 v0, v19

    .end local v19  # "pkg":Ljava/lang/String;
    .local v0, "pkg":Ljava/lang/String;
    invoke-interface {v12, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 2339
    nop

    .end local v0  # "pkg":Ljava/lang/String;
    add-int/lit8 v11, v11, 0x1

    const/4 v0, 0x1

    goto :goto_97

    .line 2343
    :cond_a7
    new-array v0, v5, [Ljava/lang/String;

    .line 2344
    invoke-interface {v12, v0}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 2343
    invoke-direct {v1, v10, v0, v15}, Lcom/android/server/am/ProcessList;->getPackageAppDataInfoMap(Landroid/content/pm/PackageManagerInternal;[Ljava/lang/String;I)Ljava/util/Map;

    move-result-object v0

    .line 2345
    .local v0, "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    if-nez v0, :cond_b6

    .line 2348
    const/4 v4, 0x0

    .line 2351
    :cond_b6
    if-nez v27, :cond_be

    .line 2352
    const/4 v4, 0x0

    .line 2353
    const/4 v6, 0x0

    .line 2354
    const/4 v0, 0x0

    move/from16 v28, v4

    goto :goto_c0

    .line 2351
    :cond_be
    move/from16 v28, v4

    .line 2357
    .end local v4  # "bindMountAppsData":Z
    .local v28, "bindMountAppsData":Z
    :goto_c0
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    move v11, v4

    .line 2358
    .local v11, "userId":I
    const-class v4, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v4}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManagerInternal;

    move-object v7, v4

    .line 2360
    .local v7, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    invoke-direct {v1, v7, v2}, Lcom/android/server/am/ProcessList;->needsStorageDataIsolation(Landroid/os/storage/StorageManagerInternal;Lcom/android/server/am/ProcessRecord;)Z

    move-result v4

    if-eqz v4, :cond_e8

    .line 2363
    if-eqz v6, :cond_e0

    invoke-virtual {v7, v11}, Landroid/os/storage/StorageManagerInternal;->isFuseMounted(I)Z

    move-result v4

    if-eqz v4, :cond_e0

    .line 2364
    const/4 v3, 0x1

    move/from16 v29, v3

    goto :goto_ea

    .line 2368
    :cond_e0
    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Lcom/android/server/am/ProcessRecord;->setBindMountPending(Z)V

    .line 2369
    const/4 v3, 0x0

    move/from16 v29, v3

    goto :goto_ea

    .line 2360
    :cond_e8
    move/from16 v29, v3

    .line 2375
    .end local v3  # "bindMountAppStorageDirs":Z
    .local v29, "bindMountAppStorageDirs":Z
    :goto_ea
    iget-boolean v3, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v3, :cond_f5

    .line 2376
    const/4 v6, 0x0

    .line 2377
    const/4 v0, 0x0

    move-object/from16 v30, v0

    move-object/from16 v31, v6

    goto :goto_f9

    .line 2375
    :cond_f5
    move-object/from16 v30, v0

    move-object/from16 v31, v6

    .line 2380
    .end local v0  # "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v6  # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .local v30, "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .local v31, "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :goto_f9
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v0, v0, Lcom/android/server/am/ActiveServices;->mAppStateTracker:Lcom/android/server/AppStateTracker;

    move-object v6, v0

    .line 2381
    .local v6, "ast":Lcom/android/server/AppStateTracker;
    if-eqz v6, :cond_12c

    .line 2382
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v6, v0, v3}, Lcom/android/server/AppStateTracker;->isAppBackgroundRestricted(ILjava/lang/String;)Z

    move-result v0

    move v3, v0

    .line 2384
    .local v3, "inBgRestricted":Z
    if-eqz v3, :cond_127

    .line 2385
    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v4
    :try_end_114
    .catchall {:try_start_8f .. :try_end_114} :catchall_342

    :try_start_114
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2386
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2387
    monitor-exit v4
    :try_end_11d
    .catchall {:try_start_114 .. :try_end_11d} :catchall_121

    :try_start_11d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_120
    .catchall {:try_start_11d .. :try_end_120} :catchall_342

    goto :goto_127

    :catchall_121
    move-exception v0

    :try_start_122
    monitor-exit v4
    :try_end_123
    .catchall {:try_start_122 .. :try_end_123} :catchall_121

    :try_start_123
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local p0  # "this":Lcom/android/server/am/ProcessList;
    .end local p1  # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p2  # "entryPoint":Ljava/lang/String;
    .end local p3  # "app":Lcom/android/server/am/ProcessRecord;
    .end local p4  # "uid":I
    .end local p5  # "gids":[I
    .end local p6  # "runtimeFlags":I
    .end local p7  # "zygotePolicyFlags":I
    .end local p8  # "mountExternal":I
    .end local p9  # "seInfo":Ljava/lang/String;
    .end local p10  # "requiredAbi":Ljava/lang/String;
    .end local p11  # "instructionSet":Ljava/lang/String;
    .end local p12  # "invokeWith":Ljava/lang/String;
    .end local p13  # "startTime":J
    throw v0

    .line 2389
    .restart local p0  # "this":Lcom/android/server/am/ProcessList;
    .restart local p1  # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p2  # "entryPoint":Ljava/lang/String;
    .restart local p3  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p4  # "uid":I
    .restart local p5  # "gids":[I
    .restart local p6  # "runtimeFlags":I
    .restart local p7  # "zygotePolicyFlags":I
    .restart local p8  # "mountExternal":I
    .restart local p9  # "seInfo":Ljava/lang/String;
    .restart local p10  # "requiredAbi":Ljava/lang/String;
    .restart local p11  # "instructionSet":Ljava/lang/String;
    .restart local p12  # "invokeWith":Ljava/lang/String;
    .restart local p13  # "startTime":J
    :cond_127
    :goto_127
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessStateRecord;->setBackgroundRestricted(Z)V

    .line 2393
    .end local v3  # "inBgRestricted":Z
    :cond_12c
    const/4 v0, 0x0

    .line 2394
    .local v0, "regularZygote":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->usesWebviewZygote()Z

    move-result v3
    :try_end_131
    .catchall {:try_start_123 .. :try_end_131} :catchall_342

    if-eqz v3, :cond_1af

    .line 2395
    :try_start_133
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/16 v20, 0x0

    move/from16 v32, v0

    .end local v0  # "regularZygote":Z
    .local v32, "regularZygote":Z
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2399
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getDisabledCompatChanges()[J

    move-result-object v21

    move/from16 v22, v3

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object/from16 v18, v5

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v23, v6

    .end local v6  # "ast":Lcom/android/server/AppStateTracker;
    .local v23, "ast":Lcom/android/server/AppStateTracker;
    const-string/jumbo v6, "seq="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2400
    move-object/from16 v24, v7

    .end local v7  # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .local v24, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v3, v6
    :try_end_16f
    .catchall {:try_start_133 .. :try_end_16f} :catchall_1aa

    .line 2395
    move/from16 v19, v22

    move-object/from16 v22, v3

    move-object/from16 v3, p2

    move/from16 v5, p4

    move-object/from16 v33, v23

    .end local v23  # "ast":Lcom/android/server/AppStateTracker;
    .local v33, "ast":Lcom/android/server/AppStateTracker;
    move/from16 v6, p4

    move-object/from16 v34, v24

    .end local v24  # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .local v34, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    move-object/from16 v7, p5

    move-object/from16 v35, v8

    .end local v8  # "targetPackagesList":[Ljava/lang/String;
    .local v35, "targetPackagesList":[Ljava/lang/String;
    move/from16 v8, p6

    move-object/from16 v36, v9

    .end local v9  # "sharedPackages":[Ljava/lang/String;
    .local v36, "sharedPackages":[Ljava/lang/String;
    move/from16 v9, p8

    move-object/from16 v37, v10

    .end local v10  # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .local v37, "pmInt":Landroid/content/pm/PackageManagerInternal;
    move/from16 v10, v19

    move/from16 v38, v11

    const-wide/16 v39, 0x40

    .end local v11  # "userId":I
    .local v38, "userId":I
    move-object/from16 v11, p9

    move-object/from16 v41, v12

    .end local v12  # "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .local v41, "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    move-object/from16 v12, p10

    move-object/from16 v13, p11

    move-object/from16 v14, v18

    move-object/from16 v15, v20

    move-object/from16 v16, v0

    move-object/from16 v17, v21

    move-object/from16 v18, v22

    :try_start_1a1
    invoke-static/range {v3 .. v18}, Landroid/os/Process;->startWebView(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[J[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    move-object v3, v0

    move/from16 v0, v32

    .local v0, "startResult":Landroid/os/Process$ProcessStartResult;
    goto/16 :goto_28a

    .line 2457
    .end local v0  # "startResult":Landroid/os/Process$ProcessStartResult;
    .end local v26  # "isTopApp":Z
    .end local v27  # "hasAppStorage":Z
    .end local v28  # "bindMountAppsData":Z
    .end local v29  # "bindMountAppStorageDirs":Z
    .end local v30  # "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v31  # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v32  # "regularZygote":Z
    .end local v33  # "ast":Lcom/android/server/AppStateTracker;
    .end local v34  # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v35  # "targetPackagesList":[Ljava/lang/String;
    .end local v36  # "sharedPackages":[Ljava/lang/String;
    .end local v37  # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v38  # "userId":I
    .end local v41  # "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_1aa
    move-exception v0

    const-wide/16 v39, 0x40

    goto/16 :goto_33d

    .line 2401
    .local v0, "regularZygote":Z
    .restart local v6  # "ast":Lcom/android/server/AppStateTracker;
    .restart local v7  # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .restart local v8  # "targetPackagesList":[Ljava/lang/String;
    .restart local v9  # "sharedPackages":[Ljava/lang/String;
    .restart local v10  # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .restart local v11  # "userId":I
    .restart local v12  # "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v26  # "isTopApp":Z
    .restart local v27  # "hasAppStorage":Z
    .restart local v28  # "bindMountAppsData":Z
    .restart local v29  # "bindMountAppStorageDirs":Z
    .restart local v30  # "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .restart local v31  # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    :cond_1af
    move/from16 v32, v0

    move-object/from16 v33, v6

    move-object/from16 v34, v7

    move-object/from16 v35, v8

    move-object/from16 v36, v9

    move-object/from16 v37, v10

    move/from16 v38, v11

    move-object/from16 v41, v12

    const-wide/16 v39, 0x40

    .end local v0  # "regularZygote":Z
    .end local v6  # "ast":Lcom/android/server/AppStateTracker;
    .end local v7  # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v8  # "targetPackagesList":[Ljava/lang/String;
    .end local v9  # "sharedPackages":[Ljava/lang/String;
    .end local v10  # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v11  # "userId":I
    .end local v12  # "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v32  # "regularZygote":Z
    .restart local v33  # "ast":Lcom/android/server/AppStateTracker;
    .restart local v34  # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .restart local v35  # "targetPackagesList":[Ljava/lang/String;
    .restart local v36  # "sharedPackages":[Ljava/lang/String;
    .restart local v37  # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .restart local v38  # "userId":I
    .restart local v41  # "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->usesAppZygote()Z

    move-result v0

    if-eqz v0, :cond_22f

    .line 2402
    invoke-direct {v1, v2}, Lcom/android/server/am/ProcessList;->createAppZygoteForProcessIfNeeded(Lcom/android/server/am/ProcessRecord;)Landroid/os/AppZygote;

    move-result-object v0

    .line 2405
    .local v0, "appZygote":Landroid/os/AppZygote;
    invoke-virtual {v0}, Landroid/os/AppZygote;->getProcess()Landroid/os/ChildZygoteProcess;

    move-result-object v3

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v4, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v4, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    const/16 v16, 0x0

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/16 v20, 0x0

    .line 2410
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getDisabledCompatChanges()[J

    move-result-object v21

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/4 v4, 0x1

    new-array v13, v4, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "seq="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2412
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v6

    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v6, 0x0

    aput-object v4, v13, v6

    .line 2405
    move-object/from16 v4, p2

    move/from16 v6, p4

    move/from16 v7, p4

    move-object/from16 v8, p5

    move/from16 v9, p6

    move/from16 v10, p8

    move-object/from16 v12, p9

    move-object/from16 v25, v13

    move-object/from16 v13, p10

    move-object/from16 v17, v14

    move-object/from16 v14, p11

    move/from16 v18, v20

    move/from16 v19, v26

    move-object/from16 v20, v21

    move-object/from16 v21, v31

    move-object/from16 v22, v30

    invoke-virtual/range {v3 .. v25}, Landroid/os/ChildZygoteProcess;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v3

    move-object v0, v3

    .line 2413
    .local v0, "startResult":Landroid/os/Process$ProcessStartResult;
    move/from16 v0, v32

    goto :goto_28a

    .line 2414
    .end local v0  # "startResult":Landroid/os/Process$ProcessStartResult;
    :cond_22f
    const/4 v0, 0x1

    .line 2415
    .end local v32  # "regularZygote":Z
    .local v0, "regularZygote":Z
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v3, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v14, v3, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2419
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getDisabledCompatChanges()[J

    move-result-object v20

    const/4 v3, 0x1

    new-array v13, v3, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "seq="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2421
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v5

    invoke-virtual {v3, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v13, v5

    .line 2415
    move-object/from16 v3, p2

    move/from16 v5, p4

    move/from16 v6, p4

    move-object/from16 v7, p5

    move/from16 v8, p6

    move/from16 v9, p8

    move-object/from16 v11, p9

    move-object/from16 v12, p10

    move-object/from16 v24, v13

    move-object/from16 v13, p11

    move-object/from16 v16, v15

    move-object/from16 v15, p12

    move/from16 v17, p7

    move/from16 v18, v26

    move-object/from16 v19, v20

    move-object/from16 v20, v31

    move-object/from16 v21, v30

    move/from16 v22, v28

    move/from16 v23, v29

    invoke-static/range {v3 .. v24}, Landroid/os/Process;->start(Ljava/lang/String;Ljava/lang/String;II[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ[JLjava/util/Map;Ljava/util/Map;ZZ[Ljava/lang/String;)Landroid/os/Process$ProcessStartResult;

    move-result-object v3

    .line 2424
    .local v3, "startResult":Landroid/os/Process$ProcessStartResult;
    :goto_28a
    if-nez v0, :cond_2c3

    .line 2426
    iget v4, v3, Landroid/os/Process$ProcessStartResult;->pid:I
    :try_end_28e
    .catchall {:try_start_1a1 .. :try_end_28e} :catchall_33c

    move/from16 v5, p4

    :try_start_290
    invoke-static {v5, v4}, Landroid/os/Process;->createProcessGroup(II)I

    move-result v4

    if-gez v4, :cond_2c5

    .line 2427
    const-string v4, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to create process group for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v3, Landroid/os/Process$ProcessStartResult;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2c5

    .line 2424
    :cond_2c3
    move/from16 v5, p4

    .line 2433
    :cond_2c5
    :goto_2c5
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceStub;->get()Lcom/android/server/am/ActivityManagerServiceStub;

    move-result-object v4

    .line 2434
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v2, v6, v7}, Lcom/android/server/am/ActivityManagerServiceStub;->isBoostNeeded(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v4

    iput-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->enableBoost:Z

    .line 2435
    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->enableBoost:Z

    if-eqz v4, :cond_2e0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    goto :goto_2e2

    :cond_2e0
    const-wide/16 v6, 0x0

    :goto_2e2
    iput-wide v6, v2, Lcom/android/server/am/ProcessRecord;->boostBeginTime:J

    .line 2440
    if-eqz v29, :cond_2f4

    .line 2441
    invoke-interface/range {v31 .. v31}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object/from16 v8, v34

    move/from16 v7, v38

    .end local v34  # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v38  # "userId":I
    .local v7, "userId":I
    .local v8, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    invoke-virtual {v8, v7, v4, v6}, Landroid/os/storage/StorageManagerInternal;->prepareStorageDirs(ILjava/util/Set;Ljava/lang/String;)Z

    goto :goto_2f8

    .line 2440
    .end local v7  # "userId":I
    .end local v8  # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .restart local v34  # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .restart local v38  # "userId":I
    :cond_2f4
    move-object/from16 v8, v34

    move/from16 v7, v38

    .line 2444
    .end local v34  # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v38  # "userId":I
    .restart local v7  # "userId":I
    .restart local v8  # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    :goto_2f8
    sget-object v4, Lcom/android/server/am/ProcessList;->mPerfServiceStartHint:Landroid/util/BoostFramework;

    if-eqz v4, :cond_32b

    .line 2445
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_32b

    .line 2446
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "next-activity"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_31c

    .line 2447
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v6, "next-top-activity"

    invoke-virtual {v4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_32b

    .line 2449
    :cond_31c
    if-eqz v3, :cond_32b

    .line 2450
    sget-object v4, Lcom/android/server/am/ProcessList;->mPerfServiceStartHint:Landroid/util/BoostFramework;

    const/16 v6, 0x1081

    iget-object v9, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v10, v3, Landroid/os/Process$ProcessStartResult;->pid:I

    const/16 v11, 0x65

    invoke-virtual {v4, v6, v9, v10, v11}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 2454
    :cond_32b
    const-string/jumbo v4, "startProcess: returned from zygote!"
    :try_end_32e
    .catchall {:try_start_290 .. :try_end_32e} :catchall_33a

    move-wide/from16 v9, p13

    :try_start_330
    invoke-direct {v1, v9, v10, v4}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V
    :try_end_333
    .catchall {:try_start_330 .. :try_end_333} :catchall_338

    .line 2455
    nop

    .line 2457
    invoke-static/range {v39 .. v40}, Landroid/os/Trace;->traceEnd(J)V

    .line 2455
    return-object v3

    .line 2457
    .end local v0  # "regularZygote":Z
    .end local v3  # "startResult":Landroid/os/Process$ProcessStartResult;
    .end local v7  # "userId":I
    .end local v8  # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    .end local v26  # "isTopApp":Z
    .end local v27  # "hasAppStorage":Z
    .end local v28  # "bindMountAppsData":Z
    .end local v29  # "bindMountAppStorageDirs":Z
    .end local v30  # "allowlistedAppDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v31  # "pkgDataInfoMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/util/Pair<Ljava/lang/String;Ljava/lang/Long;>;>;"
    .end local v33  # "ast":Lcom/android/server/AppStateTracker;
    .end local v35  # "targetPackagesList":[Ljava/lang/String;
    .end local v36  # "sharedPackages":[Ljava/lang/String;
    .end local v37  # "pmInt":Landroid/content/pm/PackageManagerInternal;
    .end local v41  # "allowlistedApps":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :catchall_338
    move-exception v0

    goto :goto_34d

    :catchall_33a
    move-exception v0

    goto :goto_33f

    :catchall_33c
    move-exception v0

    :goto_33d
    move/from16 v5, p4

    :goto_33f
    move-wide/from16 v9, p13

    goto :goto_34d

    :catchall_342
    move-exception v0

    move-wide v9, v13

    move v5, v15

    const-wide/16 v39, 0x40

    goto :goto_34d

    :catchall_348
    move-exception v0

    move-wide/from16 v39, v11

    move-wide v9, v13

    move v5, v15

    :goto_34d
    invoke-static/range {v39 .. v40}, Landroid/os/Trace;->traceEnd(J)V

    .line 2458
    throw v0
.end method

.method private updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V
    .registers 26
    .param p1, "topApp"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "topI"  # I
    .param p3, "bottomI"  # I
    .param p4, "endIndex"  # I

    .line 3410
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p3

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3411
    .local v3, "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v4

    if-nez v4, :cond_3b3

    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v4

    if-nez v4, :cond_3b3

    .line 3412
    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v4

    if-nez v4, :cond_1e

    move-object/from16 v16, v3

    goto/16 :goto_3b5

    .line 3418
    :cond_1e
    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3419
    .local v4, "uid":I
    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v5

    .line 3420
    .local v5, "topConnectionGroup":I
    const-string v6, " group="

    const-string v7, " @ "

    const-string v8, "ActivityManager"

    if-lez v5, :cond_197

    .line 3421
    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v9

    .line 3422
    .local v9, "endImportance":I
    move/from16 v10, p4

    move v11, v10

    move v10, v9

    move/from16 v9, p4

    .end local p4  # "endIndex":I
    .local v9, "endIndex":I
    .local v10, "endImportance":I
    .local v11, "i":I
    :goto_38
    if-lt v11, v2, :cond_190

    .line 3423
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v12, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/am/ProcessRecord;

    .line 3424
    .local v12, "subProc":Lcom/android/server/am/ProcessRecord;
    iget-object v13, v12, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3425
    .local v13, "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v13}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v14

    .line 3426
    .local v14, "subConnectionGroup":I
    invoke-virtual {v13}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v15

    .line 3427
    .local v15, "subConnectionImportance":I
    iget-object v1, v12, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v4, :cond_17a

    if-ne v14, v5, :cond_17a

    .line 3429
    if-ne v11, v9, :cond_9b

    if-lt v15, v10, :cond_9b

    .line 3433
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v1, :cond_91

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v16, v3

    .end local v3  # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .local v16, "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    const-string v3, "Keeping in-place above "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " endImportance="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " importance="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_93

    .end local v16  # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v3  # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    :cond_91
    move-object/from16 v16, v3

    .line 3438
    .end local v3  # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v16  # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    :goto_93
    add-int/lit8 v9, v9, -0x1

    .line 3439
    move v1, v15

    move v10, v1

    move/from16 v17, v5

    .end local v10  # "endImportance":I
    .local v1, "endImportance":I
    goto/16 :goto_186

    .line 3429
    .end local v1  # "endImportance":I
    .end local v16  # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v3  # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v10  # "endImportance":I
    :cond_9b
    move-object/from16 v16, v3

    .line 3443
    .end local v3  # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v16  # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v1, :cond_c1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Pulling up "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to position in group with importance="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3447
    :cond_c1
    const/4 v1, 0x0

    .line 3448
    .local v1, "moved":Z
    move/from16 v3, p2

    .local v3, "pos":I
    :goto_c4
    move/from16 p4, v1

    .end local v1  # "moved":Z
    .local p4, "moved":Z
    const-string v1, " from position "

    move/from16 v17, v5

    .end local v5  # "topConnectionGroup":I
    .local v17, "topConnectionGroup":I
    const-string v5, "Moving "

    if-le v3, v9, :cond_134

    .line 3449
    move/from16 v18, v10

    .end local v10  # "endImportance":I
    .local v18, "endImportance":I
    iget-object v10, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 3450
    .local v10, "posProc":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v19, v13

    .end local v13  # "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    .local v19, "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    iget-object v13, v10, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3451
    invoke-virtual {v13}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v13

    if-gt v15, v13, :cond_127

    .line 3452
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v13, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3453
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v13, v3, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3454
    sget-boolean v13, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v13, :cond_121

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v20, v14

    .end local v14  # "subConnectionGroup":I
    .local v20, "subConnectionGroup":I
    const-string v14, " to above "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v8, v13}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_123

    .end local v20  # "subConnectionGroup":I
    .restart local v14  # "subConnectionGroup":I
    :cond_121
    move/from16 v20, v14

    .line 3458
    .end local v14  # "subConnectionGroup":I
    .restart local v20  # "subConnectionGroup":I
    :goto_123
    const/4 v13, 0x1

    .line 3459
    .end local p4  # "moved":Z
    .local v13, "moved":Z
    add-int/lit8 v9, v9, -0x1

    .line 3460
    goto :goto_13c

    .line 3451
    .end local v13  # "moved":Z
    .end local v20  # "subConnectionGroup":I
    .restart local v14  # "subConnectionGroup":I
    .restart local p4  # "moved":Z
    :cond_127
    move/from16 v20, v14

    .line 3448
    .end local v10  # "posProc":Lcom/android/server/am/ProcessRecord;
    .end local v14  # "subConnectionGroup":I
    .restart local v20  # "subConnectionGroup":I
    add-int/lit8 v3, v3, -0x1

    move/from16 v1, p4

    move/from16 v5, v17

    move/from16 v10, v18

    move-object/from16 v13, v19

    goto :goto_c4

    .end local v18  # "endImportance":I
    .end local v19  # "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v20  # "subConnectionGroup":I
    .local v10, "endImportance":I
    .local v13, "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v14  # "subConnectionGroup":I
    :cond_134
    move/from16 v18, v10

    move-object/from16 v19, v13

    move/from16 v20, v14

    .end local v10  # "endImportance":I
    .end local v13  # "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v14  # "subConnectionGroup":I
    .restart local v18  # "endImportance":I
    .restart local v19  # "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v20  # "subConnectionGroup":I
    move/from16 v13, p4

    .line 3463
    .end local v3  # "pos":I
    .end local p4  # "moved":Z
    .local v13, "moved":Z
    :goto_13c
    if-nez v13, :cond_177

    .line 3465
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3466
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v9, v12}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3467
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v3, :cond_172

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " to end of group @ "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v8, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3471
    :cond_172
    add-int/lit8 v9, v9, -0x1

    .line 3472
    move v1, v15

    move v10, v1

    .end local v18  # "endImportance":I
    .local v1, "endImportance":I
    goto :goto_186

    .line 3463
    .end local v1  # "endImportance":I
    .restart local v18  # "endImportance":I
    :cond_177
    move/from16 v10, v18

    goto :goto_186

    .line 3427
    .end local v16  # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v17  # "topConnectionGroup":I
    .end local v18  # "endImportance":I
    .end local v19  # "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v20  # "subConnectionGroup":I
    .local v3, "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v5  # "topConnectionGroup":I
    .restart local v10  # "endImportance":I
    .local v13, "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v14  # "subConnectionGroup":I
    :cond_17a
    move-object/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v10

    move-object/from16 v19, v13

    move/from16 v20, v14

    .line 3422
    .end local v3  # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v5  # "topConnectionGroup":I
    .end local v10  # "endImportance":I
    .end local v12  # "subProc":Lcom/android/server/am/ProcessRecord;
    .end local v13  # "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v14  # "subConnectionGroup":I
    .end local v15  # "subConnectionImportance":I
    .restart local v16  # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v17  # "topConnectionGroup":I
    .restart local v18  # "endImportance":I
    move/from16 v10, v18

    .end local v18  # "endImportance":I
    .restart local v10  # "endImportance":I
    :goto_186
    add-int/lit8 v11, v11, -0x1

    move-object/from16 v1, p1

    move-object/from16 v3, v16

    move/from16 v5, v17

    goto/16 :goto_38

    .end local v16  # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v17  # "topConnectionGroup":I
    .restart local v3  # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v5  # "topConnectionGroup":I
    :cond_190
    move-object/from16 v16, v3

    move/from16 v17, v5

    move/from16 v18, v10

    .end local v3  # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v5  # "topConnectionGroup":I
    .end local v10  # "endImportance":I
    .restart local v16  # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v17  # "topConnectionGroup":I
    .restart local v18  # "endImportance":I
    goto :goto_19d

    .line 3420
    .end local v9  # "endIndex":I
    .end local v11  # "i":I
    .end local v16  # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v17  # "topConnectionGroup":I
    .end local v18  # "endImportance":I
    .restart local v3  # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v5  # "topConnectionGroup":I
    .local p4, "endIndex":I
    :cond_197
    move-object/from16 v16, v3

    move/from16 v17, v5

    .end local v3  # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v5  # "topConnectionGroup":I
    .restart local v16  # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v17  # "topConnectionGroup":I
    move/from16 v9, p4

    .line 3481
    .end local p4  # "endIndex":I
    .restart local v9  # "endIndex":I
    :goto_19d
    move v1, v9

    .line 3482
    .local v1, "i":I
    :goto_19e
    if-lt v1, v2, :cond_3b2

    .line 3483
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 3484
    .local v3, "subProc":Lcom/android/server/am/ProcessRecord;
    iget-object v5, v3, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3485
    .local v5, "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v10

    .line 3486
    .local v10, "subConnectionGroup":I
    sget-boolean v11, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v11, :cond_1d0

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Looking to spread old procs, at "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v8, v11}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3488
    :cond_1d0
    iget-object v11, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v11, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v11, v4, :cond_3ac

    .line 3492
    if-ge v1, v9, :cond_2f4

    .line 3493
    const/4 v11, 0x0

    .line 3494
    .local v11, "hasActivity":Z
    const/4 v12, 0x0

    .line 3495
    .local v12, "connUid":I
    const/4 v13, 0x0

    .line 3496
    .local v13, "connGroup":I
    :goto_1db
    if-lt v1, v2, :cond_2f4

    .line 3497
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3498
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v14, v9, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3499
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v14, :cond_201

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Different app, moving to "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3501
    :cond_201
    add-int/lit8 v1, v1, -0x1

    .line 3502
    if-ge v1, v2, :cond_207

    .line 3503
    goto/16 :goto_2f4

    .line 3505
    :cond_207
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v14, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    move-object v3, v14

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 3506
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v14, :cond_234

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Looking at next app at "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, ": "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3508
    :cond_234
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v14

    if-nez v14, :cond_2da

    .line 3509
    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v14

    if-eqz v14, :cond_242

    goto/16 :goto_2da

    .line 3519
    :cond_242
    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v14

    if-eqz v14, :cond_2f0

    .line 3520
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v14, :cond_251

    const-string v14, "This is a client of an activity"

    invoke-static {v8, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3522
    :cond_251
    if-eqz v11, :cond_2ad

    .line 3523
    if-eqz v12, :cond_284

    iget-object v14, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v14, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v12, v14, :cond_25c

    goto :goto_284

    .line 3530
    :cond_25c
    if-eqz v13, :cond_260

    if-eq v13, v10, :cond_2f0

    .line 3533
    :cond_260
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v14, :cond_2f4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Already found a different group: connGroup="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2f4

    .line 3526
    :cond_284
    :goto_284
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v14, :cond_2f4

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Already found a different activity: connUid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f4

    .line 3539
    :cond_2ad
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v14, :cond_2d3

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "This is an activity client!  uid="

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v15, v15, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v8, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3542
    :cond_2d3
    const/4 v11, 0x1

    .line 3543
    iget-object v14, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v14, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3544
    move v13, v10

    goto :goto_2f0

    .line 3510
    :cond_2da
    :goto_2da
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v14, :cond_2e3

    const-string v14, "This is hosting an activity!"

    invoke-static {v8, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3512
    :cond_2e3
    if-eqz v11, :cond_2ef

    .line 3514
    sget-boolean v14, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v14, :cond_2f4

    const-string v14, "Already found an activity, done"

    invoke-static {v8, v14}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2f4

    .line 3518
    :cond_2ef
    const/4 v11, 0x1

    .line 3547
    :cond_2f0
    :goto_2f0
    add-int/lit8 v9, v9, -0x1

    goto/16 :goto_1db

    .line 3554
    .end local v11  # "hasActivity":Z
    .end local v12  # "connUid":I
    .end local v13  # "connGroup":I
    :cond_2f4
    :goto_2f4
    add-int/lit8 v9, v9, -0x1

    if-lt v9, v2, :cond_32a

    .line 3555
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    .line 3556
    .local v11, "endProc":Lcom/android/server/am/ProcessRecord;
    iget-object v12, v11, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v12, v4, :cond_329

    .line 3557
    sget-boolean v12, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v12, :cond_32a

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Found next group of app: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v8, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_32a

    .line 3556
    .end local v11  # "endProc":Lcom/android/server/am/ProcessRecord;
    :cond_329
    goto :goto_2f4

    .line 3563
    :cond_32a
    :goto_32a
    if-lt v9, v2, :cond_38d

    .line 3564
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v11, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/android/server/am/ProcessRecord;

    .line 3565
    .restart local v11  # "endProc":Lcom/android/server/am/ProcessRecord;
    iget-object v12, v11, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3566
    .local v12, "endPsr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v12}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v13

    .line 3567
    .local v13, "endConnectionGroup":I
    add-int/lit8 v9, v9, -0x1

    :goto_33c
    if-lt v9, v2, :cond_38a

    .line 3568
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ProcessRecord;

    .line 3569
    .local v14, "nextEndProc":Lcom/android/server/am/ProcessRecord;
    iget-object v15, v14, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v15}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v15

    .line 3570
    .local v15, "nextConnectionGroup":I
    iget-object v0, v14, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v4, :cond_35a

    if-eq v15, v13, :cond_355

    goto :goto_35a

    .line 3567
    .end local v14  # "nextEndProc":Lcom/android/server/am/ProcessRecord;
    .end local v15  # "nextConnectionGroup":I
    :cond_355
    add-int/lit8 v9, v9, -0x1

    move-object/from16 v0, p0

    goto :goto_33c

    .line 3572
    .restart local v14  # "nextEndProc":Lcom/android/server/am/ProcessRecord;
    .restart local v15  # "nextConnectionGroup":I
    :cond_35a
    :goto_35a
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v0, :cond_387

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 p4, v1

    .end local v1  # "i":I
    .local p4, "i":I
    const-string v1, "Found next group or app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_38f

    .end local p4  # "i":I
    .restart local v1  # "i":I
    :cond_387
    move/from16 p4, v1

    .end local v1  # "i":I
    .restart local p4  # "i":I
    goto :goto_38f

    .line 3567
    .end local v14  # "nextEndProc":Lcom/android/server/am/ProcessRecord;
    .end local v15  # "nextConnectionGroup":I
    .end local p4  # "i":I
    .restart local v1  # "i":I
    :cond_38a
    move/from16 p4, v1

    .end local v1  # "i":I
    .restart local p4  # "i":I
    goto :goto_38f

    .line 3563
    .end local v11  # "endProc":Lcom/android/server/am/ProcessRecord;
    .end local v12  # "endPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v13  # "endConnectionGroup":I
    .end local p4  # "i":I
    .restart local v1  # "i":I
    :cond_38d
    move/from16 p4, v1

    .line 3579
    .end local v1  # "i":I
    .restart local p4  # "i":I
    :goto_38f
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v0, :cond_3a9

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bumping scan position to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v8, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3581
    :cond_3a9
    move v0, v9

    move v1, v0

    .end local p4  # "i":I
    .local v0, "i":I
    goto :goto_3ae

    .line 3583
    .end local v0  # "i":I
    .restart local v1  # "i":I
    :cond_3ac
    add-int/lit8 v1, v1, -0x1

    .line 3585
    .end local v3  # "subProc":Lcom/android/server/am/ProcessRecord;
    .end local v5  # "subPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v10  # "subConnectionGroup":I
    :goto_3ae
    move-object/from16 v0, p0

    goto/16 :goto_19e

    .line 3586
    :cond_3b2
    return-void

    .line 3411
    .end local v1  # "i":I
    .end local v4  # "uid":I
    .end local v9  # "endIndex":I
    .end local v16  # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v17  # "topConnectionGroup":I
    .local v3, "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .local p4, "endIndex":I
    :cond_3b3
    move-object/from16 v16, v3

    .line 3415
    .end local v3  # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v16  # "topPsr":Lcom/android/server/am/ProcessServiceRecord;
    :goto_3b5
    return-void
.end method

.method private updateLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I
    .registers 13
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "now"  # J
    .param p4, "index"  # I
    .param p5, "lruSeq"  # I
    .param p6, "what"  # Ljava/lang/String;
    .param p7, "obj"  # Ljava/lang/Object;
    .param p8, "srcApp"  # Lcom/android/server/am/ProcessRecord;

    .line 3355
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessRecord;->setLastActivityTime(J)V

    .line 3357
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3359
    return p4

    .line 3362
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 3363
    .local v0, "lrui":I
    const-string v1, "ActivityManager"

    if-gez v0, :cond_49

    .line 3364
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding dependent process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not on LRU list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3366
    return p4

    .line 3369
    :cond_49
    if-lt v0, p4, :cond_4c

    .line 3372
    return p4

    .line 3375
    :cond_4c
    iget v2, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-lt v0, v2, :cond_53

    if-ge p4, v2, :cond_53

    .line 3377
    return p4

    .line 3380
    :cond_53
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3381
    if-lez p4, :cond_5c

    .line 3382
    add-int/lit8 p4, p4, -0x1

    .line 3384
    :cond_5c
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v2, :cond_8a

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Moving dep from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " in LRU list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3386
    :cond_8a
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, p4, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3387
    invoke-virtual {p1, p5}, Lcom/android/server/am/ProcessRecord;->setLruSeq(I)V

    .line 3388
    return p4
.end method

.method private updateLruProcessLSP(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;ZZ)V
    .registers 26
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "client"  # Lcom/android/server/am/ProcessRecord;
    .param p3, "hasActivity"  # Z
    .param p4, "hasService"  # Z

    .line 3615
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    iget v0, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const/4 v12, 0x1

    add-int/2addr v0, v12

    iput v0, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    .line 3616
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    .line 3617
    .local v13, "now":J
    iget-object v15, v10, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3618
    .local v15, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v10, v13, v14}, Lcom/android/server/am/ProcessRecord;->setLastActivityTime(J)V

    .line 3622
    const-string v0, "ActivityManager"

    if-eqz p3, :cond_47

    .line 3623
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 3624
    .local v1, "N":I
    if-lez v1, :cond_46

    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v10, :cond_46

    .line 3625
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v2, :cond_45

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Not moving, already top activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3626
    :cond_45
    return-void

    .line 3628
    .end local v1  # "N":I
    :cond_46
    goto :goto_6f

    .line 3629
    :cond_47
    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-lez v1, :cond_6f

    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    sub-int/2addr v1, v12

    .line 3630
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v10, :cond_6f

    .line 3631
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v1, :cond_6e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not moving, already top other: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3632
    :cond_6e
    return-void

    .line 3636
    :cond_6f
    :goto_6f
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v8

    .line 3638
    .local v8, "lrui":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v1

    if-eqz v1, :cond_98

    if-ltz v8, :cond_98

    .line 3641
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v1, :cond_97

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not moving, persistent: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3642
    :cond_97
    return-void

    .line 3679
    :cond_98
    if-ltz v8, :cond_ad

    .line 3680
    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v8, v1, :cond_a1

    .line 3681
    sub-int/2addr v1, v12

    iput v1, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 3683
    :cond_a1
    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-ge v8, v1, :cond_a8

    .line 3684
    sub-int/2addr v1, v12

    iput v1, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 3694
    :cond_a8
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 3708
    :cond_ad
    const/4 v1, -0x1

    .line 3709
    .local v1, "nextActivityIndex":I
    if-eqz p3, :cond_158

    .line 3710
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3711
    .local v2, "N":I
    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 3712
    .local v3, "nextIndex":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v4

    if-nez v4, :cond_12f

    invoke-virtual {v15}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v4

    if-nez v4, :cond_12f

    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/lit8 v5, v2, -0x1

    if-ge v4, v5, :cond_12f

    .line 3716
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v4, :cond_100

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding to second-top of LRU activity list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " group="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3718
    invoke-virtual {v15}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " importance="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3719
    invoke-virtual {v15}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 3716
    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3720
    :cond_100
    add-int/lit8 v0, v2, -0x1

    .line 3721
    .local v0, "pos":I
    :goto_102
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-le v0, v4, :cond_11d

    .line 3722
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 3723
    .local v4, "posproc":Lcom/android/server/am/ProcessRecord;
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v6, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v5, v6, :cond_119

    .line 3727
    goto :goto_11d

    .line 3729
    :cond_119
    nop

    .end local v4  # "posproc":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v0, v0, -0x1

    .line 3730
    goto :goto_102

    .line 3731
    :cond_11d
    :goto_11d
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v0, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3734
    add-int/lit8 v4, v0, -0x1

    .line 3735
    .local v4, "endIndex":I
    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v4, v5, :cond_12a

    .line 3736
    iget v4, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 3738
    :cond_12a
    move v1, v4

    .line 3739
    invoke-direct {v9, v10, v0, v5, v4}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V

    .line 3740
    .end local v0  # "pos":I
    .end local v4  # "endIndex":I
    goto :goto_156

    .line 3742
    :cond_12f
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v4, :cond_149

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adding to top of LRU activity list: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3743
    :cond_149
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3744
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v12

    move v1, v0

    .line 3746
    .end local v2  # "N":I
    :goto_156
    goto/16 :goto_1fa

    .end local v3  # "nextIndex":I
    :cond_158
    if-eqz p4, :cond_184

    .line 3748
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v2, :cond_174

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Adding to top of LRU service list: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3749
    :cond_174
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    invoke-virtual {v0, v2, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3750
    iget v3, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 3751
    .restart local v3  # "nextIndex":I
    iget v0, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/2addr v0, v12

    iput v0, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    goto/16 :goto_1fa

    .line 3754
    .end local v3  # "nextIndex":I
    :cond_184
    iget v2, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 3755
    .local v2, "index":I
    if-eqz v11, :cond_1bc

    .line 3758
    iget-object v3, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v11}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v3

    .line 3759
    .local v3, "clientIndex":I
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v4, :cond_1b4

    if-gez v3, :cond_1b4

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unknown client "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " when updating "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3761
    :cond_1b4
    if-gt v3, v8, :cond_1b7

    .line 3764
    move v3, v8

    .line 3766
    :cond_1b7
    if-ltz v3, :cond_1bc

    if-le v2, v3, :cond_1bc

    .line 3767
    move v2, v3

    .line 3770
    .end local v3  # "clientIndex":I
    :cond_1bc
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v3, :cond_1e0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Adding at "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " of LRU list: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3771
    :cond_1e0
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, v2, v10}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 3772
    add-int/lit8 v3, v2, -0x1

    .line 3773
    .local v3, "nextIndex":I
    iget v0, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    add-int/2addr v0, v12

    iput v0, v9, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 3774
    iget v0, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    add-int/2addr v0, v12

    iput v0, v9, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 3775
    if-le v2, v12, :cond_1fa

    .line 3776
    sub-int/2addr v0, v12

    const/4 v4, 0x0

    add-int/lit8 v5, v2, -0x1

    invoke-direct {v9, v10, v0, v4, v5}, Lcom/android/server/am/ProcessList;->updateClientActivitiesOrderingLSP(Lcom/android/server/am/ProcessRecord;III)V

    .line 3780
    .end local v2  # "index":I
    :cond_1fa
    :goto_1fa
    iget v0, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    invoke-virtual {v10, v0}, Lcom/android/server/am/ProcessRecord;->setLruSeq(I)V

    .line 3784
    invoke-virtual {v15}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v0

    sub-int/2addr v0, v12

    move v7, v0

    move/from16 v16, v1

    move/from16 v17, v3

    .end local v1  # "nextActivityIndex":I
    .end local v3  # "nextIndex":I
    .local v7, "j":I
    .local v16, "nextActivityIndex":I
    .local v17, "nextIndex":I
    :goto_209
    if-ltz v7, :cond_2bd

    .line 3785
    invoke-virtual {v15, v7}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v6

    .line 3786
    .local v6, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v0, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    if-eqz v0, :cond_2b1

    iget-boolean v0, v6, Lcom/android/server/am/ConnectionRecord;->serviceDead:Z

    if-nez v0, :cond_2b1

    iget-object v0, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    if-eqz v0, :cond_2b1

    iget-object v0, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_2b1

    iget-object v0, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3788
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getLruSeq()I

    move-result v0

    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    if-eq v0, v1, :cond_2aa

    iget v0, v6, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v1, 0x40000130  # 2.0000725f

    and-int/2addr v0, v1

    if-nez v0, :cond_2aa

    iget-object v0, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 3790
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_2a3

    .line 3791
    iget-object v0, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v0, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v0

    if-eqz v0, :cond_281

    .line 3792
    if-ltz v16, :cond_27a

    .line 3793
    iget-object v0, v6, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-string/jumbo v18, "service connection"

    move-object/from16 v0, p0

    move-wide v2, v13

    move/from16 v4, v16

    move-object/from16 v19, v6

    .end local v6  # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v19, "cr":Lcom/android/server/am/ConnectionRecord;
    move-object/from16 v6, v18

    move/from16 v18, v7

    .end local v7  # "j":I
    .local v18, "j":I
    move-object/from16 v7, v19

    move/from16 v20, v8

    .end local v8  # "lrui":I
    .local v20, "lrui":I
    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    move/from16 v16, v0

    .end local v16  # "nextActivityIndex":I
    .local v0, "nextActivityIndex":I
    goto :goto_2b7

    .line 3792
    .end local v0  # "nextActivityIndex":I
    .end local v18  # "j":I
    .end local v19  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v20  # "lrui":I
    .restart local v6  # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v7  # "j":I
    .restart local v8  # "lrui":I
    .restart local v16  # "nextActivityIndex":I
    :cond_27a
    move-object/from16 v19, v6

    move/from16 v18, v7

    move/from16 v20, v8

    .end local v6  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v7  # "j":I
    .end local v8  # "lrui":I
    .restart local v18  # "j":I
    .restart local v19  # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v20  # "lrui":I
    goto :goto_2b7

    .line 3799
    .end local v18  # "j":I
    .end local v19  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v20  # "lrui":I
    .restart local v6  # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v7  # "j":I
    .restart local v8  # "lrui":I
    :cond_281
    move-object/from16 v19, v6

    move/from16 v18, v7

    move/from16 v20, v8

    .end local v6  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v7  # "j":I
    .end local v8  # "lrui":I
    .restart local v18  # "j":I
    .restart local v19  # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v20  # "lrui":I
    move-object/from16 v8, v19

    .end local v19  # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v8, "cr":Lcom/android/server/am/ConnectionRecord;
    iget-object v0, v8, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v1, v0, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-string/jumbo v6, "service connection"

    move-object/from16 v0, p0

    move-wide v2, v13

    move/from16 v4, v17

    move-object v7, v8

    .end local v8  # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v19  # "cr":Lcom/android/server/am/ConnectionRecord;
    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    move/from16 v17, v0

    .end local v17  # "nextIndex":I
    .local v0, "nextIndex":I
    goto :goto_2b7

    .line 3790
    .end local v0  # "nextIndex":I
    .end local v18  # "j":I
    .end local v19  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v20  # "lrui":I
    .restart local v6  # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v7  # "j":I
    .local v8, "lrui":I
    .restart local v17  # "nextIndex":I
    :cond_2a3
    move-object/from16 v19, v6

    move/from16 v18, v7

    move/from16 v20, v8

    .end local v6  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v7  # "j":I
    .end local v8  # "lrui":I
    .restart local v18  # "j":I
    .restart local v19  # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v20  # "lrui":I
    goto :goto_2b7

    .line 3788
    .end local v18  # "j":I
    .end local v19  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v20  # "lrui":I
    .restart local v6  # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v7  # "j":I
    .restart local v8  # "lrui":I
    :cond_2aa
    move-object/from16 v19, v6

    move/from16 v18, v7

    move/from16 v20, v8

    .end local v6  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v7  # "j":I
    .end local v8  # "lrui":I
    .restart local v18  # "j":I
    .restart local v19  # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v20  # "lrui":I
    goto :goto_2b7

    .line 3786
    .end local v18  # "j":I
    .end local v19  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v20  # "lrui":I
    .restart local v6  # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v7  # "j":I
    .restart local v8  # "lrui":I
    :cond_2b1
    move-object/from16 v19, v6

    move/from16 v18, v7

    move/from16 v20, v8

    .line 3784
    .end local v6  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v7  # "j":I
    .end local v8  # "lrui":I
    .restart local v18  # "j":I
    .restart local v20  # "lrui":I
    :goto_2b7
    add-int/lit8 v7, v18, -0x1

    move/from16 v8, v20

    .end local v18  # "j":I
    .restart local v7  # "j":I
    goto/16 :goto_209

    .end local v20  # "lrui":I
    .restart local v8  # "lrui":I
    :cond_2bd
    move/from16 v18, v7

    move/from16 v20, v8

    .line 3806
    .end local v7  # "j":I
    .end local v8  # "lrui":I
    .restart local v20  # "lrui":I
    iget-object v8, v10, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 3807
    .local v8, "ppr":Lcom/android/server/am/ProcessProviderRecord;
    invoke-virtual {v8}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v0

    sub-int/2addr v0, v12

    move v12, v0

    .local v12, "j":I
    :goto_2c9
    if-ltz v12, :cond_309

    .line 3808
    invoke-virtual {v8, v12}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v0

    iget-object v7, v0, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    .line 3809
    .local v7, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v0, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    if-eqz v0, :cond_300

    iget-object v0, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getLruSeq()I

    move-result v0

    iget v1, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    if-eq v0, v1, :cond_300

    iget-object v0, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-nez v0, :cond_300

    .line 3810
    iget-object v1, v7, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    iget v5, v9, Lcom/android/server/am/ProcessList;->mLruSeq:I

    const-string/jumbo v6, "provider reference"

    move-object/from16 v0, p0

    move-wide v2, v13

    move/from16 v4, v17

    move-object/from16 v18, v7

    .end local v7  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v18, "cpr":Lcom/android/server/am/ContentProviderRecord;
    move-object/from16 v19, v8

    .end local v8  # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .local v19, "ppr":Lcom/android/server/am/ProcessProviderRecord;
    move-object/from16 v8, p1

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->updateLruProcessInternalLSP(Lcom/android/server/am/ProcessRecord;JIILjava/lang/String;Ljava/lang/Object;Lcom/android/server/am/ProcessRecord;)I

    move-result v0

    move/from16 v17, v0

    .end local v17  # "nextIndex":I
    .restart local v0  # "nextIndex":I
    goto :goto_304

    .line 3809
    .end local v0  # "nextIndex":I
    .end local v18  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v19  # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v7  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v8  # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v17  # "nextIndex":I
    :cond_300
    move-object/from16 v18, v7

    move-object/from16 v19, v8

    .line 3807
    .end local v7  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v8  # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v19  # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    :goto_304
    add-int/lit8 v12, v12, -0x1

    move-object/from16 v8, v19

    goto :goto_2c9

    .line 3814
    .end local v12  # "j":I
    .end local v19  # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v8  # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    :cond_309
    return-void
.end method

.method private updateOomLevels(IIZ)V
    .registers 22
    .param p1, "displayWidth"  # I
    .param p2, "displayHeight"  # I
    .param p3, "write"  # Z

    .line 956
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v3, 0x15e

    sub-long/2addr v1, v3

    long-to-float v1, v1

    const/high16 v2, 0x43af0000  # 350.0f

    div-float/2addr v1, v2

    .line 959
    .local v1, "scaleMem":F
    const v2, 0x5dc00

    .line 960
    .local v2, "minSize":I
    const v3, 0xfa000

    .line 961
    .local v3, "maxSize":I
    mul-int v4, p1, p2

    int-to-float v4, v4

    int-to-float v5, v2

    sub-float/2addr v4, v5

    sub-int v5, v3, v2

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 968
    .local v4, "scaleDisp":F
    cmpl-float v5, v1, v4

    if-lez v5, :cond_20

    move v5, v1

    goto :goto_21

    :cond_20
    move v5, v4

    .line 969
    .local v5, "scale":F
    :goto_21
    const/4 v6, 0x0

    cmpg-float v6, v5, v6

    if-gez v6, :cond_28

    const/4 v5, 0x0

    goto :goto_30

    .line 970
    :cond_28
    const/high16 v6, 0x3f800000  # 1.0f

    cmpl-float v6, v5, v6

    if-lez v6, :cond_30

    const/high16 v5, 0x3f800000  # 1.0f

    .line 971
    :cond_30
    :goto_30
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x10e0097

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v6

    .line 973
    .local v6, "minfree_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x10e0096

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    .line 979
    .local v7, "minfree_abs":I
    sget-object v8, Landroid/os/Build;->SUPPORTED_64_BIT_ABIS:[Ljava/lang/String;

    array-length v8, v8

    const/4 v10, 0x1

    if-lez v8, :cond_4e

    move v8, v10

    goto :goto_4f

    :cond_4e
    const/4 v8, 0x0

    .line 981
    .local v8, "is64bit":Z
    :goto_4f
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_50
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v12, v12

    const/4 v13, 0x4

    if-ge v11, v12, :cond_7c

    .line 982
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeLow:[I

    aget v12, v12, v11

    .line 983
    .local v12, "low":I
    iget-object v14, v0, Lcom/android/server/am/ProcessList;->mOomMinFreeHigh:[I

    aget v14, v14, v11

    .line 984
    .local v14, "high":I
    if-eqz v8, :cond_6e

    .line 986
    if-ne v11, v13, :cond_67

    mul-int/lit8 v13, v14, 0x3

    div-int/lit8 v14, v13, 0x2

    goto :goto_6e

    .line 987
    :cond_67
    const/4 v15, 0x5

    if-ne v11, v15, :cond_6e

    mul-int/lit8 v15, v14, 0x7

    div-int/lit8 v14, v15, 0x4

    .line 989
    :cond_6e
    :goto_6e
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v15, v12

    sub-int v9, v14, v12

    int-to-float v9, v9

    mul-float/2addr v9, v5

    add-float/2addr v15, v9

    float-to-int v9, v15

    aput v9, v13, v11

    .line 981
    .end local v12  # "low":I
    .end local v14  # "high":I
    add-int/lit8 v11, v11, 0x1

    goto :goto_50

    .line 992
    .end local v11  # "i":I
    :cond_7c
    if-ltz v7, :cond_97

    .line 993
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_7f
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v12, v11

    if-ge v9, v12, :cond_97

    .line 994
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    int-to-float v14, v7

    aget v15, v12, v9

    int-to-float v15, v15

    mul-float/2addr v14, v15

    array-length v11, v11

    sub-int/2addr v11, v10

    aget v11, v12, v11

    int-to-float v11, v11

    div-float/2addr v14, v11

    float-to-int v11, v14

    aput v11, v12, v9

    .line 993
    add-int/lit8 v9, v9, 0x1

    goto :goto_7f

    .line 999
    .end local v9  # "i":I
    :cond_97
    if-eqz v6, :cond_b9

    .line 1000
    const/4 v9, 0x0

    .restart local v9  # "i":I
    :goto_9a
    iget-object v11, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v12, v11

    if-ge v9, v12, :cond_b9

    .line 1001
    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v14, v12, v9

    int-to-float v15, v6

    int-to-float v13, v14

    mul-float/2addr v15, v13

    array-length v11, v11

    sub-int/2addr v11, v10

    aget v11, v12, v11

    int-to-float v11, v11

    div-float/2addr v15, v11

    float-to-int v11, v15

    add-int/2addr v14, v11

    aput v14, v12, v9

    .line 1003
    if-gez v14, :cond_b5

    .line 1004
    const/4 v11, 0x0

    aput v11, v12, v9

    .line 1000
    :cond_b5
    add-int/lit8 v9, v9, 0x1

    const/4 v13, 0x4

    goto :goto_9a

    .line 1012
    .end local v9  # "i":I
    :cond_b9
    const/16 v9, 0x3e7

    invoke-virtual {v0, v9}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v11

    const-wide/16 v13, 0x400

    div-long/2addr v11, v13

    const-wide/16 v13, 0x3

    div-long/2addr v11, v13

    iput-wide v11, v0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    .line 1016
    mul-int v9, p1, p2

    const/4 v11, 0x4

    mul-int/2addr v9, v11

    mul-int/lit8 v9, v9, 0x3

    div-int/lit16 v9, v9, 0x400

    .line 1017
    .local v9, "reserve":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x10e0076

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v11

    .line 1019
    .local v11, "reserve_adj":I
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v12

    const v13, 0x10e0075

    invoke-virtual {v12, v13}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v12

    .line 1022
    .local v12, "reserve_abs":I
    if-ltz v12, :cond_e8

    .line 1023
    move v9, v12

    .line 1026
    :cond_e8
    if-eqz v11, :cond_ee

    .line 1027
    add-int/2addr v9, v11

    .line 1028
    if-gez v9, :cond_ee

    .line 1029
    const/4 v9, 0x0

    .line 1034
    :cond_ee
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ProcessList;->updateOomMinFreeIfNeeded()V

    .line 1035
    sget-boolean v13, Lcom/android/server/am/ProcessList;->ENABLE_MI_EXTRA_FREE:Z

    if-eqz v13, :cond_103

    iget-wide v13, v0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v16, 0x1800

    cmp-long v13, v13, v16

    if-lez v13, :cond_103

    .line 1036
    sget v13, Lcom/android/server/am/ProcessList;->DEF_MIN_EXTRA_FREE_KB:I

    invoke-static {v13, v9}, Ljava/lang/Math;->max(II)I

    move-result v9

    .line 1040
    :cond_103
    if-eqz p3, :cond_142

    .line 1041
    iget-object v13, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v13, v13

    mul-int/lit8 v13, v13, 0x2

    add-int/2addr v13, v10

    const/4 v14, 0x4

    mul-int/2addr v13, v14

    invoke-static {v13}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v13

    .line 1042
    .local v13, "buf":Ljava/nio/ByteBuffer;
    const/4 v14, 0x0

    invoke-virtual {v13, v14}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1043
    const/4 v14, 0x0

    .local v14, "i":I
    :goto_116
    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v15, v15

    if-ge v14, v15, :cond_130

    .line 1044
    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v15, v15, v14

    mul-int/lit16 v15, v15, 0x400

    div-int/lit16 v15, v15, 0x1000

    invoke-virtual {v13, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1045
    iget-object v15, v0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v15, v15, v14

    invoke-virtual {v13, v15}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1043
    add-int/lit8 v14, v14, 0x1

    goto :goto_116

    .line 1049
    .end local v14  # "i":I
    :cond_130
    iput-object v13, v0, Lcom/android/server/am/ProcessList;->mLastOomMinFreeComm:Ljava/nio/ByteBuffer;

    .line 1051
    const/4 v14, 0x0

    invoke-static {v13, v14}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 1052
    invoke-static {v9}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v14

    const-string/jumbo v15, "sys.sysctl.extra_free_kbytes"

    invoke-static {v15, v14}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 1053
    iput-boolean v10, v0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    .line 1057
    .end local v13  # "buf":Ljava/nio/ByteBuffer;
    :cond_142
    return-void
.end method

.method private updateOomMinFreeIfNeeded()V
    .registers 12

    .line 1062
    const/4 v0, 0x0

    .line 1063
    .local v0, "prop":Ljava/lang/String;
    iget-wide v1, p0, Lcom/android/server/am/ProcessList;->mTotalMemMb:J

    const-wide/16 v3, 0x1000

    cmp-long v3, v1, v3

    const/4 v4, 0x0

    if-gez v3, :cond_12

    .line 1064
    const-string/jumbo v1, "persist.sys.minfree_def"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    .line 1065
    :cond_12
    const-wide/16 v5, 0x1800

    cmp-long v1, v1, v5

    if-gez v1, :cond_20

    .line 1066
    const-string/jumbo v1, "persist.sys.minfree_6g"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_27

    .line 1068
    :cond_20
    const-string/jumbo v1, "persist.sys.minfree_8g"

    invoke-static {v1, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1070
    :goto_27
    if-nez v0, :cond_2a

    return-void

    .line 1072
    :cond_2a
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 1073
    .local v1, "minFrees":[Ljava/lang/String;
    array-length v2, v1

    const/4 v3, 0x6

    if-eq v2, v3, :cond_35

    return-void

    .line 1075
    :cond_35
    array-length v2, v1

    new-array v2, v2, [I

    .line 1076
    .local v2, "newValues":[I
    const/4 v4, 0x0

    .line 1077
    .local v4, "minfree":I
    const/4 v5, 0x0

    .line 1078
    .local v5, "index":I
    array-length v6, v1

    const/4 v7, 0x0

    move v8, v7

    :goto_3d
    if-ge v8, v6, :cond_55

    aget-object v9, v1, v8

    .line 1079
    .local v9, "str":Ljava/lang/String;
    const/4 v4, 0x0

    .line 1081
    :try_start_42
    invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10
    :try_end_46
    .catch Ljava/lang/Exception; {:try_start_42 .. :try_end_46} :catch_53

    move v4, v10

    .line 1085
    nop

    .line 1086
    if-gtz v4, :cond_4b

    return-void

    .line 1087
    :cond_4b
    aput v4, v2, v5

    .line 1088
    nop

    .end local v9  # "str":Ljava/lang/String;
    add-int/lit8 v5, v5, 0x1

    .line 1078
    add-int/lit8 v8, v8, 0x1

    goto :goto_3d

    .line 1082
    .restart local v9  # "str":Ljava/lang/String;
    :catch_53
    move-exception v3

    .line 1084
    .local v3, "e":Ljava/lang/Exception;
    return-void

    .line 1090
    .end local v3  # "e":Ljava/lang/Exception;
    .end local v9  # "str":Ljava/lang/String;
    :cond_55
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    invoke-static {v2, v7, v6, v7, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1091
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Override mOomMinFree with: "

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v6, "ActivityManager"

    invoke-static {v6, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1092
    return-void
.end method

.method private static writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z
    .registers 5
    .param p0, "buf"  # Ljava/nio/ByteBuffer;
    .param p1, "repl"  # Ljava/nio/ByteBuffer;

    .line 1587
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    invoke-virtual {v0}, Lcom/android/server/am/LmkdConnection;->isConnected()Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1589
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    const/16 v1, 0xfa1

    .line 1590
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$KillHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 1589
    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessList$KillHandler;->sendMessage(Landroid/os/Message;)Z

    .line 1593
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    const-wide/16 v1, 0xbb8

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/LmkdConnection;->waitForConnection(J)Z

    move-result v0

    if-nez v0, :cond_1f

    .line 1594
    const/4 v0, 0x0

    return v0

    .line 1598
    :cond_1f
    sget-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/am/LmkdConnection;->exchange(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    move-result v0

    return v0
.end method

.method private static writeProcessOomListToProto(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/am/ActivityManagerService;Ljava/util/List;ZLjava/lang/String;)Z
    .registers 34
    .param p0, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p1, "fieldId"  # J
    .param p3, "service"  # Lcom/android/server/am/ActivityManagerService;
    .param p5, "inclDetails"  # Z
    .param p6, "dumpPackage"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/proto/ProtoOutputStream;",
            "J",
            "Lcom/android/server/am/ActivityManagerService;",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;Z",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .line 4350
    .local p4, "origList":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/am/ProcessRecord;>;"
    move-object/from16 v0, p0

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    invoke-static {v1, v2}, Lcom/android/server/am/ProcessList;->sortProcessOomList(Ljava/util/List;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    .line 4351
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_12

    const/4 v4, 0x0

    return v4

    .line 4353
    :cond_12
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 4355
    .local v4, "curUptime":J
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    const/4 v7, 0x1

    sub-int/2addr v6, v7

    .local v6, "i":I
    :goto_1c
    if-ltz v6, :cond_2b7

    .line 4356
    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/util/Pair;

    iget-object v8, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Lcom/android/server/am/ProcessRecord;

    .line 4357
    .local v8, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 4358
    .local v9, "state":Lcom/android/server/am/ProcessStateRecord;
    iget-object v10, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 4359
    .local v10, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual/range {p0 .. p2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v11

    .line 4360
    .local v11, "token":J
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v13

    invoke-static {v13, v7}, Lcom/android/server/am/ProcessList;->makeOomAdjString(IZ)Ljava/lang/String;

    move-result-object v13

    .line 4361
    .local v13, "oomAdj":Ljava/lang/String;
    const-wide v14, 0x10800000001L

    invoke-virtual {v8}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v7

    invoke-virtual {v0, v14, v15, v7}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4362
    invoke-interface/range {p4 .. p4}, Ljava/util/List;->size()I

    move-result v7

    const/4 v14, 0x1

    sub-int/2addr v7, v14

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/util/Pair;

    iget-object v14, v14, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v14, Ljava/lang/Integer;

    invoke-virtual {v14}, Ljava/lang/Integer;->intValue()I

    move-result v14

    sub-int/2addr v7, v14

    const-wide v14, 0x10500000002L

    invoke-virtual {v0, v14, v15, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4363
    const-wide v14, 0x10900000003L

    invoke-virtual {v0, v14, v15, v13}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4364
    const/4 v7, -0x1

    .line 4365
    .local v7, "schedGroup":I
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v14

    packed-switch v14, :pswitch_data_2ba

    :pswitch_71  #0x1
    goto :goto_7a

    .line 4376
    :pswitch_72  #0x4
    const/4 v7, 0x3

    goto :goto_7a

    .line 4373
    :pswitch_74  #0x3
    const/4 v7, 0x2

    .line 4374
    goto :goto_7a

    .line 4370
    :pswitch_76  #0x2
    const/4 v7, 0x1

    .line 4371
    goto :goto_7a

    .line 4367
    :pswitch_78  #0x0
    const/4 v7, 0x0

    .line 4368
    nop

    .line 4379
    :goto_7a
    const/4 v14, -0x1

    if-eq v7, v14, :cond_85

    .line 4380
    const-wide v14, 0x10e00000004L

    invoke-virtual {v0, v14, v15, v7}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4382
    :cond_85
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v14

    if-eqz v14, :cond_95

    .line 4383
    const-wide v14, 0x10800000005L

    const/4 v1, 0x1

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    goto :goto_a4

    .line 4384
    :cond_95
    const/4 v1, 0x1

    invoke-virtual {v10}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v14

    if-eqz v14, :cond_a4

    .line 4385
    const-wide v14, 0x10800000006L

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4387
    :cond_a4
    :goto_a4
    nop

    .line 4388
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v1

    .line 4387
    const-wide v14, 0x10e00000007L

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4389
    const-wide v14, 0x10500000008L

    iget-object v1, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v1

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4390
    const-wide v14, 0x10b00000009L

    invoke-virtual {v8, v0, v14, v15}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 4391
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v1

    const-wide v14, 0x1090000000aL

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4392
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_e3

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_141

    .line 4393
    :cond_e3
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Landroid/content/ComponentName;

    if-eqz v1, :cond_fa

    .line 4394
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 4395
    .local v1, "cn":Landroid/content/ComponentName;
    const-wide v14, 0x10b0000000bL

    invoke-virtual {v1, v0, v14, v15}, Landroid/content/ComponentName;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .end local v1  # "cn":Landroid/content/ComponentName;
    goto :goto_111

    .line 4396
    :cond_fa
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_111

    .line 4397
    const-wide v14, 0x1090000000cL

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_112

    .line 4396
    :cond_111
    :goto_111
    nop

    .line 4399
    :goto_112
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v1, :cond_129

    .line 4400
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 4401
    .local v1, "p":Lcom/android/server/am/ProcessRecord;
    const-wide v14, 0x10b0000000dL

    invoke-virtual {v1, v0, v14, v15}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .end local v1  # "p":Lcom/android/server/am/ProcessRecord;
    goto :goto_140

    .line 4402
    :cond_129
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_140

    .line 4403
    const-wide v14, 0x1090000000eL

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v14, v15, v1}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    goto :goto_141

    .line 4402
    :cond_140
    :goto_140
    nop

    .line 4406
    :cond_141
    :goto_141
    if-eqz p5, :cond_29a

    .line 4407
    const-wide v14, 0x10b0000000fL

    invoke-virtual {v0, v14, v15}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v1

    .line 4408
    .local v1, "detailToken":J
    const-wide v14, 0x10500000001L

    move-object/from16 v24, v3

    .end local v3  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    .local v24, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4409
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v3

    const-wide v14, 0x10500000002L

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4410
    const-wide v14, 0x10500000003L

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetRawAdj()I

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4411
    const-wide v14, 0x10500000004L

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4412
    const-wide v14, 0x10500000005L

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4413
    nop

    .line 4414
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v3

    .line 4413
    const-wide v14, 0x10e00000007L

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4415
    const-wide v14, 0x10e00000008L

    .line 4416
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v3

    .line 4415
    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4417
    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 4418
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v16

    const-wide/16 v18, 0x400

    mul-long v14, v16, v18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4417
    invoke-static {v14, v15, v3}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    const-wide v14, 0x10900000009L

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4419
    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 4420
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastSwapPss()J

    move-result-wide v14

    mul-long v14, v14, v18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4419
    invoke-static {v14, v15, v3}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    const-wide v14, 0x1090000000aL

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4421
    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 4422
    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getLastCachedPss()J

    move-result-wide v16

    mul-long v14, v16, v18

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 4421
    invoke-static {v14, v15, v3}, Landroid/util/DebugUtils;->sizeValueToString(JLjava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v3

    const-wide v14, 0x1090000000bL

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4423
    const-wide v14, 0x1080000000cL

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4424
    const-wide v14, 0x1080000000dL

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isEmpty()Z

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4425
    const-wide v14, 0x1080000000eL

    invoke-virtual {v10}, Lcom/android/server/am/ProcessServiceRecord;->hasAboveClient()Z

    move-result v3

    invoke-virtual {v0, v14, v15, v3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4427
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    const/16 v14, 0xa

    if-lt v3, v14, :cond_28b

    .line 4428
    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v14

    .line 4429
    .local v14, "lastCpuTime":J
    move-object/from16 v3, p3

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    .end local v9  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v10  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v16, "state":Lcom/android/server/am/ProcessStateRecord;
    .local v17, "psr":Lcom/android/server/am/ProcessServiceRecord;
    iget-wide v9, v3, Lcom/android/server/am/ActivityManagerService;->mLastPowerCheckUptime:J

    sub-long v9, v4, v9

    .line 4430
    .local v9, "uptimeSince":J
    const-wide/16 v18, 0x0

    cmp-long v20, v14, v18

    if-eqz v20, :cond_281

    cmp-long v18, v9, v18

    if-lez v18, :cond_281

    .line 4431
    iget-object v3, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v3, v3, Lcom/android/server/am/ProcessProfileRecord;->mCurCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v18

    move-wide/from16 v20, v4

    .end local v4  # "curUptime":J
    .local v20, "curUptime":J
    sub-long v3, v18, v14

    .line 4432
    .local v3, "timeUsed":J
    move/from16 v18, v7

    move-object v5, v8

    const-wide v7, 0x10b0000000fL

    .end local v7  # "schedGroup":I
    .end local v8  # "r":Lcom/android/server/am/ProcessRecord;
    .local v5, "r":Lcom/android/server/am/ProcessRecord;
    .local v18, "schedGroup":I
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v7

    .line 4433
    .local v7, "cpuTimeToken":J
    move-object/from16 v19, v13

    move-wide/from16 v22, v14

    .end local v13  # "oomAdj":Ljava/lang/String;
    .end local v14  # "lastCpuTime":J
    .local v19, "oomAdj":Ljava/lang/String;
    .local v22, "lastCpuTime":J
    const-wide v13, 0x10300000001L

    invoke-virtual {v0, v13, v14, v9, v10}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4434
    const-wide v13, 0x10300000002L

    invoke-virtual {v0, v13, v14, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 4435
    const-wide/high16 v25, 0x4059000000000000L  # 100.0

    long-to-double v13, v3

    mul-double v13, v13, v25

    move-wide/from16 v25, v3

    .end local v3  # "timeUsed":J
    .local v25, "timeUsed":J
    long-to-double v3, v9

    div-double/2addr v13, v3

    const-wide v3, 0x10200000003L

    invoke-virtual {v0, v3, v4, v13, v14}, Landroid/util/proto/ProtoOutputStream;->write(JD)V

    .line 4437
    invoke-virtual {v0, v7, v8}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_296

    .line 4430
    .end local v5  # "r":Lcom/android/server/am/ProcessRecord;
    .end local v18  # "schedGroup":I
    .end local v19  # "oomAdj":Ljava/lang/String;
    .end local v20  # "curUptime":J
    .end local v22  # "lastCpuTime":J
    .end local v25  # "timeUsed":J
    .restart local v4  # "curUptime":J
    .local v7, "schedGroup":I
    .restart local v8  # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v13  # "oomAdj":Ljava/lang/String;
    .restart local v14  # "lastCpuTime":J
    :cond_281
    move-wide/from16 v20, v4

    move/from16 v18, v7

    move-object v5, v8

    move-object/from16 v19, v13

    move-wide/from16 v22, v14

    .end local v4  # "curUptime":J
    .end local v7  # "schedGroup":I
    .end local v8  # "r":Lcom/android/server/am/ProcessRecord;
    .end local v13  # "oomAdj":Ljava/lang/String;
    .end local v14  # "lastCpuTime":J
    .restart local v5  # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v18  # "schedGroup":I
    .restart local v19  # "oomAdj":Ljava/lang/String;
    .restart local v20  # "curUptime":J
    .restart local v22  # "lastCpuTime":J
    goto :goto_296

    .line 4427
    .end local v5  # "r":Lcom/android/server/am/ProcessRecord;
    .end local v16  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v17  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v18  # "schedGroup":I
    .end local v19  # "oomAdj":Ljava/lang/String;
    .end local v20  # "curUptime":J
    .end local v22  # "lastCpuTime":J
    .restart local v4  # "curUptime":J
    .restart local v7  # "schedGroup":I
    .restart local v8  # "r":Lcom/android/server/am/ProcessRecord;
    .local v9, "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v10  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v13  # "oomAdj":Ljava/lang/String;
    :cond_28b
    move-wide/from16 v20, v4

    move/from16 v18, v7

    move-object v5, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v19, v13

    .line 4440
    .end local v4  # "curUptime":J
    .end local v7  # "schedGroup":I
    .end local v8  # "r":Lcom/android/server/am/ProcessRecord;
    .end local v9  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v10  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v13  # "oomAdj":Ljava/lang/String;
    .restart local v5  # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v16  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v17  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v18  # "schedGroup":I
    .restart local v19  # "oomAdj":Ljava/lang/String;
    .restart local v20  # "curUptime":J
    :goto_296
    invoke-virtual {v0, v1, v2}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    goto :goto_2a7

    .line 4406
    .end local v1  # "detailToken":J
    .end local v5  # "r":Lcom/android/server/am/ProcessRecord;
    .end local v16  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v17  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v18  # "schedGroup":I
    .end local v19  # "oomAdj":Ljava/lang/String;
    .end local v20  # "curUptime":J
    .end local v24  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    .local v3, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    .restart local v4  # "curUptime":J
    .restart local v7  # "schedGroup":I
    .restart local v8  # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v9  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v10  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v13  # "oomAdj":Ljava/lang/String;
    :cond_29a
    move-object/from16 v24, v3

    move-wide/from16 v20, v4

    move/from16 v18, v7

    move-object v5, v8

    move-object/from16 v16, v9

    move-object/from16 v17, v10

    move-object/from16 v19, v13

    .line 4442
    .end local v3  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    .end local v4  # "curUptime":J
    .end local v7  # "schedGroup":I
    .end local v8  # "r":Lcom/android/server/am/ProcessRecord;
    .end local v9  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v10  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v13  # "oomAdj":Ljava/lang/String;
    .restart local v5  # "r":Lcom/android/server/am/ProcessRecord;
    .restart local v16  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v17  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v18  # "schedGroup":I
    .restart local v19  # "oomAdj":Ljava/lang/String;
    .restart local v20  # "curUptime":J
    .restart local v24  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    :goto_2a7
    invoke-virtual {v0, v11, v12}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4355
    .end local v5  # "r":Lcom/android/server/am/ProcessRecord;
    .end local v11  # "token":J
    .end local v16  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v17  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v18  # "schedGroup":I
    .end local v19  # "oomAdj":Ljava/lang/String;
    add-int/lit8 v6, v6, -0x1

    move-object/from16 v1, p4

    move-object/from16 v2, p6

    move-wide/from16 v4, v20

    move-object/from16 v3, v24

    const/4 v7, 0x1

    goto/16 :goto_1c

    .line 4445
    .end local v6  # "i":I
    .end local v20  # "curUptime":J
    .end local v24  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    .restart local v3  # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Integer;>;>;"
    .restart local v4  # "curUptime":J
    :cond_2b7
    const/4 v1, 0x1

    return v1

    nop

    :pswitch_data_2ba
    .packed-switch 0x0
        :pswitch_78  #00000000
        :pswitch_71  #00000001
        :pswitch_76  #00000002
        :pswitch_74  #00000003
        :pswitch_72  #00000004
    .end packed-switch
.end method


# virtual methods
.method addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 10
    .param p1, "proc"  # Lcom/android/server/am/ProcessRecord;

    .line 3044
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 3045
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v1, v2}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 3046
    .local v1, "old":Lcom/android/server/am/ProcessRecord;
    if-ne v1, p1, :cond_2f

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_2f

    .line 3048
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Re-adding persistent process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 3049
    :cond_2f
    if-eqz v1, :cond_90

    .line 3050
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v2

    if-eqz v2, :cond_6e

    .line 3053
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Existing proc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " was killed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3054
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getKillTime()J

    move-result-wide v6

    sub-long/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "ms ago when adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3053
    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_90

    .line 3057
    :cond_6e
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Already have existing proc "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " when adding "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3060
    :cond_90
    :goto_90
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 3061
    .local v2, "uidRec":Lcom/android/server/am/UidRecord;
    if-nez v2, :cond_105

    .line 3062
    new-instance v3, Lcom/android/server/am/UidRecord;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-direct {v3, v4, v5}, Lcom/android/server/am/UidRecord;-><init>(ILcom/android/server/am/ActivityManagerService;)V

    move-object v2, v3

    .line 3064
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v3, :cond_c0

    .line 3065
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Creating new process uid: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3067
    :cond_c0
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mDeviceIdleTempAllowlist:[I

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 3068
    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    .line 3067
    invoke-static {v3, v4}, Ljava/util/Arrays;->binarySearch([II)I

    move-result v3

    if-gez v3, :cond_dc

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPendingTempAllowlist:Lcom/android/server/am/PendingTempAllowlists;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 3069
    invoke-virtual {v3, v4}, Lcom/android/server/am/PendingTempAllowlists;->indexOfKey(I)I

    move-result v3

    if-ltz v3, :cond_e3

    .line 3070
    :cond_dc
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/am/UidRecord;->setCurAllowListed(Z)V

    .line 3071
    invoke-virtual {v2, v3}, Lcom/android/server/am/UidRecord;->setSetAllowListed(Z)V

    .line 3073
    :cond_e3
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->updateHasInternetPermission()V

    .line 3074
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    iget v4, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4, v2}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 3075
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/EventLogTags;->writeAmUidRunning(I)V

    .line 3076
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v4

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    .line 3077
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v6

    .line 3076
    invoke-virtual {v3, v4, v5, v6}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(III)V

    .line 3079
    :cond_105
    invoke-virtual {p1, v2}, Lcom/android/server/am/ProcessRecord;->setUidRecord(Lcom/android/server/am/UidRecord;)V

    .line 3080
    invoke-virtual {v2, p1}, Lcom/android/server/am/UidRecord;->addProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 3082
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v3

    invoke-interface {v3, p1}, Lcom/android/server/am/SmartPowerServiceStub;->onProcessStart(Lcom/android/server/am/ProcessRecord;)V

    .line 3085
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/server/am/ProcessRecord;->setRenderThreadTid(I)V

    .line 3086
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v4, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v5, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v3, v4, v5, p1}, Lcom/android/server/am/ProcessList$MyProcessMap;->put(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;

    .line 3087
    nop

    .end local v1  # "old":Lcom/android/server/am/ProcessRecord;
    .end local v2  # "uidRec":Lcom/android/server/am/UidRecord;
    monitor-exit v0
    :try_end_121
    .catchall {:try_start_3 .. :try_end_121} :catchall_130

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3088
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v0, :cond_12f

    .line 3089
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    iget v1, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, p1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 3091
    :cond_12f
    return-void

    .line 3087
    :catchall_130
    move-exception v1

    :try_start_131
    monitor-exit v0
    :try_end_132
    .catchall {:try_start_131 .. :try_end_132} :catchall_130

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method applyDisplaySize(Lcom/android/server/wm/WindowManagerService;)V
    .registers 6
    .param p1, "wm"  # Lcom/android/server/wm/WindowManagerService;

    .line 877
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    if-nez v0, :cond_1f

    .line 878
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 880
    .local v0, "p":Landroid/graphics/Point;
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/WindowManagerService;->getBaseDisplaySize(ILandroid/graphics/Point;)V

    .line 881
    iget v1, v0, Landroid/graphics/Point;->x:I

    if-eqz v1, :cond_1f

    iget v1, v0, Landroid/graphics/Point;->y:I

    if-eqz v1, :cond_1f

    .line 882
    iget v1, v0, Landroid/graphics/Point;->x:I

    iget v2, v0, Landroid/graphics/Point;->y:I

    const/4 v3, 0x1

    invoke-direct {p0, v1, v2, v3}, Lcom/android/server/am/ProcessList;->updateOomLevels(IIZ)V

    .line 883
    iput-boolean v3, p0, Lcom/android/server/am/ProcessList;->mHaveDisplaySize:Z

    .line 886
    .end local v0  # "p":Landroid/graphics/Point;
    :cond_1f
    return-void
.end method

.method clearAllDnsCacheLOSP()V
    .registers 7

    .line 3323
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_3c

    .line 3324
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3325
    .local v1, "r":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    .line 3326
    .local v2, "thread":Landroid/app/IApplicationThread;
    if-eqz v2, :cond_39

    .line 3328
    :try_start_18
    invoke-interface {v2}, Landroid/app/IApplicationThread;->clearDnsCache()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 3331
    goto :goto_39

    .line 3329
    :catch_1c
    move-exception v3

    .line 3330
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to clear dns cache for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3323
    .end local v1  # "r":Lcom/android/server/am/ProcessRecord;
    .end local v2  # "thread":Landroid/app/IApplicationThread;
    .end local v3  # "ex":Landroid/os/RemoteException;
    :cond_39
    :goto_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3334
    .end local v0  # "i":I
    :cond_3c
    return-void
.end method

.method collectProcessesLOSP(IZ[Ljava/lang/String;)Ljava/util/ArrayList;
    .registers 10
    .param p1, "start"  # I
    .param p2, "allPkgs"  # Z
    .param p3, "args"  # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZ[",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 4790
    if-eqz p3, :cond_72

    array-length v0, p3

    if-le v0, p1, :cond_72

    aget-object v0, p3, p1

    const/4 v1, 0x0

    .line 4791
    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_72

    .line 4792
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4793
    .local v0, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v1, -0x1

    .line 4795
    .local v1, "pid":I
    :try_start_16
    aget-object v2, p3, p1

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_1c
    .catch Ljava/lang/NumberFormatException; {:try_start_16 .. :try_end_1c} :catch_1e

    move v1, v2

    .line 4797
    goto :goto_1f

    .line 4796
    :catch_1e
    move-exception v2

    .line 4798
    :goto_1f
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_27
    if-ltz v2, :cond_69

    .line 4799
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 4800
    .local v3, "proc":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-lez v4, :cond_41

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-ne v4, v1, :cond_41

    .line 4801
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 4802
    :cond_41
    if-eqz p2, :cond_59

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    if-eqz v4, :cond_59

    .line 4803
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    aget-object v5, p3, p1

    invoke-virtual {v4, v5}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_59

    .line 4804
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_66

    .line 4805
    :cond_59
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aget-object v5, p3, p1

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_66

    .line 4806
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4798
    .end local v3  # "proc":Lcom/android/server/am/ProcessRecord;
    :cond_66
    :goto_66
    add-int/lit8 v2, v2, -0x1

    goto :goto_27

    .line 4809
    .end local v2  # "i":I
    :cond_69
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-gtz v2, :cond_71

    .line 4810
    const/4 v2, 0x0

    return-object v2

    .line 4812
    .end local v1  # "pid":I
    :cond_71
    goto :goto_79

    .line 4813
    .end local v0  # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_72
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 4815
    .restart local v0  # "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :goto_79
    return-object v0
.end method

.method dispatchProcessDied(II)V
    .registers 6
    .param p1, "pid"  # I
    .param p2, "uid"  # I

    .line 4773
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 4774
    .local v0, "i":I
    :goto_6
    if-lez v0, :cond_1a

    .line 4775
    add-int/lit8 v0, v0, -0x1

    .line 4776
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1, v0}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Landroid/app/IProcessObserver;

    .line 4777
    .local v1, "observer":Landroid/app/IProcessObserver;
    if-eqz v1, :cond_19

    .line 4779
    :try_start_14
    invoke-interface {v1, p1, p2}, Landroid/app/IProcessObserver;->onProcessDied(II)V
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_14 .. :try_end_17} :catch_18

    .line 4781
    goto :goto_19

    .line 4780
    :catch_18
    move-exception v2

    .line 4783
    .end local v1  # "observer":Landroid/app/IProcessObserver;
    :cond_19
    :goto_19
    goto :goto_6

    .line 4784
    :cond_1a
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v1}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4785
    return-void
.end method

.method dispatchProcessesChanged()V
    .registers 9

    .line 4657
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4658
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 4659
    .local v1, "numOfChanges":I
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    array-length v2, v2

    if-ge v2, v1, :cond_12

    .line 4660
    new-array v2, v1, [Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    iput-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 4662
    :cond_12
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 4663
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 4664
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v2, :cond_40

    .line 4665
    const-string v2, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "*** Delivering "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " process changes"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4668
    :cond_40
    monitor-exit v0
    :try_end_41
    .catchall {:try_start_3 .. :try_end_41} :catchall_10b

    .line 4670
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    move v2, v0

    .line 4671
    .local v2, "i":I
    :goto_48
    if-lez v2, :cond_ef

    .line 4672
    add-int/lit8 v2, v2, -0x1

    .line 4673
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Landroid/app/IProcessObserver;

    .line 4674
    .local v0, "observer":Landroid/app/IProcessObserver;
    if-eqz v0, :cond_ed

    .line 4676
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_57
    if-ge v3, v1, :cond_ed

    .line 4677
    :try_start_59
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    aget-object v4, v4, v3

    .line 4678
    .local v4, "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    iget v5, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    and-int/lit8 v5, v5, 0x1

    if-eqz v5, :cond_a2

    .line 4679
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v5, :cond_99

    .line 4680
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "ACTIVITIES CHANGED pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4684
    :cond_99
    iget v5, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    iget v6, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    iget-boolean v7, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    invoke-interface {v0, v5, v6, v7}, Landroid/app/IProcessObserver;->onForegroundActivitiesChanged(IIZ)V

    .line 4687
    :cond_a2
    iget v5, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_e7

    .line 4688
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v5, :cond_de

    .line 4689
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "FOREGROUND SERVICES CHANGED pid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " uid="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundServiceTypes:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4693
    :cond_de
    iget v5, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    iget v6, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    iget v7, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundServiceTypes:I

    invoke-interface {v0, v5, v6, v7}, Landroid/app/IProcessObserver;->onForegroundServicesChanged(III)V
    :try_end_e7
    .catch Landroid/os/RemoteException; {:try_start_59 .. :try_end_e7} :catch_eb

    .line 4676
    .end local v4  # "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    :cond_e7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_57

    .line 4697
    .end local v3  # "j":I
    :catch_eb
    move-exception v3

    nop

    .line 4700
    .end local v0  # "observer":Landroid/app/IProcessObserver;
    :cond_ed
    goto/16 :goto_48

    .line 4701
    :cond_ef
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 4703
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4704
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_f8
    if-ge v0, v1, :cond_106

    .line 4705
    :try_start_fa
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    iget-object v5, p0, Lcom/android/server/am/ProcessList;->mActiveProcessChanges:[Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    aget-object v5, v5, v0

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4704
    add-int/lit8 v0, v0, 0x1

    goto :goto_f8

    .line 4707
    .end local v0  # "j":I
    :cond_106
    monitor-exit v3

    .line 4708
    return-void

    .line 4707
    :catchall_108
    move-exception v0

    monitor-exit v3
    :try_end_10a
    .catchall {:try_start_fa .. :try_end_10a} :catchall_108

    throw v0

    .line 4668
    .end local v1  # "numOfChanges":I
    .end local v2  # "i":I
    :catchall_10b
    move-exception v1

    :try_start_10c
    monitor-exit v0
    :try_end_10d
    .catchall {:try_start_10c .. :try_end_10d} :catchall_10b

    throw v1
.end method

.method doStopUidForIdleUidsLocked()V
    .registers 7

    .line 4916
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    .line 4917
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_7
    if-ge v1, v0, :cond_2f

    .line 4918
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveUids;->keyAt(I)I

    move-result v2

    .line 4919
    .local v2, "uid":I
    invoke-static {v2}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v3

    if-eqz v3, :cond_16

    .line 4920
    goto :goto_2c

    .line 4922
    :cond_16
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v3, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 4923
    .local v3, "uidRec":Lcom/android/server/am/UidRecord;
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v4

    if-nez v4, :cond_23

    .line 4924
    goto :goto_2c

    .line 4926
    :cond_23
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v5

    invoke-virtual {v4, v5, v3}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    .line 4917
    .end local v2  # "uid":I
    .end local v3  # "uidRec":Lcom/android/server/am/UidRecord;
    :goto_2c
    add-int/lit8 v1, v1, 0x1

    goto :goto_7

    .line 4928
    .end local v1  # "i":I
    :cond_2f
    return-void
.end method

.method dumpLruListHeaderLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 4044
    const-string v0, "  Process LRU list (sorted by oom_adj, "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4045
    const-string v0, " total, non-act at "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4046
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4047
    const-string v0, ", non-svc at "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4048
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    iget v1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v0, v1

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4049
    const-string v0, "):"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4050
    return-void
.end method

.method dumpLruLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z
    .registers 10
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"  # Ljava/lang/String;
    .param p3, "prefix"  # Ljava/lang/String;

    .line 4103
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 4105
    .local v0, "lruSize":I
    if-nez p3, :cond_10

    .line 4106
    const-string v1, "ACTIVITY MANAGER LRU PROCESSES (dumpsys activity lru)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4107
    const-string v1, "  "

    .local v1, "innerPrefix":Ljava/lang/String;
    goto :goto_4e

    .line 4109
    .end local v1  # "innerPrefix":Ljava/lang/String;
    :cond_10
    const/4 v1, 0x0

    .line 4110
    .local v1, "haveAny":Z
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_13
    if-ltz v2, :cond_2e

    .line 4111
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 4112
    .local v3, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz p2, :cond_2d

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    invoke-virtual {v4, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2d

    .line 4113
    nop

    .line 4110
    .end local v3  # "r":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 4115
    .restart local v3  # "r":Lcom/android/server/am/ProcessRecord;
    :cond_2d
    const/4 v1, 0x1

    .line 4118
    .end local v2  # "i":I
    .end local v3  # "r":Lcom/android/server/am/ProcessRecord;
    :cond_2e
    if-nez v1, :cond_32

    .line 4119
    const/4 v2, 0x0

    return v2

    .line 4121
    :cond_32
    invoke-virtual {p1, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4122
    const-string v2, "Raw LRU list (dumpsys activity lru):"

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4123
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 4126
    .local v1, "innerPrefix":Ljava/lang/String;
    :goto_4e
    const/4 v2, 0x1

    .line 4127
    .local v2, "first":Z
    add-int/lit8 v3, v0, -0x1

    .local v3, "i":I
    :goto_51
    iget v4, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-lt v3, v4, :cond_7b

    .line 4128
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 4129
    .local v4, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz p2, :cond_6a

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6a

    .line 4130
    goto :goto_78

    .line 4132
    :cond_6a
    if-eqz v2, :cond_75

    .line 4133
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4134
    const-string v5, "Activities:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4135
    const/4 v2, 0x0

    .line 4137
    :cond_75
    invoke-direct {p0, p1, v3, v4, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4127
    .end local v4  # "r":Lcom/android/server/am/ProcessRecord;
    :goto_78
    add-int/lit8 v3, v3, -0x1

    goto :goto_51

    .line 4139
    :cond_7b
    const/4 v2, 0x1

    .line 4140
    :goto_7c
    iget v4, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-lt v3, v4, :cond_a6

    .line 4141
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 4142
    .restart local v4  # "r":Lcom/android/server/am/ProcessRecord;
    if-eqz p2, :cond_95

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_95

    .line 4143
    goto :goto_a3

    .line 4145
    :cond_95
    if-eqz v2, :cond_a0

    .line 4146
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4147
    const-string v5, "Services:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4148
    const/4 v2, 0x0

    .line 4150
    :cond_a0
    invoke-direct {p0, p1, v3, v4, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4140
    .end local v4  # "r":Lcom/android/server/am/ProcessRecord;
    :goto_a3
    add-int/lit8 v3, v3, -0x1

    goto :goto_7c

    .line 4152
    :cond_a6
    const/4 v2, 0x1

    .line 4153
    :goto_a7
    if-ltz v3, :cond_cf

    .line 4154
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 4155
    .restart local v4  # "r":Lcom/android/server/am/ProcessRecord;
    if-eqz p2, :cond_be

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, p2}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_be

    .line 4156
    goto :goto_cc

    .line 4158
    :cond_be
    if-eqz v2, :cond_c9

    .line 4159
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4160
    const-string v5, "Other:"

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4161
    const/4 v2, 0x0

    .line 4163
    :cond_c9
    invoke-direct {p0, p1, v3, v4, v1}, Lcom/android/server/am/ProcessList;->dumpLruEntryLocked(Ljava/io/PrintWriter;ILcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 4153
    .end local v4  # "r":Lcom/android/server/am/ProcessRecord;
    :goto_cc
    add-int/lit8 v3, v3, -0x1

    goto :goto_a7

    .line 4165
    :cond_cf
    const/4 v4, 0x1

    return v4
.end method

.method dumpOomLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z[Ljava/lang/String;IZLjava/lang/String;Z)Z
    .registers 20
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "needSep"  # Z
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "opti"  # I
    .param p6, "dumpAll"  # Z
    .param p7, "dumpPackage"  # Ljava/lang/String;
    .param p8, "inclGc"  # Z

    .line 4604
    move-object v1, p0

    move-object v10, p2

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v0

    if-lez v0, :cond_ca

    .line 4605
    if-eqz p3, :cond_d

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4606
    :cond_d
    const/4 v0, 0x1

    .line 4607
    .end local p3  # "needSep":Z
    .local v0, "needSep":Z
    const-string v2, "  OOM levels:"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4608
    const-string v2, "SYSTEM_ADJ"

    const/16 v3, -0x384

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4609
    const-string v2, "PERSISTENT_PROC_ADJ"

    const/16 v3, -0x320

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4610
    const-string v2, "PERSISTENT_SERVICE_ADJ"

    const/16 v3, -0x2bc

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4611
    const-string v2, "FOREGROUND_APP_ADJ"

    const/4 v3, 0x0

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4612
    const-string v2, "VISIBLE_APP_ADJ"

    const/16 v3, 0x64

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4613
    const-string v2, "PERCEPTIBLE_APP_ADJ"

    const/16 v3, 0xc8

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4614
    const-string v2, "PERCEPTIBLE_MEDIUM_APP_ADJ"

    const/16 v3, 0xe1

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4615
    const-string v2, "PERCEPTIBLE_LOW_APP_ADJ"

    const/16 v3, 0xfa

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4616
    const-string v2, "BACKUP_APP_ADJ"

    const/16 v3, 0x12c

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4617
    const-string v2, "HEAVY_WEIGHT_APP_ADJ"

    const/16 v3, 0x190

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4618
    const-string v2, "SERVICE_ADJ"

    const/16 v3, 0x1f4

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4619
    const-string v2, "HOME_APP_ADJ"

    const/16 v3, 0x258

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4620
    const-string v2, "PREVIOUS_APP_ADJ"

    const/16 v3, 0x2bc

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4621
    const-string v2, "SERVICE_B_ADJ"

    const/16 v3, 0x320

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4622
    const-string v2, "CACHED_APP_MIN_ADJ"

    const/16 v3, 0x384

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4623
    const-string v2, "CACHED_APP_MAX_ADJ"

    const/16 v3, 0x3e7

    invoke-direct {p0, p2, v2, v3}, Lcom/android/server/am/ProcessList;->printOomLevel(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 4625
    if-eqz v0, :cond_87

    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4626
    :cond_87
    const-string v2, "  Process OOM control ("

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4627
    const-string v2, " total, non-act at "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4628
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v2

    iget v3, v1, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int/2addr v2, v3

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4629
    const-string v2, ", non-svc at "

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4630
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v2

    iget v3, v1, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int/2addr v2, v3

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4631
    const-string v2, "):"

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4632
    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    const-string v5, "    "

    const-string v6, "Proc"

    const-string v7, "PERS"

    const/4 v8, 0x1

    move-object v2, p2

    move-object/from16 v9, p7

    invoke-static/range {v2 .. v9}, Lcom/android/server/am/ProcessList;->dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 4634
    const/4 v0, 0x1

    move v2, v0

    goto :goto_cb

    .line 4604
    .end local v0  # "needSep":Z
    .restart local p3  # "needSep":Z
    :cond_ca
    move v2, p3

    .line 4637
    .end local p3  # "needSep":Z
    .local v2, "needSep":Z
    :goto_cb
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v3, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v3

    .line 4638
    :try_start_d2
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;
    :try_end_d6
    .catchall {:try_start_d2 .. :try_end_d6} :catchall_e8

    move-object/from16 v4, p7

    :try_start_d8
    invoke-virtual {v0, p2, v2, v4}, Lcom/android/server/am/AppProfiler;->dumpProcessesToGc(Ljava/io/PrintWriter;ZLjava/lang/String;)Z

    .line 4639
    monitor-exit v3
    :try_end_dc
    .catchall {:try_start_d8 .. :try_end_dc} :catchall_ed

    .line 4641
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4642
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityTaskManagerInternal;->dumpForOom(Ljava/io/PrintWriter;)V

    .line 4644
    const/4 v0, 0x1

    return v0

    .line 4639
    :catchall_e8
    move-exception v0

    move-object/from16 v4, p7

    :goto_eb
    :try_start_eb
    monitor-exit v3
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ed

    throw v0

    :catchall_ed
    move-exception v0

    goto :goto_eb
.end method

.method dumpProcessesLSP(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZLjava/lang/String;I)V
    .registers 22
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;
    .param p4, "opti"  # I
    .param p5, "dumpAll"  # Z
    .param p6, "dumpPackage"  # Ljava/lang/String;
    .param p7, "dumpAppId"  # I

    .line 4171
    move-object v9, p0

    move-object/from16 v10, p2

    move-object/from16 v11, p6

    const/4 v0, 0x0

    .line 4172
    .local v0, "needSep":Z
    const/4 v1, 0x0

    .line 4174
    .local v1, "numPers":I
    const-string v2, "ACTIVITY MANAGER RUNNING PROCESSES (dumpsys activity processes)"

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4176
    if-nez p5, :cond_14

    if-eqz v11, :cond_11

    goto :goto_14

    :cond_11
    move v12, v1

    goto/16 :goto_85

    .line 4177
    :cond_14
    :goto_14
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v2

    .line 4178
    .local v2, "numOfNames":I
    const/4 v3, 0x0

    .local v3, "ip":I
    :goto_1f
    if-ge v3, v2, :cond_84

    .line 4179
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 4180
    .local v4, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v5, 0x0

    .local v5, "ia":I
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v6

    .local v6, "size":I
    :goto_32
    if-ge v5, v6, :cond_81

    .line 4181
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 4182
    .local v7, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v11, :cond_47

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v8

    invoke-virtual {v8, v11}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_47

    .line 4183
    goto :goto_7e

    .line 4185
    :cond_47
    if-nez v0, :cond_4f

    .line 4186
    const-string v8, "  All known processes:"

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4187
    const/4 v0, 0x1

    .line 4189
    :cond_4f
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v8

    if-eqz v8, :cond_58

    const-string v8, "  *PERS*"

    goto :goto_5a

    :cond_58
    const-string v8, "  *APP*"

    :goto_5a
    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4190
    const-string v8, " UID "

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v8

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(I)V

    .line 4191
    const-string v8, " "

    invoke-virtual {v10, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4192
    const-string v8, "    "

    invoke-virtual {v7, v10, v8}, Lcom/android/server/am/ProcessRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4193
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v8

    if-eqz v8, :cond_7e

    .line 4194
    add-int/lit8 v1, v1, 0x1

    .line 4180
    .end local v7  # "r":Lcom/android/server/am/ProcessRecord;
    :cond_7e
    :goto_7e
    add-int/lit8 v5, v5, 0x1

    goto :goto_32

    .line 4178
    .end local v4  # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v5  # "ia":I
    .end local v6  # "size":I
    :cond_81
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    :cond_84
    move v12, v1

    .line 4200
    .end local v1  # "numPers":I
    .end local v2  # "numOfNames":I
    .end local v3  # "ip":I
    .local v12, "numPers":I
    :goto_85
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v1

    if-lez v1, :cond_cd

    .line 4201
    const/4 v1, 0x0

    .line 4202
    .local v1, "printed":Z
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v3, v9, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v3

    .local v3, "size":I
    :goto_95
    if-ge v2, v3, :cond_cd

    .line 4203
    iget-object v4, v9, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v4, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 4204
    .local v4, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v11, :cond_ac

    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, v11}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_ac

    .line 4205
    goto :goto_ca

    .line 4207
    :cond_ac
    if-nez v1, :cond_ba

    .line 4208
    if-eqz v0, :cond_b3

    .line 4209
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4211
    :cond_b3
    const-string v5, "  Isolated process list (sorted by uid):"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4212
    const/4 v1, 0x1

    .line 4213
    const/4 v0, 0x1

    .line 4215
    :cond_ba
    const-string v5, "    Isolated #"

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v10, v2}, Ljava/io/PrintWriter;->print(I)V

    const-string v5, ": "

    invoke-virtual {v10, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4216
    invoke-virtual {v10, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4202
    .end local v4  # "r":Lcom/android/server/am/ProcessRecord;
    :goto_ca
    add-int/lit8 v2, v2, 0x1

    goto :goto_95

    .line 4220
    .end local v1  # "printed":Z
    .end local v2  # "i":I
    .end local v3  # "size":I
    :cond_cd
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v10, v11, v0}, Lcom/android/server/am/ActivityManagerService;->dumpActiveInstruments(Ljava/io/PrintWriter;Ljava/lang/String;Z)Z

    move-result v13

    .line 4222
    .end local v0  # "needSep":Z
    .local v13, "needSep":Z
    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move v3, v13

    move-object/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->dumpOomLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Z[Ljava/lang/String;IZLjava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_e8

    .line 4223
    const/4 v13, 0x1

    .line 4226
    :cond_e8
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    if-lez v0, :cond_100

    .line 4227
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    const-string v4, "UID states:"

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move/from16 v3, p7

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ActiveUids;->dump(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v0

    or-int/2addr v13, v0

    .line 4231
    :cond_100
    if-eqz p5, :cond_114

    .line 4232
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUidObserverController:Lcom/android/server/am/UidObserverController;

    const-string v4, "UID validation:"

    move-object/from16 v1, p2

    move-object/from16 v2, p6

    move/from16 v3, p7

    move v5, v13

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/UidObserverController;->dumpValidateUids(Ljava/io/PrintWriter;Ljava/lang/String;ILjava/lang/String;Z)Z

    move-result v0

    or-int/2addr v13, v0

    .line 4236
    :cond_114
    if-eqz v13, :cond_119

    .line 4237
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4239
    :cond_119
    const-string v0, "  "

    invoke-virtual {p0, v10, v11, v0}, Lcom/android/server/am/ProcessList;->dumpLruLocked(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_122

    .line 4240
    const/4 v13, 0x1

    .line 4243
    :cond_122
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v0

    if-lez v0, :cond_143

    .line 4244
    if-eqz v13, :cond_12d

    .line 4245
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4247
    :cond_12d
    invoke-virtual {p0, v10}, Lcom/android/server/am/ProcessList;->dumpLruListHeaderLocked(Ljava/io/PrintWriter;)V

    .line 4248
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    const/4 v6, 0x0

    const-string v3, "    "

    const-string v4, "Proc"

    const-string v5, "PERS"

    move-object/from16 v0, p2

    move-object/from16 v7, p6

    invoke-static/range {v0 .. v7}, Lcom/android/server/am/ProcessList;->dumpProcessOomList(Ljava/io/PrintWriter;Lcom/android/server/am/ActivityManagerService;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;)Z

    .line 4250
    const/4 v13, 0x1

    .line 4253
    :cond_143
    iget-object v0, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    move-object v1, p1

    move-object/from16 v2, p2

    move/from16 v3, p5

    move-object/from16 v4, p6

    move/from16 v5, p7

    move v6, v12

    move v7, v13

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/am/ActivityManagerService;->dumpOtherProcessesInfoLSP(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZLjava/lang/String;IIZ)V

    .line 4255
    return-void
.end method

.method enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    .registers 10
    .param p1, "pid"  # I
    .param p2, "uid"  # I

    .line 4712
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4713
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 4714
    .local v1, "i":I
    const/4 v2, 0x0

    .line 4715
    .local v2, "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    :goto_c
    if-ltz v1, :cond_3b

    .line 4716
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    move-object v2, v3

    .line 4717
    iget v3, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    if-ne v3, p1, :cond_38

    .line 4718
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v3, :cond_3b

    .line 4719
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Re-using existing item: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3b

    .line 4723
    :cond_38
    add-int/lit8 v1, v1, -0x1

    goto :goto_c

    .line 4726
    :cond_3b
    :goto_3b
    if-gez v1, :cond_bb

    .line 4728
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 4729
    .local v3, "num":I
    if-lez v3, :cond_6d

    .line 4730
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    add-int/lit8 v5, v3, -0x1

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    move-object v2, v4

    .line 4731
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v4, :cond_8f

    .line 4732
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Retrieving available item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8f

    .line 4735
    :cond_6d
    new-instance v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    invoke-direct {v4}, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;-><init>()V

    move-object v2, v4

    .line 4736
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v4, :cond_8f

    .line 4737
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Allocating new item: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4740
    :cond_8f
    :goto_8f
    const/4 v4, 0x0

    iput v4, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    .line 4741
    iput p1, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    .line 4742
    iput p2, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->uid:I

    .line 4743
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-nez v4, :cond_b6

    .line 4744
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v4, :cond_a9

    .line 4745
    const-string v4, "ActivityManager"

    const-string v5, "*** Enqueueing dispatch processes changed!"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4747
    :cond_a9
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v5, 0x1f

    invoke-virtual {v4, v5}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v4

    .line 4748
    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 4750
    :cond_b6
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4753
    .end local v3  # "num":I
    :cond_bb
    monitor-exit v0

    return-object v2

    .line 4754
    .end local v1  # "i":I
    .end local v2  # "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    :catchall_bd
    move-exception v1

    monitor-exit v0
    :try_end_bf
    .catchall {:try_start_3 .. :try_end_bf} :catchall_bd

    throw v1
.end method

.method fillInProcMemInfoLOSP(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V
    .registers 10
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "outInfo"  # Landroid/app/ActivityManager$RunningAppProcessInfo;
    .param p3, "clientTargetSdk"  # I

    .line 3862
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    .line 3863
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->uid:I

    .line 3864
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isHeavyWeightProcess()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1c

    .line 3865
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/2addr v0, v1

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 3867
    :cond_1c
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 3868
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 3870
    :cond_28
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 3871
    iget v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    .line 3873
    :cond_34
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getTrimMemoryLevel()I

    move-result v0

    iput v0, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastTrimLevel:I

    .line 3874
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3875
    .local v0, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    .line 3876
    .local v2, "adj":I
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    .line 3877
    .local v3, "procState":I
    invoke-static {v3, v2, p2, p3}, Lcom/android/server/am/ProcessList;->procStateToImportance(IILandroid/app/ActivityManager$RunningAppProcessInfo;I)I

    move-result v4

    iput v4, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importance:I

    .line 3879
    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->getAdjTypeCode()I

    move-result v4

    iput v4, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonCode:I

    .line 3880
    iput v3, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->processState:I

    .line 3881
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v4

    if-ne p1, v4, :cond_5d

    goto :goto_5e

    :cond_5d
    const/4 v1, 0x0

    :goto_5e
    iput-boolean v1, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->isFocused:Z

    .line 3882
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v4

    iput-wide v4, p2, Landroid/app/ActivityManager$RunningAppProcessInfo;->lastActivityTime:J

    .line 3883
    return-void
.end method

.method findAppProcessLOSP(Landroid/os/IBinder;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .registers 11
    .param p1, "app"  # Landroid/os/IBinder;
    .param p2, "reason"  # Ljava/lang/String;

    .line 1648
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    .line 1649
    .local v0, "NP":I
    const/4 v1, 0x0

    .local v1, "ip":I
    :goto_b
    if-ge v1, v0, :cond_39

    .line 1650
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 1651
    .local v2, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v3

    .line 1652
    .local v3, "NA":I
    const/4 v4, 0x0

    .local v4, "ia":I
    :goto_1e
    if-ge v4, v3, :cond_36

    .line 1653
    invoke-virtual {v2, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 1654
    .local v5, "p":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v6

    .line 1655
    .local v6, "thread":Landroid/app/IApplicationThread;
    if-eqz v6, :cond_33

    invoke-interface {v6}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-ne v7, p1, :cond_33

    .line 1656
    return-object v5

    .line 1652
    .end local v5  # "p":Lcom/android/server/am/ProcessRecord;
    .end local v6  # "thread":Landroid/app/IApplicationThread;
    :cond_33
    add-int/lit8 v4, v4, 0x1

    goto :goto_1e

    .line 1649
    .end local v2  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v3  # "NA":I
    .end local v4  # "ia":I
    :cond_36
    add-int/lit8 v1, v1, 0x1

    goto :goto_b

    .line 1661
    .end local v1  # "ip":I
    :cond_39
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find mystery application for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1662
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1663
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ": "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1661
    const-string v2, "ActivityManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1664
    const/4 v1, 0x0

    return-object v1
.end method

.method forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V
    .registers 6
    .param p1, "iterateForward"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 3984
    .local p2, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/am/ProcessRecord;>;"
    if-eqz p1, :cond_1a

    .line 3985
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_9
    if-ge v0, v1, :cond_19

    .line 3986
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3985
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .end local v0  # "i":I
    .end local v1  # "size":I
    :cond_19
    goto :goto_32

    .line 3989
    :cond_1a
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0  # "i":I
    :goto_22
    if-ltz v0, :cond_32

    .line 3990
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3989
    add-int/lit8 v0, v0, -0x1

    goto :goto_22

    .line 3993
    .end local v0  # "i":I
    :cond_32
    :goto_32
    return-void
.end method

.method getBlockStateForUid(Lcom/android/server/am/UidRecord;)I
    .registers 7
    .param p1, "uidRec"  # Lcom/android/server/am/UidRecord;

    .line 4943
    nop

    .line 4944
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v0

    .line 4945
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v1

    .line 4944
    invoke-static {v0, v1}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1e

    .line 4946
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v0

    invoke-static {v0}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    move v0, v1

    goto :goto_1f

    :cond_1e
    :goto_1e
    move v0, v2

    .line 4948
    .local v0, "isAllowed":Z
    :goto_1f
    nop

    .line 4949
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v3

    .line 4950
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v4

    .line 4949
    invoke-static {v3, v4}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileIdleOrPowerSaveMode(II)Z

    move-result v3

    if-nez v3, :cond_3b

    .line 4951
    invoke-virtual {p1}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v3

    invoke-static {v3}, Landroid/net/NetworkPolicyManager;->isProcStateAllowedWhileOnRestrictBackground(I)Z

    move-result v3

    if-eqz v3, :cond_39

    goto :goto_3b

    :cond_39
    move v3, v1

    goto :goto_3c

    :cond_3b
    :goto_3b
    move v3, v2

    .line 4955
    .local v3, "wasAllowed":Z
    :goto_3c
    if-nez v3, :cond_41

    if-eqz v0, :cond_41

    .line 4956
    return v2

    .line 4960
    :cond_41
    if-eqz v3, :cond_47

    if-nez v0, :cond_47

    .line 4961
    const/4 v1, 0x2

    return v1

    .line 4963
    :cond_47
    return v1
.end method

.method getCachedRestoreThresholdKb()J
    .registers 3

    .line 1486
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mCachedRestoreLevel:J

    return-wide v0
.end method

.method getIsolatedProcessesLocked(I)Ljava/util/List;
    .registers 7
    .param p1, "uid"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 3108
    const/4 v0, 0x0

    .line 3109
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "size":I
    :goto_8
    if-ge v1, v2, :cond_2e

    .line 3110
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 3111
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, p1, :cond_2b

    .line 3112
    if-nez v0, :cond_20

    .line 3113
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v4

    .line 3115
    :cond_20
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3109
    .end local v3  # "app":Lcom/android/server/am/ProcessRecord;
    :cond_2b
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 3118
    .end local v1  # "i":I
    .end local v2  # "size":I
    :cond_2e
    return-object v0
.end method

.method getLRURecordForAppLOSP(Landroid/app/IApplicationThread;)Lcom/android/server/am/ProcessRecord;
    .registers 8
    .param p1, "thread"  # Landroid/app/IApplicationThread;

    .line 3818
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 3819
    return-object v0

    .line 3821
    :cond_4
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 3823
    .local v1, "threadBinder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_10
    if-ltz v2, :cond_2a

    .line 3824
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 3825
    .local v3, "rec":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v4

    .line 3826
    .local v4, "t":Landroid/app/IApplicationThread;
    if-eqz v4, :cond_27

    invoke-interface {v4}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    if-ne v5, v1, :cond_27

    .line 3827
    return-object v3

    .line 3823
    .end local v3  # "rec":Lcom/android/server/am/ProcessRecord;
    .end local v4  # "t":Landroid/app/IApplicationThread;
    :cond_27
    add-int/lit8 v2, v2, -0x1

    goto :goto_10

    .line 3830
    .end local v2  # "i":I
    :cond_2a
    return-object v0
.end method

.method getLruProcessServiceStartLOSP()I
    .registers 2

    .line 3970
    iget v0, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    return v0
.end method

.method getLruProcessesLOSP()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 3948
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    return-object v0
.end method

.method getLruProcessesLSP()Ljava/util/ArrayList;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 3956
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    return-object v0
.end method

.method getLruSeqLOSP()I
    .registers 2

    .line 4034
    iget v0, p0, Lcom/android/server/am/ProcessList;->mLruSeq:I

    return v0
.end method

.method getLruSizeLOSP()I
    .registers 2

    .line 3940
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method getMemLevel(I)J
    .registers 5
    .param p1, "adjustment"  # I

    .line 1473
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v1

    if-ge v0, v2, :cond_15

    .line 1474
    aget v1, v1, v0

    if-gt p1, v1, :cond_12

    .line 1475
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v1, v1, v0

    mul-int/lit16 v1, v1, 0x400

    int-to-long v1, v1

    return-wide v1

    .line 1473
    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1478
    .end local v0  # "i":I
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    array-length v1, v1

    add-int/lit8 v1, v1, -0x1

    aget v0, v0, v1

    mul-int/lit16 v0, v0, 0x400

    int-to-long v0, v0

    return-wide v0
.end method

.method getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .registers 12
    .param p1, "outInfo"  # Landroid/app/ActivityManager$MemoryInfo;

    .line 1634
    const/16 v0, 0x258

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v0

    .line 1635
    .local v0, "homeAppMem":J
    const/16 v2, 0x384

    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v2

    .line 1636
    .local v2, "cachedAppMem":J
    invoke-static {}, Landroid/os/Process;->getFreeMemory()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    .line 1637
    invoke-static {}, Landroid/os/Process;->getTotalMemory()J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->totalMem:J

    .line 1638
    iput-wide v0, p1, Landroid/app/ActivityManager$MemoryInfo;->threshold:J

    .line 1639
    iget-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->availMem:J

    sub-long v6, v2, v0

    const-wide/16 v8, 0x2

    div-long/2addr v6, v8

    add-long/2addr v6, v0

    cmp-long v4, v4, v6

    const/4 v5, 0x0

    if-gez v4, :cond_29

    const/4 v4, 0x1

    goto :goto_2a

    :cond_29
    move v4, v5

    :goto_2a
    iput-boolean v4, p1, Landroid/app/ActivityManager$MemoryInfo;->lowMemory:Z

    .line 1640
    iput-wide v2, p1, Landroid/app/ActivityManager$MemoryInfo;->hiddenAppThreshold:J

    .line 1641
    const/16 v4, 0x1f4

    invoke-virtual {p0, v4}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v6

    iput-wide v6, p1, Landroid/app/ActivityManager$MemoryInfo;->secondaryServerThreshold:J

    .line 1642
    const/16 v4, 0x64

    invoke-virtual {p0, v4}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v6

    iput-wide v6, p1, Landroid/app/ActivityManager$MemoryInfo;->visibleAppThreshold:J

    .line 1643
    invoke-virtual {p0, v5}, Lcom/android/server/am/ProcessList;->getMemLevel(I)J

    move-result-wide v4

    iput-wide v4, p1, Landroid/app/ActivityManager$MemoryInfo;->foregroundAppThreshold:J

    .line 1644
    return-void
.end method

.method getNextProcStateSeq()J
    .registers 5

    .line 5049
    iget-wide v0, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/server/am/ProcessList;->mProcStateSeqCounter:J

    return-wide v0
.end method

.method getProcessNamesLOSP()Lcom/android/server/am/ProcessList$MyProcessMap;
    .registers 2

    .line 4039
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    return-object v0
.end method

.method getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    .registers 8
    .param p1, "processName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 1614
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_36

    .line 1618
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 1619
    .local v0, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    if-nez v0, :cond_14

    const/4 v1, 0x0

    return-object v1

    .line 1620
    :cond_14
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 1621
    .local v1, "procCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_36

    .line 1622
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 1623
    .local v3, "procUid":I
    invoke-static {v3}, Landroid/os/UserHandle;->isCore(I)Z

    move-result v4

    if-eqz v4, :cond_33

    invoke-static {v3, p2}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 1625
    goto :goto_33

    .line 1627
    :cond_2c
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    return-object v4

    .line 1621
    .end local v3  # "procUid":I
    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 1630
    .end local v0  # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v1  # "procCount":I
    .end local v2  # "i":I
    :cond_36
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    return-object v0
.end method

.method getProcessesWithPendingBindMounts(I)Ljava/util/Map;
    .registers 9
    .param p1, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 893
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 894
    .local v0, "pidPackageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 895
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_13
    if-ltz v2, :cond_45

    .line 896
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 897
    .local v3, "record":Lcom/android/server/am/ProcessRecord;
    iget v4, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p1, :cond_42

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isBindMountPending()Z

    move-result v4

    if-nez v4, :cond_28

    .line 898
    goto :goto_42

    .line 900
    :cond_28
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    .line 903
    .local v4, "pid":I
    if-eqz v4, :cond_3a

    .line 907
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    iget-object v6, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_42

    .line 904
    :cond_3a
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Pending process is not started yet,retry later"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v0  # "pidPackageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .end local p0  # "this":Lcom/android/server/am/ProcessList;
    .end local p1  # "userId":I
    throw v5

    .line 895
    .end local v3  # "record":Lcom/android/server/am/ProcessRecord;
    .end local v4  # "pid":I
    .restart local v0  # "pidPackageMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/String;>;"
    .restart local p0  # "this":Lcom/android/server/am/ProcessList;
    .restart local p1  # "userId":I
    :cond_42
    :goto_42
    add-int/lit8 v2, v2, -0x1

    goto :goto_13

    .line 909
    .end local v2  # "i":I
    :cond_45
    monitor-exit v1
    :try_end_46
    .catchall {:try_start_8 .. :try_end_46} :catchall_4a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 910
    return-object v0

    .line 909
    :catchall_4a
    move-exception v2

    :try_start_4b
    monitor-exit v1
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v2
.end method

.method getRunningAppProcessesLOSP(ZIZII)Ljava/util/List;
    .registers 15
    .param p1, "allUsers"  # Z
    .param p2, "userId"  # I
    .param p3, "allUids"  # Z
    .param p4, "callingUid"  # I
    .param p5, "clientTargetSdk"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZIZII)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .line 3889
    const/4 v0, 0x0

    .line 3891
    .local v0, "runList":Ljava/util/List;, "Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_ac

    .line 3892
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3893
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3894
    .local v3, "state":Lcom/android/server/am/ProcessStateRecord;
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 3895
    .local v4, "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    if-nez p1, :cond_1d

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v5, p2, :cond_a8

    :cond_1d
    if-nez p3, :cond_23

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v5, p4, :cond_a8

    :cond_23
    const/16 v5, 0x3e8

    if-ne p4, v5, :cond_31

    .line 3900
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/wm/WindowProcessController;->mIsPreloaded:Z

    if-eqz v5, :cond_31

    .line 3902
    goto/16 :goto_a8

    .line 3904
    :cond_31
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    if-eqz v5, :cond_a8

    .line 3905
    invoke-virtual {v4}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v5

    if-nez v5, :cond_a8

    invoke-virtual {v4}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result v5

    if-nez v5, :cond_a8

    .line 3907
    new-instance v5, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 3909
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v5, v6, v7, v8}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 3910
    .local v5, "currApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {p0, v2, v5, p5}, Lcom/android/server/am/ProcessList;->fillInProcMemInfoLOSP(Lcom/android/server/am/ProcessRecord;Landroid/app/ActivityManager$RunningAppProcessInfo;I)V

    .line 3911
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/server/am/ProcessRecord;

    if-eqz v6, :cond_75

    .line 3912
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v6

    iput v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 3913
    nop

    .line 3915
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSourceProcState()I

    move-result v6

    .line 3914
    invoke-static {v6}, Landroid/app/ActivityManager$RunningAppProcessInfo;->procStateToImportance(I)I

    move-result v6

    iput v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonImportance:I

    goto :goto_8d

    .line 3916
    :cond_75
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    if-eqz v6, :cond_8d

    .line 3917
    nop

    .line 3918
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 3919
    .local v6, "r":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->getActivityPid()I

    move-result v7

    .line 3920
    .local v7, "pid":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_8d

    .line 3921
    iput v7, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonPid:I

    .line 3924
    .end local v6  # "r":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .end local v7  # "pid":I
    :cond_8d
    :goto_8d
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v6

    instance-of v6, v6, Landroid/content/ComponentName;

    if-eqz v6, :cond_9d

    .line 3925
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/ComponentName;

    iput-object v6, v5, Landroid/app/ActivityManager$RunningAppProcessInfo;->importanceReasonComponent:Landroid/content/ComponentName;

    .line 3929
    :cond_9d
    if-nez v0, :cond_a5

    .line 3930
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v6

    .line 3932
    :cond_a5
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3891
    .end local v2  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v4  # "errState":Lcom/android/server/am/ProcessErrorStateRecord;
    .end local v5  # "currApp":Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_a8
    :goto_a8
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_9

    .line 3935
    .end local v1  # "i":I
    :cond_ac
    return-object v0
.end method

.method getUidProcStateLOSP(I)I
    .registers 4
    .param p1, "uid"  # I

    .line 4890
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 4891
    .local v0, "uidRec":Lcom/android/server/am/UidRecord;
    if-nez v0, :cond_b

    const/16 v1, 0x14

    goto :goto_f

    :cond_b
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    :goto_f
    return v1
.end method

.method getUidProcessCapabilityLOSP(I)I
    .registers 4
    .param p1, "uid"  # I

    .line 4900
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 4901
    .local v0, "uidRec":Lcom/android/server/am/UidRecord;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    goto :goto_e

    :cond_a
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v1

    :goto_e
    return v1
.end method

.method getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;
    .registers 3
    .param p1, "uid"  # I

    .line 4907
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    return-object v0
.end method

.method handleAllTrustStorageUpdateLOSP()V
    .registers 7

    .line 3338
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_3c

    .line 3339
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3340
    .local v1, "r":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    .line 3341
    .local v2, "thread":Landroid/app/IApplicationThread;
    if-eqz v2, :cond_39

    .line 3343
    :try_start_18
    invoke-interface {v2}, Landroid/app/IApplicationThread;->handleTrustStorageUpdate()V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 3347
    goto :goto_39

    .line 3344
    :catch_1c
    move-exception v3

    .line 3345
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to handle trust storage update for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3338
    .end local v1  # "r":Lcom/android/server/am/ProcessRecord;
    .end local v2  # "thread":Landroid/app/IApplicationThread;
    .end local v3  # "ex":Landroid/os/RemoteException;
    :cond_39
    :goto_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3350
    .end local v0  # "i":I
    :cond_3c
    return-void
.end method

.method handleDyingAppDeathLocked(Lcom/android/server/am/ProcessRecord;I)Z
    .registers 7
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "pid"  # I

    .line 5114
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    if-eq v0, p1, :cond_51

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 5115
    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_51

    .line 5117
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Got obituary of "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5118
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->unlinkDeathRecipient()V

    .line 5120
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 5121
    invoke-virtual {p1, v1}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 5122
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->handlePrecedingAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z

    .line 5123
    const/4 v0, 0x1

    return v0

    .line 5125
    :cond_51
    return v1
.end method

.method handlePrecedingAppDiedLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 5
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 5135
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    const/4 v1, 0x1

    if-eqz v0, :cond_42

    .line 5139
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v0

    if-nez v0, :cond_26

    .line 5140
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPersistentStartingProcesses:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    if-gez v0, :cond_26

    .line 5141
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPersistentStartingProcesses:Ljava/util/ArrayList;

    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5145
    :cond_26
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    .line 5146
    iput-object v2, p1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    .line 5148
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, p1}, Lcom/android/server/am/ProcessList$ProcStartHandler;->removeMessages(ILjava/lang/Object;)V

    .line 5151
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/am/ProcessList$ProcStartHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5152
    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 5153
    const/4 v0, 0x0

    return v0

    .line 5155
    :cond_42
    return v1
.end method

.method handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z
    .registers 27
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "pid"  # I
    .param p3, "usingWrapper"  # Z
    .param p4, "expectedStartSeq"  # J
    .param p6, "procAttached"  # Z

    .line 2691
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v11, p2

    move/from16 v12, p3

    move-wide/from16 v13, p4

    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v13, v14}, Landroid/util/LongSparseArray;->remove(J)V

    .line 2692
    invoke-direct {v1, v2, v13, v14}, Lcom/android/server/am/ProcessList;->isProcStartValidLocked(Lcom/android/server/am/ProcessRecord;J)Ljava/lang/String;

    move-result-object v15

    .line 2693
    .local v15, "reason":Ljava/lang/String;
    const/4 v10, 0x0

    if-eqz v15, :cond_51

    .line 2694
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " start not valid, killing pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2697
    invoke-virtual {v2, v10}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2698
    invoke-static/range {p2 .. p2}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 2699
    iget v0, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-static {v0, v3}, Landroid/os/Process;->killProcessGroup(II)I

    .line 2700
    const/16 v0, 0xd

    invoke-virtual {v1, v2, v0, v0, v15}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 2702
    return v10

    .line 2704
    :cond_51
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteProcessStart(Ljava/lang/String;I)V

    .line 2705
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v3

    const-string/jumbo v0, "startProcess: done updating battery stats"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2707
    const/16 v0, 0x753e

    const/4 v3, 0x6

    new-array v3, v3, [Ljava/lang/Object;

    .line 2708
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v10

    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v9, 0x1

    aput-object v4, v3, v9

    const/4 v4, 0x2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x4

    .line 2709
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x5

    .line 2710
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_b1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v5

    goto :goto_b3

    :cond_b1
    const-string v5, ""

    :goto_b3
    aput-object v5, v3, v4

    .line 2707
    invoke-static {v0, v3}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2713
    :try_start_b8
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v6, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2714
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getSeInfo()Ljava/lang/String;

    move-result-object v7

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 2713
    move/from16 v9, p2

    invoke-interface/range {v3 .. v9}, Landroid/content/pm/IPackageManager;->logAppProcessStartIfNeeded(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    :try_end_d1
    .catch Landroid/os/RemoteException; {:try_start_b8 .. :try_end_d1} :catch_d2

    .line 2717
    goto :goto_d3

    .line 2715
    :catch_d2
    move-exception v0

    .line 2720
    :goto_d3
    invoke-static {}, Lcom/android/server/am/ProcessListStub;->get()Lcom/android/server/am/ProcessListStub;

    move-result-object v0

    invoke-interface {v0, v2, v11}, Lcom/android/server/am/ProcessListStub;->notifyProcessStarted(Lcom/android/server/am/ProcessRecord;I)V

    .line 2723
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3, v11}, Lcom/android/server/Watchdog;->processStarted(Ljava/lang/String;I)V

    .line 2725
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v3

    const-string/jumbo v0, "startProcess: building log message"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2727
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    invoke-interface {v0, v2}, Lcom/android/server/am/SmartPowerServiceStub;->updateProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 2728
    invoke-static {}, Lcom/android/server/am/SpeedTestModeServiceStub;->get()Lcom/android/server/am/SpeedTestModeServiceStub;

    move-result-object v0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2729
    invoke-interface {v0, v3, v4}, Lcom/android/server/am/SpeedTestModeServiceStub;->reportStartProcEvent(Ljava/lang/String;Ljava/lang/String;)V

    .line 2731
    iget-object v9, v1, Lcom/android/server/am/ProcessList;->mStringBuilder:Ljava/lang/StringBuilder;

    .line 2732
    .local v9, "buf":Ljava/lang/StringBuilder;
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 2733
    const-string v0, "Start proc "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2734
    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2735
    const/16 v0, 0x3a

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2736
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2737
    const/16 v0, 0x2f

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 2738
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v0

    invoke-static {v9, v0}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 2739
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_13b

    .line 2740
    const-string v0, " ["

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2741
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2742
    const-string v0, "]"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2744
    :cond_13b
    const-string v0, " for "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2745
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2746
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_165

    .line 2747
    const-string v0, " "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2748
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/am/HostingRecord;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2751
    :cond_165
    const-string v0, " caller="

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2752
    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->enableBoost:Z

    if-eqz v0, :cond_189

    .line 2753
    const-string v0, " enableBoost=true"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2754
    sget-object v0, Lcom/android/server/am/ProcessList;->mPerfServiceStartHint:Landroid/util/BoostFramework;

    if-eqz v0, :cond_187

    .line 2755
    const/16 v3, 0x1081

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const/4 v5, -0x1

    const/4 v8, 0x1

    invoke-virtual {v0, v3, v4, v5, v8}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    goto :goto_18a

    .line 2754
    :cond_187
    const/4 v8, 0x1

    goto :goto_18a

    .line 2752
    :cond_189
    const/4 v8, 0x1

    .line 2761
    :goto_18a
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v3, "ActivityManager"

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v5

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 2762
    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v3

    :try_start_19c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 2763
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 2764
    invoke-virtual {v2, v12}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 2765
    invoke-virtual {v2, v10}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2766
    monitor-exit v3
    :try_end_1a9
    .catchall {:try_start_19c .. :try_end_1a9} :catchall_277

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 2767
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v3

    const-string/jumbo v0, "startProcess: starting to update pids map"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2769
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v4

    .line 2770
    :try_start_1bb
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v0, v11}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    move-object v10, v0

    .line 2771
    .local v10, "oldApp":Lcom/android/server/am/ProcessRecord;
    monitor-exit v4
    :try_end_1c5
    .catchall {:try_start_1bb .. :try_end_1c5} :catchall_270

    .line 2773
    if-eqz v10, :cond_233

    iget-boolean v0, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_233

    .line 2775
    const-string v0, "ActivityManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleProcessStartedLocked process:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " startSeq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2776
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " pid:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " belongs to another existing app:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " startSeq:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 2779
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 2775
    invoke-static {v0, v3}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2780
    iget-object v3, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v0, -0x1

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v4, v10

    move/from16 v5, p2

    move/from16 v18, v8

    move v8, v0

    move-object/from16 v19, v9

    .end local v9  # "buf":Ljava/lang/StringBuilder;
    .local v19, "buf":Ljava/lang/StringBuilder;
    move/from16 v9, v16

    move-object/from16 v16, v10

    .end local v10  # "oldApp":Lcom/android/server/am/ProcessRecord;
    .local v16, "oldApp":Lcom/android/server/am/ProcessRecord;
    move/from16 v10, v17

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/am/ActivityManagerService;->cleanUpApplicationRecordLocked(Lcom/android/server/am/ProcessRecord;IZZIZZ)Z

    goto :goto_239

    .line 2773
    .end local v16  # "oldApp":Lcom/android/server/am/ProcessRecord;
    .end local v19  # "buf":Ljava/lang/StringBuilder;
    .restart local v9  # "buf":Ljava/lang/StringBuilder;
    .restart local v10  # "oldApp":Lcom/android/server/am/ProcessRecord;
    :cond_233
    move/from16 v18, v8

    move-object/from16 v19, v9

    move-object/from16 v16, v10

    .line 2783
    .end local v9  # "buf":Ljava/lang/StringBuilder;
    .end local v10  # "oldApp":Lcom/android/server/am/ProcessRecord;
    .restart local v16  # "oldApp":Lcom/android/server/am/ProcessRecord;
    .restart local v19  # "buf":Ljava/lang/StringBuilder;
    :goto_239
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v2}, Lcom/android/server/am/ActivityManagerService;->addPidLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2784
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v3

    .line 2785
    if-nez p6, :cond_261

    .line 2786
    :try_start_245
    iget-object v0, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v4, 0x14

    invoke-virtual {v0, v4}, Lcom/android/server/am/ActivityManagerService$MainHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2787
    .local v0, "msg":Landroid/os/Message;
    iput-object v2, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2788
    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    if-eqz v12, :cond_25b

    .line 2789
    const-wide/32 v5, 0x124f80

    goto :goto_25e

    :cond_25b
    sget v5, Lcom/android/server/am/ActivityManagerService;->PROC_START_TIMEOUT:I

    int-to-long v5, v5

    .line 2788
    :goto_25e
    invoke-virtual {v4, v0, v5, v6}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2791
    .end local v0  # "msg":Landroid/os/Message;
    :cond_261
    monitor-exit v3
    :try_end_262
    .catchall {:try_start_245 .. :try_end_262} :catchall_26d

    .line 2792
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v3

    const-string/jumbo v0, "startProcess: done updating pids map"

    invoke-direct {v1, v3, v4, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2793
    return v18

    .line 2791
    :catchall_26d
    move-exception v0

    :try_start_26e
    monitor-exit v3
    :try_end_26f
    .catchall {:try_start_26e .. :try_end_26f} :catchall_26d

    throw v0

    .line 2771
    .end local v16  # "oldApp":Lcom/android/server/am/ProcessRecord;
    .end local v19  # "buf":Ljava/lang/StringBuilder;
    .restart local v9  # "buf":Ljava/lang/StringBuilder;
    :catchall_270
    move-exception v0

    move-object/from16 v19, v9

    .end local v9  # "buf":Ljava/lang/StringBuilder;
    .restart local v19  # "buf":Ljava/lang/StringBuilder;
    :goto_273
    :try_start_273
    monitor-exit v4
    :try_end_274
    .catchall {:try_start_273 .. :try_end_274} :catchall_275

    throw v0

    :catchall_275
    move-exception v0

    goto :goto_273

    .line 2766
    .end local v19  # "buf":Ljava/lang/StringBuilder;
    .restart local v9  # "buf":Ljava/lang/StringBuilder;
    :catchall_277
    move-exception v0

    move-object/from16 v19, v9

    .end local v9  # "buf":Ljava/lang/StringBuilder;
    .restart local v19  # "buf":Ljava/lang/StringBuilder;
    :goto_27a
    :try_start_27a
    monitor-exit v3
    :try_end_27b
    .catchall {:try_start_27a .. :try_end_27b} :catchall_27f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :catchall_27f
    move-exception v0

    goto :goto_27a
.end method

.method haveBackgroundProcessLOSP()Z
    .registers 6

    .line 3835
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_26

    .line 3836
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3837
    .local v2, "rec":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_23

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3838
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    const/16 v4, 0x10

    if-lt v3, v4, :cond_23

    .line 3839
    return v1

    .line 3835
    .end local v2  # "rec":Lcom/android/server/am/ProcessRecord;
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3842
    .end local v0  # "i":I
    :cond_26
    const/4 v0, 0x0

    return v0
.end method

.method incrementProcStateSeqAndNotifyAppsLOSP(Lcom/android/server/am/ActiveUids;)V
    .registers 13
    .param p1, "activeUids"  # Lcom/android/server/am/ActiveUids;

    .line 4974
    invoke-virtual {p1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_6
    if-ltz v0, :cond_15

    .line 4975
    invoke-virtual {p1, v0}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 4976
    .local v2, "uidRec":Lcom/android/server/am/UidRecord;
    invoke-virtual {p0}, Lcom/android/server/am/ProcessList;->getNextProcStateSeq()J

    move-result-wide v3

    iput-wide v3, v2, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    .line 4974
    .end local v2  # "uidRec":Lcom/android/server/am/UidRecord;
    add-int/lit8 v0, v0, -0x1

    goto :goto_6

    .line 4978
    .end local v0  # "i":I
    :cond_15
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v2, v0, Lcom/android/server/am/ActivityManagerConstants;->mNetworkAccessTimeoutMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gtz v0, :cond_22

    .line 4979
    return-void

    .line 4982
    :cond_22
    const/4 v0, 0x0

    .line 4983
    .local v0, "blockingUids":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {p1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .local v2, "i":I
    :goto_28
    if-ltz v2, :cond_b3

    .line 4984
    invoke-virtual {p1, v2}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 4986
    .local v3, "uidRec":Lcom/android/server/am/UidRecord;
    iget-object v6, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mInjector:Lcom/android/server/am/ActivityManagerService$Injector;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/android/server/am/ActivityManagerService$Injector;->isNetworkRestrictedForUid(I)Z

    move-result v6

    if-nez v6, :cond_3e

    .line 4987
    goto/16 :goto_af

    .line 4989
    :cond_3e
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v6

    invoke-static {v6}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v6

    if-eqz v6, :cond_af

    iget-boolean v6, v3, Lcom/android/server/am/UidRecord;->hasInternetPermission:Z

    if-nez v6, :cond_4d

    .line 4990
    goto :goto_af

    .line 4993
    :cond_4d
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v7

    if-ne v6, v7, :cond_62

    .line 4994
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v6

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v7

    if-ne v6, v7, :cond_62

    .line 4995
    goto :goto_af

    .line 4997
    :cond_62
    invoke-virtual {p0, v3}, Lcom/android/server/am/ProcessList;->getBlockStateForUid(Lcom/android/server/am/UidRecord;)I

    move-result v6

    .line 5000
    .local v6, "blockState":I
    if-nez v6, :cond_69

    .line 5001
    goto :goto_af

    .line 5003
    :cond_69
    iget-object v7, v3, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    monitor-enter v7

    .line 5004
    if-ne v6, v1, :cond_82

    .line 5005
    if-nez v0, :cond_76

    .line 5006
    :try_start_70
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v8

    .line 5008
    :cond_76
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_aa

    .line 5010
    :cond_82
    sget-boolean v8, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v8, :cond_9f

    .line 5011
    const-string v8, "ActivityManager_Network"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "uid going to background, notifying all blocking threads for uid: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5014
    :cond_9f
    iget-wide v8, v3, Lcom/android/server/am/UidRecord;->procStateSeqWaitingForNetwork:J

    cmp-long v8, v8, v4

    if-eqz v8, :cond_aa

    .line 5015
    iget-object v8, v3, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->notifyAll()V

    .line 5018
    :cond_aa
    :goto_aa
    monitor-exit v7

    goto :goto_af

    :catchall_ac
    move-exception v1

    monitor-exit v7
    :try_end_ae
    .catchall {:try_start_70 .. :try_end_ae} :catchall_ac

    throw v1

    .line 4983
    .end local v3  # "uidRec":Lcom/android/server/am/UidRecord;
    .end local v6  # "blockState":I
    :cond_af
    :goto_af
    add-int/lit8 v2, v2, -0x1

    goto/16 :goto_28

    .line 5022
    .end local v2  # "i":I
    :cond_b3
    if-nez v0, :cond_b6

    .line 5023
    return-void

    .line 5026
    :cond_b6
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    .restart local v2  # "i":I
    :goto_bd
    if-ltz v2, :cond_10e

    .line 5027
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 5028
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    iget v3, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_d4

    .line 5029
    goto :goto_10b

    .line 5031
    :cond_d4
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    .line 5032
    .local v3, "thread":Landroid/app/IApplicationThread;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v4

    if-nez v4, :cond_10b

    if-eqz v3, :cond_10b

    .line 5033
    iget v4, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p0, v4}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object v4

    .line 5035
    .local v4, "uidRec":Lcom/android/server/am/UidRecord;
    :try_start_e6
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_NETWORK:Z

    if-eqz v5, :cond_102

    .line 5036
    const-string v5, "ActivityManager_Network"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Informing app thread that it needs to block: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5039
    :cond_102
    if-eqz v4, :cond_109

    .line 5040
    iget-wide v5, v4, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-interface {v3, v5, v6}, Landroid/app/IApplicationThread;->setNetworkBlockSeq(J)V
    :try_end_109
    .catch Landroid/os/RemoteException; {:try_start_e6 .. :try_end_109} :catch_10a

    .line 5043
    :cond_109
    goto :goto_10b

    .line 5042
    :catch_10a
    move-exception v5

    .line 5026
    .end local v1  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3  # "thread":Landroid/app/IApplicationThread;
    .end local v4  # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_10b
    :goto_10b
    add-int/lit8 v2, v2, -0x1

    goto :goto_bd

    .line 5046
    .end local v2  # "i":I
    :cond_10e
    return-void
.end method

.method init(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ActiveUids;Lcom/android/server/compat/PlatformCompat;)V
    .registers 8
    .param p1, "service"  # Lcom/android/server/am/ActivityManagerService;
    .param p2, "activeUids"  # Lcom/android/server/am/ActiveUids;
    .param p3, "platformCompat"  # Lcom/android/server/compat/PlatformCompat;

    .line 773
    iput-object p1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 774
    iput-object p2, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 775
    iput-object p3, p0, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    .line 776
    iget-object v0, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 779
    nop

    .line 780
    const-string/jumbo v0, "persist.zygote.app_data_isolation"

    const/4 v1, 0x1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationEnabled:Z

    .line 781
    const-string/jumbo v0, "persist.sys.vold_app_data_isolation_enabled"

    const/4 v2, 0x0

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessList;->mVoldAppDataIsolationEnabled:Z

    .line 783
    new-instance v0, Ljava/util/ArrayList;

    .line 784
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SystemConfig;->getAppDataIsolationWhitelistedApps()Landroid/util/ArraySet;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mAppDataIsolationAllowlistedApps:Ljava/util/ArrayList;

    .line 786
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    if-nez v0, :cond_97

    .line 787
    new-instance v0, Lcom/android/server/ServiceThread;

    const/16 v2, 0xa

    const-string v3, "ActivityManager:kill"

    invoke-direct {v0, v3, v2, v1}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    .line 789
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 790
    new-instance v0, Lcom/android/server/am/ProcessList$KillHandler;

    sget-object v2, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v0, p0, v2}, Lcom/android/server/am/ProcessList$KillHandler;-><init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    .line 791
    new-instance v0, Lcom/android/server/am/LmkdConnection;

    sget-object v2, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v2}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/ProcessList$1;

    invoke-direct {v3, p0}, Lcom/android/server/am/ProcessList$1;-><init>(Lcom/android/server/am/ProcessList;)V

    invoke-direct {v0, v2, v3}, Lcom/android/server/am/LmkdConnection;-><init>(Landroid/os/MessageQueue;Lcom/android/server/am/LmkdConnection$LmkdConnectionListener;)V

    sput-object v0, Lcom/android/server/am/ProcessList;->sLmkdConnection:Lcom/android/server/am/LmkdConnection;

    .line 861
    invoke-direct {p0}, Lcom/android/server/am/ProcessList;->createSystemServerSocketForZygote()Landroid/net/LocalSocket;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mSystemServerSocketForZygote:Landroid/net/LocalSocket;

    .line 862
    if-eqz v0, :cond_83

    .line 863
    sget-object v0, Lcom/android/server/am/ProcessList;->sKillHandler:Lcom/android/server/am/ProcessList$KillHandler;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$KillHandler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Looper;->getQueue()Landroid/os/MessageQueue;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mSystemServerSocketForZygote:Landroid/net/LocalSocket;

    .line 864
    invoke-virtual {v2}, Landroid/net/LocalSocket;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/am/ProcessList;)V

    .line 863
    invoke-virtual {v0, v2, v1, v3}, Landroid/os/MessageQueue;->addOnFileDescriptorEventListener(Ljava/io/FileDescriptor;ILandroid/os/MessageQueue$OnFileDescriptorEventListener;)V

    .line 867
    :cond_83
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppExitInfoTracker;->init(Lcom/android/server/am/ActivityManagerService;)V

    .line 868
    new-instance v0, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    sget-object v1, Lcom/android/server/am/ProcessList;->sKillThread:Lcom/android/server/ServiceThread;

    invoke-virtual {v1}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;-><init>(Lcom/android/server/am/ProcessList;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessList;->mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    .line 870
    :cond_97
    return-void
.end method

.method isInLruListLOSP(Lcom/android/server/am/ProcessRecord;)Z
    .registers 3
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 4029
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method killAllBackgroundProcessesExceptLSP(II)V
    .registers 15
    .param p1, "minTargetSdk"  # I
    .param p2, "maxProcState"  # I

    .line 3257
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3258
    .local v0, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    .line 3259
    .local v1, "NP":I
    const/4 v2, 0x0

    .local v2, "ip":I
    :goto_10
    if-ge v2, v1, :cond_4c

    .line 3260
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 3261
    .local v3, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    .line 3262
    .local v4, "NA":I
    const/4 v5, 0x0

    .local v5, "ia":I
    :goto_23
    if-ge v5, v4, :cond_49

    .line 3263
    invoke-virtual {v3, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 3264
    .local v6, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v7

    if-nez v7, :cond_43

    if-ltz p1, :cond_39

    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    if-ge v7, p1, :cond_46

    :cond_39
    if-ltz p2, :cond_43

    iget-object v7, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3266
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v7

    if-le v7, p2, :cond_46

    .line 3267
    :cond_43
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3262
    .end local v6  # "app":Lcom/android/server/am/ProcessRecord;
    :cond_46
    add-int/lit8 v5, v5, 0x1

    goto :goto_23

    .line 3259
    .end local v3  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v4  # "NA":I
    .end local v5  # "ia":I
    :cond_49
    add-int/lit8 v2, v2, 0x1

    goto :goto_10

    .line 3272
    .end local v2  # "ip":I
    :cond_4c
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 3273
    .local v2, "N":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_51
    if-ge v3, v2, :cond_6a

    .line 3274
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v6, v4

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/16 v9, 0xd

    const/16 v10, 0xa

    const-string/jumbo v11, "kill all background except"

    move-object v5, p0

    invoke-virtual/range {v5 .. v11}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    .line 3273
    add-int/lit8 v3, v3, 0x1

    goto :goto_51

    .line 3277
    .end local v3  # "i":I
    :cond_6a
    return-void
.end method

.method killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J
    .registers 15
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "nowElapsed"  # J

    .line 5196
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 5197
    .local v0, "uidRec":Lcom/android/server/am/UidRecord;
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getLastCanKillOnBgRestrictedAndIdleTime()J

    move-result-wide v1

    .line 5198
    .local v1, "lastCanKillTime":J
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    const-wide/16 v4, 0x0

    if-eqz v3, :cond_5a

    .line 5199
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v3

    if-nez v3, :cond_5a

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-eqz v3, :cond_5a

    if-eqz v0, :cond_5a

    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v3

    if-eqz v3, :cond_5a

    .line 5200
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isCached()Z

    move-result v3

    if-eqz v3, :cond_5a

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->shouldNotKillOnBgRestrictedAndIdle()Z

    move-result v3

    if-nez v3, :cond_5a

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 5201
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->isBackgroundRestricted()Z

    move-result v3

    if-eqz v3, :cond_5a

    cmp-long v3, v1, v4

    if-nez v3, :cond_43

    goto :goto_5a

    .line 5204
    :cond_43
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v3, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    add-long/2addr v6, v1

    .line 5206
    .local v6, "future":J
    cmp-long v3, v6, p2

    if-gtz v3, :cond_59

    .line 5207
    const/16 v3, 0xd

    const/16 v8, 0x12

    const/4 v9, 0x1

    const-string v10, "cached idle & background restricted"

    invoke-virtual {p1, v10, v3, v8, v9}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 5211
    return-wide v4

    .line 5213
    :cond_59
    return-wide v6

    .line 5202
    .end local v6  # "future":J
    :cond_5a
    :goto_5a
    return-wide v4
.end method

.method killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/UidRecord;)V
    .registers 5
    .param p1, "uidRec"  # Lcom/android/server/am/UidRecord;

    .line 5223
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 5224
    .local v0, "nowElapsed":J
    new-instance v2, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, v0, v1}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/ProcessList;J)V

    invoke-virtual {p1, v2}, Lcom/android/server/am/UidRecord;->forEachProcess(Ljava/util/function/Consumer;)V

    .line 5225
    return-void
.end method

.method public killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V
    .registers 8
    .param p1, "appZygote"  # Landroid/os/AppZygote;
    .param p2, "force"  # Z

    .line 2171
    invoke-virtual {p1}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 2172
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v1, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 2173
    .local v1, "zygoteProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    if-eqz v1, :cond_2c

    if-nez p2, :cond_16

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-nez v2, :cond_2c

    .line 2175
    :cond_16
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    iget-object v3, v0, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v3, v4}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 2176
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppZygoteProcesses:Landroid/util/ArrayMap;

    invoke-virtual {v2, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2177
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppIsolatedUidRangeAllocator:Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;

    invoke-virtual {v2, v0}, Lcom/android/server/am/ProcessList$IsolatedUidRangeAllocator;->freeUidRangeLocked(Landroid/content/pm/ApplicationInfo;)V

    .line 2178
    invoke-virtual {p1}, Landroid/os/AppZygote;->stopZygote()V

    .line 2180
    :cond_2c
    return-void
.end method

.method killAppZygotesLocked(Ljava/lang/String;IIZ)V
    .registers 12
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "appId"  # I
    .param p3, "userId"  # I
    .param p4, "force"  # Z

    .line 2842
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2843
    .local v0, "zygotesToKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/os/AppZygote;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mAppZygotes:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v1}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1}, Landroid/util/ArrayMap;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_59

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 2844
    .local v2, "appZygotes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/AppZygote;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_20
    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_58

    .line 2845
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v4

    .line 2846
    .local v4, "appZygoteUid":I
    const/4 v5, -0x1

    if-eq p3, v5, :cond_34

    invoke-static {v4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    if-eq v5, p3, :cond_34

    .line 2847
    goto :goto_55

    .line 2849
    :cond_34
    if-ltz p2, :cond_3d

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-eq v5, p2, :cond_3d

    .line 2850
    goto :goto_55

    .line 2852
    :cond_3d
    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/AppZygote;

    .line 2853
    .local v5, "appZygote":Landroid/os/AppZygote;
    if-eqz p1, :cond_52

    .line 2854
    invoke-virtual {v5}, Landroid/os/AppZygote;->getAppInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_52

    .line 2855
    goto :goto_55

    .line 2857
    :cond_52
    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2844
    .end local v4  # "appZygoteUid":I
    .end local v5  # "appZygote":Landroid/os/AppZygote;
    :goto_55
    add-int/lit8 v3, v3, 0x1

    goto :goto_20

    .line 2859
    .end local v2  # "appZygotes":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/AppZygote;>;"
    .end local v3  # "i":I
    :cond_58
    goto :goto_13

    .line 2860
    :cond_59
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/AppZygote;

    .line 2861
    .local v2, "appZygote":Landroid/os/AppZygote;
    invoke-virtual {p0, v2, p4}, Lcom/android/server/am/ProcessList;->killAppZygoteIfNeededLocked(Landroid/os/AppZygote;Z)V

    .line 2862
    .end local v2  # "appZygote":Landroid/os/AppZygote;
    goto :goto_5d

    .line 2863
    :cond_6d
    return-void
.end method

.method killPackageProcessesLSP(Ljava/lang/String;IIIIILjava/lang/String;)Z
    .registers 22
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "appId"  # I
    .param p3, "userId"  # I
    .param p4, "minOomAdj"  # I
    .param p5, "reasonCode"  # I
    .param p6, "subReason"  # I
    .param p7, "reason"  # Ljava/lang/String;

    .line 2832
    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    move-object v0, p0

    move-object v1, p1

    move/from16 v2, p2

    move/from16 v3, p3

    move/from16 v4, p4

    move/from16 v11, p5

    move/from16 v12, p6

    move-object/from16 v13, p7

    invoke-virtual/range {v0 .. v13}, Lcom/android/server/am/ProcessList;->killPackageProcessesLSP(Ljava/lang/String;IIIZZZZZZIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method killPackageProcessesLSP(Ljava/lang/String;IIIZZZZZZIILjava/lang/String;)Z
    .registers 35
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "appId"  # I
    .param p3, "userId"  # I
    .param p4, "minOomAdj"  # I
    .param p5, "callerWillRestart"  # Z
    .param p6, "allowRestart"  # Z
    .param p7, "doit"  # Z
    .param p8, "evenPersistent"  # Z
    .param p9, "setRemoved"  # Z
    .param p10, "uninstalling"  # Z
    .param p11, "reasonCode"  # I
    .param p12, "subReason"  # I
    .param p13, "reason"  # Ljava/lang/String;

    .line 2870
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p6

    iget-object v0, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v12

    .line 2871
    .local v12, "pm":Landroid/content/pm/PackageManagerInternal;
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 2876
    .local v13, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Boolean;>;>;"
    iget-object v0, v7, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v14

    .line 2877
    .local v14, "NP":I
    const/4 v0, 0x0

    .local v0, "ip":I
    :goto_21
    if-ge v0, v14, :cond_181

    .line 2878
    iget-object v1, v7, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 2879
    .local v1, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 2880
    .local v2, "NA":I
    const/4 v3, 0x0

    .local v3, "ia":I
    :goto_34
    if-ge v3, v2, :cond_177

    .line 2881
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 2882
    .local v4, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v5

    if-eqz v5, :cond_4d

    if-nez p8, :cond_4d

    .line 2884
    move/from16 v15, p4

    move-object/from16 v17, v1

    move/from16 v19, v2

    const/4 v6, 0x1

    goto/16 :goto_16f

    .line 2886
    :cond_4d
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->isRemoved()Z

    move-result v5

    if-eqz v5, :cond_b3

    .line 2887
    if-eqz p7, :cond_aa

    .line 2888
    const/4 v5, 0x0

    .line 2889
    .local v5, "shouldAllowRestart":Z
    if-nez p10, :cond_95

    if-eqz v8, :cond_95

    .line 2892
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v15

    invoke-virtual {v15, v8}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_90

    .line 2893
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v15

    if-eqz v15, :cond_8d

    .line 2894
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v15

    invoke-virtual {v15, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_8a

    iget-object v15, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v15, :cond_8a

    iget-object v15, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v15, v15, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v6, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    move-object/from16 v17, v1

    .end local v1  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .local v17, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    iget v1, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 2896
    invoke-virtual {v12, v15, v6, v1}, Landroid/content/pm/PackageManagerInternal;->isPackageFrozen(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_92

    const/4 v1, 0x1

    goto :goto_93

    .line 2894
    .end local v17  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v1  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    :cond_8a
    move-object/from16 v17, v1

    .end local v1  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v17  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    goto :goto_92

    .line 2893
    .end local v17  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v1  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    :cond_8d
    move-object/from16 v17, v1

    .end local v1  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v17  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    goto :goto_92

    .line 2892
    .end local v17  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v1  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    :cond_90
    move-object/from16 v17, v1

    .line 2896
    .end local v1  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v17  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    :cond_92
    :goto_92
    const/4 v1, 0x0

    :goto_93
    move v5, v1

    goto :goto_97

    .line 2889
    .end local v17  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v1  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    :cond_95
    move-object/from16 v17, v1

    .line 2899
    .end local v1  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v17  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    :goto_97
    new-instance v1, Landroid/util/Pair;

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-direct {v1, v4, v6}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2900
    .end local v5  # "shouldAllowRestart":Z
    move/from16 v15, p4

    move/from16 v19, v2

    const/4 v6, 0x1

    goto/16 :goto_16f

    .line 2887
    .end local v17  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v1  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    :cond_aa
    move-object/from16 v17, v1

    .end local v1  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v17  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    move/from16 v15, p4

    move/from16 v19, v2

    const/4 v6, 0x1

    goto/16 :goto_16f

    .line 2905
    .end local v17  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v1  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    :cond_b3
    move-object/from16 v17, v1

    .end local v1  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v17  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v1

    move/from16 v15, p4

    if-ge v1, v15, :cond_c4

    .line 2911
    move/from16 v19, v2

    const/4 v6, 0x1

    goto/16 :goto_16f

    .line 2914
    :cond_c4
    const/4 v1, 0x0

    .line 2918
    .local v1, "shouldAllowRestart":Z
    const/4 v5, -0x1

    if-nez v8, :cond_e8

    .line 2919
    if-eq v10, v5, :cond_d3

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v5, v10, :cond_d3

    .line 2920
    move/from16 v19, v2

    const/4 v6, 0x1

    goto/16 :goto_16f

    .line 2922
    :cond_d3
    if-ltz v9, :cond_e2

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-eq v5, v9, :cond_e2

    .line 2923
    move/from16 v19, v2

    const/4 v6, 0x1

    goto/16 :goto_16f

    .line 2922
    :cond_e2
    move/from16 v18, v1

    move/from16 v19, v2

    goto/16 :goto_150

    .line 2929
    :cond_e8
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v6

    if-eqz v6, :cond_fa

    .line 2930
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgDeps()Landroid/util/ArraySet;

    move-result-object v6

    invoke-virtual {v6, v8}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_fa

    const/4 v6, 0x1

    goto :goto_fb

    :cond_fa
    const/4 v6, 0x0

    .line 2931
    .local v6, "isDep":Z
    :goto_fb
    if-nez v6, :cond_10a

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v5}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v5

    if-eq v5, v9, :cond_10a

    .line 2932
    move/from16 v19, v2

    const/4 v6, 0x1

    goto/16 :goto_16f

    .line 2934
    :cond_10a
    const/4 v5, -0x1

    if-eq v10, v5, :cond_115

    iget v5, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v5, v10, :cond_115

    .line 2935
    move/from16 v19, v2

    const/4 v6, 0x1

    goto :goto_16f

    .line 2937
    :cond_115
    invoke-virtual {v4}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v5

    invoke-virtual {v5, v8}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    .line 2938
    .local v5, "isInPkgList":Z
    if-nez v5, :cond_125

    if-nez v6, :cond_125

    .line 2939
    move/from16 v19, v2

    const/4 v6, 0x1

    goto :goto_16f

    .line 2941
    :cond_125
    if-nez v5, :cond_14a

    if-eqz v6, :cond_14a

    if-nez p10, :cond_14a

    move/from16 v18, v1

    .end local v1  # "shouldAllowRestart":Z
    .local v18, "shouldAllowRestart":Z
    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-eqz v1, :cond_145

    iget-object v1, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move/from16 v19, v2

    .end local v2  # "NA":I
    .local v19, "NA":I
    iget v2, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    move/from16 v20, v5

    .end local v5  # "isInPkgList":Z
    .local v20, "isInPkgList":Z
    iget v5, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 2942
    invoke-virtual {v12, v1, v2, v5}, Landroid/content/pm/PackageManagerInternal;->isPackageFrozen(Ljava/lang/String;II)Z

    move-result v1

    if-nez v1, :cond_150

    .line 2945
    const/4 v1, 0x1

    .end local v18  # "shouldAllowRestart":Z
    .restart local v1  # "shouldAllowRestart":Z
    goto :goto_152

    .line 2941
    .end local v1  # "shouldAllowRestart":Z
    .end local v19  # "NA":I
    .end local v20  # "isInPkgList":Z
    .restart local v2  # "NA":I
    .restart local v5  # "isInPkgList":Z
    .restart local v18  # "shouldAllowRestart":Z
    :cond_145
    move/from16 v19, v2

    move/from16 v20, v5

    .end local v2  # "NA":I
    .end local v5  # "isInPkgList":Z
    .restart local v19  # "NA":I
    .restart local v20  # "isInPkgList":Z
    goto :goto_150

    .end local v18  # "shouldAllowRestart":Z
    .end local v19  # "NA":I
    .end local v20  # "isInPkgList":Z
    .restart local v1  # "shouldAllowRestart":Z
    .restart local v2  # "NA":I
    .restart local v5  # "isInPkgList":Z
    :cond_14a
    move/from16 v18, v1

    move/from16 v19, v2

    move/from16 v20, v5

    .line 2950
    .end local v5  # "isInPkgList":Z
    .end local v6  # "isDep":Z
    :cond_150
    :goto_150
    move/from16 v1, v18

    .end local v2  # "NA":I
    .restart local v19  # "NA":I
    :goto_152
    if-nez p7, :cond_156

    .line 2951
    const/4 v6, 0x1

    return v6

    .line 2953
    :cond_156
    const/4 v6, 0x1

    if-eqz p9, :cond_15c

    .line 2954
    invoke-virtual {v4, v6}, Lcom/android/server/am/ProcessRecord;->setRemoved(Z)V

    .line 2956
    :cond_15c
    new-instance v2, Landroid/util/Pair;

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-direct {v2, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v13, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2959
    invoke-static {}, Lcom/android/server/am/ProcessListStub;->get()Lcom/android/server/am/ProcessListStub;

    move-result-object v2

    invoke-interface {v2, v4}, Lcom/android/server/am/ProcessListStub;->notifyProcessDied(Lcom/android/server/am/ProcessRecord;)V

    .line 2880
    .end local v1  # "shouldAllowRestart":Z
    .end local v4  # "app":Lcom/android/server/am/ProcessRecord;
    :goto_16f
    add-int/lit8 v3, v3, 0x1

    move-object/from16 v1, v17

    move/from16 v2, v19

    goto/16 :goto_34

    .end local v17  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v19  # "NA":I
    .local v1, "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v2  # "NA":I
    :cond_177
    move/from16 v15, p4

    move-object/from16 v17, v1

    move/from16 v19, v2

    .line 2877
    .end local v1  # "apps":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v2  # "NA":I
    .end local v3  # "ia":I
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_21

    :cond_181
    move/from16 v15, p4

    const/4 v6, 0x1

    .line 2965
    .end local v0  # "ip":I
    invoke-static {}, Lcom/android/server/am/AutoStartManagerServiceStub;->getInstance()Lcom/android/server/am/AutoStartManagerServiceStub;

    move-result-object v0

    .line 2966
    invoke-static {v10, v9}, Landroid/os/UserHandle;->getUid(II)I

    move-result v1

    .line 2965
    invoke-interface {v0, v13, v11, v8, v1}, Lcom/android/server/am/AutoStartManagerServiceStub;->signalStopProcessesLocked(Ljava/util/ArrayList;ZLjava/lang/String;I)V

    .line 2968
    invoke-virtual {v13}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 2969
    .local v5, "N":I
    const/4 v0, 0x0

    move v4, v0

    .local v4, "i":I
    :goto_195
    if-ge v4, v5, :cond_1d3

    .line 2970
    invoke-virtual {v13, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Landroid/util/Pair;

    .line 2971
    .local v3, "proc":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Boolean;>;"
    iget-object v0, v3, Landroid/util/Pair;->first:Ljava/lang/Object;

    move-object v1, v0

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    if-nez v11, :cond_1b3

    iget-object v0, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1b0

    goto :goto_1b3

    :cond_1b0
    const/16 v16, 0x0

    goto :goto_1b5

    :cond_1b3
    :goto_1b3
    move/from16 v16, v6

    :goto_1b5
    move-object/from16 v0, p0

    move/from16 v2, p5

    move-object/from16 v17, v3

    .end local v3  # "proc":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Boolean;>;"
    .local v17, "proc":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Boolean;>;"
    move/from16 v3, v16

    move/from16 v16, v4

    .end local v4  # "i":I
    .local v16, "i":I
    move/from16 v4, p11

    move/from16 v18, v5

    .end local v5  # "N":I
    .local v18, "N":I
    move/from16 v5, p12

    move/from16 v19, v6

    move-object/from16 v6, p13

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    .line 2969
    .end local v17  # "proc":Landroid/util/Pair;, "Landroid/util/Pair<Lcom/android/server/am/ProcessRecord;Ljava/lang/Boolean;>;"
    add-int/lit8 v4, v16, 0x1

    move/from16 v5, v18

    move/from16 v6, v19

    .end local v16  # "i":I
    .restart local v4  # "i":I
    goto :goto_195

    .end local v18  # "N":I
    .restart local v5  # "N":I
    :cond_1d3
    move/from16 v16, v4

    move/from16 v18, v5

    move/from16 v19, v6

    .line 2974
    .end local v4  # "i":I
    .end local v5  # "N":I
    .restart local v18  # "N":I
    const/4 v0, 0x0

    invoke-virtual {v7, v8, v9, v10, v0}, Lcom/android/server/am/ProcessList;->killAppZygotesLocked(Ljava/lang/String;IIZ)V

    .line 2975
    iget-object v1, v7, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "updateOomAdj_processEnd"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 2976
    if-lez v18, :cond_1e8

    goto :goto_1ea

    :cond_1e8
    move/from16 v19, v0

    :goto_1ea
    return v19
.end method

.method killProcessesWhenImperceptible([ILjava/lang/String;I)V
    .registers 9
    .param p1, "pids"  # [I
    .param p2, "reason"  # Ljava/lang/String;
    .param p3, "requester"  # I

    .line 5288
    invoke-static {p1}, Lcom/android/internal/util/ArrayUtils;->isEmpty([I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 5289
    return-void

    .line 5292
    :cond_7
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 5294
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_e
    array-length v2, p1

    if-ge v1, v2, :cond_2e

    .line 5295
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_a .. :try_end_16} :catchall_33

    .line 5296
    :try_start_16
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    aget v4, p1, v1

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v3

    .line 5297
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    monitor-exit v2
    :try_end_21
    .catchall {:try_start_16 .. :try_end_21} :catchall_2b

    .line 5298
    if-eqz v3, :cond_28

    .line 5299
    :try_start_23
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mImperceptibleKillRunner:Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;

    invoke-virtual {v2, v3, p2, p3}, Lcom/android/server/am/ProcessList$ImperceptibleKillRunner;->enqueueLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;I)Z
    :try_end_28
    .catchall {:try_start_23 .. :try_end_28} :catchall_33

    .line 5294
    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_e

    .line 5297
    .end local v3  # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_2b
    move-exception v3

    :try_start_2c
    monitor-exit v2
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    .end local p0  # "this":Lcom/android/server/am/ProcessList;
    .end local p1  # "pids":[I
    .end local p2  # "reason":Ljava/lang/String;
    .end local p3  # "requester":I
    :try_start_2d
    throw v3

    .line 5302
    .end local v1  # "i":I
    .restart local p0  # "this":Lcom/android/server/am/ProcessList;
    .restart local p1  # "pids":[I
    .restart local p2  # "reason":Ljava/lang/String;
    .restart local p3  # "requester":I
    :cond_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2d .. :try_end_2f} :catchall_33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 5303
    return-void

    .line 5302
    :catchall_33
    move-exception v1

    :try_start_34
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_34 .. :try_end_35} :catchall_33

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method synthetic lambda$handleProcessStart$1$com-android-server-am-ProcessList(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 30
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "entryPoint"  # Ljava/lang/String;
    .param p3, "gids"  # [I
    .param p4, "runtimeFlags"  # I
    .param p5, "zygotePolicyFlags"  # I
    .param p6, "mountExternal"  # I
    .param p7, "requiredAbi"  # Ljava/lang/String;
    .param p8, "instructionSet"  # Ljava/lang/String;
    .param p9, "invokeWith"  # Ljava/lang/String;
    .param p10, "startSeq"  # J

    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-wide/from16 v12, p10

    .line 2078
    :try_start_6
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getHostingRecord()Lcom/android/server/am/HostingRecord;

    move-result-object v2

    .line 2079
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartUid()I

    move-result v5

    .line 2080
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getSeInfo()Ljava/lang/String;

    move-result-object v10

    .line 2081
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getStartTime()J

    move-result-wide v16
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_16} :catch_5d

    .line 2078
    move-object/from16 v1, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    move-object/from16 v13, p9

    move-wide/from16 v14, v16

    :try_start_2c
    invoke-direct/range {v1 .. v15}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    move-result-object v0
    :try_end_30
    .catch Ljava/lang/RuntimeException; {:try_start_2c .. :try_end_30} :catch_55

    move-object v1, v0

    .line 2083
    .local v1, "startResult":Landroid/os/Process$ProcessStartResult;
    move-object/from16 v2, p0

    :try_start_33
    iget-object v3, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3
    :try_end_36
    .catch Ljava/lang/RuntimeException; {:try_start_33 .. :try_end_36} :catch_53

    :try_start_36
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V
    :try_end_39
    .catchall {:try_start_36 .. :try_end_39} :catchall_47

    .line 2084
    move-object/from16 v4, p1

    move-wide/from16 v5, p10

    :try_start_3d
    invoke-direct {v2, v4, v1, v5, v6}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;Landroid/os/Process$ProcessStartResult;J)Z

    .line 2085
    monitor-exit v3
    :try_end_41
    .catchall {:try_start_3d .. :try_end_41} :catchall_45

    :try_start_41
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V
    :try_end_44
    .catch Ljava/lang/RuntimeException; {:try_start_41 .. :try_end_44} :catch_51

    .line 2096
    .end local v1  # "startResult":Landroid/os/Process$ProcessStartResult;
    goto :goto_a8

    .line 2085
    .restart local v1  # "startResult":Landroid/os/Process$ProcessStartResult;
    :catchall_45
    move-exception v0

    goto :goto_4c

    :catchall_47
    move-exception v0

    move-object/from16 v4, p1

    move-wide/from16 v5, p10

    :goto_4c
    :try_start_4c
    monitor-exit v3
    :try_end_4d
    .catchall {:try_start_4c .. :try_end_4d} :catchall_45

    :try_start_4d
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .end local p0  # "this":Lcom/android/server/am/ProcessList;
    .end local p1  # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2  # "entryPoint":Ljava/lang/String;
    .end local p3  # "gids":[I
    .end local p4  # "runtimeFlags":I
    .end local p5  # "zygotePolicyFlags":I
    .end local p6  # "mountExternal":I
    .end local p7  # "requiredAbi":Ljava/lang/String;
    .end local p8  # "instructionSet":Ljava/lang/String;
    .end local p9  # "invokeWith":Ljava/lang/String;
    .end local p10  # "startSeq":J
    throw v0
    :try_end_51
    .catch Ljava/lang/RuntimeException; {:try_start_4d .. :try_end_51} :catch_51

    .line 2086
    .end local v1  # "startResult":Landroid/os/Process$ProcessStartResult;
    .restart local p0  # "this":Lcom/android/server/am/ProcessList;
    .restart local p1  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2  # "entryPoint":Ljava/lang/String;
    .restart local p3  # "gids":[I
    .restart local p4  # "runtimeFlags":I
    .restart local p5  # "zygotePolicyFlags":I
    .restart local p6  # "mountExternal":I
    .restart local p7  # "requiredAbi":Ljava/lang/String;
    .restart local p8  # "instructionSet":Ljava/lang/String;
    .restart local p9  # "invokeWith":Ljava/lang/String;
    .restart local p10  # "startSeq":J
    :catch_51
    move-exception v0

    goto :goto_61

    :catch_53
    move-exception v0

    goto :goto_58

    :catch_55
    move-exception v0

    move-object/from16 v2, p0

    :goto_58
    move-object/from16 v4, p1

    move-wide/from16 v5, p10

    goto :goto_61

    :catch_5d
    move-exception v0

    move-wide v5, v12

    move-object v2, v14

    move-object v4, v15

    :goto_61
    move-object v1, v0

    .line 2087
    .local v1, "e":Ljava/lang/RuntimeException;
    iget-object v3, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v3

    :try_start_65
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 2088
    const-string v0, "ActivityManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failure starting process "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, v4, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2090
    iget-object v0, v2, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v5, v6}, Landroid/util/LongSparseArray;->remove(J)V

    .line 2091
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2092
    iget-object v7, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v0, v4, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2093
    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v9

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x0

    iget v15, v4, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v16, "start failure"

    .line 2092
    invoke-virtual/range {v7 .. v16}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 2095
    monitor-exit v3
    :try_end_a5
    .catchall {:try_start_65 .. :try_end_a5} :catchall_a9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 2097
    .end local v1  # "e":Ljava/lang/RuntimeException;
    :goto_a8
    return-void

    .line 2095
    .restart local v1  # "e":Ljava/lang/RuntimeException;
    :catchall_a9
    move-exception v0

    :try_start_aa
    monitor-exit v3
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_a9

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method synthetic lambda$killAppIfBgRestrictedAndCachedIdleLocked$4$com-android-server-am-ProcessList(JLcom/android/server/am/ProcessRecord;)V
    .registers 4
    .param p1, "nowElapsed"  # J
    .param p3, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 5224
    invoke-virtual {p0, p3, p1, p2}, Lcom/android/server/am/ProcessList;->killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J

    return-void
.end method

.method synthetic lambda$startProcessLocked$0$com-android-server-am-ProcessList(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 12
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "entryPoint"  # Ljava/lang/String;
    .param p3, "gids"  # [I
    .param p4, "runtimeFlags"  # I
    .param p5, "zygotePolicyFlags"  # I
    .param p6, "mountExternal"  # I
    .param p7, "requiredAbi"  # Ljava/lang/String;
    .param p8, "instructionSet"  # Ljava/lang/String;
    .param p9, "invokeWith"  # Ljava/lang/String;
    .param p10, "startSeq"  # J

    .line 2044
    invoke-direct/range {p0 .. p11}, Lcom/android/server/am/ProcessList;->handleProcessStart(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method synthetic lambda$updateBackgroundRestrictedForUidPackageLocked$3$com-android-server-am-ProcessList(Ljava/lang/String;ZJLcom/android/server/am/ProcessRecord;)V
    .registers 12
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "restricted"  # Z
    .param p3, "nowElapsed"  # J
    .param p5, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 5165
    iget-object v0, p5, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_46

    .line 5166
    iget-object v0, p5, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ProcessStateRecord;->setBackgroundRestricted(Z)V

    .line 5167
    if-eqz p2, :cond_36

    .line 5168
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {v0, p5}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 5169
    invoke-virtual {p0, p5, p3, p4}, Lcom/android/server/am/ProcessList;->killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J

    move-result-wide v0

    .line 5171
    .local v0, "future":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_35

    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x3a

    invoke-virtual {v2, v3}, Lcom/android/server/am/ActivityManagerService$MainHandler;->hasMessages(I)Z

    move-result v2

    if-nez v2, :cond_35

    .line 5172
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    sub-long v4, v0, p3

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 5175
    .end local v0  # "future":J
    :cond_35
    goto :goto_3b

    .line 5176
    :cond_36
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {v0, p5}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 5178
    :goto_3b
    invoke-virtual {p5}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_46

    .line 5179
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/am/ActivityManagerService;->enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 5182
    :cond_46
    return-void
.end method

.method newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZIZILjava/lang/String;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;
    .registers 24
    .param p1, "info"  # Landroid/content/pm/ApplicationInfo;
    .param p2, "customProcess"  # Ljava/lang/String;
    .param p3, "isolated"  # Z
    .param p4, "isolatedUid"  # I
    .param p5, "isSdkSandbox"  # Z
    .param p6, "sdkSandboxUid"  # I
    .param p7, "sdkSandboxClientAppPackage"  # Ljava/lang/String;
    .param p8, "hostingRecord"  # Lcom/android/server/am/HostingRecord;

    .line 3125
    move-object v0, p0

    move-object/from16 v9, p1

    if-eqz p2, :cond_8

    move-object/from16 v4, p2

    goto :goto_b

    :cond_8
    iget-object v1, v9, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    move-object v4, v1

    .line 3126
    .local v4, "proc":Ljava/lang/String;
    :goto_b
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v10

    .line 3127
    .local v10, "userId":I
    iget v1, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 3128
    .local v1, "uid":I
    if-eqz p5, :cond_17

    .line 3129
    move/from16 v1, p6

    .line 3131
    :cond_17
    const/4 v11, 0x1

    if-eqz p3, :cond_59

    .line 3132
    if-nez p4, :cond_2f

    .line 3133
    move-object/from16 v12, p8

    invoke-direct {p0, v9, v12}, Lcom/android/server/am/ProcessList;->getOrCreateIsolatedUidRangeLocked(Landroid/content/pm/ApplicationInfo;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessList$IsolatedUidRange;

    move-result-object v2

    .line 3134
    .local v2, "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    const/4 v3, 0x0

    if-nez v2, :cond_26

    .line 3135
    return-object v3

    .line 3137
    :cond_26
    invoke-virtual {v2, v10}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->allocateIsolatedUidLocked(I)I

    move-result v1

    .line 3138
    const/4 v5, -0x1

    if-ne v1, v5, :cond_2e

    .line 3139
    return-object v3

    .line 3141
    .end local v2  # "uidRange":Lcom/android/server/am/ProcessList$IsolatedUidRange;
    :cond_2e
    goto :goto_33

    .line 3144
    :cond_2f
    move-object/from16 v12, p8

    move/from16 v1, p4

    .line 3146
    :goto_33
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    iget-object v2, v2, Lcom/android/server/am/AppExitInfoTracker;->mIsolatedUidRecords:Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;

    iget v3, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v1, v3}, Lcom/android/server/am/AppExitInfoTracker$IsolatedUidRecords;->addIsolatedUid(II)V

    .line 3147
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    iget v3, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v1, v3}, Landroid/content/pm/PackageManagerInternal;->addIsolatedUid(II)V

    .line 3155
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v3, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v1, v3}, Lcom/android/server/am/BatteryStatsService;->addIsolatedUid(II)V

    .line 3156
    const/16 v2, 0x2b

    iget v3, v9, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2, v3, v1, v11}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIII)V

    move v13, v1

    goto :goto_5c

    .line 3131
    :cond_59
    move-object/from16 v12, p8

    move v13, v1

    .line 3159
    .end local v1  # "uid":I
    .local v13, "uid":I
    :goto_5c
    new-instance v14, Lcom/android/server/am/ProcessRecord;

    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 3161
    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/HostingRecord;->getDefiningUid()I

    move-result v7

    invoke-virtual/range {p8 .. p8}, Lcom/android/server/am/HostingRecord;->getDefiningProcessName()Ljava/lang/String;

    move-result-object v8

    move-object v1, v14

    move-object/from16 v3, p1

    move v5, v13

    move-object/from16 v6, p7

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/ProcessRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 3162
    .local v1, "r":Lcom/android/server/am/ProcessRecord;
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3164
    .local v2, "state":Lcom/android/server/am/ProcessStateRecord;
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooted:Z

    if-nez v3, :cond_97

    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v3, v3, Lcom/android/server/am/ActivityManagerService;->mBooting:Z

    if-nez v3, :cond_97

    if-nez v10, :cond_97

    iget v3, v9, Landroid/content/pm/ApplicationInfo;->flags:I

    const/16 v5, 0x9

    and-int/2addr v3, v5

    if-ne v3, v5, :cond_97

    .line 3168
    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 3169
    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setSetSchedGroup(I)V

    .line 3170
    invoke-virtual {v1, v11}, Lcom/android/server/am/ProcessRecord;->setPersistent(Z)V

    .line 3171
    const/16 v3, -0x320

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setMaxAdj(I)V

    .line 3173
    :cond_97
    if-eqz p3, :cond_a0

    if-eqz p4, :cond_a0

    .line 3176
    const/16 v3, -0x2bc

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setMaxAdj(I)V

    .line 3178
    :cond_a0
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessList;->addProcessNameLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3179
    return-object v1
.end method

.method noteAppKill(IIIILjava/lang/String;)V
    .registers 14
    .param p1, "pid"  # I
    .param p2, "uid"  # I
    .param p3, "reason"  # I
    .param p4, "subReason"  # I
    .param p5, "msg"  # Ljava/lang/String;

    .line 5267
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_3b

    .line 5268
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "note: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is being killed, reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", sub-reason: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5273
    :cond_3b
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    monitor-enter v0

    .line 5274
    :try_start_40
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mPidsSelfLocked:Lcom/android/server/am/ActivityManagerService$PidMap;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$PidMap;->get(I)Lcom/android/server/am/ProcessRecord;

    move-result-object v1

    .line 5275
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    monitor-exit v0
    :try_end_49
    .catchall {:try_start_40 .. :try_end_49} :catchall_72

    .line 5276
    if-eqz v1, :cond_67

    iget v0, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, p2, :cond_67

    iget-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_67

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    if-eqz v0, :cond_67

    .line 5278
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v2, p2, v1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 5279
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 5281
    :cond_67
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move-object v7, p5

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(IIIILjava/lang/String;)V

    .line 5282
    return-void

    .line 5275
    .end local v1  # "app":Lcom/android/server/am/ProcessRecord;
    :catchall_72
    move-exception v1

    :try_start_73
    monitor-exit v0
    :try_end_74
    .catchall {:try_start_73 .. :try_end_74} :catchall_72

    throw v1
.end method

.method noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V
    .registers 8
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "reason"  # I
    .param p3, "subReason"  # I
    .param p4, "msg"  # Ljava/lang/String;

    .line 5252
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_3b

    .line 5253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "note: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is being killed, reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", sub-reason: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5256
    :cond_3b
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_5b

    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v0, :cond_5b

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    if-eqz v0, :cond_5b

    .line 5258
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2, p1}, Lcom/android/internal/app/ProcessMap;->put(Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/Object;

    .line 5259
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 5261
    :cond_5b
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 5262
    return-void
.end method

.method noteProcessDiedLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 5
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 5232
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_23

    .line 5233
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "note: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " died, saving the exit info"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 5236
    :cond_23
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/android/server/Watchdog;->processDied(Ljava/lang/String;I)V

    .line 5237
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getDeathRecipient()Landroid/os/IBinder$DeathRecipient;

    move-result-object v0

    if-nez v0, :cond_4f

    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 5238
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, p1, :cond_4f

    .line 5240
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 5241
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 5243
    :cond_4f
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/am/AppExitInfoTracker;->scheduleNoteProcessDied(Lcom/android/server/am/ProcessRecord;)V

    .line 5244
    return-void
.end method

.method public onLmkdConnect(Ljava/io/OutputStream;)Z
    .registers 9
    .param p1, "ostream"  # Ljava/io/OutputStream;

    .line 1556
    const/4 v0, 0x4

    const/4 v1, 0x0

    :try_start_2
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1557
    .local v2, "buf":Ljava/nio/ByteBuffer;
    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1558
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    invoke-virtual {p1, v3, v1, v4}, Ljava/io/OutputStream;->write([BII)V

    .line 1559
    iget-boolean v3, p0, Lcom/android/server/am/ProcessList;->mOomLevelsSet:Z

    const/4 v4, 0x1

    if-eqz v3, :cond_4f

    .line 1561
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v3, v3

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v4

    mul-int/2addr v3, v0

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    move-object v2, v0

    .line 1562
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1563
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_2a
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v3, v3

    if-ge v0, v3, :cond_44

    .line 1564
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomMinFree:[I

    aget v3, v3, v0

    mul-int/lit16 v3, v3, 0x400

    div-int/lit16 v3, v3, 0x1000

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1565
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1563
    add-int/lit8 v0, v0, 0x1

    goto :goto_2a

    .line 1567
    .end local v0  # "i":I
    :cond_44
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1, v0, v1, v3}, Ljava/io/OutputStream;->write([BII)V

    .line 1570
    :cond_4f
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    move-object v2, v3

    .line 1571
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1572
    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1573
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v5

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v6

    invoke-virtual {p1, v5, v1, v6}, Ljava/io/OutputStream;->write([BII)V

    .line 1576
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1577
    .end local v2  # "buf":Ljava/nio/ByteBuffer;
    .local v0, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1578
    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 1579
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {p1, v2, v1, v3}, Ljava/io/OutputStream;->write([BII)V
    :try_end_7d
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_7d} :catch_7f

    .line 1582
    .end local v0  # "buf":Ljava/nio/ByteBuffer;
    nop

    .line 1583
    return v4

    .line 1580
    :catch_7f
    move-exception v0

    .line 1581
    .local v0, "ex":Ljava/io/IOException;
    return v1
.end method

.method onSystemReady()V
    .registers 2

    .line 873
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mAppExitInfoTracker:Lcom/android/server/am/AppExitInfoTracker;

    invoke-virtual {v0}, Lcom/android/server/am/AppExitInfoTracker;->onSystemReady()V

    .line 874
    return-void
.end method

.method registerProcessObserver(Landroid/app/IProcessObserver;)V
    .registers 3
    .param p1, "observer"  # Landroid/app/IProcessObserver;

    .line 4648
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 4649
    return-void
.end method

.method removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 8
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 2798
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    .line 2799
    .local v0, "lrui":I
    const/4 v1, 0x1

    if-ltz v0, :cond_8f

    .line 2801
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v2

    :try_start_c
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 2802
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v3

    if-nez v3, :cond_71

    .line 2803
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_34

    .line 2804
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing persistent process that hasn\'t been killed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_71

    .line 2806
    :cond_34
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Removing process that hasn\'t been killed: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->wtfStack(Ljava/lang/String;Ljava/lang/String;)I

    .line 2807
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    if-lez v3, :cond_6d

    .line 2808
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-static {v3}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 2809
    iget v3, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 2810
    const/16 v3, 0xd

    const/16 v4, 0x10

    const-string/jumbo v5, "hasn\'t been killed"

    invoke-virtual {p0, p1, v3, v4, v5}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    goto :goto_71

    .line 2813
    :cond_6d
    const/4 v3, 0x0

    invoke-virtual {p1, v3}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2817
    :cond_71
    :goto_71
    iget v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    if-ge v0, v3, :cond_78

    .line 2818
    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    .line 2820
    :cond_78
    iget v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    if-ge v0, v3, :cond_7f

    .line 2821
    sub-int/2addr v3, v1

    iput v3, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 2823
    :cond_7f
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2824
    monitor-exit v2
    :try_end_85
    .catchall {:try_start_c .. :try_end_85} :catchall_89

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_8f

    :catchall_89
    move-exception v1

    :try_start_8a
    monitor-exit v2
    :try_end_8b
    .catchall {:try_start_8a .. :try_end_8b} :catchall_89

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1

    .line 2826
    :cond_8f
    :goto_8f
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, p1, v1}, Lcom/android/server/am/ActivityManagerService;->removeOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;Z)V

    .line 2827
    return-void
.end method

.method removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z
    .registers 30
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "callerWillRestart"  # Z
    .param p3, "allowRestart"  # Z
    .param p4, "reasonCode"  # I
    .param p5, "subReason"  # I
    .param p6, "reason"  # Ljava/lang/String;

    .line 2989
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2990
    .local v8, "name":Ljava/lang/String;
    iget v9, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 2991
    .local v9, "uid":I
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    const-string v2, "ActivityManager"

    if-eqz v1, :cond_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Force removing proc "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2992
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " ("

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "/"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2991
    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2994
    :cond_42
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1, v8, v9}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Lcom/android/server/am/ProcessRecord;

    .line 2995
    .local v10, "old":Lcom/android/server/am/ProcessRecord;
    const/4 v1, 0x0

    if-eq v10, v7, :cond_65

    .line 2997
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring remove of inactive process: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2998
    return v1

    .line 3000
    :cond_65
    invoke-virtual {v0, v8, v9}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 3001
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V

    .line 3003
    const/4 v2, 0x0

    .line 3004
    .local v2, "needRestart":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v11

    .line 3005
    .local v11, "pid":I
    if-lez v11, :cond_7e

    sget v3, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v11, v3, :cond_86

    :cond_7e
    if-nez v11, :cond_111

    .line 3006
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v3

    if-eqz v3, :cond_10c

    .line 3007
    :cond_86
    if-lez v11, :cond_c2

    .line 3008
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3, v11, v7}, Lcom/android/server/am/ActivityManagerService;->removePidLocked(ILcom/android/server/am/ProcessRecord;)V

    .line 3009
    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessRecord;->setBindMountPending(Z)V

    .line 3010
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v3, 0x14

    invoke-virtual {v1, v3, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 3011
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget-object v3, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/BatteryStatsService;->noteProcessFinish(Ljava/lang/String;I)V

    .line 3012
    iget-boolean v1, v7, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v1, :cond_c2

    .line 3013
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mBatteryStatsService:Lcom/android/server/am/BatteryStatsService;

    iget v3, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v4, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/BatteryStatsService;->removeIsolatedUid(II)V

    .line 3014
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v1

    iget v3, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v1, v3}, Landroid/content/pm/PackageManagerInternal;->removeIsolatedUid(I)V

    .line 3017
    :cond_c2
    const/4 v1, 0x0

    .line 3018
    .local v1, "willRestart":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v3

    if-eqz v3, :cond_d7

    iget-boolean v3, v7, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-nez v3, :cond_d7

    .line 3019
    if-nez p2, :cond_d3

    .line 3020
    const/4 v1, 0x1

    move v12, v1

    move v13, v2

    goto :goto_d9

    .line 3022
    :cond_d3
    const/4 v2, 0x1

    move v12, v1

    move v13, v2

    goto :goto_d9

    .line 3025
    :cond_d7
    move v12, v1

    move v13, v2

    .end local v1  # "willRestart":Z
    .end local v2  # "needRestart":Z
    .local v12, "willRestart":Z
    .local v13, "needRestart":Z
    :goto_d9
    const/4 v1, 0x1

    move/from16 v14, p4

    move/from16 v15, p5

    move-object/from16 v6, p6

    invoke-virtual {v7, v6, v14, v15, v1}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 3026
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v16, 0x0

    move-object/from16 v2, p1

    move v3, v11

    move v4, v12

    move/from16 v5, p3

    move/from16 v6, v16

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActivityManagerService;->handleAppDiedLocked(Lcom/android/server/am/ProcessRecord;IZZZ)V

    .line 3028
    if-eqz v12, :cond_10a

    .line 3029
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/am/ProcessList;->removeLruProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3030
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    invoke-virtual/range {v17 .. v22}, Lcom/android/server/am/ActivityManagerService;->addAppLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZLjava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 3033
    .end local v12  # "willRestart":Z
    :cond_10a
    move v2, v13

    goto :goto_11a

    .line 3006
    .end local v13  # "needRestart":Z
    .restart local v2  # "needRestart":Z
    :cond_10c
    move/from16 v14, p4

    move/from16 v15, p5

    goto :goto_115

    .line 3005
    :cond_111
    move/from16 v14, p4

    move/from16 v15, p5

    .line 3034
    :goto_115
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mRemovedProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3037
    :goto_11a
    return v2
.end method

.method removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZILjava/lang/String;)Z
    .registers 13
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "callerWillRestart"  # Z
    .param p3, "allowRestart"  # Z
    .param p4, "reasonCode"  # I
    .param p5, "reason"  # Ljava/lang/String;

    .line 2982
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->removeProcessLocked(Lcom/android/server/am/ProcessRecord;ZZIILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method removeProcessNameLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;
    .registers 4
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 3184
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/am/ProcessList;->removeProcessNameLocked(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    return-object v0
.end method

.method removeProcessNameLocked(Ljava/lang/String;ILcom/android/server/am/ProcessRecord;)Lcom/android/server/am/ProcessRecord;
    .registers 11
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "expecting"  # Lcom/android/server/am/ProcessRecord;

    .line 3190
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ProcessRecord;

    .line 3191
    .local v0, "old":Lcom/android/server/am/ProcessRecord;
    if-eqz p3, :cond_c

    move-object v1, p3

    goto :goto_d

    :cond_c
    move-object v1, v0

    .line 3192
    .local v1, "record":Lcom/android/server/am/ProcessRecord;
    :goto_d
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v2

    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 3196
    if-eqz p3, :cond_17

    if-ne v0, p3, :cond_1c

    .line 3197
    :cond_17
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/am/ProcessList$MyProcessMap;->remove(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    .line 3199
    :cond_1c
    if-eqz v1, :cond_78

    .line 3200
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 3201
    .local v3, "uidRecord":Lcom/android/server/am/UidRecord;
    if-eqz v3, :cond_78

    .line 3202
    invoke-virtual {v3, v1}, Lcom/android/server/am/UidRecord;->removeProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 3204
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v4

    invoke-interface {v4, v1}, Lcom/android/server/am/SmartPowerServiceStub;->onProcessKill(Lcom/android/server/am/ProcessRecord;)V

    .line 3205
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getNumOfProcs()I

    move-result v4

    if-nez v4, :cond_74

    .line 3207
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v4, :cond_50

    .line 3208
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "No more processes in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3210
    :cond_50
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v5, -0x1

    const v6, -0x7fffffff

    invoke-virtual {v4, v3, v5, v6}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    .line 3212
    invoke-static {p2}, Lcom/android/server/am/EventLogTags;->writeAmUidStopped(I)V

    .line 3213
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v4, p2}, Lcom/android/server/am/ActiveUids;->remove(I)V

    .line 3214
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mFgsStartTempAllowList:Lcom/android/server/am/FgsTempAllowList;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5}, Lcom/android/server/am/FgsTempAllowList;->removeUid(I)V

    .line 3215
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/16 v5, 0x14

    const/4 v6, 0x0

    invoke-virtual {v4, p2, v5, v6}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(III)V

    .line 3218
    :cond_74
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Lcom/android/server/am/ProcessRecord;->setUidRecord(Lcom/android/server/am/UidRecord;)V

    .line 3221
    .end local v3  # "uidRecord":Lcom/android/server/am/UidRecord;
    :cond_78
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_10 .. :try_end_79} :catchall_95

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3222
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2, p2}, Landroid/util/SparseArray;->remove(I)V

    .line 3223
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mGlobalIsolatedUids:Lcom/android/server/am/ProcessList$IsolatedUidRange;

    invoke-virtual {v2, p2}, Lcom/android/server/am/ProcessList$IsolatedUidRange;->freeIsolatedUidLocked(I)V

    .line 3225
    if-eqz v1, :cond_8f

    iget-boolean v2, v1, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    if-eqz v2, :cond_8f

    .line 3226
    invoke-direct {p0, v1}, Lcom/android/server/am/ProcessList;->removeProcessFromAppZygoteLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 3228
    :cond_8f
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    invoke-virtual {v2, v1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 3230
    return-object v0

    .line 3221
    :catchall_95
    move-exception v3

    :try_start_96
    monitor-exit v2
    :try_end_97
    .catchall {:try_start_96 .. :try_end_97} :catchall_95

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v3
.end method

.method restoreLastOomMinFree()V
    .registers 3

    .line 925
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLastOomMinFreeComm:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_8

    .line 926
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 928
    :cond_8
    return-void
.end method

.method scheduleDispatchProcessDiedLocked(II)V
    .registers 7
    .param p1, "pid"  # I
    .param p2, "uid"  # I

    .line 4759
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessChangeLock:Ljava/lang/Object;

    monitor-enter v0

    .line 4760
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_b
    if-ltz v1, :cond_28

    .line 4761
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    .line 4762
    .local v2, "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    if-lez p1, :cond_25

    iget v3, v2, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->pid:I

    if-ne v3, p1, :cond_25

    .line 4763
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mPendingProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 4764
    iget-object v3, p0, Lcom/android/server/am/ProcessList;->mAvailProcessChanges:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4760
    .end local v2  # "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    :cond_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_b

    .line 4767
    .end local v1  # "i":I
    :cond_28
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v2, 0x20

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, p2, v3}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4768
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4769
    monitor-exit v0

    .line 4770
    return-void

    .line 4769
    :catchall_38
    move-exception v1

    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method searchEachLruProcessesLOSP(ZLjava/util/function/Function;)Ljava/lang/Object;
    .registers 7
    .param p1, "iterateForward"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(Z",
            "Ljava/util/function/Function<",
            "Lcom/android/server/am/ProcessRecord;",
            "TR;>;)TR;"
        }
    .end annotation

    .line 4009
    .local p2, "callback":Ljava/util/function/Function;, "Ljava/util/function/Function<Lcom/android/server/am/ProcessRecord;TR;>;"
    if-eqz p1, :cond_1f

    .line 4010
    const/4 v0, 0x0

    .local v0, "i":I
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, "size":I
    :goto_9
    if-ge v0, v1, :cond_1e

    .line 4012
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    .local v3, "r":Ljava/lang/Object;, "TR;"
    if-eqz v2, :cond_1b

    .line 4013
    return-object v3

    .line 4010
    .end local v3  # "r":Ljava/lang/Object;, "TR;"
    :cond_1b
    add-int/lit8 v0, v0, 0x1

    goto :goto_9

    .end local v0  # "i":I
    .end local v1  # "size":I
    :cond_1e
    goto :goto_3c

    .line 4017
    :cond_1f
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .restart local v0  # "i":I
    :goto_27
    if-ltz v0, :cond_3c

    .line 4019
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p2, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    .local v2, "r":Ljava/lang/Object;, "TR;"
    if-eqz v1, :cond_39

    .line 4020
    return-object v2

    .line 4017
    .end local v2  # "r":Ljava/lang/Object;, "TR;"
    :cond_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_27

    .line 4024
    .end local v0  # "i":I
    :cond_3c
    :goto_3c
    const/4 v0, 0x0

    return-object v0
.end method

.method sendPackageBroadcastLocked(I[Ljava/lang/String;I)V
    .registers 11
    .param p1, "cmd"  # I
    .param p2, "packages"  # [Ljava/lang/String;
    .param p3, "userId"  # I

    .line 4859
    const/4 v0, 0x0

    .line 4860
    .local v0, "foundProcess":Z
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_3f

    .line 4861
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4862
    .local v2, "r":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    .line 4863
    .local v3, "thread":Landroid/app/IApplicationThread;
    if-eqz v3, :cond_3c

    const/4 v4, -0x1

    if-eq p3, v4, :cond_20

    iget v4, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-ne v4, p3, :cond_3c

    .line 4865
    :cond_20
    :try_start_20
    array-length v4, p2

    add-int/lit8 v4, v4, -0x1

    .local v4, "index":I
    :goto_23
    if-ltz v4, :cond_37

    if-nez v0, :cond_37

    .line 4866
    aget-object v5, p2, v4

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_34

    .line 4867
    const/4 v0, 0x1

    .line 4865
    :cond_34
    add-int/lit8 v4, v4, -0x1

    goto :goto_23

    .line 4870
    .end local v4  # "index":I
    :cond_37
    invoke-interface {v3, p1, p2}, Landroid/app/IApplicationThread;->dispatchPackageBroadcast(I[Ljava/lang/String;)V
    :try_end_3a
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_3a} :catch_3b

    .line 4872
    goto :goto_3c

    .line 4871
    :catch_3b
    move-exception v4

    .line 4860
    .end local v2  # "r":Lcom/android/server/am/ProcessRecord;
    .end local v3  # "thread":Landroid/app/IApplicationThread;
    :cond_3c
    :goto_3c
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 4876
    .end local v1  # "i":I
    :cond_3f
    if-nez v0, :cond_4a

    .line 4878
    :try_start_41
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    invoke-interface {v1, p2}, Landroid/content/pm/IPackageManager;->notifyPackagesReplacedReceived([Ljava/lang/String;)V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_41 .. :try_end_48} :catch_49

    .line 4880
    goto :goto_4a

    .line 4879
    :catch_49
    move-exception v1

    .line 4882
    :cond_4a
    :goto_4a
    return-void
.end method

.method setAllHttpProxy()V
    .registers 9

    .line 3301
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 3302
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_e
    if-ltz v1, :cond_4e

    .line 3303
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 3304
    .local v2, "r":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    .line 3308
    .local v3, "thread":Landroid/app/IApplicationThread;
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    sget v5, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v4, v5, :cond_4b

    if-eqz v3, :cond_4b

    iget-boolean v4, v2, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_5a

    if-nez v4, :cond_4b

    .line 3310
    :try_start_2a
    invoke-interface {v3}, Landroid/app/IApplicationThread;->updateHttpProxy()V
    :try_end_2d
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_2d} :catch_2e
    .catchall {:try_start_2a .. :try_end_2d} :catchall_5a

    .line 3314
    goto :goto_4b

    .line 3311
    :catch_2e
    move-exception v4

    .line 3312
    .local v4, "ex":Landroid/os/RemoteException;
    :try_start_2f
    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed to update http proxy for: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3302
    .end local v2  # "r":Lcom/android/server/am/ProcessRecord;
    .end local v3  # "thread":Landroid/app/IApplicationThread;
    .end local v4  # "ex":Landroid/os/RemoteException;
    :cond_4b
    :goto_4b
    add-int/lit8 v1, v1, -0x1

    goto :goto_e

    .line 3317
    .end local v1  # "i":I
    :cond_4e
    monitor-exit v0
    :try_end_4f
    .catchall {:try_start_2f .. :try_end_4f} :catchall_5a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3318
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityThread;->updateHttpProxy(Landroid/content/Context;)V

    .line 3319
    return-void

    .line 3317
    :catchall_5a
    move-exception v1

    :try_start_5b
    monitor-exit v0
    :try_end_5c
    .catchall {:try_start_5b .. :try_end_5c} :catchall_5a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method setLruProcessServiceStartLSP(I)V
    .registers 2
    .param p1, "pos"  # I

    .line 3965
    iput p1, p0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    .line 3966
    return-void
.end method

.method startProcessLocked(Ljava/lang/String;Landroid/content/pm/ApplicationInfo;ZILcom/android/server/am/HostingRecord;IZZIZILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .registers 39
    .param p1, "processName"  # Ljava/lang/String;
    .param p2, "info"  # Landroid/content/pm/ApplicationInfo;
    .param p3, "knownToBeDead"  # Z
    .param p4, "intentFlags"  # I
    .param p5, "hostingRecord"  # Lcom/android/server/am/HostingRecord;
    .param p6, "zygotePolicyFlags"  # I
    .param p7, "allowWhileBooting"  # Z
    .param p8, "isolated"  # Z
    .param p9, "isolatedUid"  # I
    .param p10, "isSdkSandbox"  # Z
    .param p11, "sdkSandboxUid"  # I
    .param p12, "sdkSandboxClientAppPackage"  # Ljava/lang/String;
    .param p13, "abiOverride"  # Ljava/lang/String;
    .param p14, "entryPoint"  # Ljava/lang/String;
    .param p15, "entryPointArgs"  # [Ljava/lang/String;
    .param p16, "crashHandler"  # Ljava/lang/Runnable;
    .param p17, "callerPackage"  # Ljava/lang/String;

    .line 2496
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move/from16 v12, p3

    move/from16 v13, p8

    invoke-static {}, Lcom/android/server/am/ProcessListStub;->get()Lcom/android/server/am/ProcessListStub;

    move-result-object v0

    iget v2, v11, Landroid/content/pm/ApplicationInfo;->flags:I

    iget v3, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v4, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    move-object/from16 v1, p1

    move-object/from16 v5, p17

    move-object/from16 v6, p5

    invoke-interface/range {v0 .. v6}, Lcom/android/server/am/ProcessListStub;->isAllowRestartProcessLock(Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;Lcom/android/server/am/HostingRecord;)Z

    move-result v0

    const/4 v14, 0x0

    if-nez v0, :cond_22

    .line 2498
    return-object v14

    .line 2502
    :cond_22
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v7

    .line 2504
    .local v7, "startTime":J
    const-string v15, "/"

    const-string v6, "ActivityManager"

    if-nez v13, :cond_da

    .line 2505
    iget v0, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v9, v10, v0}, Lcom/android/server/am/ProcessList;->getProcessRecordLocked(Ljava/lang/String;I)Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 2506
    .local v0, "app":Lcom/android/server/am/ProcessRecord;
    const-string/jumbo v1, "startProcess: after getProcessRecord"

    invoke-direct {v9, v7, v8, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2508
    and-int/lit8 v1, p4, 0x4

    if-eqz v1, :cond_6d

    .line 2511
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v2, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v10, v2}, Lcom/android/server/am/AppErrors;->isBadProcess(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_db

    .line 2512
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v1, :cond_6c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Bad process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2514
    :cond_6c
    return-object v14

    .line 2521
    :cond_6d
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v1, :cond_91

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Clearing bad process: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2523
    :cond_91
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v2, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v10, v2}, Lcom/android/server/am/AppErrors;->resetProcessCrashTime(Ljava/lang/String;I)V

    .line 2524
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v2, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v10, v2}, Lcom/android/server/am/AppErrors;->isBadProcess(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_db

    .line 2525
    const/16 v1, 0x7540

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    iget v3, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2526
    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const/4 v3, 0x1

    iget v5, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    const/4 v3, 0x2

    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    aput-object v5, v2, v3

    .line 2525
    invoke-static {v1, v2}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 2528
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppErrors:Lcom/android/server/am/AppErrors;

    iget v2, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v10, v2}, Lcom/android/server/am/AppErrors;->clearBadProcess(Ljava/lang/String;I)V

    .line 2529
    if-eqz v0, :cond_db

    .line 2530
    iget-object v1, v0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v1, v4}, Lcom/android/server/am/ProcessErrorStateRecord;->setBad(Z)V

    goto :goto_db

    .line 2536
    .end local v0  # "app":Lcom/android/server/am/ProcessRecord;
    :cond_da
    const/4 v0, 0x0

    .line 2545
    .restart local v0  # "app":Lcom/android/server/am/ProcessRecord;
    :cond_db
    :goto_db
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v1, :cond_12e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startProcess: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " knownToBeDead="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v12}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " thread="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2547
    if-eqz v0, :cond_110

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    goto :goto_111

    :cond_110
    move-object v2, v14

    :goto_111
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2548
    if-eqz v0, :cond_122

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    goto :goto_123

    :cond_122
    const/4 v2, -0x1

    :goto_123
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2545
    invoke-static {v6, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2549
    :cond_12e
    const/4 v1, 0x0

    .line 2550
    .local v1, "predecessor":Lcom/android/server/am/ProcessRecord;
    if-eqz v0, :cond_1de

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    if-lez v2, :cond_1de

    .line 2551
    if-nez v12, :cond_13f

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v2

    if-eqz v2, :cond_145

    :cond_13f
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    if-nez v2, :cond_171

    .line 2554
    :cond_145
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v2, :cond_15f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App already running: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2556
    :cond_15f
    iget-object v2, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v3, v11, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v5, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0, v2, v3, v4, v5}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 2557
    const-string/jumbo v2, "startProcess: done, added package to proc"

    invoke-direct {v9, v7, v8, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2558
    return-object v0

    .line 2563
    :cond_171
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v2, :cond_18b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "App died: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2564
    :cond_18b
    const-string/jumbo v2, "startProcess: bad proc running, killing"

    invoke-direct {v9, v7, v8, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2565
    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    invoke-static {v2, v3}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    .line 2566
    const-string/jumbo v2, "startProcess: done killing old proc"

    invoke-direct {v9, v7, v8, v2}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2568
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->isKilled()Z

    move-result v2

    const-string v3, " is attached to a previous process"

    if-nez v2, :cond_1c1

    .line 2570
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1d9

    .line 2572
    :cond_1c1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2576
    :goto_1d9
    move-object v1, v0

    .line 2577
    const/4 v0, 0x0

    move-object v5, v0

    move-object v4, v1

    goto :goto_21a

    .line 2578
    :cond_1de
    if-nez v13, :cond_218

    .line 2581
    iget-object v2, v9, Lcom/android/server/am/ProcessList;->mDyingProcesses:Lcom/android/internal/app/ProcessMap;

    iget v3, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v2, v10, v3}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    move-object v1, v2

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 2582
    if-eqz v1, :cond_215

    .line 2583
    if-eqz v0, :cond_1f3

    .line 2584
    iput-object v1, v0, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    .line 2585
    iput-object v0, v1, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    .line 2587
    :cond_1f3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " is attached to a previous process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2588
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getDyingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2587
    invoke-static {v6, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2592
    :cond_215
    move-object v5, v0

    move-object v4, v1

    goto :goto_21a

    .line 2578
    :cond_218
    move-object v5, v0

    move-object v4, v1

    .line 2592
    .end local v0  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v1  # "predecessor":Lcom/android/server/am/ProcessRecord;
    .local v4, "predecessor":Lcom/android/server/am/ProcessRecord;
    .local v5, "app":Lcom/android/server/am/ProcessRecord;
    :goto_21a
    if-nez v5, :cond_290

    .line 2593
    const-string/jumbo v0, "startProcess: creating new process record"

    invoke-direct {v9, v7, v8, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2594
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p1

    move/from16 v3, p8

    move-object/from16 v16, v4

    .end local v4  # "predecessor":Lcom/android/server/am/ProcessRecord;
    .local v16, "predecessor":Lcom/android/server/am/ProcessRecord;
    move/from16 v4, p9

    move-object/from16 v17, v5

    .end local v5  # "app":Lcom/android/server/am/ProcessRecord;
    .local v17, "app":Lcom/android/server/am/ProcessRecord;
    move/from16 v5, p10

    move-object v14, v6

    move/from16 v6, p11

    move-wide/from16 v19, v7

    .end local v7  # "startTime":J
    .local v19, "startTime":J
    move-object/from16 v7, p12

    move-object/from16 v8, p5

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/am/ProcessList;->newProcessRecordLocked(Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ZIZILjava/lang/String;Lcom/android/server/am/HostingRecord;)Lcom/android/server/am/ProcessRecord;

    move-result-object v5

    .line 2596
    .end local v17  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v5  # "app":Lcom/android/server/am/ProcessRecord;
    if-nez v5, :cond_26d

    .line 2597
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Failed making new process record for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v11, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " isolated="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v14, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2599
    const/4 v0, 0x0

    return-object v0

    .line 2601
    :cond_26d
    const/4 v0, 0x0

    iget-object v1, v5, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    move-object/from16 v2, p16

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessErrorStateRecord;->setCrashHandler(Ljava/lang/Runnable;)V

    .line 2602
    move-object/from16 v1, p14

    invoke-virtual {v5, v1}, Lcom/android/server/am/ProcessRecord;->setIsolatedEntryPoint(Ljava/lang/String;)V

    .line 2603
    move-object/from16 v3, p15

    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessRecord;->setIsolatedEntryPointArgs([Ljava/lang/String;)V

    .line 2604
    move-object/from16 v4, v16

    .end local v16  # "predecessor":Lcom/android/server/am/ProcessRecord;
    .restart local v4  # "predecessor":Lcom/android/server/am/ProcessRecord;
    if-eqz v4, :cond_287

    .line 2605
    iput-object v4, v5, Lcom/android/server/am/ProcessRecord;->mPredecessor:Lcom/android/server/am/ProcessRecord;

    .line 2606
    iput-object v5, v4, Lcom/android/server/am/ProcessRecord;->mSuccessor:Lcom/android/server/am/ProcessRecord;

    .line 2608
    :cond_287
    const-string/jumbo v6, "startProcess: done creating new process record"

    move-wide/from16 v7, v19

    .end local v19  # "startTime":J
    .restart local v7  # "startTime":J
    invoke-direct {v9, v7, v8, v6}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    goto :goto_2ae

    .line 2611
    :cond_290
    move-object/from16 v1, p14

    move-object/from16 v3, p15

    move-object/from16 v2, p16

    move-object/from16 v17, v5

    move-object v0, v14

    move-object v14, v6

    .end local v5  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v17  # "app":Lcom/android/server/am/ProcessRecord;
    iget-object v5, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-wide v0, v11, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v6, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    move-object/from16 v15, v17

    .end local v17  # "app":Lcom/android/server/am/ProcessRecord;
    .local v15, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v15, v5, v0, v1, v6}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 2612
    const-string/jumbo v0, "startProcess: added package to existing proc"

    invoke-direct {v9, v7, v8, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    move-object v5, v15

    .line 2618
    .end local v15  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v5  # "app":Lcom/android/server/am/ProcessRecord;
    :goto_2ae
    move-object/from16 v0, p17

    iput-object v0, v5, Lcom/android/server/am/ProcessRecord;->callerPackage:Ljava/lang/String;

    .line 2619
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessesReady:Z

    if-nez v1, :cond_2f4

    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 2620
    invoke-virtual {v1, v11}, Lcom/android/server/am/ActivityManagerService;->isAllowedWhileBooting(Landroid/content/pm/ApplicationInfo;)Z

    move-result v1

    if-nez v1, :cond_2f4

    if-nez p7, :cond_2f4

    .line 2622
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2d3

    .line 2623
    iget-object v1, v9, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2625
    :cond_2d3
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v1, :cond_2ed

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "System not ready, putting on hold: "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v14, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2627
    :cond_2ed
    const-string/jumbo v1, "startProcess: returning with proc on hold"

    invoke-direct {v9, v7, v8, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2628
    return-object v5

    .line 2631
    :cond_2f4
    const-string/jumbo v1, "startProcess: stepping in to startProcess"

    invoke-direct {v9, v7, v8, v1}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2632
    nop

    .line 2633
    move-object/from16 v1, p5

    move/from16 v6, p6

    move-object/from16 v14, p13

    invoke-virtual {v9, v5, v1, v6, v14}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z

    move-result v15

    .line 2634
    .local v15, "success":Z
    const-string/jumbo v0, "startProcess: done starting proc!"

    invoke-direct {v9, v7, v8, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 2635
    if-eqz v15, :cond_310

    move-object/from16 v18, v5

    goto :goto_312

    :cond_310
    const/16 v18, 0x0

    :goto_312
    return-object v18
.end method

.method startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;I)V
    .registers 5
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingRecord"  # Lcom/android/server/am/HostingRecord;
    .param p3, "zygotePolicyFlags"  # I

    .line 2474
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z

    .line 2475
    return-void
.end method

.method startProcessLocked(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Z
    .registers 46
    .param p1, "hostingRecord"  # Lcom/android/server/am/HostingRecord;
    .param p2, "entryPoint"  # Ljava/lang/String;
    .param p3, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p4, "uid"  # I
    .param p5, "gids"  # [I
    .param p6, "runtimeFlags"  # I
    .param p7, "zygotePolicyFlags"  # I
    .param p8, "mountExternal"  # I
    .param p9, "seInfo"  # Ljava/lang/String;
    .param p10, "requiredAbi"  # Ljava/lang/String;
    .param p11, "instructionSet"  # Ljava/lang/String;
    .param p12, "invokeWith"  # Ljava/lang/String;
    .param p13, "startUptime"  # J
    .param p15, "startElapsedTime"  # J

    .line 2016
    move-object/from16 v14, p0

    move-object/from16 v15, p3

    const/4 v12, 0x1

    invoke-virtual {v15, v12}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2017
    const/4 v9, 0x0

    invoke-virtual {v15, v9}, Lcom/android/server/am/ProcessRecord;->setRemoved(Z)V

    .line 2018
    iget-object v1, v14, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1

    :try_start_f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 2019
    invoke-virtual {v15, v9}, Lcom/android/server/am/ProcessRecord;->setKilledByAm(Z)V

    .line 2020
    invoke-virtual {v15, v9}, Lcom/android/server/am/ProcessRecord;->setKilled(Z)V

    .line 2021
    monitor-exit v1
    :try_end_19
    .catchall {:try_start_f .. :try_end_19} :catchall_178

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 2022
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4f

    .line 2023
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startProcessLocked processName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with non-zero startSeq:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2024
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getStartSeq()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2023
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2026
    :cond_4f
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-eqz v0, :cond_7e

    .line 2027
    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "startProcessLocked processName:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with non-zero pid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2028
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2027
    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 2030
    :cond_7e
    const/4 v0, 0x0

    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessRecord;->setDisabledCompatChanges([J)V

    .line 2031
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    if-eqz v0, :cond_8f

    .line 2032
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/compat/PlatformCompat;->getDisabledChanges(Landroid/content/pm/ApplicationInfo;)[J

    move-result-object v0

    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessRecord;->setDisabledCompatChanges([J)V

    .line 2034
    :cond_8f
    iget-wide v0, v14, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, v14, Lcom/android/server/am/ProcessList;->mProcStartSeqCounter:J

    move-wide v10, v0

    .line 2035
    .local v10, "startSeq":J
    invoke-virtual {v15, v10, v11}, Lcom/android/server/am/ProcessRecord;->setStartSeq(J)V

    .line 2036
    move-object/from16 v1, p3

    move/from16 v2, p4

    move-object/from16 v3, p1

    move-object/from16 v4, p9

    move-wide/from16 v5, p13

    move-wide/from16 v7, p15

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/am/ProcessRecord;->setStartParams(ILcom/android/server/am/HostingRecord;Ljava/lang/String;JJ)V

    .line 2037
    if-nez p12, :cond_b6

    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 2038
    invoke-static {v0}, Lcom/android/internal/os/Zygote;->getWrapProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_b4

    goto :goto_b6

    :cond_b4
    move v0, v9

    goto :goto_b7

    :cond_b6
    :goto_b6
    move v0, v12

    .line 2037
    :goto_b7
    invoke-virtual {v15, v0}, Lcom/android/server/am/ProcessRecord;->setUsingWrapper(Z)V

    .line 2039
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mPendingStarts:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v10, v11, v15}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 2041
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->FLAG_PROCESS_START_ASYNC:Z

    if-eqz v0, :cond_110

    .line 2042
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_e7

    const-string v0, "ActivityManager"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Posting procStart msg for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 2043
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2042
    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2044
    :cond_e7
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcStartHandler:Lcom/android/server/am/ProcessList$ProcStartHandler;

    new-instance v13, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda5;

    move-object v1, v13

    move-object/from16 v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p2

    move-object/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p10

    move-wide/from16 v16, v10

    .end local v10  # "startSeq":J
    .local v16, "startSeq":J
    move-object/from16 v10, p11

    move-object/from16 v11, p12

    move/from16 v18, v12

    move-object v14, v13

    move-wide/from16 v12, v16

    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/am/ProcessList;Lcom/android/server/am/ProcessRecord;Ljava/lang/String;[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    invoke-virtual {v0, v14}, Lcom/android/server/am/ProcessList$ProcStartHandler;->post(Ljava/lang/Runnable;)Z

    .line 2047
    return v18

    .line 2050
    .end local v16  # "startSeq":J
    .restart local v10  # "startSeq":J
    :cond_110
    move-wide/from16 v16, v10

    move/from16 v18, v12

    .end local v10  # "startSeq":J
    .restart local v16  # "startSeq":J
    :try_start_114
    invoke-direct/range {p0 .. p14}, Lcom/android/server/am/ProcessList;->startProcess(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)Landroid/os/Process$ProcessStartResult;

    move-result-object v0

    .line 2054
    .local v0, "startResult":Landroid/os/Process$ProcessStartResult;
    iget v3, v0, Landroid/os/Process$ProcessStartResult;->pid:I

    iget-boolean v4, v0, Landroid/os/Process$ProcessStartResult;->usingWrapper:Z

    const/4 v7, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p3

    move-wide/from16 v5, v16

    invoke-virtual/range {v1 .. v7}, Lcom/android/server/am/ProcessList;->handleProcessStartedLocked(Lcom/android/server/am/ProcessRecord;IZJZ)Z
    :try_end_126
    .catch Ljava/lang/RuntimeException; {:try_start_114 .. :try_end_126} :catch_129

    .line 2062
    move-object/from16 v2, p0

    .end local v0  # "startResult":Landroid/os/Process$ProcessStartResult;
    goto :goto_16d

    .line 2056
    :catch_129
    move-exception v0

    .line 2057
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure starting process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2059
    invoke-virtual {v15, v9}, Lcom/android/server/am/ProcessRecord;->setPendingStart(Z)V

    .line 2060
    move-object/from16 v2, p0

    iget-object v1, v2, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v4, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v21

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x1

    const/16 v25, 0x0

    const/16 v26, 0x0

    iget v4, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v28, "start failure"

    move-object/from16 v19, v1

    move-object/from16 v20, v3

    move/from16 v27, v4

    invoke-virtual/range {v19 .. v28}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 2063
    .end local v0  # "e":Ljava/lang/RuntimeException;
    :goto_16d
    invoke-virtual/range {p3 .. p3}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    if-lez v0, :cond_176

    move/from16 v12, v18

    goto :goto_177

    :cond_176
    move v12, v9

    :goto_177
    return v12

    .line 2021
    .end local v16  # "startSeq":J
    :catchall_178
    move-exception v0

    move-object v2, v14

    :goto_17a
    :try_start_17a
    monitor-exit v1
    :try_end_17b
    .catchall {:try_start_17a .. :try_end_17b} :catchall_17f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    :catchall_17f
    move-exception v0

    goto :goto_17a
.end method

.method startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;ILjava/lang/String;)Z
    .registers 12
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingRecord"  # Lcom/android/server/am/HostingRecord;
    .param p3, "zygotePolicyFlags"  # I
    .param p4, "abiOverride"  # Ljava/lang/String;

    .line 2480
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;IZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method startProcessLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/HostingRecord;IZZLjava/lang/String;)Z
    .registers 46
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "hostingRecord"  # Lcom/android/server/am/HostingRecord;
    .param p3, "zygotePolicyFlags"  # I
    .param p4, "disableHiddenApiChecks"  # Z
    .param p5, "disableTestApiChecks"  # Z
    .param p6, "abiOverride"  # Ljava/lang/String;

    .line 1742
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_c

    .line 1743
    return v1

    .line 1745
    :cond_c
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v12

    .line 1746
    .local v12, "startUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 1747
    .local v18, "startElapsedTime":J
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    const/4 v11, 0x0

    if-lez v0, :cond_4c

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    sget v2, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq v0, v2, :cond_4c

    .line 1748
    const-string/jumbo v0, "startProcess: removing from pids map"

    invoke-direct {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1749
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    invoke-virtual {v0, v2, v15}, Lcom/android/server/am/ActivityManagerService;->removePidLocked(ILcom/android/server/am/ProcessRecord;)V

    .line 1750
    invoke-virtual {v15, v11}, Lcom/android/server/am/ProcessRecord;->setBindMountPending(Z)V

    .line 1751
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v2, 0x14

    invoke-virtual {v0, v2, v15}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1752
    const-string/jumbo v0, "startProcess: done removing from pids map"

    invoke-direct {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1753
    invoke-virtual {v15, v11}, Lcom/android/server/am/ProcessRecord;->setPid(I)V

    .line 1754
    const-wide/16 v2, 0x0

    invoke-virtual {v15, v2, v3}, Lcom/android/server/am/ProcessRecord;->setStartSeq(J)V

    .line 1757
    :cond_4c
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->unlinkDeathRecipient()V

    .line 1758
    invoke-virtual {v15, v11}, Lcom/android/server/am/ProcessRecord;->setDyingPid(I)V

    .line 1760
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESSES:Z

    if-eqz v0, :cond_79

    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_79

    const-string v0, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startProcessLocked removing on hold: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1763
    :cond_79
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessesOnHold:Ljava/util/ArrayList;

    invoke-virtual {v0, v15}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1765
    const-string/jumbo v0, "startProcess: starting to update cpu stats"

    invoke-direct {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1766
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->updateCpuStats()V

    .line 1767
    const-string/jumbo v0, "startProcess: done updating cpu stats"

    invoke-direct {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1770
    :try_start_91
    iget v0, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0
    :try_end_97
    .catch Ljava/lang/RuntimeException; {:try_start_91 .. :try_end_97} :catch_4d7

    move v9, v0

    .line 1772
    .local v9, "userId":I
    :try_start_98
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v2, v9}, Landroid/content/pm/IPackageManager;->checkPackageStartable(Ljava/lang/String;I)V
    :try_end_a3
    .catch Landroid/os/RemoteException; {:try_start_98 .. :try_end_a3} :catch_4c9
    .catch Ljava/lang/RuntimeException; {:try_start_98 .. :try_end_a3} :catch_4d7

    .line 1775
    nop

    .line 1777
    :try_start_a4
    iget v0, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    move v2, v0

    .line 1778
    .local v2, "uid":I
    const/4 v3, 0x0

    .line 1779
    .local v3, "gids":[I
    const/4 v4, 0x0

    .line 1780
    .local v4, "mountExternal":I
    const/4 v5, 0x0

    .line 1781
    .local v5, "externalStorageAccess":Z
    iget-boolean v0, v15, Lcom/android/server/am/ProcessRecord;->isolated:Z
    :try_end_ac
    .catch Ljava/lang/RuntimeException; {:try_start_a4 .. :try_end_ac} :catch_4d7

    if-nez v0, :cond_17e

    .line 1782
    const/4 v6, 0x0

    .line 1784
    .local v6, "permGids":[I
    :try_start_af
    const-string/jumbo v0, "startProcess: getting gids from package manager"

    invoke-direct {v14, v12, v13, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1785
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 1786
    .local v0, "pm":Landroid/content/pm/IPackageManager;
    iget-object v7, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;
    :try_end_bd
    .catch Landroid/os/RemoteException; {:try_start_af .. :try_end_bd} :catch_16f
    .catch Ljava/lang/RuntimeException; {:try_start_af .. :try_end_bd} :catch_168

    move-wide/from16 v16, v12

    .end local v12  # "startUptime":J
    .local v16, "startUptime":J
    const-wide/32 v11, 0x10000000

    :try_start_c2
    iget v8, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-interface {v0, v7, v11, v12, v8}, Landroid/content/pm/IPackageManager;->getPackageGids(Ljava/lang/String;JI)[I

    move-result-object v7

    move-object v6, v7

    .line 1788
    const-class v7, Landroid/os/storage/StorageManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/storage/StorageManagerInternal;

    .line 1790
    .local v7, "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    iget-object v8, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/os/storage/StorageManagerInternal;->getExternalStorageMountMode(ILjava/lang/String;)I

    move-result v8

    move v4, v8

    .line 1792
    iget-object v8, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v7, v2, v8}, Landroid/os/storage/StorageManagerInternal;->hasExternalStorageAccess(ILjava/lang/String;)Z

    move-result v8

    move v5, v8

    .line 1794
    const-string v8, "android.permission.INSTALL_PACKAGES"

    iget-object v10, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v8, v10, v9}, Landroid/content/pm/IPackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v8

    if-nez v8, :cond_110

    .line 1797
    const-string v8, "ActivityManager"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v11, v11, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, " is exempt from freezer"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1798
    iget-object v8, v15, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setFreezeExempt(Z)V
    :try_end_110
    .catch Landroid/os/RemoteException; {:try_start_c2 .. :try_end_110} :catch_166
    .catch Ljava/lang/RuntimeException; {:try_start_c2 .. :try_end_110} :catch_177

    .line 1802
    .end local v0  # "pm":Landroid/content/pm/IPackageManager;
    .end local v7  # "storageManagerInternal":Landroid/os/storage/StorageManagerInternal;
    :cond_110
    nop

    .line 1807
    :try_start_111
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    if-eqz v0, :cond_14d

    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v0, v0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-eqz v0, :cond_14d

    .line 1808
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v0, v0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_124
    if-ltz v0, :cond_14d

    .line 1809
    iget-object v7, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v7, v7, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    iget-object v8, v15, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v8, v8, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    .line 1810
    invoke-virtual {v8, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    iget v10, v15, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 1809
    invoke-virtual {v7, v8, v10}, Landroid/content/pm/PackageManagerInternal;->getPermissionGids(Ljava/lang/String;I)[I

    move-result-object v7

    .line 1811
    .local v7, "denyGids":[I
    if-eqz v7, :cond_14a

    .line 1812
    array-length v8, v7

    const/4 v10, 0x0

    :goto_13e
    if-ge v10, v8, :cond_14a

    aget v11, v7, v10

    .line 1813
    .local v11, "gid":I
    invoke-static {v6, v11}, Lcom/android/internal/util/ArrayUtils;->removeInt([II)[I

    move-result-object v12

    move-object v6, v12

    .line 1812
    .end local v11  # "gid":I
    add-int/lit8 v10, v10, 0x1

    goto :goto_13e

    .line 1808
    .end local v7  # "denyGids":[I
    :cond_14a
    add-int/lit8 v0, v0, -0x1

    goto :goto_124

    .line 1819
    .end local v0  # "i":I
    :cond_14d
    invoke-direct {v14, v4, v2, v6, v5}, Lcom/android/server/am/ProcessList;->computeGidsForProcess(II[IZ)[I

    move-result-object v0

    .line 1822
    .end local v3  # "gids":[I
    .local v0, "gids":[I
    invoke-static {}, Lcom/miui/server/xspace/XSpaceManagerServiceStub;->getInstance()Lcom/miui/server/xspace/XSpaceManagerServiceStub;

    move-result-object v3

    .line 1823
    invoke-static {v2}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v7

    iget-object v8, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v7, v0, v8}, Lcom/miui/server/xspace/XSpaceManagerServiceStub;->computeGids(I[ILjava/lang/String;)[I

    move-result-object v3

    move-object v12, v3

    move v11, v4

    move/from16 v20, v5

    .end local v0  # "gids":[I
    .restart local v3  # "gids":[I
    goto :goto_184

    .line 1800
    :catch_166
    move-exception v0

    goto :goto_172

    .line 1995
    .end local v2  # "uid":I
    .end local v3  # "gids":[I
    .end local v4  # "mountExternal":I
    .end local v5  # "externalStorageAccess":Z
    .end local v6  # "permGids":[I
    .end local v9  # "userId":I
    .end local v16  # "startUptime":J
    .restart local v12  # "startUptime":J
    :catch_168
    move-exception v0

    move/from16 v36, v11

    move-wide/from16 v32, v12

    .end local v12  # "startUptime":J
    .restart local v16  # "startUptime":J
    goto/16 :goto_4dc

    .line 1800
    .end local v16  # "startUptime":J
    .restart local v2  # "uid":I
    .restart local v3  # "gids":[I
    .restart local v4  # "mountExternal":I
    .restart local v5  # "externalStorageAccess":Z
    .restart local v6  # "permGids":[I
    .restart local v9  # "userId":I
    .restart local v12  # "startUptime":J
    :catch_16f
    move-exception v0

    move-wide/from16 v16, v12

    .line 1801
    .end local v12  # "startUptime":J
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v16  # "startUptime":J
    :goto_172
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local v16  # "startUptime":J
    .end local v18  # "startElapsedTime":J
    .end local p0  # "this":Lcom/android/server/am/ProcessList;
    .end local p1  # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2  # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3  # "zygotePolicyFlags":I
    .end local p4  # "disableHiddenApiChecks":Z
    .end local p5  # "disableTestApiChecks":Z
    .end local p6  # "abiOverride":Ljava/lang/String;
    throw v1
    :try_end_177
    .catch Ljava/lang/RuntimeException; {:try_start_111 .. :try_end_177} :catch_177

    .line 1995
    .end local v0  # "e":Landroid/os/RemoteException;
    .end local v2  # "uid":I
    .end local v3  # "gids":[I
    .end local v4  # "mountExternal":I
    .end local v5  # "externalStorageAccess":Z
    .end local v6  # "permGids":[I
    .end local v9  # "userId":I
    .restart local v16  # "startUptime":J
    .restart local v18  # "startElapsedTime":J
    .restart local p0  # "this":Lcom/android/server/am/ProcessList;
    .restart local p1  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2  # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3  # "zygotePolicyFlags":I
    .restart local p4  # "disableHiddenApiChecks":Z
    .restart local p5  # "disableTestApiChecks":Z
    .restart local p6  # "abiOverride":Ljava/lang/String;
    :catch_177
    move-exception v0

    move-wide/from16 v32, v16

    const/16 v36, 0x0

    goto/16 :goto_4dc

    .line 1781
    .end local v16  # "startUptime":J
    .restart local v2  # "uid":I
    .restart local v3  # "gids":[I
    .restart local v4  # "mountExternal":I
    .restart local v5  # "externalStorageAccess":Z
    .restart local v9  # "userId":I
    .restart local v12  # "startUptime":J
    :cond_17e
    move-wide/from16 v16, v12

    .end local v12  # "startUptime":J
    .restart local v16  # "startUptime":J
    move-object v12, v3

    move v11, v4

    move/from16 v20, v5

    .line 1825
    .end local v3  # "gids":[I
    .end local v4  # "mountExternal":I
    .end local v5  # "externalStorageAccess":Z
    .local v11, "mountExternal":I
    .local v12, "gids":[I
    .local v20, "externalStorageAccess":Z
    :goto_184
    :try_start_184
    invoke-virtual {v15, v11}, Lcom/android/server/am/ProcessRecord;->setMountMode(I)V

    .line 1826
    const-string/jumbo v0, "startProcess: building args"
    :try_end_18a
    .catch Ljava/lang/RuntimeException; {:try_start_184 .. :try_end_18a} :catch_4c3

    move-wide/from16 v7, v16

    .end local v16  # "startUptime":J
    .local v7, "startUptime":J
    :try_start_18c
    invoke-direct {v14, v7, v8, v0}, Lcom/android/server/am/ProcessList;->checkSlow(JLjava/lang/String;)V

    .line 1827
    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->isFactoryTestProcess(Lcom/android/server/wm/WindowProcessController;)Z

    move-result v0

    if-eqz v0, :cond_1a0

    .line 1828
    const/4 v2, 0x0

    move v6, v2

    goto :goto_1a1

    .line 1827
    :cond_1a0
    move v6, v2

    .line 1830
    .end local v2  # "uid":I
    .local v6, "uid":I
    :goto_1a1
    const/4 v0, 0x0

    .line 1832
    .local v0, "runtimeFlags":I
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1ac

    move v2, v1

    goto :goto_1ad

    :cond_1ac
    const/4 v2, 0x0

    .line 1833
    .local v2, "debuggableFlag":Z
    :goto_1ad
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isProfileableByShell()Z

    move-result v3

    .line 1834
    .local v3, "isProfileableByShell":Z
    iget-object v4, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v4}, Landroid/content/pm/ApplicationInfo;->isProfileable()Z

    move-result v4

    .line 1836
    .local v4, "isProfileable":Z
    iget-boolean v5, v15, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z
    :try_end_1bb
    .catch Ljava/lang/RuntimeException; {:try_start_18c .. :try_end_1bb} :catch_4bd

    if-eqz v5, :cond_1e5

    .line 1837
    :try_start_1bd
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    move-result-object v5

    .line 1838
    .local v5, "clientInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v5, :cond_1e5

    .line 1839
    iget v10, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_1cb

    move v10, v1

    goto :goto_1cc

    :cond_1cb
    const/4 v10, 0x0

    :goto_1cc
    or-int/2addr v2, v10

    .line 1840
    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isProfileableByShell()Z

    move-result v10

    or-int/2addr v3, v10

    .line 1841
    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isProfileable()Z

    move-result v10

    or-int/2addr v4, v10

    move/from16 v21, v2

    move/from16 v22, v3

    move/from16 v23, v4

    goto :goto_1eb

    .line 1995
    .end local v0  # "runtimeFlags":I
    .end local v2  # "debuggableFlag":Z
    .end local v3  # "isProfileableByShell":Z
    .end local v4  # "isProfileable":Z
    .end local v5  # "clientInfo":Landroid/content/pm/ApplicationInfo;
    .end local v6  # "uid":I
    .end local v9  # "userId":I
    .end local v11  # "mountExternal":I
    .end local v12  # "gids":[I
    .end local v20  # "externalStorageAccess":Z
    :catch_1de
    move-exception v0

    move-wide/from16 v32, v7

    const/16 v36, 0x0

    goto/16 :goto_4dc

    .line 1845
    .restart local v0  # "runtimeFlags":I
    .restart local v2  # "debuggableFlag":Z
    .restart local v3  # "isProfileableByShell":Z
    .restart local v4  # "isProfileable":Z
    .restart local v6  # "uid":I
    .restart local v9  # "userId":I
    .restart local v11  # "mountExternal":I
    .restart local v12  # "gids":[I
    .restart local v20  # "externalStorageAccess":Z
    :cond_1e5
    move/from16 v21, v2

    move/from16 v22, v3

    move/from16 v23, v4

    .end local v2  # "debuggableFlag":Z
    .end local v3  # "isProfileableByShell":Z
    .end local v4  # "isProfileable":Z
    .local v21, "debuggableFlag":Z
    .local v22, "isProfileableByShell":Z
    .local v23, "isProfileable":Z
    :goto_1eb
    if-eqz v21, :cond_21d

    .line 1846
    or-int/lit8 v0, v0, 0x1

    .line 1847
    or-int/lit16 v0, v0, 0x100

    .line 1850
    or-int/lit8 v0, v0, 0x2

    .line 1853
    iget-object v2, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "art_verifier_verify_debuggable"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    if-nez v1, :cond_21d

    .line 1855
    or-int/lit16 v0, v0, 0x200

    .line 1856
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ": ART verification disabled"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_21d
    .catch Ljava/lang/RuntimeException; {:try_start_1bd .. :try_end_21d} :catch_1de

    .line 1861
    :cond_21d
    :try_start_21d
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->flags:I
    :try_end_221
    .catch Ljava/lang/RuntimeException; {:try_start_21d .. :try_end_221} :catch_4bd

    and-int/lit16 v1, v1, 0x4000

    if-nez v1, :cond_22b

    :try_start_225
    iget-object v1, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerService;->mSafeMode:Z
    :try_end_229
    .catch Ljava/lang/RuntimeException; {:try_start_225 .. :try_end_229} :catch_1de

    if-eqz v1, :cond_22d

    .line 1862
    :cond_22b
    or-int/lit8 v0, v0, 0x8

    .line 1864
    :cond_22d
    if-eqz v22, :cond_233

    .line 1865
    const v1, 0x8000

    or-int/2addr v0, v1

    .line 1867
    :cond_233
    if-eqz v23, :cond_238

    .line 1868
    const/high16 v1, 0x1000000

    or-int/2addr v0, v1

    .line 1870
    :cond_238
    :try_start_238
    const-string v1, "1"

    const-string v2, "debug.checkjni"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_248

    .line 1871
    or-int/lit8 v0, v0, 0x2

    .line 1873
    :cond_248
    const-string v1, "debug.generate-debug-info"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 1874
    .local v5, "genDebugInfoProperty":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_255
    .catch Ljava/lang/RuntimeException; {:try_start_238 .. :try_end_255} :catch_4bd

    if-nez v1, :cond_260

    :try_start_257
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_25e
    .catch Ljava/lang/RuntimeException; {:try_start_257 .. :try_end_25e} :catch_1de

    if-eqz v1, :cond_262

    .line 1875
    :cond_260
    or-int/lit8 v0, v0, 0x20

    .line 1877
    :cond_262
    :try_start_262
    const-string v1, "dalvik.vm.minidebuginfo"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 1878
    .local v4, "genMiniDebugInfoProperty":Ljava/lang/String;
    const-string v1, "1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_26f
    .catch Ljava/lang/RuntimeException; {:try_start_262 .. :try_end_26f} :catch_4bd

    if-nez v1, :cond_27a

    :try_start_271
    const-string/jumbo v1, "true"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_278
    .catch Ljava/lang/RuntimeException; {:try_start_271 .. :try_end_278} :catch_1de

    if-eqz v1, :cond_27c

    .line 1879
    :cond_27a
    or-int/lit16 v0, v0, 0x800

    .line 1881
    :cond_27c
    :try_start_27c
    const-string v1, "1"

    const-string v2, "debug.jni.logging"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28c

    .line 1882
    or-int/lit8 v0, v0, 0x10

    .line 1884
    :cond_28c
    const-string v1, "1"

    const-string v2, "debug.assert"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_29c

    .line 1885
    or-int/lit8 v0, v0, 0x4

    .line 1887
    :cond_29c
    const-string v1, "1"

    const-string v2, "debug.ignoreappsignalhandler"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2ad

    .line 1888
    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    .line 1890
    :cond_2ad
    iget-object v1, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;
    :try_end_2b1
    .catch Ljava/lang/RuntimeException; {:try_start_27c .. :try_end_2b1} :catch_4bd

    if-eqz v1, :cond_2cc

    :try_start_2b3
    iget-object v1, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1891
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2cc

    .line 1893
    or-int/lit8 v0, v0, 0x40

    .line 1894
    or-int/lit8 v0, v0, 0x20

    .line 1895
    or-int/lit16 v0, v0, 0x80

    .line 1896
    iget-object v1, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/android/server/am/ActivityManagerService;->mNativeDebuggingApp:Ljava/lang/String;
    :try_end_2ca
    .catch Ljava/lang/RuntimeException; {:try_start_2b3 .. :try_end_2ca} :catch_1de

    move v1, v0

    goto :goto_2cd

    .line 1899
    :cond_2cc
    move v1, v0

    .end local v0  # "runtimeFlags":I
    .local v1, "runtimeFlags":I
    :goto_2cd
    :try_start_2cd
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isEmbeddedDexUsed()Z

    move-result v0

    if-eqz v0, :cond_2d8

    .line 1900
    or-int/lit16 v1, v1, 0x400

    goto :goto_2fc

    .line 1901
    :cond_2d8
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isPrivilegedApp()Z

    move-result v0
    :try_end_2de
    .catch Ljava/lang/RuntimeException; {:try_start_2cd .. :try_end_2de} :catch_4bd

    if-eqz v0, :cond_2fc

    .line 1902
    :try_start_2e0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    move-object v2, v0

    .line 1903
    .local v2, "pkgList":Lcom/android/server/am/PackageList;
    monitor-enter v2
    :try_end_2e6
    .catch Ljava/lang/RuntimeException; {:try_start_2e0 .. :try_end_2e6} :catch_1de

    .line 1904
    nop

    .line 1905
    :try_start_2e7
    invoke-virtual {v2}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/util/ArrayMap;->keySet()Ljava/util/Set;

    move-result-object v0

    .line 1904
    invoke-static {v0}, Lcom/android/server/pm/dex/DexManager;->isPackageSelectedToRunOob(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_2f7

    .line 1906
    or-int/lit16 v1, v1, 0x400

    .line 1908
    :cond_2f7
    monitor-exit v2

    goto :goto_2fc

    :catchall_2f9
    move-exception v0

    monitor-exit v2
    :try_end_2fb
    .catchall {:try_start_2e7 .. :try_end_2fb} :catchall_2f9

    .end local v7  # "startUptime":J
    .end local v18  # "startElapsedTime":J
    .end local p0  # "this":Lcom/android/server/am/ProcessList;
    .end local p1  # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2  # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3  # "zygotePolicyFlags":I
    .end local p4  # "disableHiddenApiChecks":Z
    .end local p5  # "disableTestApiChecks":Z
    .end local p6  # "abiOverride":Ljava/lang/String;
    :try_start_2fb
    throw v0

    .line 1911
    .end local v2  # "pkgList":Lcom/android/server/am/PackageList;
    .restart local v7  # "startUptime":J
    .restart local v18  # "startElapsedTime":J
    .restart local p0  # "this":Lcom/android/server/am/ProcessList;
    .restart local p1  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2  # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3  # "zygotePolicyFlags":I
    .restart local p4  # "disableHiddenApiChecks":Z
    .restart local p5  # "disableTestApiChecks":Z
    .restart local p6  # "abiOverride":Ljava/lang/String;
    :cond_2fc
    :goto_2fc
    if-nez p4, :cond_343

    iget-object v0, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->isDisabled()Z

    move-result v0

    if-nez v0, :cond_343

    .line 1912
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v14, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mHiddenApiBlacklist:Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;

    .line 1913
    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$HiddenApiSettings;->getPolicy()I

    move-result v2

    .line 1912
    invoke-virtual {v0, v2}, Landroid/content/pm/ApplicationInfo;->maybeUpdateHiddenApiEnforcementPolicy(I)V

    .line 1914
    iget-object v0, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1915
    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->getHiddenApiEnforcementPolicy()I

    move-result v0

    .line 1916
    .local v0, "policy":I
    sget v2, Lcom/android/internal/os/Zygote;->API_ENFORCEMENT_POLICY_SHIFT:I

    shl-int v2, v0, v2

    .line 1917
    .local v2, "policyBits":I
    and-int/lit16 v3, v2, 0x3000

    if-ne v3, v2, :cond_32a

    .line 1920
    or-int/2addr v1, v2

    .line 1922
    if-eqz p5, :cond_343

    .line 1923
    const/high16 v3, 0x40000

    or-int/2addr v1, v3

    goto :goto_343

    .line 1918
    :cond_32a
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Invalid API policy: "

    invoke-virtual {v10, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v7  # "startUptime":J
    .end local v18  # "startElapsedTime":J
    .end local p0  # "this":Lcom/android/server/am/ProcessList;
    .end local p1  # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2  # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3  # "zygotePolicyFlags":I
    .end local p4  # "disableHiddenApiChecks":Z
    .end local p5  # "disableTestApiChecks":Z
    .end local p6  # "abiOverride":Ljava/lang/String;
    throw v3
    :try_end_343
    .catch Ljava/lang/RuntimeException; {:try_start_2fb .. :try_end_343} :catch_1de

    .line 1927
    .end local v0  # "policy":I
    .end local v2  # "policyBits":I
    .restart local v7  # "startUptime":J
    .restart local v18  # "startElapsedTime":J
    .restart local p0  # "this":Lcom/android/server/am/ProcessList;
    .restart local p1  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2  # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3  # "zygotePolicyFlags":I
    .restart local p4  # "disableHiddenApiChecks":Z
    .restart local p5  # "disableTestApiChecks":Z
    .restart local p6  # "abiOverride":Ljava/lang/String;
    :cond_343
    :goto_343
    :try_start_343
    const-string/jumbo v0, "persist.device_config.runtime_native.use_app_image_startup_cache"

    const-string v2, ""

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    move-object v13, v0

    .line 1930
    .local v13, "useAppImageCache":Ljava/lang/String;
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0
    :try_end_351
    .catch Ljava/lang/RuntimeException; {:try_start_343 .. :try_end_351} :catch_4bd

    if-nez v0, :cond_35e

    :try_start_353
    const-string v0, "false"

    invoke-virtual {v13, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_35e

    .line 1931
    const/high16 v0, 0x10000

    or-int/2addr v1, v0

    .line 1934
    :cond_35e
    const/4 v2, 0x0

    .line 1935
    .local v2, "invokeWith":Ljava/lang/String;
    if-eqz v21, :cond_3b1

    .line 1937
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "/wrap.sh"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    .line 1938
    .local v3, "wrapperFileName":Ljava/lang/String;
    invoke-static {}, Landroid/os/StrictMode;->allowThreadDiskReads()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v0
    :try_end_37d
    .catch Ljava/lang/RuntimeException; {:try_start_353 .. :try_end_37d} :catch_1de

    move-object v10, v0

    .line 1940
    .local v10, "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    :try_start_37e
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_3a2

    .line 1941
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_38e
    .catchall {:try_start_37e .. :try_end_38e} :catchall_3a9

    move-object/from16 v17, v2

    .end local v2  # "invokeWith":Ljava/lang/String;
    .local v17, "invokeWith":Ljava/lang/String;
    :try_start_390
    const-string v2, "/system/bin/logwrapper "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0
    :try_end_39e
    .catchall {:try_start_390 .. :try_end_39e} :catchall_3a0

    move-object v2, v0

    .end local v17  # "invokeWith":Ljava/lang/String;
    .restart local v2  # "invokeWith":Ljava/lang/String;
    goto :goto_3a4

    .line 1944
    .end local v2  # "invokeWith":Ljava/lang/String;
    .restart local v17  # "invokeWith":Ljava/lang/String;
    :catchall_3a0
    move-exception v0

    goto :goto_3ac

    .line 1940
    .end local v17  # "invokeWith":Ljava/lang/String;
    .restart local v2  # "invokeWith":Ljava/lang/String;
    :cond_3a2
    move-object/from16 v17, v2

    .line 1944
    :goto_3a4
    :try_start_3a4
    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1945
    move-object v0, v2

    goto :goto_3b5

    .line 1944
    :catchall_3a9
    move-exception v0

    move-object/from16 v17, v2

    .end local v2  # "invokeWith":Ljava/lang/String;
    .restart local v17  # "invokeWith":Ljava/lang/String;
    :goto_3ac
    invoke-static {v10}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 1945
    nop

    .end local v7  # "startUptime":J
    .end local v18  # "startElapsedTime":J
    .end local p0  # "this":Lcom/android/server/am/ProcessList;
    .end local p1  # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2  # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3  # "zygotePolicyFlags":I
    .end local p4  # "disableHiddenApiChecks":Z
    .end local p5  # "disableTestApiChecks":Z
    .end local p6  # "abiOverride":Ljava/lang/String;
    throw v0
    :try_end_3b1
    .catch Ljava/lang/RuntimeException; {:try_start_3a4 .. :try_end_3b1} :catch_1de

    .line 1935
    .end local v3  # "wrapperFileName":Ljava/lang/String;
    .end local v10  # "oldPolicy":Landroid/os/StrictMode$ThreadPolicy;
    .end local v17  # "invokeWith":Ljava/lang/String;
    .restart local v2  # "invokeWith":Ljava/lang/String;
    .restart local v7  # "startUptime":J
    .restart local v18  # "startElapsedTime":J
    .restart local p0  # "this":Lcom/android/server/am/ProcessList;
    .restart local p1  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2  # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3  # "zygotePolicyFlags":I
    .restart local p4  # "disableHiddenApiChecks":Z
    .restart local p5  # "disableTestApiChecks":Z
    .restart local p6  # "abiOverride":Ljava/lang/String;
    :cond_3b1
    move-object/from16 v17, v2

    .end local v2  # "invokeWith":Ljava/lang/String;
    .restart local v17  # "invokeWith":Ljava/lang/String;
    move-object/from16 v0, v17

    .line 1948
    .end local v17  # "invokeWith":Ljava/lang/String;
    .local v0, "invokeWith":Ljava/lang/String;
    :goto_3b5
    if-eqz p6, :cond_3ba

    move-object/from16 v2, p6

    goto :goto_3be

    :cond_3ba
    :try_start_3ba
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;
    :try_end_3be
    .catch Ljava/lang/RuntimeException; {:try_start_3ba .. :try_end_3be} :catch_4bd

    .line 1949
    .local v2, "requiredAbi":Ljava/lang/String;
    :goto_3be
    if-nez v2, :cond_3d3

    .line 1950
    :try_start_3c0
    sget-object v3, Landroid/os/Build;->SUPPORTED_ABIS:[Ljava/lang/String;
    :try_end_3c2
    .catch Ljava/lang/RuntimeException; {:try_start_3c0 .. :try_end_3c2} :catch_3ca

    const/16 v16, 0x0

    :try_start_3c4
    aget-object v3, v3, v16
    :try_end_3c6
    .catch Ljava/lang/RuntimeException; {:try_start_3c4 .. :try_end_3c6} :catch_3c8

    move-object v2, v3

    goto :goto_3d6

    .line 1995
    .end local v0  # "invokeWith":Ljava/lang/String;
    .end local v1  # "runtimeFlags":I
    .end local v2  # "requiredAbi":Ljava/lang/String;
    .end local v4  # "genMiniDebugInfoProperty":Ljava/lang/String;
    .end local v5  # "genDebugInfoProperty":Ljava/lang/String;
    .end local v6  # "uid":I
    .end local v9  # "userId":I
    .end local v11  # "mountExternal":I
    .end local v12  # "gids":[I
    .end local v13  # "useAppImageCache":Ljava/lang/String;
    .end local v20  # "externalStorageAccess":Z
    .end local v21  # "debuggableFlag":Z
    .end local v22  # "isProfileableByShell":Z
    .end local v23  # "isProfileable":Z
    :catch_3c8
    move-exception v0

    goto :goto_3cd

    :catch_3ca
    move-exception v0

    const/16 v16, 0x0

    :goto_3cd
    move-wide/from16 v32, v7

    move/from16 v36, v16

    goto/16 :goto_4dc

    .line 1949
    .restart local v0  # "invokeWith":Ljava/lang/String;
    .restart local v1  # "runtimeFlags":I
    .restart local v2  # "requiredAbi":Ljava/lang/String;
    .restart local v4  # "genMiniDebugInfoProperty":Ljava/lang/String;
    .restart local v5  # "genDebugInfoProperty":Ljava/lang/String;
    .restart local v6  # "uid":I
    .restart local v9  # "userId":I
    .restart local v11  # "mountExternal":I
    .restart local v12  # "gids":[I
    .restart local v13  # "useAppImageCache":Ljava/lang/String;
    .restart local v20  # "externalStorageAccess":Z
    .restart local v21  # "debuggableFlag":Z
    .restart local v22  # "isProfileableByShell":Z
    .restart local v23  # "isProfileable":Z
    :cond_3d3
    const/16 v16, 0x0

    move-object v3, v2

    .line 1953
    .end local v2  # "requiredAbi":Ljava/lang/String;
    .local v3, "requiredAbi":Ljava/lang/String;
    :goto_3d6
    const/4 v2, 0x0

    .line 1954
    .local v2, "instructionSet":Ljava/lang/String;
    :try_start_3d7
    iget-object v10, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v10, v10, Landroid/content/pm/ApplicationInfo;->primaryCpuAbi:Ljava/lang/String;
    :try_end_3db
    .catch Ljava/lang/RuntimeException; {:try_start_3d7 .. :try_end_3db} :catch_4b7

    if-eqz v10, :cond_3e2

    .line 1957
    :try_start_3dd
    invoke-static {v3}, Ldalvik/system/VMRuntime;->getInstructionSet(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10
    :try_end_3e1
    .catch Ljava/lang/RuntimeException; {:try_start_3dd .. :try_end_3e1} :catch_3c8

    move-object v2, v10

    .line 1960
    :cond_3e2
    :try_start_3e2
    invoke-virtual {v15, v12}, Lcom/android/server/am/ProcessRecord;->setGids([I)V

    .line 1961
    invoke-virtual {v15, v3}, Lcom/android/server/am/ProcessRecord;->setRequiredAbi(Ljava/lang/String;)V

    .line 1962
    invoke-virtual {v15, v2}, Lcom/android/server/am/ProcessRecord;->setInstructionSet(Ljava/lang/String;)V

    .line 1969
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/HostingRecord;->getDefiningPackageName()Ljava/lang/String;

    move-result-object v10
    :try_end_3ef
    .catch Ljava/lang/RuntimeException; {:try_start_3e2 .. :try_end_3ef} :catch_4b7

    if-eqz v10, :cond_404

    .line 1970
    :try_start_3f1
    new-instance v10, Landroid/content/pm/ApplicationInfo;

    move-object/from16 v17, v3

    .end local v3  # "requiredAbi":Ljava/lang/String;
    .local v17, "requiredAbi":Ljava/lang/String;
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v10, v3}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    move-object v3, v10

    .line 1971
    .local v3, "definingAppInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/am/HostingRecord;->getDefiningPackageName()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 1972
    iput v6, v3, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_403
    .catch Ljava/lang/RuntimeException; {:try_start_3f1 .. :try_end_403} :catch_3c8

    goto :goto_408

    .line 1974
    .end local v17  # "requiredAbi":Ljava/lang/String;
    .local v3, "requiredAbi":Ljava/lang/String;
    :cond_404
    move-object/from16 v17, v3

    .end local v3  # "requiredAbi":Ljava/lang/String;
    .restart local v17  # "requiredAbi":Ljava/lang/String;
    :try_start_406
    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 1977
    .local v3, "definingAppInfo":Landroid/content/pm/ApplicationInfo;
    :goto_408
    iget-object v10, v15, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    move-object/from16 v24, v4

    .end local v4  # "genMiniDebugInfoProperty":Ljava/lang/String;
    .local v24, "genMiniDebugInfoProperty":Ljava/lang/String;
    iget-object v4, v14, Lcom/android/server/am/ProcessList;->mPlatformCompat:Lcom/android/server/compat/PlatformCompat;

    invoke-static {v3, v10, v2, v4}, Lcom/android/internal/os/Zygote;->getMemorySafetyRuntimeFlags(Landroid/content/pm/ApplicationInfo;Landroid/content/pm/ProcessInfo;Ljava/lang/String;Lcom/android/internal/compat/IPlatformCompat;)I

    move-result v4

    or-int v25, v1, v4

    .line 1981
    .end local v1  # "runtimeFlags":I
    .local v25, "runtimeFlags":I
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1
    :try_end_41c
    .catch Ljava/lang/RuntimeException; {:try_start_406 .. :try_end_41c} :catch_4b7

    if-eqz v1, :cond_458

    .line 1982
    :try_start_41e
    const-string v1, "ActivityManager"

    const-string v4, "SELinux tag not defined"

    new-instance v10, Ljava/lang/IllegalStateException;

    move-object/from16 v26, v2

    .end local v2  # "instructionSet":Ljava/lang/String;
    .local v26, "instructionSet":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v27, v3

    .end local v3  # "definingAppInfo":Landroid/content/pm/ApplicationInfo;
    .local v27, "definingAppInfo":Landroid/content/pm/ApplicationInfo;
    const-string v3, "SELinux tag not defined for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " (uid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v15, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v10, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v4, v10}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_457
    .catch Ljava/lang/RuntimeException; {:try_start_41e .. :try_end_457} :catch_3c8

    goto :goto_45c

    .line 1981
    .end local v26  # "instructionSet":Ljava/lang/String;
    .end local v27  # "definingAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v2  # "instructionSet":Ljava/lang/String;
    .restart local v3  # "definingAppInfo":Landroid/content/pm/ApplicationInfo;
    :cond_458
    move-object/from16 v26, v2

    move-object/from16 v27, v3

    .line 1986
    .end local v2  # "instructionSet":Ljava/lang/String;
    .end local v3  # "definingAppInfo":Landroid/content/pm/ApplicationInfo;
    .restart local v26  # "instructionSet":Ljava/lang/String;
    .restart local v27  # "definingAppInfo":Landroid/content/pm/ApplicationInfo;
    :goto_45c
    :try_start_45c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfo:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1987
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2
    :try_end_471
    .catch Ljava/lang/RuntimeException; {:try_start_45c .. :try_end_471} :catch_4b7

    if-eqz v2, :cond_476

    :try_start_473
    const-string v2, ""
    :try_end_475
    .catch Ljava/lang/RuntimeException; {:try_start_473 .. :try_end_475} :catch_3c8

    goto :goto_47a

    :cond_476
    :try_start_476
    iget-object v2, v15, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->seInfoUser:Ljava/lang/String;

    :goto_47a
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 1990
    .local v10, "seInfo":Ljava/lang/String;
    const-string v1, "android.app.ActivityThread"

    move-object/from16 v28, v1

    .line 1992
    .local v28, "entryPoint":Ljava/lang/String;
    const-string v3, "android.app.ActivityThread"
    :try_end_488
    .catch Ljava/lang/RuntimeException; {:try_start_476 .. :try_end_488} :catch_4b7

    move-object/from16 v1, p0

    move-object/from16 v2, p2

    move-object/from16 v29, v27

    move-object/from16 v27, v17

    .end local v17  # "requiredAbi":Ljava/lang/String;
    .local v27, "requiredAbi":Ljava/lang/String;
    .local v29, "definingAppInfo":Landroid/content/pm/ApplicationInfo;
    move-object/from16 v4, p1

    move-object/from16 v30, v5

    .end local v5  # "genDebugInfoProperty":Ljava/lang/String;
    .local v30, "genDebugInfoProperty":Ljava/lang/String;
    move v5, v6

    move/from16 v31, v6

    .end local v6  # "uid":I
    .local v31, "uid":I
    move-object v6, v12

    move-wide/from16 v32, v7

    .end local v7  # "startUptime":J
    .local v32, "startUptime":J
    move/from16 v7, v25

    move/from16 v8, p3

    move/from16 v34, v9

    .end local v9  # "userId":I
    .local v34, "userId":I
    move v9, v11

    move/from16 v35, v11

    move/from16 v36, v16

    .end local v11  # "mountExternal":I
    .local v35, "mountExternal":I
    move-object/from16 v11, v27

    move-object/from16 v37, v12

    .end local v12  # "gids":[I
    .local v37, "gids":[I
    move-object/from16 v12, v26

    move-object/from16 v38, v13

    .end local v13  # "useAppImageCache":Ljava/lang/String;
    .local v38, "useAppImageCache":Ljava/lang/String;
    move-object v13, v0

    move-wide/from16 v14, v32

    move-wide/from16 v16, v18

    :try_start_4b2
    invoke-virtual/range {v1 .. v17}, Lcom/android/server/am/ProcessList;->startProcessLocked(Lcom/android/server/am/HostingRecord;Ljava/lang/String;Lcom/android/server/am/ProcessRecord;I[IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJ)Z

    move-result v1

    return v1

    .line 1995
    .end local v0  # "invokeWith":Ljava/lang/String;
    .end local v10  # "seInfo":Ljava/lang/String;
    .end local v20  # "externalStorageAccess":Z
    .end local v21  # "debuggableFlag":Z
    .end local v22  # "isProfileableByShell":Z
    .end local v23  # "isProfileable":Z
    .end local v24  # "genMiniDebugInfoProperty":Ljava/lang/String;
    .end local v25  # "runtimeFlags":I
    .end local v26  # "instructionSet":Ljava/lang/String;
    .end local v27  # "requiredAbi":Ljava/lang/String;
    .end local v28  # "entryPoint":Ljava/lang/String;
    .end local v29  # "definingAppInfo":Landroid/content/pm/ApplicationInfo;
    .end local v30  # "genDebugInfoProperty":Ljava/lang/String;
    .end local v31  # "uid":I
    .end local v32  # "startUptime":J
    .end local v34  # "userId":I
    .end local v35  # "mountExternal":I
    .end local v37  # "gids":[I
    .end local v38  # "useAppImageCache":Ljava/lang/String;
    .restart local v7  # "startUptime":J
    :catch_4b7
    move-exception v0

    move-wide/from16 v32, v7

    move/from16 v36, v16

    goto :goto_4c2

    :catch_4bd
    move-exception v0

    move-wide/from16 v32, v7

    const/16 v36, 0x0

    .end local v7  # "startUptime":J
    .restart local v32  # "startUptime":J
    :goto_4c2
    goto :goto_4dc

    .end local v32  # "startUptime":J
    .restart local v16  # "startUptime":J
    :catch_4c3
    move-exception v0

    move-wide/from16 v32, v16

    const/16 v36, 0x0

    .end local v16  # "startUptime":J
    .restart local v32  # "startUptime":J
    goto :goto_4dc

    .line 1773
    .end local v32  # "startUptime":J
    .restart local v9  # "userId":I
    .local v12, "startUptime":J
    :catch_4c9
    move-exception v0

    move/from16 v34, v9

    move/from16 v36, v11

    move-wide/from16 v32, v12

    .line 1774
    .end local v9  # "userId":I
    .end local v12  # "startUptime":J
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v32  # "startUptime":J
    .restart local v34  # "userId":I
    invoke-virtual {v0}, Landroid/os/RemoteException;->rethrowAsRuntimeException()Ljava/lang/RuntimeException;

    move-result-object v1

    .end local v18  # "startElapsedTime":J
    .end local v32  # "startUptime":J
    .end local p0  # "this":Lcom/android/server/am/ProcessList;
    .end local p1  # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2  # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .end local p3  # "zygotePolicyFlags":I
    .end local p4  # "disableHiddenApiChecks":Z
    .end local p5  # "disableTestApiChecks":Z
    .end local p6  # "abiOverride":Ljava/lang/String;
    throw v1
    :try_end_4d5
    .catch Ljava/lang/RuntimeException; {:try_start_4b2 .. :try_end_4d5} :catch_4d5

    .line 1995
    .end local v0  # "e":Landroid/os/RemoteException;
    .end local v34  # "userId":I
    .restart local v18  # "startElapsedTime":J
    .restart local v32  # "startUptime":J
    .restart local p0  # "this":Lcom/android/server/am/ProcessList;
    .restart local p1  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2  # "hostingRecord":Lcom/android/server/am/HostingRecord;
    .restart local p3  # "zygotePolicyFlags":I
    .restart local p4  # "disableHiddenApiChecks":Z
    .restart local p5  # "disableTestApiChecks":Z
    .restart local p6  # "abiOverride":Ljava/lang/String;
    :catch_4d5
    move-exception v0

    goto :goto_4dc

    .end local v32  # "startUptime":J
    .restart local v12  # "startUptime":J
    :catch_4d7
    move-exception v0

    move/from16 v36, v11

    move-wide/from16 v32, v12

    .line 1996
    .end local v12  # "startUptime":J
    .local v0, "e":Ljava/lang/RuntimeException;
    .restart local v32  # "startUptime":J
    :goto_4dc
    const-string v1, "ActivityManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failure starting process "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v3, p1

    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2004
    move-object/from16 v1, p0

    iget-object v4, v1, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v3, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget v2, v3, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v6

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    iget v12, v3, Lcom/android/server/am/ProcessRecord;->userId:I

    const-string/jumbo v13, "start failure"

    invoke-virtual/range {v4 .. v13}, Lcom/android/server/am/ActivityManagerService;->forceStopPackageLocked(Ljava/lang/String;IZZZZZILjava/lang/String;)Z

    .line 2006
    return v36
.end method

.method unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    .registers 3
    .param p1, "observer"  # Landroid/app/IProcessObserver;

    .line 4652
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mProcessObservers:Landroid/os/RemoteCallbackList;

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 4653
    return-void
.end method

.method updateAllTimePrefsLOSP(I)V
    .registers 8
    .param p1, "timePref"  # I

    .line 3285
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_3c

    .line 3286
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3287
    .local v1, "r":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    .line 3288
    .local v2, "thread":Landroid/app/IApplicationThread;
    if-eqz v2, :cond_39

    .line 3290
    :try_start_18
    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->updateTimePrefs(I)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    .line 3294
    goto :goto_39

    .line 3291
    :catch_1c
    move-exception v3

    .line 3292
    .local v3, "ex":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to update preferences for: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ActivityManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3285
    .end local v1  # "r":Lcom/android/server/am/ProcessRecord;
    .end local v2  # "thread":Landroid/app/IApplicationThread;
    .end local v3  # "ex":Landroid/os/RemoteException;
    :cond_39
    :goto_39
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3297
    .end local v0  # "i":I
    :cond_3c
    return-void
.end method

.method updateApplicationInfoLOSP(Ljava/util/List;IZ)V
    .registers 9
    .param p2, "userId"  # I
    .param p3, "updateFrameworkRes"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;IZ)V"
        }
    .end annotation

    .line 4821
    .local p1, "packagesToUpdate":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 4822
    .local v0, "targetProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowProcessController;>;"
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_d
    if-ltz v1, :cond_35

    .line 4823
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 4824
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    if-nez v3, :cond_1e

    .line 4825
    goto :goto_32

    .line 4828
    :cond_1e
    const/4 v3, -0x1

    if-eq p2, v3, :cond_26

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->userId:I

    if-eq v3, p2, :cond_26

    .line 4829
    goto :goto_32

    .line 4832
    :cond_26
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v3

    new-instance v4, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda0;

    invoke-direct {v4, p3, p1, v2, v0}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda0;-><init>(ZLjava/util/List;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;)V

    invoke-virtual {v3, v4}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/Consumer;)V

    .line 4822
    .end local v2  # "app":Lcom/android/server/am/ProcessRecord;
    :goto_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 4854
    .end local v1  # "i":I
    :cond_35
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, v0, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateAssetConfiguration(Ljava/util/List;Z)V

    .line 4855
    return-void
.end method

.method updateBackgroundRestrictedForUidPackageLocked(ILjava/lang/String;Z)V
    .registers 14
    .param p1, "uid"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "restricted"  # Z

    .line 5161
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessList;->getUidRecordLOSP(I)Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 5162
    .local v0, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v0, :cond_1f

    .line 5163
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    .line 5164
    .local v7, "nowElapsed":J
    new-instance v9, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda3;

    move-object v1, v9

    move-object v2, p0

    move-object v3, p2

    move v4, p3

    move-wide v5, v7

    invoke-direct/range {v1 .. v6}, Lcom/android/server/am/ProcessList$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/ProcessList;Ljava/lang/String;ZJ)V

    invoke-virtual {v0, v9}, Lcom/android/server/am/UidRecord;->forEachProcess(Ljava/util/function/Consumer;)V

    .line 5184
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "updateOomAdj_meh"

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 5186
    .end local v7  # "nowElapsed":J
    :cond_1f
    return-void
.end method

.method updateCoreSettingsLOSP(Landroid/os/Bundle;)V
    .registers 6
    .param p1, "settings"  # Landroid/os/Bundle;

    .line 3236
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_22

    .line 3237
    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 3238
    .local v1, "processRecord":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    .line 3240
    .local v2, "thread":Landroid/app/IApplicationThread;
    if-eqz v2, :cond_1e

    .line 3241
    :try_start_18
    invoke-interface {v2, p1}, Landroid/app/IApplicationThread;->setCoreSettings(Landroid/os/Bundle;)V
    :try_end_1b
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1b} :catch_1c

    goto :goto_1e

    .line 3243
    :catch_1c
    move-exception v3

    goto :goto_1f

    .line 3245
    :cond_1e
    :goto_1e
    nop

    .line 3236
    .end local v1  # "processRecord":Lcom/android/server/am/ProcessRecord;
    .end local v2  # "thread":Landroid/app/IApplicationThread;
    :goto_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3247
    .end local v0  # "i":I
    :cond_22
    return-void
.end method

.method updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V
    .registers 9
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "activityChange"  # Z
    .param p3, "client"  # Lcom/android/server/am/ProcessRecord;

    .line 3590
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 3591
    .local v0, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->hasActivitiesOrRecentTasks()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_18

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v1

    if-nez v1, :cond_18

    .line 3592
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v1

    if-eqz v1, :cond_16

    goto :goto_18

    :cond_16
    move v1, v2

    goto :goto_19

    :cond_18
    :goto_18
    const/4 v1, 0x1

    .line 3593
    .local v1, "hasActivity":Z
    :goto_19
    const/4 v3, 0x0

    .line 3594
    .local v3, "hasService":Z
    if-nez p2, :cond_1f

    if-eqz v1, :cond_1f

    .line 3599
    return-void

    .line 3602
    :cond_1f
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v4

    if-nez v4, :cond_2c

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isPendingStart()Z

    move-result v4

    if-nez v4, :cond_2c

    .line 3604
    return-void

    .line 3607
    :cond_2c
    iget-object v4, p0, Lcom/android/server/am/ProcessList;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v4

    :try_start_2f
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 3608
    invoke-direct {p0, p1, p3, v1, v2}, Lcom/android/server/am/ProcessList;->updateLruProcessLSP(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;ZZ)V

    .line 3609
    monitor-exit v4
    :try_end_36
    .catchall {:try_start_2f .. :try_end_36} :catchall_3a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3610
    return-void

    .line 3609
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v2
.end method

.method updateOomForGame(Z)V
    .registers 4
    .param p1, "isEnable"  # Z

    .line 914
    iget-boolean v0, p0, Lcom/android/server/am/ProcessList;->mCurGameOomEnable:Z

    if-eq v0, p1, :cond_18

    .line 915
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 916
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 917
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 918
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 919
    iput-boolean p1, p0, Lcom/android/server/am/ProcessList;->mCurGameOomEnable:Z

    .line 921
    .end local v0  # "buf":Ljava/nio/ByteBuffer;
    :cond_18
    return-void
.end method

.method updateOomForSPTM(Z)V
    .registers 4
    .param p1, "isEnable"  # Z

    .line 945
    const/16 v0, 0x8

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 946
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/16 v1, 0x10

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 947
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 949
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 950
    return-void
.end method

.method updateOomMinFree([I)V
    .registers 5
    .param p1, "minfree"  # [I

    .line 931
    iget-object v0, p0, Lcom/android/server/am/ProcessList;->mLastOomMinFreeComm:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_38

    if-eqz p1, :cond_38

    array-length v0, p1

    iget-object v1, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v1

    if-ne v0, v2, :cond_38

    .line 933
    array-length v0, v1

    mul-int/lit8 v0, v0, 0x2

    add-int/lit8 v0, v0, 0x1

    mul-int/lit8 v0, v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 934
    .local v0, "buf":Ljava/nio/ByteBuffer;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 935
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1c
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    array-length v2, v2

    if-ge v1, v2, :cond_34

    .line 936
    aget v2, p1, v1

    mul-int/lit16 v2, v2, 0x400

    div-int/lit16 v2, v2, 0x1000

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 937
    iget-object v2, p0, Lcom/android/server/am/ProcessList;->mOomAdj:[I

    aget v2, v2, v1

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 935
    add-int/lit8 v1, v1, 0x1

    goto :goto_1c

    .line 940
    .end local v1  # "i":I
    :cond_34
    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/server/am/ProcessList;->writeLmkd(Ljava/nio/ByteBuffer;Ljava/nio/ByteBuffer;)Z

    .line 942
    .end local v0  # "buf":Ljava/nio/ByteBuffer;
    :cond_38
    return-void
.end method

.method writeProcessesToProtoLSP(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;)V
    .registers 19
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "dumpPackage"  # Ljava/lang/String;

    .line 4259
    move-object/from16 v0, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    const/4 v1, 0x0

    .line 4261
    .local v1, "numPers":I
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v10

    .line 4262
    .local v10, "numOfNames":I
    const/4 v2, 0x0

    move v11, v1

    .end local v1  # "numPers":I
    .local v2, "ip":I
    .local v11, "numPers":I
    :goto_13
    if-ge v2, v10, :cond_57

    .line 4263
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mProcessNames:Lcom/android/server/am/ProcessList$MyProcessMap;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList$MyProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/SparseArray;

    .line 4264
    .local v1, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v3, 0x0

    .local v3, "ia":I
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v4

    .local v4, "size":I
    :goto_26
    if-ge v3, v4, :cond_54

    .line 4265
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 4266
    .local v5, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v9, :cond_3b

    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v6

    invoke-virtual {v6, v9}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3b

    .line 4267
    goto :goto_51

    .line 4269
    :cond_3b
    const-wide v6, 0x20b00000001L

    iget-object v12, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 4270
    invoke-virtual {v12, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v12

    .line 4269
    invoke-virtual {v5, v8, v6, v7, v12}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 4272
    invoke-virtual {v5}, Lcom/android/server/am/ProcessRecord;->isPersistent()Z

    move-result v6

    if-eqz v6, :cond_51

    .line 4273
    add-int/lit8 v11, v11, 0x1

    .line 4264
    .end local v5  # "r":Lcom/android/server/am/ProcessRecord;
    :cond_51
    :goto_51
    add-int/lit8 v3, v3, 0x1

    goto :goto_26

    .line 4262
    .end local v1  # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/am/ProcessRecord;>;"
    .end local v3  # "ia":I
    .end local v4  # "size":I
    :cond_54
    add-int/lit8 v2, v2, 0x1

    goto :goto_13

    .line 4278
    .end local v2  # "ip":I
    :cond_57
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v2, v0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .local v2, "size":I
    :goto_5e
    if-ge v1, v2, :cond_86

    .line 4279
    iget-object v3, v0, Lcom/android/server/am/ProcessList;->mIsolatedProcesses:Landroid/util/SparseArray;

    invoke-virtual {v3, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 4280
    .local v3, "r":Lcom/android/server/am/ProcessRecord;
    if-eqz v9, :cond_75

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v4

    invoke-virtual {v4, v9}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_75

    .line 4281
    goto :goto_83

    .line 4283
    :cond_75
    const-wide v4, 0x20b00000002L

    iget-object v6, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    .line 4284
    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 4283
    invoke-virtual {v3, v8, v4, v5, v6}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 4278
    .end local v3  # "r":Lcom/android/server/am/ProcessRecord;
    :goto_83
    add-int/lit8 v1, v1, 0x1

    goto :goto_5e

    .line 4288
    .end local v1  # "i":I
    .end local v2  # "size":I
    :cond_86
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v9}, Lcom/android/server/am/ActivityManagerService;->getAppId(Ljava/lang/String;)I

    move-result v12

    .line 4289
    .local v12, "dumpAppId":I
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mActiveUids:Lcom/android/server/am/ActiveUids;

    const-wide v5, 0x20b00000004L

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move v4, v12

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/am/ActiveUids;->dumpProto(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;IJ)V

    .line 4292
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    if-lez v1, :cond_e2

    .line 4293
    const-wide v1, 0x10b00000006L

    invoke-virtual {v8, v1, v2}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v13

    .line 4294
    .local v13, "lruToken":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v15

    .line 4295
    .local v15, "total":I
    const-wide v1, 0x10500000001L

    invoke-virtual {v8, v1, v2, v15}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4296
    const-wide v1, 0x10500000002L

    iget v3, v0, Lcom/android/server/am/ProcessList;->mLruProcessActivityStart:I

    sub-int v3, v15, v3

    invoke-virtual {v8, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4298
    const-wide v1, 0x10500000003L

    iget v3, v0, Lcom/android/server/am/ProcessList;->mLruProcessServiceStart:I

    sub-int v3, v15, v3

    invoke-virtual {v8, v1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4300
    const-wide v2, 0x20b00000004L

    iget-object v4, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v0, Lcom/android/server/am/ProcessList;->mLruProcesses:Ljava/util/ArrayList;

    const/4 v6, 0x0

    move-object/from16 v1, p1

    move-object/from16 v7, p2

    invoke-static/range {v1 .. v7}, Lcom/android/server/am/ProcessList;->writeProcessOomListToProto(Landroid/util/proto/ProtoOutputStream;JLcom/android/server/am/ActivityManagerService;Ljava/util/List;ZLjava/lang/String;)Z

    .line 4303
    invoke-virtual {v8, v13, v14}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4306
    .end local v13  # "lruToken":J
    .end local v15  # "total":I
    :cond_e2
    iget-object v1, v0, Lcom/android/server/am/ProcessList;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, v8, v9, v12, v11}, Lcom/android/server/am/ActivityManagerService;->writeOtherProcessesInfoToProtoLSP(Landroid/util/proto/ProtoOutputStream;Ljava/lang/String;II)V

    .line 4307
    return-void
.end method
