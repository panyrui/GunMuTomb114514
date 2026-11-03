# classes.dex

.class public Lcom/android/server/am/OomAdjuster;
.super Ljava/lang/Object;
.source "OomAdjuster.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;
    }
.end annotation


# static fields
.field static final CAMERA_MICROPHONE_CAPABILITY_CHANGE_ID:J = 0x81e8a55L

.field static final OOM_ADJ_REASON_ACTIVITY:Ljava/lang/String; = "updateOomAdj_activityChange"

.field static final OOM_ADJ_REASON_ALLOWLIST:Ljava/lang/String; = "updateOomAdj_allowlistChange"

.field static final OOM_ADJ_REASON_BIND_SERVICE:Ljava/lang/String; = "updateOomAdj_bindService"

.field static final OOM_ADJ_REASON_FINISH_RECEIVER:Ljava/lang/String; = "updateOomAdj_finishReceiver"

.field static final OOM_ADJ_REASON_GET_PROVIDER:Ljava/lang/String; = "updateOomAdj_getProvider"

.field static final OOM_ADJ_REASON_METHOD:Ljava/lang/String; = "updateOomAdj"

.field static final OOM_ADJ_REASON_NONE:Ljava/lang/String; = "updateOomAdj_meh"

.field static final OOM_ADJ_REASON_PROCESS_BEGIN:Ljava/lang/String; = "updateOomAdj_processBegin"

.field static final OOM_ADJ_REASON_PROCESS_END:Ljava/lang/String; = "updateOomAdj_processEnd"

.field static final OOM_ADJ_REASON_REMOVE_PROVIDER:Ljava/lang/String; = "updateOomAdj_removeProvider"

.field static final OOM_ADJ_REASON_START_RECEIVER:Ljava/lang/String; = "updateOomAdj_startReceiver"

.field static final OOM_ADJ_REASON_START_SERVICE:Ljava/lang/String; = "updateOomAdj_startService"

.field static final OOM_ADJ_REASON_UI_VISIBILITY:Ljava/lang/String; = "updateOomAdj_uiVisibility"

.field static final OOM_ADJ_REASON_UNBIND_SERVICE:Ljava/lang/String; = "updateOomAdj_unbindService"

.field static final PROCESS_CAPABILITY_CHANGE_ID:J = 0x81f62a4L

.field static final TAG:Ljava/lang/String; = "OomAdjuster"

.field static final USE_SHORT_FGS_USAGE_INTERACTION_TIME:J = 0xaf7340dL

.field public static mCurRenderThreadTid:I

.field public static mIsTopAppRenderThreadBoostEnabled:Z

.field public static mPerf:Landroid/util/BoostFramework;

.field public static mPerfBoost:Landroid/util/BoostFramework;

.field public static mPerfHandle:I


# instance fields
.field mActiveUids:Lcom/android/server/am/ActiveUids;

.field mAdjSeq:I

.field mBServiceAppThreshold:I

.field mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

.field mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

.field mConstants:Lcom/android/server/am/ActivityManagerConstants;

.field mEnableBServicePropagation:Z

.field mEnableBgt:Z

.field mEnableProcessGroupCgroupFollow:Z

.field mLocalPowerManager:Landroid/os/PowerManagerInternal;

.field mMinBServiceAgingTime:I

.field mNewNumAServiceProcs:I

.field mNewNumServiceProcs:I

.field private mNextNoKillDebugMessageTime:J

.field mNumCachedHiddenProcs:I

.field mNumNonCachedProcs:I

.field mNumServiceProcs:I

.field private final mNumSlots:I

.field private mOomAdjUpdateOngoing:Z

.field private mPendingFullOomAdjUpdate:Z

.field private final mPendingProcessSet:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field mProcessGroupCgroupFollowDex2oatOnly:Z

.field private final mProcessGroupHandler:Landroid/os/Handler;

.field private final mProcessList:Lcom/android/server/am/ProcessList;

.field private final mProcessesInCycle:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private final mTmpBecameIdle:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UidRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpBroadcastQueue:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/BroadcastQueue;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

.field final mTmpLong:[J

.field private final mTmpProcessList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpQueue:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mTmpUidRecords:Lcom/android/server/am/ActiveUids;


# direct methods
.method public static synthetic $r8$lambda$4pnHIE50TnOcNgt4SOu10KtoinY(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$ihQaI4mSYofPBYBnyj-KozGpFJs(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateKeepWarmIfNecessaryForProcessLocked(Lcom/android/server/am/ProcessRecord;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmService(Lcom/android/server/am/OomAdjuster;)Lcom/android/server/am/ActivityManagerService;
    .registers 1

    iget-object p0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mreportOomAdjMessageLocked(Lcom/android/server/am/OomAdjuster;Ljava/lang/String;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 255
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    .line 258
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    sput-object v0, Lcom/android/server/am/OomAdjuster;->mPerfBoost:Landroid/util/BoostFramework;

    .line 259
    const/4 v0, -0x1

    sput v0, Lcom/android/server/am/OomAdjuster;->mPerfHandle:I

    .line 260
    sput v0, Lcom/android/server/am/OomAdjuster;->mCurRenderThreadTid:I

    .line 261
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/am/OomAdjuster;->mIsTopAppRenderThreadBoostEnabled:Z

    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;)V
    .registers 5
    .param p1, "service"  # Lcom/android/server/am/ActivityManagerService;
    .param p2, "processList"  # Lcom/android/server/am/ProcessList;
    .param p3, "activeUids"  # Lcom/android/server/am/ActiveUids;

    .line 296
    invoke-static {}, Lcom/android/server/am/OomAdjuster;->createAdjusterThread()Lcom/android/server/ServiceThread;

    move-result-object v0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/am/OomAdjuster;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;)V

    .line 297
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessList;Lcom/android/server/am/ActiveUids;Lcom/android/server/ServiceThread;)V
    .registers 9
    .param p1, "service"  # Lcom/android/server/am/ActivityManagerService;
    .param p2, "processList"  # Lcom/android/server/am/ProcessList;
    .param p3, "activeUids"  # Lcom/android/server/am/ActiveUids;
    .param p4, "adjusterThread"  # Lcom/android/server/ServiceThread;

    .line 309
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 200
    const/4 v0, 0x3

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpLong:[J

    .line 205
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 211
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 212
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 213
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 219
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 225
    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 237
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    .line 244
    const/16 v1, 0x1388

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mMinBServiceAgingTime:I

    .line 246
    const/4 v1, 0x5

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    .line 248
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mEnableBServicePropagation:Z

    .line 250
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mEnableProcessGroupCgroupFollow:Z

    .line 251
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupCgroupFollowDex2oatOnly:Z

    .line 253
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mEnableBgt:Z

    .line 264
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 265
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    .line 268
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    .line 269
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    .line 278
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 284
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    .line 1419
    new-instance v1, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    invoke-direct {v1, p0}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;-><init>(Lcom/android/server/am/OomAdjuster;)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    .line 310
    iput-object p1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 311
    iput-object p2, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 312
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 313
    iput-object p3, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    .line 315
    const-class v1, Landroid/os/PowerManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManagerInternal;

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    .line 316
    iget-object v1, p1, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    .line 317
    new-instance v1, Lcom/android/server/am/CachedAppOptimizer;

    invoke-direct {v1, p1}, Lcom/android/server/am/CachedAppOptimizer;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    .line 318
    new-instance v1, Lcom/android/server/am/CacheOomRanker;

    invoke-direct {v1, p1}, Lcom/android/server/am/CacheOomRanker;-><init>(Lcom/android/server/am/ActivityManagerService;)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    .line 320
    sget-object v1, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    if-eqz v1, :cond_f1

    .line 321
    const-string/jumbo v2, "ro.vendor.qti.sys.fw.bservice_age"

    const-string v3, "5000"

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mMinBServiceAgingTime:I

    .line 322
    sget-object v1, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v2, "ro.vendor.qti.sys.fw.bservice_limit"

    const-string v3, "5"

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iput v1, p0, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    .line 323
    sget-object v1, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v2, "ro.vendor.qti.sys.fw.bservice_enable"

    const-string v3, "false"

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mEnableBServicePropagation:Z

    .line 324
    sget-object v1, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v2, "ro.vendor.qti.cgroup_follow.enable"

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mEnableProcessGroupCgroupFollow:Z

    .line 325
    sget-object v1, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v2, "ro.vendor.qti.cgroup_follow.dex2oat_only"

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupCgroupFollowDex2oatOnly:Z

    .line 326
    sget-object v1, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v2, "vendor.perf.topAppRenderThreadBoost.enable"

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/android/server/am/OomAdjuster;->mIsTopAppRenderThreadBoostEnabled:Z

    .line 327
    sget-object v1, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const-string/jumbo v2, "vendor.perf.bgt.enable"

    invoke-virtual {v1, v2, v3}, Landroid/util/BoostFramework;->perfGetProp(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mEnableBgt:Z

    .line 330
    :cond_f1
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {p4}, Lcom/android/server/ServiceThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    new-instance v3, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/OomAdjuster;)V

    invoke-direct {v1, v2, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    .line 357
    new-instance v1, Lcom/android/server/am/ActiveUids;

    invoke-direct {v1, p1, v0}, Lcom/android/server/am/ActiveUids;-><init>(Lcom/android/server/am/ActivityManagerService;Z)V

    iput-object v1, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 358
    new-instance v0, Ljava/util/ArrayDeque;

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    shl-int/lit8 v1, v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    .line 359
    const/16 v0, 0xa

    iput v0, p0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    .line 361
    return-void
.end method

.method private applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJ)Z
    .registers 28
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "doingAll"  # Z
    .param p3, "now"  # J
    .param p5, "nowElapsed"  # J

    .line 2715
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v9, p3

    move-wide/from16 v11, p5

    const/4 v3, 0x1

    .line 2716
    .local v3, "success":Z
    iget-object v13, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2717
    .local v13, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v14

    .line 2719
    .local v14, "uidRec":Lcom/android/server/am/UidRecord;
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetRawAdj()I

    move-result v4

    if-eq v0, v4, :cond_20

    .line 2720
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetRawAdj(I)V

    .line 2723
    :cond_20
    const/4 v4, 0x0

    .line 2726
    .local v4, "changes":I
    invoke-static {}, Lcom/android/server/am/OomAdjusterStub;->getInstance()Lcom/android/server/am/OomAdjusterStub;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/am/OomAdjusterStub;->compactBackgroundProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 2751
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v5

    const/4 v15, 0x2

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eq v0, v5, :cond_16f

    .line 2753
    iget-boolean v0, v1, Lcom/android/server/am/OomAdjuster;->mEnableBgt:Z

    if-eqz v0, :cond_f2

    .line 2754
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    const/16 v5, 0x3e7

    const/16 v8, 0x384

    if-lt v0, v8, :cond_94

    .line 2755
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    if-gt v0, v5, :cond_94

    .line 2756
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    if-nez v0, :cond_94

    .line 2757
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v0

    if-eqz v0, :cond_94

    .line 2758
    const-string v0, "OomAdjuster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App adj change from cached state to fg state : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2759
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2758
    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2760
    sget-object v0, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_94

    .line 2761
    new-array v0, v15, [I

    const/high16 v5, 0x42820000  # 65.0f

    aput v5, v0, v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    aput v5, v0, v6

    .line 2762
    .local v0, "fgAppPerfLockArgs":[I
    sget-object v5, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const/16 v8, 0xa

    invoke-virtual {v5, v8, v0}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 2765
    .end local v0  # "fgAppPerfLockArgs":[I
    :cond_94
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v0

    const/16 v5, 0x2bc

    if-ne v0, v5, :cond_f2

    .line 2766
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    const/16 v5, 0x384

    if-lt v0, v5, :cond_f2

    .line 2767
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    const/16 v5, 0x3e7

    if-gt v0, v5, :cond_f2

    .line 2768
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_f2

    .line 2769
    const-string v0, "OomAdjuster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "App adj change from previous state to cached state : "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2770
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v8, " "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 2769
    invoke-static {v0, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2771
    sget-object v0, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    if-eqz v0, :cond_f2

    .line 2772
    new-array v0, v15, [I

    const v5, 0x42824000  # 65.125f

    aput v5, v0, v7

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    aput v5, v0, v6

    .line 2773
    .local v0, "bgAppPerfLockArgs":[I
    sget-object v5, Lcom/android/server/am/OomAdjuster;->mPerf:Landroid/util/BoostFramework;

    const/16 v8, 0xa

    invoke-virtual {v5, v8, v0}, Landroid/util/BoostFramework;->perfLockAcquire(I[I)I

    .line 2777
    .end local v0  # "bgAppPerfLockArgs":[I
    :cond_f2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    iget v5, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v8, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v8

    invoke-static {v0, v5, v8}, Lcom/android/server/am/ProcessList;->setOomAdj(III)V

    .line 2778
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_113

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v0, :cond_113

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v0, v5, :cond_157

    .line 2779
    :cond_113
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Set "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " adj "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2780
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, ": "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2781
    .local v0, "msg":Ljava/lang/String;
    const-string v5, "ActivityManager"

    invoke-direct {v1, v5, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2783
    .end local v0  # "msg":Ljava/lang/String;
    :cond_157
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetAdj(I)V

    .line 2784
    if-eqz v14, :cond_163

    .line 2785
    invoke-virtual {v14}, Lcom/android/server/am/UidRecord;->noteProcAdjChanged()V

    .line 2787
    :cond_163
    const/16 v0, -0x2710

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setVerifiedAdj(I)V

    .line 2789
    invoke-static {}, Lcom/android/server/am/OomAdjusterStub;->getInstance()Lcom/android/server/am/OomAdjusterStub;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/am/OomAdjusterStub;->applyOomAdjLocked(Lcom/android/server/am/ProcessRecord;)V

    .line 2792
    :cond_16f
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v8

    .line 2793
    .local v8, "curSchedGroup":I
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v0

    if-eq v0, v8, :cond_36a

    .line 2794
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v5

    .line 2795
    .local v5, "oldSchedGroup":I
    invoke-virtual {v13, v8}, Lcom/android/server/am/ProcessStateRecord;->setSetSchedGroup(I)V

    .line 2796
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_190

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v0, :cond_190

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v15, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v15, :cond_1c2

    .line 2797
    :cond_190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Setting sched group of "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v15, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, " to "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v15, ": "

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2798
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2799
    .restart local v0  # "msg":Ljava/lang/String;
    const-string v15, "ActivityManager"

    invoke-direct {v1, v15, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2801
    .end local v0  # "msg":Ljava/lang/String;
    :cond_1c2
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWaitingToKill()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1ea

    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessReceiverRecord;->numberOfCurReceivers()I

    move-result v0

    if-nez v0, :cond_1ea

    .line 2802
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetSchedGroup()I

    move-result v0

    if-nez v0, :cond_1e7

    .line 2803
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWaitingToKill()Ljava/lang/String;

    move-result-object v0

    const/16 v15, 0x16

    const/16 v7, 0xa

    invoke-virtual {v2, v0, v7, v15, v6}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 2805
    const/4 v3, 0x0

    move/from16 v19, v3

    const/4 v15, 0x0

    goto/16 :goto_36d

    .line 2802
    :cond_1e7
    const/16 v7, 0xa

    goto :goto_1ec

    .line 2801
    :cond_1ea
    const/16 v7, 0xa

    .line 2808
    :goto_1ec
    packed-switch v8, :pswitch_data_690

    .line 2833
    :pswitch_1ef  #0x2
    const/4 v0, -0x1

    move v6, v0

    .local v0, "processGroup":I
    goto :goto_21d

    .line 2820
    .end local v0  # "processGroup":I
    :pswitch_1f2  #0x3, 0x4
    const/4 v0, 0x5

    .line 2822
    .restart local v0  # "processGroup":I
    iget-object v15, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v15, v15, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 2823
    invoke-virtual {v15}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getHomeProcess()Lcom/android/server/wm/WindowProcessController;

    move-result-object v15

    .line 2824
    .local v15, "homeProcess":Lcom/android/server/wm/WindowProcessController;
    if-eqz v15, :cond_208

    iget v7, v2, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v15}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v6

    if-ne v7, v6, :cond_208

    .line 2825
    const/4 v0, -0x1

    move v6, v0

    goto :goto_21d

    .line 2836
    .end local v15  # "homeProcess":Lcom/android/server/wm/WindowProcessController;
    :cond_208
    move v6, v0

    goto :goto_21d

    .line 2830
    .end local v0  # "processGroup":I
    :pswitch_20a  #0x1
    const/4 v0, 0x7

    .line 2831
    .restart local v0  # "processGroup":I
    move v6, v0

    goto :goto_21d

    .line 2811
    .end local v0  # "processGroup":I
    :pswitch_20d  #0x0
    invoke-static {}, Lcom/android/server/am/OomAdjusterStub;->getInstance()Lcom/android/server/am/OomAdjusterStub;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/android/server/am/OomAdjusterStub;->isSetUntrustedBgGroup(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_21b

    .line 2812
    const/16 v0, 0x8

    move v6, v0

    .restart local v0  # "processGroup":I
    goto :goto_21d

    .line 2814
    .end local v0  # "processGroup":I
    :cond_21b
    const/4 v0, 0x0

    .line 2817
    .restart local v0  # "processGroup":I
    move v6, v0

    .line 2836
    .end local v0  # "processGroup":I
    .local v6, "processGroup":I
    :goto_21d
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mProcessGroupHandler:Landroid/os/Handler;

    .line 2837
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v7

    .line 2836
    const/4 v15, 0x0

    invoke-virtual {v0, v15, v7, v6, v2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 2839
    :try_start_22b
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getRenderThreadTid()I

    move-result v0
    :try_end_22f
    .catch Ljava/lang/Exception; {:try_start_22b .. :try_end_22f} :catch_363

    move v7, v0

    .line 2840
    .local v7, "renderThreadTid":I
    const/4 v0, 0x3

    if-ne v8, v0, :cond_2ca

    .line 2842
    if-eq v5, v0, :cond_2c3

    .line 2843
    :try_start_235
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 2844
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z

    if-eqz v0, :cond_2a1

    .line 2846
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-static {v0}, Landroid/os/Process;->getThreadPriority(I)I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setSavedPriority(I)V

    .line 2847
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    const/4 v15, 0x1

    invoke-static {v0, v15}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    .line 2848
    if-eqz v7, :cond_28a

    .line 2849
    invoke-static {v7, v15}, Lcom/android/server/am/ActivityManagerService;->scheduleAsFifoPriority(IZ)Z

    .line 2851
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_283

    .line 2852
    const-string v0, "UI_FIFO"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_265
    .catch Ljava/lang/Exception; {:try_start_235 .. :try_end_265} :catch_2bb

    move/from16 v19, v3

    .end local v3  # "success":Z
    .local v19, "success":Z
    :try_start_267
    const-string v3, "Set RenderThread (TID "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v15, ") to FIFO"

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v20, v5

    const/4 v15, 0x0

    goto/16 :goto_362

    .line 2851
    .end local v19  # "success":Z
    .restart local v3  # "success":Z
    :cond_283
    move/from16 v19, v3

    .end local v3  # "success":Z
    .restart local v19  # "success":Z
    move/from16 v20, v5

    const/4 v15, 0x0

    goto/16 :goto_362

    .line 2856
    .end local v19  # "success":Z
    .restart local v3  # "success":Z
    :cond_28a
    move/from16 v19, v3

    .end local v3  # "success":Z
    .restart local v19  # "success":Z
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_29c

    .line 2857
    const-string v0, "UI_FIFO"

    const-string v3, "Not setting RenderThread TID"

    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v20, v5

    const/4 v15, 0x0

    goto/16 :goto_362

    .line 2856
    :cond_29c
    move/from16 v20, v5

    const/4 v15, 0x0

    goto/16 :goto_362

    .line 2872
    .end local v19  # "success":Z
    .restart local v3  # "success":Z
    :cond_2a1
    move/from16 v19, v3

    .end local v3  # "success":Z
    .restart local v19  # "success":Z
    invoke-static {}, Lcom/android/server/am/OomAdjusterStub;->getInstance()Lcom/android/server/am/OomAdjusterStub;

    move-result-object v0

    .line 2873
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3

    const/16 v15, -0xa

    .line 2872
    invoke-virtual {v0, v2, v3, v7, v15}, Lcom/android/server/am/OomAdjusterStub;->setProperThreadPriority(Lcom/android/server/am/ProcessRecord;III)V
    :try_end_2b0
    .catch Ljava/lang/Exception; {:try_start_267 .. :try_end_2b0} :catch_2b5

    move/from16 v20, v5

    const/4 v15, 0x0

    goto/16 :goto_362

    .line 2913
    .end local v7  # "renderThreadTid":I
    :catch_2b5
    move-exception v0

    move/from16 v20, v5

    const/4 v15, 0x0

    goto/16 :goto_36d

    .end local v19  # "success":Z
    .restart local v3  # "success":Z
    :catch_2bb
    move-exception v0

    move/from16 v19, v3

    move/from16 v20, v5

    const/4 v15, 0x0

    .end local v3  # "success":Z
    .restart local v19  # "success":Z
    goto/16 :goto_36d

    .line 2842
    .end local v19  # "success":Z
    .restart local v3  # "success":Z
    .restart local v7  # "renderThreadTid":I
    :cond_2c3
    move/from16 v19, v3

    .end local v3  # "success":Z
    .restart local v19  # "success":Z
    move/from16 v20, v5

    const/4 v15, 0x0

    goto/16 :goto_362

    .line 2878
    .end local v19  # "success":Z
    .restart local v3  # "success":Z
    :cond_2ca
    move/from16 v19, v3

    .end local v3  # "success":Z
    .restart local v19  # "success":Z
    if-ne v5, v0, :cond_35f

    if-eq v8, v0, :cond_35f

    .line 2880
    :try_start_2d0
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 2881
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerService;->mUseFifoUiScheduling:Z
    :try_end_2db
    .catch Ljava/lang/Exception; {:try_start_2d0 .. :try_end_2db} :catch_35a

    if-eqz v0, :cond_33e

    .line 2884
    :try_start_2dd
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0
    :try_end_2e1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2dd .. :try_end_2e1} :catch_321
    .catch Ljava/lang/SecurityException; {:try_start_2dd .. :try_end_2e1} :catch_304
    .catch Ljava/lang/Exception; {:try_start_2dd .. :try_end_2e1} :catch_2b5

    const/4 v3, 0x0

    :try_start_2e2
    invoke-static {v0, v3, v3}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_2e5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e2 .. :try_end_2e5} :catch_300
    .catch Ljava/lang/SecurityException; {:try_start_2e2 .. :try_end_2e5} :catch_304
    .catch Ljava/lang/Exception; {:try_start_2e2 .. :try_end_2e5} :catch_2fa

    .line 2885
    :try_start_2e5
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSavedPriority()I

    move-result v3

    invoke-static {v0, v3}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_2f0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2e5 .. :try_end_2f0} :catch_300
    .catch Ljava/lang/SecurityException; {:try_start_2e5 .. :try_end_2f0} :catch_304
    .catch Ljava/lang/Exception; {:try_start_2e5 .. :try_end_2f0} :catch_2b5

    .line 2886
    if-eqz v7, :cond_2f6

    .line 2887
    const/4 v3, 0x0

    :try_start_2f3
    invoke-static {v7, v3, v3}, Landroid/os/Process;->setThreadScheduler(III)V
    :try_end_2f6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2f3 .. :try_end_2f6} :catch_300
    .catch Ljava/lang/SecurityException; {:try_start_2f3 .. :try_end_2f6} :catch_304
    .catch Ljava/lang/Exception; {:try_start_2f3 .. :try_end_2f6} :catch_2fa

    .line 2896
    :cond_2f6
    move/from16 v20, v5

    const/4 v15, 0x0

    goto :goto_34c

    .line 2913
    .end local v7  # "renderThreadTid":I
    :catch_2fa
    move-exception v0

    move v15, v3

    move/from16 v20, v5

    goto/16 :goto_36d

    .line 2890
    .restart local v7  # "renderThreadTid":I
    :catch_300
    move-exception v0

    move/from16 v20, v5

    goto :goto_324

    .line 2894
    :catch_304
    move-exception v0

    .line 2895
    .local v0, "e":Ljava/lang/SecurityException;
    :try_start_305
    const-string v3, "OomAdjuster"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_30c
    .catch Ljava/lang/Exception; {:try_start_305 .. :try_end_30c} :catch_35a

    move/from16 v20, v5

    .end local v5  # "oldSchedGroup":I
    .local v20, "oldSchedGroup":I
    :try_start_30e
    const-string v5, "Failed to set scheduling policy, not allowed:\n"

    invoke-virtual {v15, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    const/4 v15, 0x0

    .end local v0  # "e":Ljava/lang/SecurityException;
    goto :goto_34c

    .line 2890
    .end local v20  # "oldSchedGroup":I
    .restart local v5  # "oldSchedGroup":I
    :catch_321
    move-exception v0

    move/from16 v20, v5

    .line 2891
    .end local v5  # "oldSchedGroup":I
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    .restart local v20  # "oldSchedGroup":I
    :goto_324
    const-string v3, "OomAdjuster"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Failed to set scheduling policy, thread does not exist:\n"

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2896
    const/4 v15, 0x0

    .end local v0  # "e":Ljava/lang/IllegalArgumentException;
    goto :goto_34c

    .line 2901
    .end local v20  # "oldSchedGroup":I
    .restart local v5  # "oldSchedGroup":I
    :cond_33e
    move/from16 v20, v5

    .end local v5  # "oldSchedGroup":I
    .restart local v20  # "oldSchedGroup":I
    invoke-static {}, Lcom/android/server/am/OomAdjusterStub;->getInstance()Lcom/android/server/am/OomAdjusterStub;

    move-result-object v0

    .line 2902
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v3
    :try_end_348
    .catch Ljava/lang/Exception; {:try_start_30e .. :try_end_348} :catch_357

    .line 2901
    const/4 v15, 0x0

    :try_start_349
    invoke-virtual {v0, v2, v3, v15}, Lcom/android/server/am/OomAdjusterStub;->resetProperThreadPriority(Lcom/android/server/am/ProcessRecord;II)V

    .line 2909
    :goto_34c
    invoke-static {}, Lcom/android/server/am/OomAdjusterStub;->getInstance()Lcom/android/server/am/OomAdjusterStub;

    move-result-object v0

    const/4 v3, -0x4

    invoke-virtual {v0, v2, v7, v3}, Lcom/android/server/am/OomAdjusterStub;->resetProperThreadPriority(Lcom/android/server/am/ProcessRecord;II)V
    :try_end_354
    .catch Ljava/lang/Exception; {:try_start_349 .. :try_end_354} :catch_355

    goto :goto_362

    .line 2913
    .end local v7  # "renderThreadTid":I
    :catch_355
    move-exception v0

    goto :goto_36d

    :catch_357
    move-exception v0

    const/4 v15, 0x0

    goto :goto_36d

    .end local v20  # "oldSchedGroup":I
    .restart local v5  # "oldSchedGroup":I
    :catch_35a
    move-exception v0

    move/from16 v20, v5

    const/4 v15, 0x0

    .end local v5  # "oldSchedGroup":I
    .restart local v20  # "oldSchedGroup":I
    goto :goto_36d

    .line 2878
    .end local v20  # "oldSchedGroup":I
    .restart local v5  # "oldSchedGroup":I
    .restart local v7  # "renderThreadTid":I
    :cond_35f
    move/from16 v20, v5

    const/4 v15, 0x0

    .line 2917
    .end local v5  # "oldSchedGroup":I
    .end local v7  # "renderThreadTid":I
    .restart local v20  # "oldSchedGroup":I
    :goto_362
    goto :goto_36d

    .line 2913
    .end local v19  # "success":Z
    .end local v20  # "oldSchedGroup":I
    .restart local v3  # "success":Z
    .restart local v5  # "oldSchedGroup":I
    :catch_363
    move-exception v0

    move/from16 v19, v3

    move/from16 v20, v5

    const/4 v15, 0x0

    .end local v3  # "success":Z
    .end local v5  # "oldSchedGroup":I
    .restart local v19  # "success":Z
    .restart local v20  # "oldSchedGroup":I
    goto :goto_36d

    .line 2793
    .end local v6  # "processGroup":I
    .end local v19  # "success":Z
    .end local v20  # "oldSchedGroup":I
    .restart local v3  # "success":Z
    :cond_36a
    move/from16 v19, v3

    move v15, v7

    .line 2920
    .end local v3  # "success":Z
    .restart local v19  # "success":Z
    :goto_36d
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasRepForegroundActivities()Z

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v3

    if-eq v0, v3, :cond_383

    .line 2921
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setRepForegroundActivities(Z)V

    .line 2922
    or-int/lit8 v4, v4, 0x1

    move/from16 v17, v4

    goto :goto_385

    .line 2920
    :cond_383
    move/from16 v17, v4

    .line 2925
    .end local v4  # "changes":I
    .local v17, "changes":I
    :goto_385
    invoke-direct/range {p0 .. p1}, Lcom/android/server/am/OomAdjuster;->updateAppFreezeStateLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 2927
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    if-eq v0, v3, :cond_3ac

    .line 2928
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setReportedProcState(I)V

    .line 2929
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_3ac

    .line 2936
    :try_start_39f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getReportedProcState()I

    move-result v3

    invoke-interface {v0, v3}, Landroid/app/IApplicationThread;->setProcessState(I)V
    :try_end_3aa
    .catch Landroid/os/RemoteException; {:try_start_39f .. :try_end_3aa} :catch_3ab

    .line 2938
    goto :goto_3ac

    .line 2937
    :catch_3ab
    move-exception v0

    .line 2941
    :cond_3ac
    :goto_3ac
    const/4 v0, 0x0

    .line 2942
    .local v0, "forceUpdatePssTime":Z
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v3

    const/16 v4, 0x14

    if-eq v3, v4, :cond_3c7

    .line 2944
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v4

    .line 2943
    invoke-static {v3, v4}, Lcom/android/server/am/ProcessList;->procStatesDifferForMem(II)Z

    move-result v3

    if-eqz v3, :cond_3c4

    goto :goto_3c7

    :cond_3c4
    move/from16 v20, v0

    goto :goto_41e

    .line 2945
    :cond_3c7
    :goto_3c7
    invoke-virtual {v13, v9, v10}, Lcom/android/server/am/ProcessStateRecord;->setLastStateTime(J)V

    .line 2946
    const/4 v0, 0x1

    .line 2947
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PSS:Z

    if-eqz v3, :cond_41c

    .line 2948
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Process state change from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2949
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 2950
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v5

    invoke-static {v5}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " next pss in "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 2951
    invoke-virtual {v5}, Lcom/android/server/am/ProcessProfileRecord;->getNextPssTime()J

    move-result-wide v5

    sub-long/2addr v5, v9

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2948
    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2954
    :cond_41c
    move/from16 v20, v0

    .end local v0  # "forceUpdatePssTime":Z
    .local v20, "forceUpdatePssTime":Z
    :goto_41e
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v6, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v6

    .line 2955
    :try_start_425
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessProfileRecord;->updateProcState(Lcom/android/server/am/ProcessStateRecord;)V

    .line 2956
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 2957
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;
    :try_end_436
    .catchall {:try_start_425 .. :try_end_436} :catchall_687

    .line 2956
    move-object/from16 v16, v6

    const/16 v18, 0xa

    move-wide/from16 v6, p3

    move/from16 v15, v18

    move/from16 v18, v8

    .end local v8  # "curSchedGroup":I
    .local v18, "curSchedGroup":I
    move/from16 v8, v20

    :try_start_442
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/am/AppProfiler;->updateNextPssTimeLPf(ILcom/android/server/am/ProcessProfileRecord;JZ)V

    .line 2958
    monitor-exit v16
    :try_end_446
    .catchall {:try_start_442 .. :try_end_446} :catchall_68e

    .line 2959
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    if-eq v0, v3, :cond_503

    .line 2960
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-nez v0, :cond_460

    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-nez v0, :cond_460

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v0, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    iget v3, v2, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v3, :cond_4a8

    .line 2961
    :cond_460
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Proc state change of "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " to "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2962
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " ("

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2963
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "): "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2964
    .local v0, "msg":Ljava/lang/String;
    const-string v3, "ActivityManager"

    invoke-direct {v1, v3, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2966
    .end local v0  # "msg":Ljava/lang/String;
    :cond_4a8
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    if-ge v0, v15, :cond_4b0

    const/4 v6, 0x1

    goto :goto_4b1

    :cond_4b0
    const/4 v6, 0x0

    :goto_4b1
    move v3, v6

    .line 2967
    .local v3, "setImportant":Z
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    if-ge v0, v15, :cond_4ba

    const/4 v6, 0x1

    goto :goto_4bb

    :cond_4ba
    const/4 v6, 0x0

    :goto_4bb
    move v4, v6

    .line 2968
    .local v4, "curImportant":Z
    if-eqz v3, :cond_4cc

    if-nez v4, :cond_4cc

    .line 2972
    invoke-virtual {v13, v9, v10}, Lcom/android/server/am/ProcessStateRecord;->setWhenUnimportant(J)V

    .line 2973
    iget-object v0, v2, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessProfileRecord;->mLastCpuTime:Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v5, 0x0

    invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 2977
    :cond_4cc
    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 2979
    invoke-direct {v1, v13, v9, v10}, Lcom/android/server/am/OomAdjuster;->maybeUpdateLastTopTime(Lcom/android/server/am/ProcessStateRecord;J)V

    .line 2981
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetProcState(I)V

    .line 2982
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    const/16 v5, 0xe

    if-lt v0, v5, :cond_4e5

    .line 2983
    const/4 v5, 0x0

    invoke-virtual {v13, v5}, Lcom/android/server/am/ProcessStateRecord;->setNotCachedSinceIdle(Z)V

    .line 2985
    :cond_4e5
    if-nez p2, :cond_4fe

    .line 2986
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v5, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 2987
    :try_start_4ee
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 2988
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v6

    .line 2987
    invoke-virtual {v0, v2, v6}, Lcom/android/server/am/ActivityManagerService;->setProcessTrackerStateLOSP(Lcom/android/server/am/ProcessRecord;I)V

    .line 2989
    monitor-exit v5

    goto :goto_502

    :catchall_4fb
    move-exception v0

    monitor-exit v5
    :try_end_4fd
    .catchall {:try_start_4ee .. :try_end_4fd} :catchall_4fb

    throw v0

    .line 2991
    :cond_4fe
    const/4 v5, 0x1

    invoke-virtual {v13, v5}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    .line 2993
    .end local v3  # "setImportant":Z
    .end local v4  # "curImportant":Z
    :goto_502
    goto :goto_546

    :cond_503
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasReportedInteraction()Z

    move-result v0

    if-eqz v0, :cond_528

    .line 2994
    const/4 v3, 0x2

    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v0

    .line 2996
    .local v0, "fgsInteractionChangeEnabled":Z
    if-eqz v0, :cond_515

    .line 2997
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    goto :goto_519

    .line 2998
    :cond_515
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    :goto_519
    nop

    .line 3001
    .local v3, "interactionThreshold":J
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getInteractionEventTime()J

    move-result-wide v5

    sub-long v5, v11, v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_527

    .line 3002
    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 3004
    .end local v0  # "fgsInteractionChangeEnabled":Z
    .end local v3  # "interactionThreshold":J
    :cond_527
    goto :goto_546

    .line 3005
    :cond_528
    const/4 v3, 0x2

    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v0

    .line 3007
    .restart local v0  # "fgsInteractionChangeEnabled":Z
    if-eqz v0, :cond_534

    .line 3008
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    goto :goto_538

    .line 3009
    :cond_534
    iget-object v3, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v3, v3, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    :goto_538
    nop

    .line 3011
    .restart local v3  # "interactionThreshold":J
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v5

    sub-long v5, v11, v5

    cmp-long v5, v5, v3

    if-lez v5, :cond_546

    .line 3012
    invoke-direct {v1, v2, v11, v12}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 3016
    .end local v0  # "fgsInteractionChangeEnabled":Z
    .end local v3  # "interactionThreshold":J
    :cond_546
    :goto_546
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetCapability()I

    move-result v3

    if-eq v0, v3, :cond_55c

    .line 3017
    or-int/lit8 v17, v17, 0x4

    .line 3018
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    invoke-virtual {v13, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetCapability(I)V

    move/from16 v0, v17

    goto :goto_55e

    .line 3016
    :cond_55c
    move/from16 v0, v17

    .line 3021
    .end local v17  # "changes":I
    .local v0, "changes":I
    :goto_55e
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v3

    .line 3022
    .local v3, "curBoundByNonBgRestrictedApp":Z
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isSetBoundByNonBgRestrictedApp()Z

    move-result v4

    if-eq v3, v4, :cond_57f

    .line 3023
    invoke-virtual {v13, v3}, Lcom/android/server/am/ProcessStateRecord;->setSetBoundByNonBgRestrictedApp(Z)V

    .line 3024
    if-nez v3, :cond_57f

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isBackgroundRestricted()Z

    move-result v4

    if-eqz v4, :cond_57f

    .line 3025
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v5, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda0;

    invoke-direct {v5, v1, v2}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/OomAdjuster;Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 3034
    :cond_57f
    if-eqz v0, :cond_646

    .line 3035
    sget-boolean v4, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v4, :cond_5a7

    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Changes in "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ": "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3037
    :cond_5a7
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 3038
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v4, v5, v6}, Lcom/android/server/am/ProcessList;->enqueueProcessChangeItemLocked(II)Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;

    move-result-object v4

    .line 3039
    .local v4, "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    iget v5, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    or-int/2addr v5, v0

    iput v5, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    .line 3040
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->hasRepForegroundActivities()Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    .line 3041
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getSetCapability()I

    move-result v5

    iput v5, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->capability:I

    .line 3042
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_PROCESS_OBSERVERS:Z

    if-eqz v5, :cond_646

    const-string v5, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Item "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3043
    invoke-static {v4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3044
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": changes="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->changes:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " foreground="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-boolean v7, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->foregroundActivities:Z

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " type="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3046
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " source="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getAdjSource()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " target="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3047
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->getAdjTarget()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " capability="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v4, Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;->capability:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 3042
    invoke-static {v5, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3050
    .end local v4  # "item":Lcom/android/server/am/ActivityManagerService$ProcessChangeItem;
    :cond_646
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v4

    if-eqz v4, :cond_678

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->shouldNotKillOnBgRestrictedAndIdle()Z

    move-result v4

    if-nez v4, :cond_678

    .line 3053
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isSetCached()Z

    move-result v4

    if-eqz v4, :cond_65e

    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isSetNoKillOnBgRestrictedAndIdle()Z

    move-result v4

    if-eqz v4, :cond_678

    .line 3056
    :cond_65e
    invoke-virtual {v13, v11, v12}, Lcom/android/server/am/ProcessStateRecord;->setLastCanKillOnBgRestrictedAndIdleTime(J)V

    .line 3058
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v5, 0x3a

    invoke-virtual {v4, v5}, Lcom/android/server/am/ActivityManagerService$MainHandler;->hasMessages(I)Z

    move-result v4

    if-nez v4, :cond_678

    .line 3059
    iget-object v4, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v6, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v6, v6, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdleSettleTimeMs:J

    invoke-virtual {v4, v5, v6, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3064
    :cond_678
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v4

    invoke-virtual {v13, v4}, Lcom/android/server/am/ProcessStateRecord;->setSetCached(Z)V

    .line 3065
    invoke-virtual {v13}, Lcom/android/server/am/ProcessStateRecord;->shouldNotKillOnBgRestrictedAndIdle()Z

    move-result v4

    invoke-virtual {v13, v4}, Lcom/android/server/am/ProcessStateRecord;->setSetNoKillOnBgRestrictedAndIdle(Z)V

    .line 3067
    return v19

    .line 2958
    .end local v0  # "changes":I
    .end local v3  # "curBoundByNonBgRestrictedApp":Z
    .end local v18  # "curSchedGroup":I
    .restart local v8  # "curSchedGroup":I
    .restart local v17  # "changes":I
    :catchall_687
    move-exception v0

    move-object/from16 v16, v6

    move/from16 v18, v8

    .end local v8  # "curSchedGroup":I
    .restart local v18  # "curSchedGroup":I
    :goto_68c
    :try_start_68c
    monitor-exit v16
    :try_end_68d
    .catchall {:try_start_68c .. :try_end_68d} :catchall_68e

    throw v0

    :catchall_68e
    move-exception v0

    goto :goto_68c

    :pswitch_data_690
    .packed-switch 0x0
        :pswitch_20d  #00000000
        :pswitch_20a  #00000001
        :pswitch_1ef  #00000002
        :pswitch_1f2  #00000003
        :pswitch_1f2  #00000004
    .end packed-switch
.end method

.method private assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V
    .registers 32
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 949
    .local p1, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 953
    .local v1, "numLru":I
    const/16 v2, 0x384

    .line 954
    .local v2, "curCachedAdj":I
    add-int/lit8 v3, v2, 0xa

    .line 955
    .local v3, "nextCachedAdj":I
    const/4 v4, 0x0

    .line 956
    .local v4, "curCachedImpAdj":I
    const/16 v5, 0x389

    .line 957
    .local v5, "curEmptyAdj":I
    add-int/lit8 v6, v5, 0xa

    .line 959
    .local v6, "nextEmptyAdj":I
    iget-object v7, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v7, v7, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    .line 960
    .local v7, "emptyProcessLimit":I
    iget-object v8, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v8, v8, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int/2addr v8, v7

    .line 966
    .local v8, "cachedProcessLimit":I
    iget v9, v0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    sub-int v9, v1, v9

    iget v10, v0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    sub-int/2addr v9, v10

    .line 967
    .local v9, "numEmptyProcs":I
    if-le v9, v8, :cond_22

    .line 974
    move v9, v8

    .line 976
    :cond_22
    const/4 v11, 0x1

    if-lez v10, :cond_2a

    iget v12, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    add-int/2addr v10, v12

    sub-int/2addr v10, v11

    goto :goto_2b

    :cond_2a
    move v10, v11

    :goto_2b
    iget v12, v0, Lcom/android/server/am/OomAdjuster;->mNumSlots:I

    div-int/2addr v10, v12

    .line 978
    .local v10, "cachedFactor":I
    if-ge v10, v11, :cond_31

    const/4 v10, 0x1

    .line 980
    :cond_31
    add-int v13, v9, v12

    sub-int/2addr v13, v11

    div-int/2addr v13, v12

    .line 981
    .local v13, "emptyFactor":I
    if-ge v13, v11, :cond_38

    const/4 v13, 0x1

    .line 983
    :cond_38
    const/4 v11, -0x1

    .line 984
    .local v11, "stepCached":I
    const/4 v12, -0x1

    .line 985
    .local v12, "stepEmpty":I
    const/4 v14, 0x0

    .line 986
    .local v14, "lastCachedGroup":I
    const/4 v15, 0x0

    .line 987
    .local v15, "lastCachedGroupImportance":I
    const/16 v16, 0x0

    .line 990
    .local v16, "lastCachedGroupUid":I
    const/16 v17, 0x384

    .line 991
    .local v17, "curCachePerfImpAdj":I
    const/16 v18, 0x0

    .line 994
    .local v18, "stepCachedPerfImpAdj":I
    add-int/lit8 v19, v1, -0x1

    move/from16 v0, v16

    move/from16 v16, v1

    move/from16 v1, v19

    .local v0, "lastCachedGroupUid":I
    .local v1, "i":I
    .local v16, "numLru":I
    :goto_4a
    if-ltz v1, :cond_203

    .line 995
    move/from16 v19, v7

    move-object/from16 v7, p1

    .end local v7  # "emptyProcessLimit":I
    .local v19, "emptyProcessLimit":I
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    move-object/from16 v7, v20

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 996
    .local v7, "app":Lcom/android/server/am/ProcessRecord;
    move/from16 v20, v8

    .end local v8  # "cachedProcessLimit":I
    .local v20, "cachedProcessLimit":I
    iget-object v8, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 999
    .local v8, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v21

    if-nez v21, :cond_1e1

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v21

    if-eqz v21, :cond_1e1

    move/from16 v21, v9

    .end local v9  # "numEmptyProcs":I
    .local v21, "numEmptyProcs":I
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v9

    move/from16 v22, v13

    .end local v13  # "emptyFactor":I
    .local v22, "emptyFactor":I
    const/16 v13, 0x3e9

    if-lt v9, v13, :cond_1d4

    .line 1001
    iget-object v9, v7, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1002
    .local v9, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v13

    move/from16 v23, v12

    .end local v12  # "stepEmpty":I
    .local v23, "stepEmpty":I
    const-string v12, ")"

    move/from16 v24, v5

    .end local v5  # "curEmptyAdj":I
    .local v24, "curEmptyAdj":I
    const-string v5, " adj: "

    move/from16 v25, v6

    .end local v6  # "nextEmptyAdj":I
    .local v25, "nextEmptyAdj":I
    const-string v6, "ActivityManager"

    move-object/from16 v26, v6

    packed-switch v13, :pswitch_data_204

    .line 1070
    move-object/from16 v6, v26

    move/from16 v13, v24

    move/from16 v24, v0

    move/from16 v0, v25

    .end local v25  # "nextEmptyAdj":I
    .local v0, "nextEmptyAdj":I
    .local v13, "curEmptyAdj":I
    .local v24, "lastCachedGroupUid":I
    if-eq v13, v0, :cond_17f

    .line 1071
    move/from16 v25, v2

    .end local v2  # "curCachedAdj":I
    .local v25, "curCachedAdj":I
    add-int/lit8 v2, v23, 0x1

    .line 1072
    .end local v23  # "stepEmpty":I
    .local v2, "stepEmpty":I
    move/from16 v26, v3

    move/from16 v3, v22

    .end local v22  # "emptyFactor":I
    .local v3, "emptyFactor":I
    .local v26, "nextCachedAdj":I
    if-lt v2, v3, :cond_17c

    .line 1073
    const/4 v2, 0x0

    .line 1074
    move v13, v0

    .line 1075
    add-int/lit8 v0, v0, 0xa

    .line 1076
    move/from16 v22, v2

    const/16 v2, 0x3e7

    .end local v2  # "stepEmpty":I
    .local v22, "stepEmpty":I
    if-le v0, v2, :cond_187

    .line 1077
    const/16 v0, 0x3e7

    goto/16 :goto_187

    .line 1007
    .end local v13  # "curEmptyAdj":I
    .end local v26  # "nextCachedAdj":I
    .local v0, "lastCachedGroupUid":I
    .local v2, "curCachedAdj":I
    .local v3, "nextCachedAdj":I
    .local v22, "emptyFactor":I
    .restart local v23  # "stepEmpty":I
    .local v24, "curEmptyAdj":I
    .local v25, "nextEmptyAdj":I
    :pswitch_ad  #0x10, 0x11, 0x12
    const/4 v13, 0x0

    .line 1008
    .local v13, "inGroup":Z
    invoke-virtual {v9}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v6

    .line 1009
    .local v6, "connectionGroup":I
    if-eqz v6, :cond_d7

    .line 1010
    move/from16 v28, v13

    .end local v13  # "inGroup":Z
    .local v28, "inGroup":Z
    invoke-virtual {v9}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionImportance()I

    move-result v13

    .line 1011
    .local v13, "connectionImportance":I
    move-object/from16 v29, v12

    iget v12, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    if-ne v0, v12, :cond_d0

    if-ne v14, v6, :cond_d0

    .line 1015
    if-le v13, v15, :cond_cd

    .line 1016
    move v15, v13

    .line 1017
    if-ge v2, v3, :cond_cd

    const/16 v12, 0x3e7

    if-ge v2, v12, :cond_cd

    .line 1019
    add-int/lit8 v4, v4, 0x1

    .line 1022
    :cond_cd
    const/4 v12, 0x1

    move v13, v12

    .end local v28  # "inGroup":Z
    .local v12, "inGroup":Z
    goto :goto_db

    .line 1024
    .end local v12  # "inGroup":Z
    .restart local v28  # "inGroup":Z
    :cond_d0
    iget v0, v7, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 1025
    move v14, v6

    .line 1026
    move v15, v13

    move/from16 v13, v28

    goto :goto_db

    .line 1009
    .end local v28  # "inGroup":Z
    .local v13, "inGroup":Z
    :cond_d7
    move-object/from16 v29, v12

    move/from16 v28, v13

    .line 1029
    :goto_db
    if-nez v13, :cond_ee

    if-eq v2, v3, :cond_ee

    .line 1030
    add-int/lit8 v11, v11, 0x1

    .line 1031
    const/4 v4, 0x0

    .line 1032
    if-lt v11, v10, :cond_ee

    .line 1033
    const/4 v11, 0x0

    .line 1034
    move v2, v3

    .line 1035
    add-int/lit8 v3, v3, 0xa

    .line 1036
    const/16 v12, 0x3e7

    if-le v3, v12, :cond_ee

    .line 1037
    const/16 v3, 0x3e7

    .line 1043
    :cond_ee
    if-nez v13, :cond_11c

    iget-object v12, v7, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move/from16 v27, v0

    .end local v0  # "lastCachedGroupUid":I
    .local v27, "lastCachedGroupUid":I
    iget-object v0, v7, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 1044
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 1045
    add-int v2, v17, v18

    .line 1046
    add-int/lit8 v0, v18, 0x1

    .line 1047
    .end local v18  # "stepCachedPerfImpAdj":I
    .local v0, "stepCachedPerfImpAdj":I
    const/4 v12, 0x5

    if-lt v0, v12, :cond_111

    .line 1048
    add-int/lit8 v17, v17, 0xa

    .line 1049
    const/4 v0, 0x0

    move/from16 v18, v0

    goto :goto_113

    .line 1047
    :cond_111
    move/from16 v18, v0

    .line 1051
    .end local v0  # "stepCachedPerfImpAdj":I
    .restart local v18  # "stepCachedPerfImpAdj":I
    :goto_113
    invoke-virtual {v9}, Lcom/android/server/am/ProcessServiceRecord;->hasAboveClient()Z

    move-result v0

    if-eqz v0, :cond_11e

    .line 1052
    add-int/lit8 v18, v18, 0x1

    goto :goto_11e

    .line 1043
    .end local v27  # "lastCachedGroupUid":I
    .local v0, "lastCachedGroupUid":I
    :cond_11c
    move/from16 v27, v0

    .line 1059
    .end local v0  # "lastCachedGroupUid":I
    .restart local v27  # "lastCachedGroupUid":I
    :cond_11e
    :goto_11e
    add-int v0, v2, v4

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1060
    add-int v0, v2, v4

    invoke-virtual {v9, v0}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 1061
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v0, :cond_16e

    .line 1062
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Assigning activity LRU #"

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1063
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " (curCachedAdj="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " curCachedImpAdj="

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    move-object/from16 v12, v29

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1062
    move-object/from16 v5, v26

    invoke-static {v5, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 994
    .end local v6  # "connectionGroup":I
    .end local v7  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v8  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v9  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v13  # "inGroup":Z
    :cond_16e
    move/from16 v26, v3

    move/from16 v3, v22

    move/from16 v12, v23

    move/from16 v5, v24

    move/from16 v6, v25

    move/from16 v0, v27

    goto/16 :goto_1f6

    .line 1072
    .end local v22  # "emptyFactor":I
    .end local v23  # "stepEmpty":I
    .end local v27  # "lastCachedGroupUid":I
    .local v0, "nextEmptyAdj":I
    .local v2, "stepEmpty":I
    .local v3, "emptyFactor":I
    .restart local v7  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v8  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v9  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v13, "curEmptyAdj":I
    .local v24, "lastCachedGroupUid":I
    .local v25, "curCachedAdj":I
    .restart local v26  # "nextCachedAdj":I
    :cond_17c
    move/from16 v22, v2

    goto :goto_187

    .line 1070
    .end local v25  # "curCachedAdj":I
    .end local v26  # "nextCachedAdj":I
    .local v2, "curCachedAdj":I
    .local v3, "nextCachedAdj":I
    .restart local v22  # "emptyFactor":I
    .restart local v23  # "stepEmpty":I
    :cond_17f
    move/from16 v25, v2

    move/from16 v26, v3

    move/from16 v3, v22

    .end local v2  # "curCachedAdj":I
    .end local v22  # "emptyFactor":I
    .local v3, "emptyFactor":I
    .restart local v25  # "curCachedAdj":I
    .restart local v26  # "nextCachedAdj":I
    move/from16 v22, v23

    .line 1086
    .end local v23  # "stepEmpty":I
    .local v22, "stepEmpty":I
    :cond_187
    :goto_187
    invoke-virtual {v8, v13}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1087
    invoke-virtual {v9, v13}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v2

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 1088
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_LRU:Z

    if-eqz v2, :cond_1c8

    .line 1089
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v23, v0

    .end local v0  # "nextEmptyAdj":I
    .local v23, "nextEmptyAdj":I
    const-string v0, "Assigning empty LRU #"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1090
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " (curEmptyAdj="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1089
    invoke-static {v6, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1ca

    .line 1088
    .end local v23  # "nextEmptyAdj":I
    .restart local v0  # "nextEmptyAdj":I
    :cond_1c8
    move/from16 v23, v0

    .line 994
    .end local v0  # "nextEmptyAdj":I
    .end local v7  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v8  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v9  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v23  # "nextEmptyAdj":I
    :goto_1ca
    move v5, v13

    move/from16 v12, v22

    move/from16 v6, v23

    move/from16 v0, v24

    move/from16 v2, v25

    goto :goto_1f6

    .line 999
    .end local v13  # "curEmptyAdj":I
    .end local v23  # "nextEmptyAdj":I
    .end local v24  # "lastCachedGroupUid":I
    .end local v25  # "curCachedAdj":I
    .end local v26  # "nextCachedAdj":I
    .local v0, "lastCachedGroupUid":I
    .restart local v2  # "curCachedAdj":I
    .local v3, "nextCachedAdj":I
    .restart local v5  # "curEmptyAdj":I
    .local v6, "nextEmptyAdj":I
    .restart local v7  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v8  # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v12, "stepEmpty":I
    .local v22, "emptyFactor":I
    :cond_1d4
    move/from16 v24, v0

    move/from16 v25, v2

    move/from16 v26, v3

    move v13, v5

    move v0, v6

    move/from16 v23, v12

    move/from16 v3, v22

    .end local v2  # "curCachedAdj":I
    .end local v5  # "curEmptyAdj":I
    .end local v6  # "nextEmptyAdj":I
    .end local v12  # "stepEmpty":I
    .end local v22  # "emptyFactor":I
    .local v0, "nextEmptyAdj":I
    .local v3, "emptyFactor":I
    .restart local v13  # "curEmptyAdj":I
    .local v23, "stepEmpty":I
    .restart local v24  # "lastCachedGroupUid":I
    .restart local v25  # "curCachedAdj":I
    .restart local v26  # "nextCachedAdj":I
    goto :goto_1ee

    .end local v21  # "numEmptyProcs":I
    .end local v23  # "stepEmpty":I
    .end local v24  # "lastCachedGroupUid":I
    .end local v25  # "curCachedAdj":I
    .end local v26  # "nextCachedAdj":I
    .local v0, "lastCachedGroupUid":I
    .restart local v2  # "curCachedAdj":I
    .local v3, "nextCachedAdj":I
    .restart local v5  # "curEmptyAdj":I
    .restart local v6  # "nextEmptyAdj":I
    .local v9, "numEmptyProcs":I
    .restart local v12  # "stepEmpty":I
    .local v13, "emptyFactor":I
    :cond_1e1
    move/from16 v24, v0

    move/from16 v25, v2

    move/from16 v26, v3

    move v0, v6

    move/from16 v21, v9

    move/from16 v23, v12

    move v3, v13

    move v13, v5

    .line 994
    .end local v2  # "curCachedAdj":I
    .end local v5  # "curEmptyAdj":I
    .end local v6  # "nextEmptyAdj":I
    .end local v7  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v8  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v9  # "numEmptyProcs":I
    .end local v12  # "stepEmpty":I
    .local v0, "nextEmptyAdj":I
    .local v3, "emptyFactor":I
    .local v13, "curEmptyAdj":I
    .restart local v21  # "numEmptyProcs":I
    .restart local v23  # "stepEmpty":I
    .restart local v24  # "lastCachedGroupUid":I
    .restart local v25  # "curCachedAdj":I
    .restart local v26  # "nextCachedAdj":I
    :goto_1ee
    move v6, v0

    move v5, v13

    move/from16 v12, v23

    move/from16 v0, v24

    move/from16 v2, v25

    .end local v13  # "curEmptyAdj":I
    .end local v23  # "stepEmpty":I
    .end local v24  # "lastCachedGroupUid":I
    .end local v25  # "curCachedAdj":I
    .local v0, "lastCachedGroupUid":I
    .restart local v2  # "curCachedAdj":I
    .restart local v5  # "curEmptyAdj":I
    .restart local v6  # "nextEmptyAdj":I
    .restart local v12  # "stepEmpty":I
    :goto_1f6
    add-int/lit8 v1, v1, -0x1

    move v13, v3

    move/from16 v7, v19

    move/from16 v8, v20

    move/from16 v9, v21

    move/from16 v3, v26

    goto/16 :goto_4a

    .line 1097
    .end local v1  # "i":I
    .end local v19  # "emptyProcessLimit":I
    .end local v20  # "cachedProcessLimit":I
    .end local v21  # "numEmptyProcs":I
    .end local v26  # "nextCachedAdj":I
    .local v3, "nextCachedAdj":I
    .local v7, "emptyProcessLimit":I
    .local v8, "cachedProcessLimit":I
    .restart local v9  # "numEmptyProcs":I
    .local v13, "emptyFactor":I
    :cond_203
    return-void

    :pswitch_data_204
    .packed-switch 0x10
        :pswitch_ad  #00000010
        :pswitch_ad  #00000011
        :pswitch_ad  #00000012
    .end packed-switch
.end method

.method private checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z
    .registers 4
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 720
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    if-nez v0, :cond_6

    .line 721
    const/4 v0, 0x0

    return v0

    .line 723
    :cond_6
    const/4 v0, 0x1

    if-eqz p1, :cond_f

    .line 724
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v1, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    goto :goto_11

    .line 726
    :cond_f
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    .line 728
    :goto_11
    return v0
.end method

.method private collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z
    .registers 15
    .param p3, "uids"  # Lcom/android/server/am/ActiveUids;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ActiveUids;",
            ")Z"
        }
    .end annotation

    .line 622
    .local p1, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ProcessRecord;>;"
    .local p2, "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpQueue:Ljava/util/ArrayDeque;

    .line 623
    .local v0, "queue":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->clear()V

    .line 624
    invoke-virtual {p2}, Ljava/util/ArrayList;->clear()V

    .line 625
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-virtual {p1}, Landroid/util/ArraySet;->size()I

    move-result v2

    .local v2, "size":I
    :goto_d
    const/4 v3, 0x1

    if-ge v1, v2, :cond_21

    .line 626
    invoke-virtual {p1, v1}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/ProcessRecord;

    .line 627
    .local v4, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v5, v4, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 628
    invoke-virtual {v0, v4}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 625
    .end local v4  # "app":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v1, v1, 0x1

    goto :goto_d

    .line 631
    .end local v1  # "i":I
    .end local v2  # "size":I
    :cond_21
    invoke-virtual {p3}, Lcom/android/server/am/ActiveUids;->clear()V

    .line 634
    const/4 v1, 0x0

    .line 636
    .local v1, "containsCycle":Z
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .local v2, "pr":Lcom/android/server/am/ProcessRecord;
    :goto_2b
    if-eqz v2, :cond_c2

    .line 637
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 638
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v4

    .line 639
    .local v4, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v4, :cond_3d

    .line 640
    invoke-virtual {v4}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v5

    invoke-virtual {p3, v5, v4}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 642
    :cond_3d
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 643
    .local v5, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->numberOfConnections()I

    move-result v6

    sub-int/2addr v6, v3

    .local v6, "i":I
    :goto_44
    if-ltz v6, :cond_88

    .line 644
    invoke-virtual {v5, v6}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionAt(I)Lcom/android/server/am/ConnectionRecord;

    move-result-object v7

    .line 645
    .local v7, "cr":Lcom/android/server/am/ConnectionRecord;
    iget v8, v7, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v8, v8, 0x2

    if-eqz v8, :cond_57

    .line 646
    iget-object v8, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->isolationHostProc:Lcom/android/server/am/ProcessRecord;

    goto :goto_5d

    :cond_57
    iget-object v8, v7, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v8, v8, Lcom/android/server/am/AppBindRecord;->service:Lcom/android/server/am/ServiceRecord;

    iget-object v8, v8, Lcom/android/server/am/ServiceRecord;->app:Lcom/android/server/am/ProcessRecord;

    .line 647
    .local v8, "service":Lcom/android/server/am/ProcessRecord;
    :goto_5d
    if-eqz v8, :cond_85

    if-ne v8, v2, :cond_62

    .line 648
    goto :goto_85

    .line 650
    :cond_62
    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v9

    or-int/2addr v1, v9

    .line 651
    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v9

    if-eqz v9, :cond_72

    .line 652
    goto :goto_85

    .line 654
    :cond_72
    iget v9, v7, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v10, 0x80000a0

    and-int/2addr v9, v10

    const/16 v10, 0x20

    if-ne v9, v10, :cond_7d

    .line 658
    goto :goto_85

    .line 660
    :cond_7d
    invoke-virtual {v0, v8}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 661
    iget-object v9, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v9, v3}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 643
    .end local v7  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v8  # "service":Lcom/android/server/am/ProcessRecord;
    :cond_85
    :goto_85
    add-int/lit8 v6, v6, -0x1

    goto :goto_44

    .line 663
    .end local v6  # "i":I
    :cond_88
    iget-object v6, v2, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 664
    .local v6, "ppr":Lcom/android/server/am/ProcessProviderRecord;
    invoke-virtual {v6}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviderConnections()I

    move-result v7

    sub-int/2addr v7, v3

    .local v7, "i":I
    :goto_8f
    if-ltz v7, :cond_b9

    .line 665
    invoke-virtual {v6, v7}, Lcom/android/server/am/ProcessProviderRecord;->getProviderConnectionAt(I)Lcom/android/server/am/ContentProviderConnection;

    move-result-object v8

    .line 666
    .local v8, "cpc":Lcom/android/server/am/ContentProviderConnection;
    iget-object v9, v8, Lcom/android/server/am/ContentProviderConnection;->provider:Lcom/android/server/am/ContentProviderRecord;

    iget-object v9, v9, Lcom/android/server/am/ContentProviderRecord;->proc:Lcom/android/server/am/ProcessRecord;

    .line 667
    .local v9, "provider":Lcom/android/server/am/ProcessRecord;
    if-eqz v9, :cond_b6

    if-ne v9, v2, :cond_9e

    .line 668
    goto :goto_b6

    .line 670
    :cond_9e
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v10

    or-int/2addr v1, v10

    .line 671
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->isReachable()Z

    move-result v10

    if-eqz v10, :cond_ae

    .line 672
    goto :goto_b6

    .line 674
    :cond_ae
    invoke-virtual {v0, v9}, Ljava/util/ArrayDeque;->offer(Ljava/lang/Object;)Z

    .line 675
    iget-object v10, v9, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v10, v3}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 664
    .end local v8  # "cpc":Lcom/android/server/am/ContentProviderConnection;
    .end local v9  # "provider":Lcom/android/server/am/ProcessRecord;
    :cond_b6
    :goto_b6
    add-int/lit8 v7, v7, -0x1

    goto :goto_8f

    .line 636
    .end local v4  # "uidRec":Lcom/android/server/am/UidRecord;
    .end local v5  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v6  # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v7  # "i":I
    :cond_b9
    invoke-virtual {v0}, Ljava/util/ArrayDeque;->poll()Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    goto/16 :goto_2b

    .line 679
    .end local v2  # "pr":Lcom/android/server/am/ProcessRecord;
    :cond_c2
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 680
    .local v2, "size":I
    if-lez v2, :cond_e4

    .line 682
    const/4 v3, 0x0

    .local v3, "l":I
    add-int/lit8 v4, v2, -0x1

    .local v4, "r":I
    :goto_cb
    if-ge v3, v4, :cond_e4

    .line 683
    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/ProcessRecord;

    .line 684
    .local v5, "t":Lcom/android/server/am/ProcessRecord;
    invoke-virtual {p2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {p2, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 685
    invoke-virtual {p2, v4, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 682
    .end local v5  # "t":Lcom/android/server/am/ProcessRecord;
    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v4, -0x1

    goto :goto_cb

    .line 688
    .end local v3  # "l":I
    .end local v4  # "r":I
    :cond_e4
    return v1
.end method

.method private computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z
    .registers 65
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "cachedAdj"  # I
    .param p3, "topApp"  # Lcom/android/server/am/ProcessRecord;
    .param p4, "doingAll"  # Z
    .param p5, "now"  # J
    .param p7, "cycleReEval"  # Z
    .param p8, "computeClients"  # Z

    .line 1556
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p3

    iget-object v8, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1557
    .local v8, "state":Lcom/android/server/am/ProcessStateRecord;
    iget v0, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v1

    const/4 v7, 0x1

    const/4 v5, 0x0

    if-ne v0, v1, :cond_26

    .line 1558
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v0

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCompletedAdjSeq()I

    move-result v1

    if-ne v0, v1, :cond_1d

    .line 1560
    return v5

    .line 1564
    :cond_1d
    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    .line 1565
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0, v10}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 1567
    return v5

    .line 1571
    :cond_26
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    const/16 v6, 0x13

    if-nez v0, :cond_4c

    .line 1572
    iget v0, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    .line 1573
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 1574
    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 1575
    const/16 v0, 0x3e7

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 1576
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1577
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v0

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    .line 1578
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    .line 1579
    return v5

    .line 1582
    :cond_4c
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    .line 1583
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 1584
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    .line 1585
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setEmpty(Z)V

    .line 1586
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 1587
    if-nez p7, :cond_75

    .line 1589
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setNoKillOnBgRestrictedAndIdle(Z)V

    .line 1591
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 1592
    .local v0, "uidRec":Lcom/android/server/am/UidRecord;
    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    if-eqz v0, :cond_71

    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v2

    if-eqz v2, :cond_71

    move v2, v7

    goto :goto_72

    :cond_71
    move v2, v5

    :goto_72
    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    .line 1595
    .end local v0  # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_75
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1596
    .local v4, "appUid":I
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v3, v0, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    .line 1598
    .local v3, "logUid":I
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    .line 1599
    .local v2, "prevAppAdj":I
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    .line 1600
    .local v1, "prevProcState":I
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    .line 1601
    .local v0, "prevCapability":I
    iget-object v15, v10, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1603
    .local v15, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v12

    const/16 v13, 0xf

    const/4 v14, 0x2

    const-string v7, "ActivityManager"

    if-gtz v12, :cond_149

    .line 1606
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v6, :cond_9c

    if-ne v3, v4, :cond_b2

    .line 1607
    :cond_9c
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Making fixed: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v9, v7, v6}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1609
    :cond_b2
    const-string v6, "fixed"

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1610
    iget v6, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    .line 1611
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1612
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    .line 1613
    invoke-virtual {v8, v14}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 1614
    invoke-virtual {v8, v13}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    .line 1615
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 1620
    const/4 v6, 0x1

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    .line 1621
    if-ne v10, v11, :cond_e3

    .line 1622
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    .line 1623
    const/4 v6, 0x3

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 1624
    const-string/jumbo v6, "pers-top-activity"

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_fc

    .line 1625
    :cond_e3
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v6

    if-eqz v6, :cond_f3

    .line 1627
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    .line 1628
    const-string/jumbo v6, "pers-top-ui"

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    goto :goto_fc

    .line 1629
    :cond_f3
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasVisibleActivities()Z

    move-result v6

    if-eqz v6, :cond_fc

    .line 1630
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    .line 1632
    :cond_fc
    :goto_fc
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isSystemNoUi()Z

    move-result v6

    if-nez v6, :cond_123

    .line 1633
    iget-object v6, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v6

    const/4 v7, 0x1

    if-eq v6, v7, :cond_11c

    .line 1634
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isRunningRemoteAnimation()Z

    move-result v6

    if-eqz v6, :cond_114

    goto :goto_11c

    .line 1640
    :cond_114
    const/4 v12, 0x5

    invoke-virtual {v8, v12}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 1641
    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    goto :goto_123

    .line 1636
    :cond_11c
    :goto_11c
    invoke-virtual {v8, v7}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 1637
    const/4 v6, 0x3

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 1644
    :cond_123
    :goto_123
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 1645
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 1646
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v6

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    .line 1648
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v6

    if-lt v6, v2, :cond_147

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v6

    if-ge v6, v1, :cond_145

    goto :goto_147

    :cond_145
    move v7, v5

    goto :goto_148

    :cond_147
    :goto_147
    const/4 v7, 0x1

    :goto_148
    return v7

    .line 1651
    :cond_149
    const/4 v12, 0x5

    const/16 v16, 0x3

    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setSystemNoUi(Z)V

    .line 1653
    iget-object v6, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getTopProcessState()I

    move-result v6

    .line 1660
    .local v6, "PROCESS_STATE_CUR_TOP":I
    if-eqz p7, :cond_160

    iget-object v12, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v12}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v12

    goto :goto_161

    :cond_160
    move v12, v5

    :goto_161
    move/from16 v24, v12

    .line 1662
    .local v24, "capability":I
    const/4 v12, 0x0

    .line 1663
    .local v12, "foregroundActivities":Z
    const/16 v18, 0x0

    .line 1664
    .local v18, "hasVisibleActivities":Z
    if-ne v6, v14, :cond_239

    if-ne v10, v11, :cond_239

    .line 1666
    const/16 v19, 0x0

    .line 1667
    .local v19, "adj":I
    const/16 v20, 0x3

    .line 1668
    .local v20, "schedGroup":I
    const-string/jumbo v13, "top-activity"

    invoke-virtual {v8, v13}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1669
    const/4 v12, 0x1

    .line 1670
    const/16 v18, 0x1

    .line 1671
    move v13, v6

    .line 1673
    .local v13, "procState":I
    sget-boolean v25, Lcom/android/server/am/OomAdjuster;->mIsTopAppRenderThreadBoostEnabled:Z

    if-eqz v25, :cond_216

    .line 1674
    sget v14, Lcom/android/server/am/OomAdjuster;->mCurRenderThreadTid:I

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getRenderThreadTid()I

    move-result v5

    if-eq v14, v5, :cond_20f

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getRenderThreadTid()I

    move-result v5

    if-lez v5, :cond_20f

    .line 1675
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getRenderThreadTid()I

    move-result v5

    sput v5, Lcom/android/server/am/OomAdjuster;->mCurRenderThreadTid:I

    .line 1676
    sget-object v5, Lcom/android/server/am/OomAdjuster;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v5, :cond_208

    .line 1677
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "TOP-APP: pid:"

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, ", processName: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v14, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, ", renderThreadTid: "

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1678
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getRenderThreadTid()I

    move-result v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1677
    const-string v14, "OomAdjuster"

    invoke-static {v14, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1679
    sget v5, Lcom/android/server/am/OomAdjuster;->mPerfHandle:I

    if-ltz v5, :cond_1d6

    .line 1680
    sget-object v5, Lcom/android/server/am/OomAdjuster;->mPerfBoost:Landroid/util/BoostFramework;

    invoke-virtual {v5}, Landroid/util/BoostFramework;->perfLockRelease()I

    .line 1681
    const/4 v5, -0x1

    sput v5, Lcom/android/server/am/OomAdjuster;->mPerfHandle:I

    .line 1683
    :cond_1d6
    sget-object v5, Lcom/android/server/am/OomAdjuster;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v14, v10, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1684
    move/from16 v28, v0

    .end local v0  # "prevCapability":I
    .local v28, "prevCapability":I
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getRenderThreadTid()I

    move-result v0

    .line 1683
    move/from16 v29, v1

    move/from16 v27, v2

    const/16 v1, 0x1096

    const/4 v2, 0x1

    .end local v1  # "prevProcState":I
    .end local v2  # "prevAppAdj":I
    .local v27, "prevAppAdj":I
    .local v29, "prevProcState":I
    invoke-virtual {v5, v1, v14, v0, v2}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v0

    sput v0, Lcom/android/server/am/OomAdjuster;->mPerfHandle:I

    .line 1685
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VENDOR_HINT_BOOST_RENDERTHREAD perfHint was called. mPerfHandle: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v1, Lcom/android/server/am/OomAdjuster;->mPerfHandle:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "OomAdjuster"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21c

    .line 1676
    .end local v27  # "prevAppAdj":I
    .end local v28  # "prevCapability":I
    .end local v29  # "prevProcState":I
    .restart local v0  # "prevCapability":I
    .restart local v1  # "prevProcState":I
    .restart local v2  # "prevAppAdj":I
    :cond_208
    move/from16 v28, v0

    move/from16 v29, v1

    move/from16 v27, v2

    .end local v0  # "prevCapability":I
    .end local v1  # "prevProcState":I
    .end local v2  # "prevAppAdj":I
    .restart local v27  # "prevAppAdj":I
    .restart local v28  # "prevCapability":I
    .restart local v29  # "prevProcState":I
    goto :goto_21c

    .line 1674
    .end local v27  # "prevAppAdj":I
    .end local v28  # "prevCapability":I
    .end local v29  # "prevProcState":I
    .restart local v0  # "prevCapability":I
    .restart local v1  # "prevProcState":I
    .restart local v2  # "prevAppAdj":I
    :cond_20f
    move/from16 v28, v0

    move/from16 v29, v1

    move/from16 v27, v2

    .end local v0  # "prevCapability":I
    .end local v1  # "prevProcState":I
    .end local v2  # "prevAppAdj":I
    .restart local v27  # "prevAppAdj":I
    .restart local v28  # "prevCapability":I
    .restart local v29  # "prevProcState":I
    goto :goto_21c

    .line 1673
    .end local v27  # "prevAppAdj":I
    .end local v28  # "prevCapability":I
    .end local v29  # "prevProcState":I
    .restart local v0  # "prevCapability":I
    .restart local v1  # "prevProcState":I
    .restart local v2  # "prevAppAdj":I
    :cond_216
    move/from16 v28, v0

    move/from16 v29, v1

    move/from16 v27, v2

    .line 1691
    .end local v0  # "prevCapability":I
    .end local v1  # "prevProcState":I
    .end local v2  # "prevAppAdj":I
    .restart local v27  # "prevAppAdj":I
    .restart local v28  # "prevCapability":I
    .restart local v29  # "prevProcState":I
    :goto_21c
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_222

    if-ne v3, v4, :cond_26c

    .line 1692
    :cond_222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Making top: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26c

    .line 1664
    .end local v13  # "procState":I
    .end local v19  # "adj":I
    .end local v20  # "schedGroup":I
    .end local v27  # "prevAppAdj":I
    .end local v28  # "prevCapability":I
    .end local v29  # "prevProcState":I
    .restart local v0  # "prevCapability":I
    .restart local v1  # "prevProcState":I
    .restart local v2  # "prevAppAdj":I
    :cond_239
    move/from16 v28, v0

    move/from16 v29, v1

    move/from16 v27, v2

    .line 1694
    .end local v0  # "prevCapability":I
    .end local v1  # "prevProcState":I
    .end local v2  # "prevAppAdj":I
    .restart local v27  # "prevAppAdj":I
    .restart local v28  # "prevCapability":I
    .restart local v29  # "prevProcState":I
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isRunningRemoteAnimation()Z

    move-result v0

    if-eqz v0, :cond_276

    .line 1695
    const/16 v19, 0x64

    .line 1696
    .restart local v19  # "adj":I
    const/16 v20, 0x3

    .line 1697
    .restart local v20  # "schedGroup":I
    const-string/jumbo v0, "running-remote-anim"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1698
    move v13, v6

    .line 1699
    .restart local v13  # "procState":I
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_256

    if-ne v3, v4, :cond_26c

    .line 1700
    :cond_256
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Making running remote anim: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1762
    :cond_26c
    :goto_26c
    move v0, v12

    move v1, v13

    move/from16 v2, v18

    move/from16 v5, v19

    move/from16 v30, v20

    goto/16 :goto_37d

    .line 1702
    .end local v13  # "procState":I
    .end local v19  # "adj":I
    .end local v20  # "schedGroup":I
    :cond_276
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;

    move-result-object v0

    if-eqz v0, :cond_2a4

    .line 1704
    const/16 v19, 0x0

    .line 1705
    .restart local v19  # "adj":I
    const/16 v20, 0x2

    .line 1706
    .restart local v20  # "schedGroup":I
    const-string/jumbo v0, "instrumentation"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1707
    const/4 v13, 0x4

    .line 1708
    .restart local v13  # "procState":I
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_28d

    if-ne v3, v4, :cond_26c

    .line 1709
    :cond_28d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Making instrumentation: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26c

    .line 1711
    .end local v13  # "procState":I
    .end local v19  # "adj":I
    .end local v20  # "schedGroup":I
    :cond_2a4
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsReceivingBroadcast(Landroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_2e3

    .line 1716
    const/16 v19, 0x0

    .line 1717
    .restart local v19  # "adj":I
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mTmpBroadcastQueue:Landroid/util/ArraySet;

    iget-object v1, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {v0, v1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2bc

    .line 1718
    const/4 v0, 0x2

    goto :goto_2bd

    :cond_2bc
    const/4 v0, 0x0

    :goto_2bd
    move/from16 v20, v0

    .line 1719
    .restart local v20  # "schedGroup":I
    const-string v0, "broadcast"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1720
    const/16 v13, 0xb

    .line 1721
    .restart local v13  # "procState":I
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_2cc

    if-ne v3, v4, :cond_26c

    .line 1722
    :cond_2cc
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Making broadcast: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_26c

    .line 1724
    .end local v13  # "procState":I
    .end local v19  # "adj":I
    .end local v20  # "schedGroup":I
    :cond_2e3
    invoke-virtual {v15}, Lcom/android/server/am/ProcessServiceRecord;->numberOfExecutingServices()I

    move-result v0

    if-lez v0, :cond_31b

    .line 1727
    const/16 v19, 0x0

    .line 1728
    .restart local v19  # "adj":I
    invoke-virtual {v15}, Lcom/android/server/am/ProcessServiceRecord;->shouldExecServicesFg()Z

    move-result v0

    if-eqz v0, :cond_2f3

    .line 1729
    const/4 v0, 0x2

    goto :goto_2f4

    :cond_2f3
    const/4 v0, 0x0

    :goto_2f4
    move/from16 v20, v0

    .line 1730
    .restart local v20  # "schedGroup":I
    const-string v0, "exec-service"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1731
    const/16 v13, 0xa

    .line 1732
    .restart local v13  # "procState":I
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_303

    if-ne v3, v4, :cond_26c

    .line 1733
    :cond_303
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Making exec-service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26c

    .line 1735
    .end local v13  # "procState":I
    .end local v19  # "adj":I
    .end local v20  # "schedGroup":I
    :cond_31b
    if-ne v10, v11, :cond_347

    .line 1736
    const/16 v19, 0x0

    .line 1737
    .restart local v19  # "adj":I
    const/16 v20, 0x0

    .line 1738
    .restart local v20  # "schedGroup":I
    const-string/jumbo v0, "top-sleeping"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1739
    const/4 v12, 0x1

    .line 1740
    move v13, v6

    .line 1741
    .restart local v13  # "procState":I
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_32f

    if-ne v3, v4, :cond_26c

    .line 1742
    :cond_32f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Making top (sleeping): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26c

    .line 1746
    .end local v13  # "procState":I
    .end local v19  # "adj":I
    .end local v20  # "schedGroup":I
    :cond_347
    const/16 v20, 0x0

    .line 1749
    .restart local v20  # "schedGroup":I
    move/from16 v19, p2

    .line 1750
    .restart local v19  # "adj":I
    const/16 v13, 0x13

    .line 1751
    .restart local v13  # "procState":I
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v0

    if-nez v0, :cond_35f

    .line 1752
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 1753
    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setEmpty(Z)V

    .line 1754
    const-string v0, "cch-empty"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1756
    :cond_35f
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_365

    if-ne v3, v4, :cond_26c

    .line 1757
    :cond_365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Making empty: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_26c

    .line 1762
    .end local v12  # "foregroundActivities":Z
    .end local v13  # "procState":I
    .end local v18  # "hasVisibleActivities":Z
    .end local v19  # "adj":I
    .end local v20  # "schedGroup":I
    .local v0, "foregroundActivities":Z
    .local v1, "procState":I
    .local v2, "hasVisibleActivities":Z
    .local v5, "adj":I
    .local v30, "schedGroup":I
    :goto_37d
    if-nez v0, :cond_3b6

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasActivities()Z

    move-result v12

    if-eqz v12, :cond_3b6

    .line 1763
    iget-object v13, v9, Lcom/android/server/am/OomAdjuster;->mTmpComputeOomAdjWindowCallback:Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;

    const/4 v14, 0x5

    move-object v12, v8

    const/16 v11, 0xf

    const/4 v11, 0x2

    move v14, v5

    move-object/from16 v25, v15

    .end local v15  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v25, "psr":Lcom/android/server/am/ProcessServiceRecord;
    move v15, v0

    move/from16 v16, v2

    move/from16 v17, v1

    move/from16 v18, v30

    move/from16 v19, v4

    move/from16 v20, v3

    move/from16 v21, v6

    invoke-virtual/range {v12 .. v21}, Lcom/android/server/am/ProcessStateRecord;->computeOomAdjFromActivitiesIfNecessary(Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;IZZIIIII)V

    .line 1767
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedAdj()I

    move-result v5

    .line 1768
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedForegroundActivities()Z

    move-result v0

    .line 1769
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasVisibleActivities()Z

    move-result v2

    .line 1770
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedProcState()I

    move-result v1

    .line 1771
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedSchedGroup()I

    move-result v30

    move v12, v0

    move v13, v2

    goto :goto_3bb

    .line 1762
    .end local v25  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v15  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    :cond_3b6
    move-object/from16 v25, v15

    const/4 v11, 0x2

    .line 1774
    .end local v15  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v25  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    move v12, v0

    move v13, v2

    .end local v0  # "foregroundActivities":Z
    .end local v2  # "hasVisibleActivities":Z
    .restart local v12  # "foregroundActivities":Z
    .local v13, "hasVisibleActivities":Z
    :goto_3bb
    const/16 v0, 0x12

    if-le v1, v0, :cond_3e8

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasRecentTasks()Z

    move-result v0

    if-eqz v0, :cond_3e8

    .line 1775
    const/16 v1, 0x12

    .line 1776
    const-string v0, "cch-rec"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1777
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_3d2

    if-ne v3, v4, :cond_3e8

    .line 1778
    :cond_3d2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise procstate to cached recent: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1782
    :cond_3e8
    const-string v14, ": "

    const-string v15, "Raise to "

    const/4 v2, 0x4

    const/16 v0, 0xc8

    if-gt v5, v0, :cond_3f3

    if-le v1, v2, :cond_465

    .line 1784
    :cond_3f3
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v16

    if-eqz v16, :cond_434

    .line 1786
    const/16 v5, 0xc8

    .line 1787
    const/4 v1, 0x4

    .line 1788
    const-string v2, "fg-service"

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1789
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 1790
    const/16 v30, 0x2

    .line 1791
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_40d

    if-ne v3, v4, :cond_465

    .line 1792
    :cond_40d
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getAdjType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_465

    .line 1795
    :cond_434
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result v0

    if-eqz v0, :cond_465

    .line 1797
    const/16 v5, 0xc8

    .line 1798
    const/4 v1, 0x6

    .line 1799
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 1800
    const-string/jumbo v0, "has-overlay-ui"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1801
    const/16 v30, 0x2

    .line 1802
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_44f

    if-ne v3, v4, :cond_465

    .line 1803
    :cond_44f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise to overlay ui: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1811
    :cond_465
    :goto_465
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v0

    if-eqz v0, :cond_4aa

    const/16 v0, 0x32

    if-le v5, v0, :cond_4aa

    .line 1812
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getLastTopTime()J

    move-result-wide v18

    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v21, v12

    .end local v12  # "foregroundActivities":Z
    .local v21, "foregroundActivities":Z
    iget-wide v11, v0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_FGS_GRACE_DURATION:J

    add-long v18, v18, v11

    cmp-long v0, v18, p5

    if-gtz v0, :cond_486

    .line 1813
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    const/4 v2, 0x2

    if-gt v0, v2, :cond_4ac

    .line 1814
    :cond_486
    const/16 v5, 0x32

    .line 1815
    const-string v0, "fg-service-act"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1816
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_493

    if-ne v3, v4, :cond_4ac

    .line 1817
    :cond_493
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise to recent fg: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4ac

    .line 1811
    .end local v21  # "foregroundActivities":Z
    .restart local v12  # "foregroundActivities":Z
    :cond_4aa
    move/from16 v21, v12

    .line 1825
    .end local v12  # "foregroundActivities":Z
    .restart local v21  # "foregroundActivities":Z
    :cond_4ac
    :goto_4ac
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ProcessServiceRecord;->hasTopStartedAlmostPerceptibleServices()Z

    move-result v0

    if-eqz v0, :cond_4f2

    const/16 v0, 0x32

    if-le v5, v0, :cond_4f2

    .line 1827
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getLastTopTime()J

    move-result-wide v11

    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move v2, v5

    move/from16 v18, v6

    .end local v5  # "adj":I
    .end local v6  # "PROCESS_STATE_CUR_TOP":I
    .local v2, "adj":I
    .local v18, "PROCESS_STATE_CUR_TOP":I
    iget-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->TOP_TO_ALMOST_PERCEPTIBLE_GRACE_DURATION:J

    add-long/2addr v11, v5

    cmp-long v0, v11, p5

    if-gtz v0, :cond_4cd

    .line 1829
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    const/4 v5, 0x2

    if-gt v0, v5, :cond_4f5

    .line 1830
    :cond_4cd
    const/16 v5, 0x32

    .line 1833
    .end local v2  # "adj":I
    .restart local v5  # "adj":I
    const-string/jumbo v0, "top-ej-act"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1834
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_4db

    if-ne v3, v4, :cond_4f6

    .line 1835
    :cond_4db
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Raise to recent fg for EJ: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4f6

    .line 1825
    .end local v18  # "PROCESS_STATE_CUR_TOP":I
    .restart local v6  # "PROCESS_STATE_CUR_TOP":I
    :cond_4f2
    move v2, v5

    move/from16 v18, v6

    .line 1839
    .end local v5  # "adj":I
    .end local v6  # "PROCESS_STATE_CUR_TOP":I
    .restart local v2  # "adj":I
    .restart local v18  # "PROCESS_STATE_CUR_TOP":I
    :cond_4f5
    move v5, v2

    .end local v2  # "adj":I
    .restart local v5  # "adj":I
    :cond_4f6
    :goto_4f6
    const/16 v11, 0x8

    const/16 v0, 0xc8

    if-gt v5, v0, :cond_4fe

    if-le v1, v11, :cond_536

    .line 1841
    :cond_4fe
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_536

    .line 1845
    const/16 v5, 0xc8

    .line 1846
    const/16 v1, 0x8

    .line 1847
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 1848
    const-string v2, "force-imp"

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1849
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getForcingToImportant()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 1850
    const/16 v30, 0x2

    .line 1851
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_520

    if-ne v3, v4, :cond_536

    .line 1852
    :cond_520
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Raise to force imp: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v7, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    :cond_536
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHeavyWeight()Z

    move-result v2

    if-eqz v2, :cond_592

    .line 1858
    const/16 v2, 0x190

    if-le v5, v2, :cond_56a

    .line 1860
    const/16 v5, 0x190

    .line 1861
    const/16 v30, 0x0

    .line 1862
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 1863
    const-string/jumbo v2, "heavy"

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1864
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_554

    if-ne v3, v4, :cond_56a

    .line 1865
    :cond_554
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Raise adj to heavy: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v7, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1868
    :cond_56a
    const/16 v2, 0xd

    if-le v1, v2, :cond_592

    .line 1869
    const/16 v1, 0xd

    .line 1870
    const-string/jumbo v2, "heavy"

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1871
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_57c

    if-ne v3, v4, :cond_592

    .line 1872
    :cond_57c
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Raise procstate to heavy: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v7, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1877
    :cond_592
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v2

    if-eqz v2, :cond_5ee

    .line 1878
    const/16 v2, 0x258

    if-le v5, v2, :cond_5c6

    .line 1881
    const/16 v5, 0x258

    .line 1882
    const/16 v30, 0x0

    .line 1883
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 1884
    const-string/jumbo v2, "home"

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1885
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_5b0

    if-ne v3, v4, :cond_5c6

    .line 1886
    :cond_5b0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Raise adj to home: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v7, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1889
    :cond_5c6
    const/16 v2, 0xe

    if-le v1, v2, :cond_5ee

    .line 1890
    const/16 v1, 0xe

    .line 1891
    const-string/jumbo v2, "home"

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1892
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_5d8

    if-ne v3, v4, :cond_5ee

    .line 1893
    :cond_5d8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Raise procstate to home: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v7, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1898
    :cond_5ee
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsPreviousProcess()Z

    move-result v2

    const/16 v12, 0x2bc

    if-eqz v2, :cond_654

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedHasActivities()Z

    move-result v2

    if-eqz v2, :cond_654

    .line 1899
    if-le v5, v12, :cond_628

    .line 1903
    const/16 v5, 0x2bc

    .line 1904
    const/16 v30, 0x0

    .line 1905
    const/4 v2, 0x0

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 1906
    const-string/jumbo v2, "previous"

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1907
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_612

    if-ne v3, v4, :cond_628

    .line 1908
    :cond_612
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Raise adj to prev: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v7, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1911
    :cond_628
    const/16 v2, 0xf

    if-le v1, v2, :cond_651

    .line 1912
    const/16 v1, 0xf

    .line 1913
    const-string/jumbo v2, "previous"

    invoke-virtual {v8, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1914
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_63a

    if-ne v3, v4, :cond_654

    .line 1915
    :cond_63a
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Raise procstate to prev: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v9, v7, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_654

    .line 1911
    :cond_651
    move/from16 v2, v30

    goto :goto_656

    .line 1928
    :cond_654
    :goto_654
    move/from16 v2, v30

    .end local v30  # "schedGroup":I
    .local v2, "schedGroup":I
    :goto_656
    if-eqz p7, :cond_670

    .line 1929
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v6

    invoke-static {v1, v6}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1930
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1931
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v6

    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 1933
    :cond_670
    invoke-virtual {v8, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 1934
    invoke-virtual {v8, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 1936
    const/4 v6, 0x0

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setHasStartedServices(Z)V

    .line 1937
    iget v6, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v8, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjSeq(I)V

    .line 1939
    iget-object v6, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mBackupTargets:Landroid/util/SparseArray;

    iget v0, v10, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v6, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/android/server/am/BackupRecord;

    .line 1940
    .local v6, "backupTarget":Lcom/android/server/am/BackupRecord;
    if-eqz v6, :cond_704

    iget-object v0, v6, Lcom/android/server/am/BackupRecord;->app:Lcom/android/server/am/ProcessRecord;

    if-ne v10, v0, :cond_704

    .line 1942
    const/16 v0, 0x12c

    if-le v5, v0, :cond_6dd

    .line 1943
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_BACKUP:Z

    if-eqz v0, :cond_6b1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "oom BACKUP_APP_ADJ for "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1944
    :cond_6b1
    const/16 v5, 0x12c

    .line 1945
    if-le v1, v11, :cond_6b8

    .line 1946
    const/16 v0, 0x8

    move v1, v0

    .line 1948
    :cond_6b8
    const-string v0, "backup"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1949
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_6c3

    if-ne v3, v4, :cond_6d9

    .line 1950
    :cond_6c3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Raise adj to backup: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1952
    :cond_6d9
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 1954
    :cond_6dd
    const/16 v0, 0x9

    if-le v1, v0, :cond_704

    .line 1955
    const/16 v1, 0x9

    .line 1956
    const-string v0, "backup"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1957
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_6ee

    if-ne v3, v4, :cond_704

    .line 1958
    :cond_6ee
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Raise procstate to backup: "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1963
    :cond_704
    const/4 v0, 0x0

    .line 1964
    .local v0, "capabilityFromFGS":I
    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v12

    .line 1965
    .local v12, "boundByNonBgRestricted":Z
    const/16 v30, 0x0

    .line 1966
    .local v30, "scheduleLikeTopApp":Z
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v33

    const/16 v22, 0x1

    add-int/lit8 v33, v33, -0x1

    move/from16 v11, v33

    move/from16 v55, v12

    move v12, v0

    move/from16 v0, v55

    .line 1967
    .local v0, "boundByNonBgRestricted":Z
    .local v11, "is":I
    .local v12, "capabilityFromFGS":I
    :goto_71a
    move/from16 v34, v13

    .end local v13  # "hasVisibleActivities":Z
    .local v34, "hasVisibleActivities":Z
    if-ltz v11, :cond_d6c

    if-gtz v5, :cond_73a

    if-eqz v2, :cond_73a

    const/4 v13, 0x2

    if-le v1, v13, :cond_726

    goto :goto_73a

    :cond_726
    move/from16 v36, v0

    move/from16 v38, v2

    move v13, v4

    move-object/from16 v23, v6

    move-object v11, v7

    move-object v4, v8

    move/from16 v39, v12

    move-object v12, v14

    move/from16 v47, v27

    move/from16 v45, v28

    move/from16 v46, v29

    goto/16 :goto_d80

    .line 1971
    :cond_73a
    :goto_73a
    move-object/from16 v13, v25

    move-object/from16 v25, v14

    .end local v25  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v13, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v13, v11}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v14

    .line 1972
    .local v14, "s":Lcom/android/server/am/ServiceRecord;
    move/from16 v36, v0

    .end local v0  # "boundByNonBgRestricted":Z
    .local v36, "boundByNonBgRestricted":Z
    iget-boolean v0, v14, Lcom/android/server/am/ServiceRecord;->startRequested:Z

    if-eqz v0, :cond_7f9

    .line 1973
    const/4 v0, 0x1

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setHasStartedServices(Z)V

    .line 1974
    const/16 v0, 0xa

    if-le v1, v0, :cond_77c

    .line 1975
    const/16 v1, 0xa

    .line 1976
    const-string/jumbo v0, "started-services"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1977
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_762

    if-ne v3, v4, :cond_75f

    goto :goto_762

    :cond_75f
    move/from16 v37, v1

    goto :goto_77a

    .line 1978
    :cond_762
    :goto_762
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v37, v1

    .end local v1  # "procState":I
    .local v37, "procState":I
    const-string v1, "Raise procstate to started service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    :goto_77a
    move/from16 v1, v37

    .end local v37  # "procState":I
    .restart local v1  # "procState":I
    :cond_77c
    iget-boolean v0, v14, Lcom/android/server/am/ServiceRecord;->mKeepWarming:Z

    if-nez v0, :cond_79d

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v0

    if-eqz v0, :cond_79d

    invoke-virtual {v8}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v0

    if-nez v0, :cond_79d

    .line 1987
    const/16 v0, 0x1f4

    if-le v5, v0, :cond_795

    .line 1988
    const-string v0, "cch-started-ui-services"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2015
    :cond_795
    move/from16 v38, v2

    move/from16 v40, v11

    move/from16 v39, v12

    const/4 v11, 0x0

    goto :goto_800

    .line 1991
    :cond_79d
    iget-boolean v0, v14, Lcom/android/server/am/ServiceRecord;->mKeepWarming:Z

    if-nez v0, :cond_7b7

    move/from16 v37, v1

    .end local v1  # "procState":I
    .restart local v37  # "procState":I
    iget-wide v0, v14, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    move/from16 v38, v2

    .end local v2  # "schedGroup":I
    .local v38, "schedGroup":I
    iget-object v2, v9, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move/from16 v40, v11

    move/from16 v39, v12

    .end local v11  # "is":I
    .end local v12  # "capabilityFromFGS":I
    .local v39, "capabilityFromFGS":I
    .local v40, "is":I
    iget-wide v11, v2, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v0, v11

    cmp-long v0, p5, v0

    if-gez v0, :cond_7b5

    goto :goto_7bf

    :cond_7b5
    const/4 v11, 0x0

    goto :goto_7ed

    .end local v37  # "procState":I
    .end local v38  # "schedGroup":I
    .end local v39  # "capabilityFromFGS":I
    .end local v40  # "is":I
    .restart local v1  # "procState":I
    .restart local v2  # "schedGroup":I
    .restart local v11  # "is":I
    .restart local v12  # "capabilityFromFGS":I
    :cond_7b7
    move/from16 v37, v1

    move/from16 v38, v2

    move/from16 v40, v11

    move/from16 v39, v12

    .line 1996
    .end local v1  # "procState":I
    .end local v2  # "schedGroup":I
    .end local v11  # "is":I
    .end local v12  # "capabilityFromFGS":I
    .restart local v37  # "procState":I
    .restart local v38  # "schedGroup":I
    .restart local v39  # "capabilityFromFGS":I
    .restart local v40  # "is":I
    :goto_7bf
    const/16 v0, 0x1f4

    if-le v5, v0, :cond_7ec

    .line 1997
    const/16 v5, 0x1f4

    .line 1998
    const-string/jumbo v0, "started-services"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 1999
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_7d1

    if-ne v3, v4, :cond_7e7

    .line 2000
    :cond_7d1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Raise adj to started service: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v7, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2003
    :cond_7e7
    const/4 v11, 0x0

    invoke-virtual {v8, v11}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    goto :goto_7ed

    .line 1996
    :cond_7ec
    const/4 v11, 0x0

    .line 2009
    :goto_7ed
    const/16 v0, 0x1f4

    if-le v5, v0, :cond_7f6

    .line 2010
    const-string v0, "cch-started-services"

    invoke-virtual {v8, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2015
    :cond_7f6
    move/from16 v1, v37

    goto :goto_800

    .line 1972
    .end local v37  # "procState":I
    .end local v38  # "schedGroup":I
    .end local v39  # "capabilityFromFGS":I
    .end local v40  # "is":I
    .restart local v1  # "procState":I
    .restart local v2  # "schedGroup":I
    .restart local v11  # "is":I
    .restart local v12  # "capabilityFromFGS":I
    :cond_7f9
    move/from16 v38, v2

    move/from16 v40, v11

    move/from16 v39, v12

    const/4 v11, 0x0

    .line 2015
    .end local v2  # "schedGroup":I
    .end local v11  # "is":I
    .end local v12  # "capabilityFromFGS":I
    .restart local v38  # "schedGroup":I
    .restart local v39  # "capabilityFromFGS":I
    .restart local v40  # "is":I
    :goto_800
    iget-boolean v0, v14, Lcom/android/server/am/ServiceRecord;->isForeground:Z

    if-eqz v0, :cond_833

    .line 2016
    iget v0, v14, Lcom/android/server/am/ServiceRecord;->foregroundServiceType:I

    .line 2017
    .local v0, "fgsType":I
    iget-boolean v2, v14, Lcom/android/server/am/ServiceRecord;->mAllowWhileInUsePermissionInFgs:Z

    if-eqz v2, :cond_833

    .line 2018
    nop

    .line 2020
    and-int/lit8 v2, v0, 0x8

    if-eqz v2, :cond_811

    const/4 v2, 0x1

    goto :goto_812

    :cond_811
    move v2, v11

    :goto_812
    or-int v2, v39, v2

    .line 2022
    .end local v39  # "capabilityFromFGS":I
    .local v2, "capabilityFromFGS":I
    const/4 v12, 0x1

    invoke-virtual {v8, v12}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v26

    .line 2024
    .local v26, "enabled":Z
    if-eqz v26, :cond_82f

    .line 2025
    nop

    .line 2027
    and-int/lit8 v12, v0, 0x40

    if-eqz v12, :cond_822

    const/4 v12, 0x2

    goto :goto_823

    :cond_822
    move v12, v11

    :goto_823
    or-int/2addr v2, v12

    .line 2028
    nop

    .line 2030
    and-int/lit16 v12, v0, 0x80

    if-eqz v12, :cond_82b

    const/4 v12, 0x4

    goto :goto_82c

    :cond_82b
    move v12, v11

    :goto_82c
    or-int/2addr v2, v12

    move v12, v2

    goto :goto_835

    .line 2032
    :cond_82f
    or-int/lit8 v2, v2, 0x6

    move v12, v2

    goto :goto_835

    .line 2038
    .end local v0  # "fgsType":I
    .end local v2  # "capabilityFromFGS":I
    .end local v26  # "enabled":Z
    .restart local v39  # "capabilityFromFGS":I
    :cond_833
    move/from16 v12, v39

    .end local v39  # "capabilityFromFGS":I
    .restart local v12  # "capabilityFromFGS":I
    :goto_835
    invoke-virtual {v14}, Lcom/android/server/am/ServiceRecord;->getConnections()Landroid/util/ArrayMap;

    move-result-object v2

    .line 2039
    .local v2, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/16 v22, 0x1

    add-int/lit8 v0, v0, -0x1

    move/from16 v26, v24

    move/from16 v24, v5

    move v5, v0

    move/from16 v0, v36

    .line 2040
    .end local v36  # "boundByNonBgRestricted":Z
    .local v0, "boundByNonBgRestricted":Z
    .local v5, "conni":I
    .local v24, "adj":I
    .local v26, "capability":I
    :goto_848
    if-ltz v5, :cond_d3d

    if-gtz v24, :cond_865

    if-eqz v38, :cond_865

    const/4 v11, 0x2

    if-le v1, v11, :cond_852

    goto :goto_865

    :cond_852
    move-object/from16 v23, v6

    move-object v5, v7

    move/from16 v37, v12

    move-object/from16 v12, v25

    move/from16 v47, v27

    move/from16 v45, v28

    move/from16 v46, v29

    move-object/from16 v25, v13

    move v13, v4

    move-object v4, v8

    goto/16 :goto_d52

    .line 2044
    :cond_865
    :goto_865
    invoke-virtual {v2, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/ArrayList;

    .line 2045
    .local v11, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    const/16 v36, 0x0

    move-object/from16 v37, v8

    move/from16 v8, v36

    move/from16 v55, v24

    move/from16 v24, v0

    move/from16 v0, v55

    .line 2046
    .local v0, "adj":I
    .local v8, "i":I
    .local v24, "boundByNonBgRestricted":Z
    .local v37, "state":Lcom/android/server/am/ProcessStateRecord;
    :goto_877
    move-object/from16 v39, v2

    .end local v2  # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v39, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v8, v2, :cond_cfc

    if-gtz v0, :cond_8a3

    if-eqz v38, :cond_8a3

    const/4 v2, 0x2

    if-le v1, v2, :cond_887

    goto :goto_8a3

    :cond_887
    move-object/from16 v23, v6

    move/from16 v47, v27

    move/from16 v45, v28

    move/from16 v46, v29

    move-object/from16 v16, v39

    move/from16 v28, v1

    move/from16 v27, v5

    move-object v5, v7

    move-object/from16 v55, v13

    move v13, v4

    move-object/from16 v4, v37

    move/from16 v37, v12

    move-object/from16 v12, v25

    move-object/from16 v25, v55

    goto/16 :goto_d1a

    .line 2052
    :cond_8a3
    :goto_8a3
    invoke-virtual {v11, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ConnectionRecord;

    .line 2053
    .local v2, "cr":Lcom/android/server/am/ConnectionRecord;
    move/from16 v36, v0

    .end local v0  # "adj":I
    .local v36, "adj":I
    iget-object v0, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    if-ne v0, v10, :cond_8d1

    .line 2055
    move-object/from16 v23, v6

    move/from16 v47, v27

    move/from16 v45, v28

    move/from16 v46, v29

    move/from16 v0, v36

    move-object/from16 v16, v39

    move/from16 v27, v5

    move-object v5, v7

    move/from16 v36, v8

    move-object/from16 v29, v11

    move-object/from16 v55, v13

    move v13, v4

    move-object/from16 v4, v37

    move/from16 v37, v12

    move-object/from16 v12, v25

    move-object/from16 v25, v55

    goto/16 :goto_cdc

    .line 2058
    :cond_8d1
    const/16 v41, 0x0

    .line 2060
    .local v41, "trackedProcState":Z
    iget-object v0, v2, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v0, v0, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    .line 2061
    .local v0, "client":Lcom/android/server/am/ProcessRecord;
    move/from16 v42, v8

    .end local v8  # "i":I
    .local v42, "i":I
    iget-object v8, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2062
    .local v8, "cstate":Lcom/android/server/am/ProcessStateRecord;
    if-eqz p8, :cond_919

    .line 2063
    const/16 v43, 0x1

    move-object/from16 v17, v0

    move/from16 v45, v28

    move/from16 v44, v36

    .end local v0  # "client":Lcom/android/server/am/ProcessRecord;
    .end local v28  # "prevCapability":I
    .end local v36  # "adj":I
    .local v17, "client":Lcom/android/server/am/ProcessRecord;
    .local v44, "adj":I
    .local v45, "prevCapability":I
    move-object/from16 v0, p0

    move/from16 v28, v1

    move/from16 v46, v29

    .end local v1  # "procState":I
    .end local v29  # "prevProcState":I
    .local v28, "procState":I
    .local v46, "prevProcState":I
    move-object/from16 v1, v17

    move-object/from16 v48, v2

    move/from16 v47, v27

    move-object/from16 v16, v39

    .end local v2  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v27  # "prevAppAdj":I
    .end local v39  # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v16, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v47, "prevAppAdj":I
    .local v48, "cr":Lcom/android/server/am/ConnectionRecord;
    move/from16 v2, p2

    move/from16 v49, v3

    .end local v3  # "logUid":I
    .local v49, "logUid":I
    move-object/from16 v3, p3

    move/from16 v50, v4

    .end local v4  # "appUid":I
    .local v50, "appUid":I
    move/from16 v4, p4

    move/from16 v27, v5

    move-object/from16 v23, v6

    .end local v5  # "conni":I
    .end local v6  # "backupTarget":Lcom/android/server/am/BackupRecord;
    .local v23, "backupTarget":Lcom/android/server/am/BackupRecord;
    .local v27, "conni":I
    move-wide/from16 v5, p5

    move-object/from16 v52, v7

    move-object/from16 v29, v11

    move/from16 v11, v22

    .end local v11  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v29, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    move/from16 v7, p7

    move-object/from16 v35, v8

    move-object/from16 v22, v37

    move/from16 v36, v42

    .end local v8  # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .end local v37  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v42  # "i":I
    .local v22, "state":Lcom/android/server/am/ProcessStateRecord;
    .local v35, "cstate":Lcom/android/server/am/ProcessStateRecord;
    .local v36, "i":I
    move/from16 v8, v43

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    move-object/from16 v6, v35

    goto :goto_94d

    .line 2066
    .end local v16  # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v17  # "client":Lcom/android/server/am/ProcessRecord;
    .end local v22  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v23  # "backupTarget":Lcom/android/server/am/BackupRecord;
    .end local v35  # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .end local v44  # "adj":I
    .end local v45  # "prevCapability":I
    .end local v46  # "prevProcState":I
    .end local v47  # "prevAppAdj":I
    .end local v48  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v49  # "logUid":I
    .end local v50  # "appUid":I
    .restart local v0  # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v1  # "procState":I
    .restart local v2  # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v3  # "logUid":I
    .restart local v4  # "appUid":I
    .restart local v5  # "conni":I
    .restart local v6  # "backupTarget":Lcom/android/server/am/BackupRecord;
    .restart local v8  # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .restart local v11  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .local v27, "prevAppAdj":I
    .local v28, "prevCapability":I
    .local v29, "prevProcState":I
    .local v36, "adj":I
    .restart local v37  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v39  # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .restart local v42  # "i":I
    :cond_919
    move-object/from16 v17, v0

    move-object/from16 v48, v2

    move/from16 v49, v3

    move/from16 v50, v4

    move-object/from16 v23, v6

    move-object/from16 v52, v7

    move-object/from16 v35, v8

    move/from16 v47, v27

    move/from16 v45, v28

    move/from16 v46, v29

    move/from16 v44, v36

    move-object/from16 v16, v39

    move/from16 v36, v42

    move/from16 v28, v1

    move/from16 v27, v5

    move-object/from16 v29, v11

    move/from16 v11, v22

    move-object/from16 v22, v37

    .end local v0  # "client":Lcom/android/server/am/ProcessRecord;
    .end local v1  # "procState":I
    .end local v2  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v3  # "logUid":I
    .end local v4  # "appUid":I
    .end local v5  # "conni":I
    .end local v6  # "backupTarget":Lcom/android/server/am/BackupRecord;
    .end local v8  # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .end local v11  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v37  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v39  # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v42  # "i":I
    .restart local v16  # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .restart local v17  # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v22  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v23  # "backupTarget":Lcom/android/server/am/BackupRecord;
    .local v27, "conni":I
    .local v28, "procState":I
    .local v29, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v35  # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .local v36, "i":I
    .restart local v44  # "adj":I
    .restart local v45  # "prevCapability":I
    .restart local v46  # "prevProcState":I
    .restart local v47  # "prevAppAdj":I
    .restart local v48  # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v49  # "logUid":I
    .restart local v50  # "appUid":I
    invoke-virtual/range {v35 .. v35}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    move-object/from16 v6, v35

    .end local v35  # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .local v6, "cstate":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2067
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v6, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 2070
    :goto_94d
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v7

    .line 2071
    .local v7, "clientAdj":I
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v8

    .line 2073
    .local v8, "clientProcState":I
    const/4 v0, 0x2

    if-ge v8, v0, :cond_95a

    move v0, v11

    goto :goto_95b

    :cond_95a
    const/4 v0, 0x0

    :goto_95b
    move/from16 v35, v0

    .line 2075
    .local v35, "clientIsSystem":Z
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v0

    if-nez v0, :cond_974

    const/4 v5, 0x3

    if-le v8, v5, :cond_972

    const/4 v4, 0x4

    if-ne v8, v4, :cond_970

    .line 2078
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->isBackgroundRestricted()Z

    move-result v0

    if-nez v0, :cond_970

    goto :goto_976

    :cond_970
    const/4 v0, 0x0

    goto :goto_977

    .line 2075
    :cond_972
    const/4 v4, 0x4

    goto :goto_976

    :cond_974
    const/4 v4, 0x4

    const/4 v5, 0x3

    .line 2078
    :goto_976
    move v0, v11

    :goto_977
    or-int v24, v24, v0

    .line 2080
    move-object/from16 v3, v17

    .end local v17  # "client":Lcom/android/server/am/ProcessRecord;
    .local v3, "client":Lcom/android/server/am/ProcessRecord;
    iget-object v0, v3, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v0

    if-eqz v0, :cond_988

    .line 2082
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0, v11}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    .line 2085
    :cond_988
    move-object/from16 v2, v48

    .end local v48  # "cr":Lcom/android/server/am/ConnectionRecord;
    .restart local v2  # "cr":Lcom/android/server/am/ConnectionRecord;
    iget v0, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v0, v0, 0x20

    const/16 v1, 0x384

    if-nez v0, :cond_c3e

    .line 2086
    const/16 v0, 0x1000

    invoke-virtual {v2, v0}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v0

    if-eqz v0, :cond_9a0

    .line 2087
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    or-int v26, v26, v0

    .line 2095
    :cond_9a0
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v0

    const/16 v17, 0x8

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_9ba

    .line 2096
    const/4 v0, 0x5

    if-gt v8, v0, :cond_9b8

    .line 2097
    iget v0, v2, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v17, 0x20000

    and-int v0, v0, v17

    if-eqz v0, :cond_9ba

    .line 2099
    or-int/lit8 v26, v26, 0x8

    goto :goto_9ba

    .line 2102
    :cond_9b8
    or-int/lit8 v26, v26, 0x8

    .line 2106
    :cond_9ba
    :goto_9ba
    move-object/from16 v0, p0

    move v11, v1

    move-object/from16 v1, p1

    move-object v11, v2

    .end local v2  # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v11, "cr":Lcom/android/server/am/ConnectionRecord;
    move-object v2, v6

    move-object/from16 v32, v3

    .end local v3  # "client":Lcom/android/server/am/ProcessRecord;
    .local v32, "client":Lcom/android/server/am/ProcessRecord;
    move/from16 v3, v28

    move/from16 v37, v12

    move v12, v4

    .end local v12  # "capabilityFromFGS":I
    .local v37, "capabilityFromFGS":I
    move/from16 v4, v44

    move v12, v5

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z

    move-result v0

    if-eqz v0, :cond_9e5

    .line 2107
    move-object/from16 v4, v22

    move-object/from16 v12, v25

    move/from16 v1, v28

    move/from16 v0, v44

    move/from16 v3, v49

    move-object/from16 v5, v52

    move-object/from16 v25, v13

    move/from16 v13, v50

    goto/16 :goto_cdc

    .line 2110
    :cond_9e5
    const/16 v0, 0x10

    if-lt v8, v0, :cond_9eb

    .line 2114
    const/16 v8, 0x13

    .line 2116
    :cond_9eb
    const/4 v1, 0x0

    .line 2117
    .local v1, "adjType":Ljava/lang/String;
    iget v2, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/2addr v2, v0

    if-eqz v2, :cond_a35

    .line 2119
    const/16 v0, 0x384

    if-ge v7, v0, :cond_9fb

    .line 2120
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    .line 2124
    :cond_9fb
    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v0

    if-eqz v0, :cond_a1b

    invoke-virtual/range {v22 .. v22}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v0

    if-nez v0, :cond_a1b

    .line 2129
    move/from16 v0, v44

    .end local v44  # "adj":I
    .local v0, "adj":I
    if-le v0, v7, :cond_a0d

    .line 2130
    const-string v1, "cch-bound-ui-services"

    .line 2132
    :cond_a0d
    move-object/from16 v4, v22

    const/4 v3, 0x0

    .end local v22  # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v4, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 2133
    move v7, v0

    .line 2134
    move/from16 v8, v28

    move-object/from16 v43, v4

    move-object/from16 v22, v13

    goto :goto_a3b

    .line 2124
    .end local v0  # "adj":I
    .end local v4  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v22  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v44  # "adj":I
    :cond_a1b
    move-object/from16 v4, v22

    move/from16 v0, v44

    const/4 v3, 0x0

    .line 2136
    .end local v22  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v44  # "adj":I
    .restart local v0  # "adj":I
    .restart local v4  # "state":Lcom/android/server/am/ProcessStateRecord;
    move-object/from16 v22, v13

    .end local v13  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v22, "psr":Lcom/android/server/am/ProcessServiceRecord;
    iget-wide v12, v14, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    iget-object v2, v9, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    move-object/from16 v43, v4

    .end local v4  # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v43, "state":Lcom/android/server/am/ProcessStateRecord;
    iget-wide v3, v2, Lcom/android/server/am/ActivityManagerConstants;->MAX_SERVICE_INACTIVITY:J

    add-long/2addr v12, v3

    cmp-long v2, p5, v12

    if-ltz v2, :cond_a3b

    .line 2143
    if-le v0, v7, :cond_a33

    .line 2144
    const-string v1, "cch-bound-services"

    .line 2146
    :cond_a33
    move v7, v0

    goto :goto_a3b

    .line 2117
    .end local v0  # "adj":I
    .end local v43  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v13  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v22, "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v44  # "adj":I
    :cond_a35
    move-object/from16 v43, v22

    move/from16 v0, v44

    move-object/from16 v22, v13

    .line 2150
    .end local v13  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v44  # "adj":I
    .restart local v0  # "adj":I
    .local v22, "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v43  # "state":Lcom/android/server/am/ProcessStateRecord;
    :cond_a3b
    :goto_a3b
    if-le v0, v7, :cond_b02

    .line 2158
    invoke-virtual/range {v43 .. v43}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v2

    if-eqz v2, :cond_a60

    invoke-virtual/range {v43 .. v43}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v2

    if-nez v2, :cond_a60

    const/16 v12, 0xc8

    if-le v7, v12, :cond_a62

    .line 2160
    const/16 v2, 0x384

    if-lt v0, v2, :cond_a5c

    .line 2161
    const-string v1, "cch-bound-ui-services"

    move-object v2, v1

    move/from16 v1, v28

    move/from16 v3, v38

    move-object/from16 v4, v43

    goto/16 :goto_b0b

    .line 2160
    :cond_a5c
    move-object/from16 v4, v43

    goto/16 :goto_b06

    .line 2158
    :cond_a60
    const/16 v12, 0xc8

    .line 2165
    :cond_a62
    iget v2, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v2, v2, 0x48

    if-eqz v2, :cond_a88

    const/16 v2, 0x2bc

    if-le v7, v2, :cond_a70

    const/16 v2, 0x320

    if-lt v7, v2, :cond_a88

    .line 2171
    :cond_a70
    const/16 v2, -0x2bc

    if-lt v7, v2, :cond_a77

    .line 2172
    move v2, v7

    .local v2, "newAdj":I
    goto/16 :goto_ade

    .line 2175
    .end local v2  # "newAdj":I
    :cond_a77
    const/16 v2, -0x2bc

    .line 2176
    .restart local v2  # "newAdj":I
    const/4 v3, 0x2

    .line 2177
    .end local v38  # "schedGroup":I
    .local v3, "schedGroup":I
    const/4 v4, 0x0

    .line 2178
    .end local v28  # "procState":I
    .local v4, "procState":I
    iget v5, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v11, v4, v5}, Lcom/android/server/am/ConnectionRecord;->trackProcState(II)V

    .line 2179
    const/4 v5, 0x1

    move/from16 v38, v3

    move/from16 v28, v4

    move/from16 v41, v5

    .end local v41  # "trackedProcState":Z
    .local v5, "trackedProcState":Z
    goto :goto_ade

    .line 2181
    .end local v2  # "newAdj":I
    .end local v3  # "schedGroup":I
    .end local v4  # "procState":I
    .end local v5  # "trackedProcState":Z
    .restart local v28  # "procState":I
    .restart local v38  # "schedGroup":I
    .restart local v41  # "trackedProcState":Z
    :cond_a88
    iget v2, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit16 v2, v2, 0x100

    if-eqz v2, :cond_a97

    if-gt v7, v12, :cond_a97

    const/16 v2, 0xfa

    if-lt v0, v2, :cond_a97

    .line 2184
    const/16 v2, 0xfa

    .restart local v2  # "newAdj":I
    goto :goto_ade

    .line 2185
    .end local v2  # "newAdj":I
    :cond_a97
    iget v2, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v3, 0x10000

    and-int/2addr v2, v3

    if-eqz v2, :cond_aa7

    if-ge v7, v12, :cond_aa7

    const/16 v2, 0xe1

    if-lt v0, v2, :cond_aa7

    .line 2188
    const/16 v2, 0xe1

    .restart local v2  # "newAdj":I
    goto :goto_ade

    .line 2189
    .end local v2  # "newAdj":I
    :cond_aa7
    iget v2, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v3, 0x40000000  # 2.0f

    and-int/2addr v2, v3

    if-eqz v2, :cond_ab5

    if-ge v7, v12, :cond_ab5

    if-lt v0, v12, :cond_ab5

    .line 2192
    const/16 v2, 0xc8

    .restart local v2  # "newAdj":I
    goto :goto_ade

    .line 2195
    .end local v2  # "newAdj":I
    :cond_ab5
    if-lt v7, v12, :cond_ac1

    const/16 v2, 0x2bc

    if-le v7, v2, :cond_abf

    const/16 v2, 0x320

    if-lt v7, v2, :cond_ac1

    .line 2199
    :cond_abf
    move v2, v7

    .restart local v2  # "newAdj":I
    goto :goto_ade

    .line 2200
    .end local v2  # "newAdj":I
    :cond_ac1
    const/high16 v2, 0x10000000

    invoke-virtual {v11, v2}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v2

    const/16 v3, 0x64

    if-eqz v2, :cond_ad2

    if-gt v7, v3, :cond_ad2

    if-le v0, v3, :cond_ad2

    .line 2203
    const/16 v2, 0x64

    .restart local v2  # "newAdj":I
    goto :goto_ade

    .line 2205
    .end local v2  # "newAdj":I
    :cond_ad2
    if-le v0, v3, :cond_add

    .line 2210
    invoke-static {}, Lcom/android/server/am/OomAdjusterStub;->getInstance()Lcom/android/server/am/OomAdjusterStub;

    move-result-object v2

    invoke-virtual {v2, v10, v0, v11}, Lcom/android/server/am/OomAdjusterStub;->computeBindServiceAdj(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ConnectionRecord;)I

    move-result v2

    .restart local v2  # "newAdj":I
    goto :goto_ade

    .line 2213
    .end local v2  # "newAdj":I
    :cond_add
    move v2, v0

    .line 2216
    .restart local v2  # "newAdj":I
    :goto_ade
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v3

    if-nez v3, :cond_aeb

    .line 2217
    move-object/from16 v4, v43

    const/4 v3, 0x0

    .end local v43  # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v4, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    goto :goto_aed

    .line 2216
    .end local v4  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v43  # "state":Lcom/android/server/am/ProcessStateRecord;
    :cond_aeb
    move-object/from16 v4, v43

    .line 2219
    .end local v43  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v4  # "state":Lcom/android/server/am/ProcessStateRecord;
    :goto_aed
    if-le v0, v2, :cond_afc

    .line 2220
    move v0, v2

    .line 2221
    invoke-virtual {v4, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2222
    const-string/jumbo v1, "service"

    move-object v2, v1

    move/from16 v1, v28

    move/from16 v3, v38

    goto :goto_b0b

    .line 2219
    :cond_afc
    move-object v2, v1

    move/from16 v1, v28

    move/from16 v3, v38

    goto :goto_b0b

    .line 2150
    .end local v2  # "newAdj":I
    .end local v4  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v43  # "state":Lcom/android/server/am/ProcessStateRecord;
    :cond_b02
    move-object/from16 v4, v43

    const/16 v12, 0xc8

    .line 2226
    .end local v43  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v4  # "state":Lcom/android/server/am/ProcessStateRecord;
    :goto_b06
    move-object v2, v1

    move/from16 v1, v28

    move/from16 v3, v38

    .end local v28  # "procState":I
    .end local v38  # "schedGroup":I
    .local v1, "procState":I
    .local v2, "adjType":Ljava/lang/String;
    .restart local v3  # "schedGroup":I
    :goto_b0b
    iget v5, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    const v13, 0x800004

    and-int/2addr v5, v13

    if-nez v5, :cond_b72

    .line 2231
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v5

    .line 2232
    .local v5, "curSchedGroup":I
    if-le v5, v3, :cond_b22

    .line 2233
    iget v13, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v13, v13, 0x40

    if-eqz v13, :cond_b21

    .line 2234
    move v3, v5

    goto :goto_b22

    .line 2236
    :cond_b21
    const/4 v3, 0x2

    .line 2239
    :cond_b22
    :goto_b22
    const/4 v13, 0x2

    if-ge v8, v13, :cond_b4f

    .line 2244
    const/high16 v13, 0x10000000

    invoke-virtual {v11, v13}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v13

    if-eqz v13, :cond_b2f

    .line 2245
    const/4 v8, 0x4

    goto :goto_b6f

    .line 2246
    :cond_b2f
    const/high16 v13, 0x4000000

    invoke-virtual {v11, v13}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v13

    if-eqz v13, :cond_b39

    .line 2247
    const/4 v8, 0x5

    goto :goto_b6f

    .line 2248
    :cond_b39
    iget-object v13, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v13, v13, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v13}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v13

    const/4 v12, 0x1

    if-ne v13, v12, :cond_b4d

    iget v12, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v13, 0x2000000

    and-int/2addr v12, v13

    if-eqz v12, :cond_b4d

    .line 2252
    const/4 v8, 0x5

    goto :goto_b6f

    .line 2254
    :cond_b4d
    const/4 v8, 0x6

    goto :goto_b6f

    .line 2257
    :cond_b4f
    const/4 v12, 0x2

    if-ne v8, v12, :cond_b6f

    .line 2260
    const/4 v8, 0x3

    .line 2261
    const/4 v12, 0x0

    invoke-virtual {v6, v12}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v13

    .line 2263
    .local v13, "enabled":Z
    if-eqz v13, :cond_b69

    .line 2264
    const/16 v12, 0x1000

    invoke-virtual {v11, v12}, Lcom/android/server/am/ConnectionRecord;->hasFlag(I)Z

    move-result v12

    if-eqz v12, :cond_b6f

    .line 2266
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v12

    or-int v26, v26, v12

    goto :goto_b6f

    .line 2272
    :cond_b69
    invoke-virtual {v6}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v12

    or-int v26, v26, v12

    .line 2275
    .end local v5  # "curSchedGroup":I
    .end local v13  # "enabled":Z
    :cond_b6f
    :goto_b6f
    const/16 v12, 0x8

    goto :goto_b88

    :cond_b72
    iget v5, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v12, 0x800000

    and-int/2addr v5, v12

    if-nez v5, :cond_b81

    .line 2276
    const/16 v12, 0x8

    if-ge v8, v12, :cond_b88

    .line 2278
    const/16 v5, 0x8

    move v8, v5

    .end local v8  # "clientProcState":I
    .local v5, "clientProcState":I
    goto :goto_b88

    .line 2282
    .end local v5  # "clientProcState":I
    .restart local v8  # "clientProcState":I
    :cond_b81
    const/16 v12, 0x8

    const/4 v5, 0x7

    if-ge v8, v5, :cond_b88

    .line 2284
    const/4 v5, 0x7

    move v8, v5

    .line 2289
    :cond_b88
    :goto_b88
    const/4 v5, 0x3

    if-ge v3, v5, :cond_b9b

    iget v5, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v13, 0x80000

    and-int/2addr v5, v13

    if-eqz v5, :cond_b9b

    if-eqz v35, :cond_b9b

    .line 2292
    const/4 v3, 0x3

    .line 2293
    const/4 v5, 0x1

    move/from16 v38, v3

    move/from16 v30, v5

    .end local v30  # "scheduleLikeTopApp":Z
    .local v5, "scheduleLikeTopApp":Z
    goto :goto_b9d

    .line 2296
    .end local v5  # "scheduleLikeTopApp":Z
    .restart local v30  # "scheduleLikeTopApp":Z
    :cond_b9b
    move/from16 v38, v3

    .end local v3  # "schedGroup":I
    .restart local v38  # "schedGroup":I
    :goto_b9d
    if-nez v41, :cond_ba4

    .line 2297
    iget v3, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v11, v8, v3}, Lcom/android/server/am/ConnectionRecord;->trackProcState(II)V

    .line 2300
    :cond_ba4
    if-le v1, v8, :cond_baf

    .line 2301
    move v1, v8

    .line 2302
    invoke-virtual {v4, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 2303
    if-nez v2, :cond_baf

    .line 2304
    const-string/jumbo v2, "service"

    .line 2307
    :cond_baf
    const/4 v3, 0x7

    if-ge v1, v3, :cond_bbd

    iget v3, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v5, 0x20000000

    and-int/2addr v3, v5

    if-eqz v3, :cond_bbd

    .line 2309
    const/4 v3, 0x1

    invoke-virtual {v10, v3}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    .line 2311
    :cond_bbd
    if-eqz v2, :cond_c32

    .line 2312
    invoke-virtual {v4, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2313
    const/4 v3, 0x2

    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    .line 2315
    iget-object v3, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v3, v3, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 2316
    invoke-virtual {v4, v8}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    .line 2317
    iget-object v3, v14, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    .line 2318
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v3, :cond_be5

    move/from16 v3, v49

    move/from16 v13, v50

    .end local v49  # "logUid":I
    .end local v50  # "appUid":I
    .local v3, "logUid":I
    .local v13, "appUid":I
    if-ne v3, v13, :cond_be0

    goto :goto_be9

    :cond_be0
    move-object/from16 v12, v25

    move-object/from16 v5, v52

    goto :goto_c3c

    .end local v3  # "logUid":I
    .end local v13  # "appUid":I
    .restart local v49  # "logUid":I
    .restart local v50  # "appUid":I
    :cond_be5
    move/from16 v3, v49

    move/from16 v13, v50

    .line 2319
    .end local v49  # "logUid":I
    .end local v50  # "appUid":I
    .restart local v3  # "logUid":I
    .restart local v13  # "appUid":I
    :goto_be9
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v12, v25

    invoke-virtual {v5, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v25, v2

    .end local v2  # "adjType":Ljava/lang/String;
    .local v25, "adjType":Ljava/lang/String;
    const-string v2, ", due to "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v5, v11, Lcom/android/server/am/ConnectionRecord;->binding:Lcom/android/server/am/AppBindRecord;

    iget-object v5, v5, Lcom/android/server/am/AppBindRecord;->client:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " adj="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " procState="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 2322
    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2319
    move-object/from16 v5, v52

    invoke-direct {v9, v5, v2}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c3c

    .line 2311
    .end local v3  # "logUid":I
    .end local v13  # "appUid":I
    .end local v25  # "adjType":Ljava/lang/String;
    .restart local v2  # "adjType":Ljava/lang/String;
    .restart local v49  # "logUid":I
    .restart local v50  # "appUid":I
    :cond_c32
    move-object/from16 v12, v25

    move/from16 v3, v49

    move/from16 v13, v50

    move-object/from16 v5, v52

    move-object/from16 v25, v2

    .line 2325
    .end local v2  # "adjType":Ljava/lang/String;
    .end local v49  # "logUid":I
    .end local v50  # "appUid":I
    .restart local v3  # "logUid":I
    .restart local v13  # "appUid":I
    :goto_c3c
    const/4 v2, 0x1

    goto :goto_c5f

    .line 2335
    .end local v0  # "adj":I
    .end local v1  # "procState":I
    .end local v4  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v11  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v32  # "client":Lcom/android/server/am/ProcessRecord;
    .end local v37  # "capabilityFromFGS":I
    .local v2, "cr":Lcom/android/server/am/ConnectionRecord;
    .local v3, "client":Lcom/android/server/am/ProcessRecord;
    .restart local v12  # "capabilityFromFGS":I
    .local v13, "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v22, "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v28  # "procState":I
    .restart local v44  # "adj":I
    .restart local v49  # "logUid":I
    .restart local v50  # "appUid":I
    :cond_c3e
    move-object v11, v2

    move-object/from16 v32, v3

    move/from16 v37, v12

    move-object/from16 v4, v22

    move-object/from16 v12, v25

    move/from16 v0, v44

    move/from16 v3, v49

    move-object/from16 v5, v52

    move-object/from16 v22, v13

    move/from16 v13, v50

    .end local v2  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v12  # "capabilityFromFGS":I
    .end local v44  # "adj":I
    .end local v49  # "logUid":I
    .end local v50  # "appUid":I
    .restart local v0  # "adj":I
    .local v3, "logUid":I
    .restart local v4  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v11  # "cr":Lcom/android/server/am/ConnectionRecord;
    .local v13, "appUid":I
    .local v22, "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v32  # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v37  # "capabilityFromFGS":I
    const/16 v1, 0x384

    if-ge v7, v1, :cond_c5c

    .line 2336
    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    goto :goto_c5d

    .line 2335
    :cond_c5c
    const/4 v2, 0x1

    .line 2339
    :goto_c5d
    move/from16 v1, v28

    .end local v28  # "procState":I
    .restart local v1  # "procState":I
    :goto_c5f
    iget v2, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/high16 v25, 0x8000000

    and-int v2, v2, v25

    if-eqz v2, :cond_c70

    .line 2340
    move-object/from16 v2, v22

    move-object/from16 v22, v6

    const/4 v6, 0x1

    .end local v6  # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .local v2, "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v22, "cstate":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v2, v6}, Lcom/android/server/am/ProcessServiceRecord;->setTreatLikeActivity(Z)V

    goto :goto_c74

    .line 2339
    .end local v2  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v6  # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .local v22, "psr":Lcom/android/server/am/ProcessServiceRecord;
    :cond_c70
    move-object/from16 v2, v22

    move-object/from16 v22, v6

    .line 2342
    .end local v6  # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .restart local v2  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v22, "cstate":Lcom/android/server/am/ProcessStateRecord;
    :goto_c74
    iget-object v6, v11, Lcom/android/server/am/ConnectionRecord;->activity:Lcom/android/server/wm/ActivityServiceConnectionsHolder;

    .line 2343
    .local v6, "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    move-object/from16 v25, v2

    .end local v2  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v25, "psr":Lcom/android/server/am/ProcessServiceRecord;
    iget v2, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit16 v2, v2, 0x80

    if-eqz v2, :cond_cdc

    .line 2344
    if-eqz v6, :cond_cdc

    if-lez v0, :cond_cdc

    .line 2345
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityServiceConnectionsHolder;->isActivityVisible()Z

    move-result v2

    if-eqz v2, :cond_cdc

    .line 2346
    const/4 v0, 0x0

    .line 2347
    invoke-virtual {v4, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2348
    iget v2, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    const/16 v28, 0x4

    and-int/lit8 v2, v2, 0x4

    if-nez v2, :cond_c9f

    .line 2349
    iget v2, v11, Lcom/android/server/am/ConnectionRecord;->flags:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_c9d

    .line 2350
    const/16 v38, 0x4

    goto :goto_c9f

    .line 2352
    :cond_c9d
    const/16 v38, 0x2

    .line 2355
    :cond_c9f
    :goto_c9f
    const/4 v2, 0x0

    invoke-virtual {v4, v2}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 2356
    const-string/jumbo v2, "service"

    invoke-virtual {v4, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2357
    const/4 v2, 0x2

    invoke-virtual {v4, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    .line 2359
    invoke-virtual {v4, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 2360
    invoke-virtual {v4, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    .line 2361
    iget-object v2, v14, Lcom/android/server/am/ServiceRecord;->instanceName:Landroid/content/ComponentName;

    invoke-virtual {v4, v2}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    .line 2362
    sget-boolean v2, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v2, :cond_cc2

    if-ne v3, v13, :cond_cbf

    goto :goto_cc2

    :cond_cbf
    move/from16 v28, v0

    goto :goto_cda

    .line 2363
    :cond_cc2
    :goto_cc2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v28, v0

    .end local v0  # "adj":I
    .local v28, "adj":I
    const-string v0, "Raise to service w/activity: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v5, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2049
    .end local v6  # "a":Lcom/android/server/wm/ActivityServiceConnectionsHolder;
    .end local v7  # "clientAdj":I
    .end local v8  # "clientProcState":I
    .end local v11  # "cr":Lcom/android/server/am/ConnectionRecord;
    .end local v22  # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .end local v32  # "client":Lcom/android/server/am/ProcessRecord;
    .end local v35  # "clientIsSystem":Z
    .end local v41  # "trackedProcState":Z
    :goto_cda
    move/from16 v0, v28

    .end local v28  # "adj":I
    .restart local v0  # "adj":I
    :cond_cdc
    :goto_cdc
    add-int/lit8 v8, v36, 0x1

    move-object v7, v5

    move-object/from16 v2, v16

    move-object/from16 v6, v23

    move/from16 v5, v27

    move-object/from16 v11, v29

    move/from16 v28, v45

    move/from16 v29, v46

    move/from16 v27, v47

    const/16 v22, 0x1

    move/from16 v55, v37

    move-object/from16 v37, v4

    move v4, v13

    move-object/from16 v13, v25

    move-object/from16 v25, v12

    move/from16 v12, v55

    .end local v36  # "i":I
    .local v8, "i":I
    goto/16 :goto_877

    .line 2046
    .end local v16  # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v23  # "backupTarget":Lcom/android/server/am/BackupRecord;
    .end local v25  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v45  # "prevCapability":I
    .end local v46  # "prevProcState":I
    .end local v47  # "prevAppAdj":I
    .local v4, "appUid":I
    .local v5, "conni":I
    .local v6, "backupTarget":Lcom/android/server/am/BackupRecord;
    .local v11, "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .restart local v12  # "capabilityFromFGS":I
    .local v13, "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v27, "prevAppAdj":I
    .local v28, "prevCapability":I
    .local v29, "prevProcState":I
    .local v37, "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v39  # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    :cond_cfc
    move-object/from16 v23, v6

    move/from16 v36, v8

    move/from16 v47, v27

    move/from16 v45, v28

    move/from16 v46, v29

    move-object/from16 v16, v39

    move/from16 v28, v1

    move/from16 v27, v5

    move-object v5, v7

    move-object/from16 v29, v11

    move-object/from16 v55, v13

    move v13, v4

    move-object/from16 v4, v37

    move/from16 v37, v12

    move-object/from16 v12, v25

    move-object/from16 v25, v55

    .line 2043
    .end local v1  # "procState":I
    .end local v5  # "conni":I
    .end local v6  # "backupTarget":Lcom/android/server/am/BackupRecord;
    .end local v8  # "i":I
    .end local v11  # "clist":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;"
    .end local v12  # "capabilityFromFGS":I
    .end local v29  # "prevProcState":I
    .end local v39  # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v4, "state":Lcom/android/server/am/ProcessStateRecord;
    .local v13, "appUid":I
    .restart local v16  # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .restart local v23  # "backupTarget":Lcom/android/server/am/BackupRecord;
    .restart local v25  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v27, "conni":I
    .local v28, "procState":I
    .local v37, "capabilityFromFGS":I
    .restart local v45  # "prevCapability":I
    .restart local v46  # "prevProcState":I
    .restart local v47  # "prevAppAdj":I
    :goto_d1a
    add-int/lit8 v1, v27, -0x1

    move-object v8, v4

    move-object v7, v5

    move v4, v13

    move-object/from16 v2, v16

    move-object/from16 v6, v23

    move-object/from16 v13, v25

    move/from16 v29, v46

    move/from16 v27, v47

    const/4 v11, 0x0

    const/16 v22, 0x1

    move v5, v1

    move-object/from16 v25, v12

    move/from16 v1, v28

    move/from16 v12, v37

    move/from16 v28, v45

    move/from16 v55, v24

    move/from16 v24, v0

    move/from16 v0, v55

    .end local v27  # "conni":I
    .local v1, "conni":I
    goto/16 :goto_848

    .line 2040
    .end local v16  # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v23  # "backupTarget":Lcom/android/server/am/BackupRecord;
    .end local v25  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v37  # "capabilityFromFGS":I
    .end local v45  # "prevCapability":I
    .end local v46  # "prevProcState":I
    .end local v47  # "prevAppAdj":I
    .local v0, "boundByNonBgRestricted":Z
    .local v1, "procState":I
    .local v2, "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .local v4, "appUid":I
    .restart local v5  # "conni":I
    .restart local v6  # "backupTarget":Lcom/android/server/am/BackupRecord;
    .local v8, "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v12  # "capabilityFromFGS":I
    .local v13, "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v24, "adj":I
    .local v27, "prevAppAdj":I
    .local v28, "prevCapability":I
    .restart local v29  # "prevProcState":I
    :cond_d3d
    move-object/from16 v16, v2

    move-object/from16 v23, v6

    move/from16 v37, v12

    move-object/from16 v12, v25

    move/from16 v47, v27

    move/from16 v45, v28

    move/from16 v46, v29

    move/from16 v27, v5

    move-object v5, v7

    move-object/from16 v25, v13

    move v13, v4

    move-object v4, v8

    .line 1970
    .end local v2  # "serviceConnections":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Landroid/os/IBinder;Ljava/util/ArrayList<Lcom/android/server/am/ConnectionRecord;>;>;"
    .end local v5  # "conni":I
    .end local v6  # "backupTarget":Lcom/android/server/am/BackupRecord;
    .end local v8  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v12  # "capabilityFromFGS":I
    .end local v14  # "s":Lcom/android/server/am/ServiceRecord;
    .end local v27  # "prevAppAdj":I
    .end local v28  # "prevCapability":I
    .end local v29  # "prevProcState":I
    .local v4, "state":Lcom/android/server/am/ProcessStateRecord;
    .local v13, "appUid":I
    .restart local v23  # "backupTarget":Lcom/android/server/am/BackupRecord;
    .restart local v25  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .restart local v37  # "capabilityFromFGS":I
    .restart local v45  # "prevCapability":I
    .restart local v46  # "prevProcState":I
    .restart local v47  # "prevAppAdj":I
    :goto_d52
    add-int/lit8 v11, v40, -0x1

    move-object v8, v4

    move-object v7, v5

    move-object v14, v12

    move v4, v13

    move-object/from16 v6, v23

    move/from16 v5, v24

    move/from16 v24, v26

    move/from16 v13, v34

    move/from16 v12, v37

    move/from16 v2, v38

    move/from16 v28, v45

    move/from16 v29, v46

    move/from16 v27, v47

    .end local v40  # "is":I
    .local v11, "is":I
    goto/16 :goto_71a

    .line 1967
    .end local v13  # "appUid":I
    .end local v23  # "backupTarget":Lcom/android/server/am/BackupRecord;
    .end local v26  # "capability":I
    .end local v37  # "capabilityFromFGS":I
    .end local v38  # "schedGroup":I
    .end local v45  # "prevCapability":I
    .end local v46  # "prevProcState":I
    .end local v47  # "prevAppAdj":I
    .local v2, "schedGroup":I
    .local v4, "appUid":I
    .local v5, "adj":I
    .restart local v6  # "backupTarget":Lcom/android/server/am/BackupRecord;
    .restart local v8  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v12  # "capabilityFromFGS":I
    .local v24, "capability":I
    .restart local v27  # "prevAppAdj":I
    .restart local v28  # "prevCapability":I
    .restart local v29  # "prevProcState":I
    :cond_d6c
    move/from16 v36, v0

    move/from16 v38, v2

    move v13, v4

    move-object/from16 v23, v6

    move-object v4, v8

    move/from16 v40, v11

    move/from16 v39, v12

    move-object v12, v14

    move/from16 v47, v27

    move/from16 v45, v28

    move/from16 v46, v29

    move-object v11, v7

    .line 2372
    .end local v0  # "boundByNonBgRestricted":Z
    .end local v2  # "schedGroup":I
    .end local v6  # "backupTarget":Lcom/android/server/am/BackupRecord;
    .end local v8  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v11  # "is":I
    .end local v12  # "capabilityFromFGS":I
    .end local v27  # "prevAppAdj":I
    .end local v28  # "prevCapability":I
    .end local v29  # "prevProcState":I
    .local v4, "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v13  # "appUid":I
    .restart local v23  # "backupTarget":Lcom/android/server/am/BackupRecord;
    .local v36, "boundByNonBgRestricted":Z
    .restart local v38  # "schedGroup":I
    .local v39, "capabilityFromFGS":I
    .restart local v45  # "prevCapability":I
    .restart local v46  # "prevProcState":I
    .restart local v47  # "prevAppAdj":I
    :goto_d80
    iget-object v14, v10, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 2373
    .local v14, "ppr":Lcom/android/server/am/ProcessProviderRecord;
    invoke-virtual {v14}, Lcom/android/server/am/ProcessProviderRecord;->numberOfProviders()I

    move-result v0

    const/4 v2, 0x1

    sub-int/2addr v0, v2

    move v8, v0

    move/from16 v6, v36

    move/from16 v2, v38

    .line 2374
    .end local v36  # "boundByNonBgRestricted":Z
    .end local v38  # "schedGroup":I
    .restart local v2  # "schedGroup":I
    .local v6, "boundByNonBgRestricted":Z
    .local v8, "provi":I
    :goto_d8d
    if-ltz v8, :cond_1008

    if-gtz v5, :cond_d9f

    if-eqz v2, :cond_d9f

    const/4 v0, 0x2

    if-le v1, v0, :cond_d97

    goto :goto_d9f

    :cond_d97
    move-object v7, v4

    move-object v8, v11

    move-object/from16 v26, v14

    const/4 v14, 0x0

    move v11, v3

    goto/16 :goto_1010

    .line 2378
    :cond_d9f
    :goto_d9f
    invoke-virtual {v14, v8}, Lcom/android/server/am/ProcessProviderRecord;->getProviderAt(I)Lcom/android/server/am/ContentProviderRecord;

    move-result-object v7

    .line 2379
    .local v7, "cpr":Lcom/android/server/am/ContentProviderRecord;
    iget-object v0, v7, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v16, 0x1

    add-int/lit8 v0, v0, -0x1

    move/from16 v16, v6

    move v6, v1

    move v1, v5

    move v5, v0

    .line 2380
    .local v1, "adj":I
    .local v5, "i":I
    .local v6, "procState":I
    .local v16, "boundByNonBgRestricted":Z
    :goto_db2
    if-ltz v5, :cond_f7f

    if-gtz v1, :cond_dcd

    if-eqz v2, :cond_dcd

    const/4 v0, 0x2

    if-le v6, v0, :cond_dbc

    goto :goto_dcd

    :cond_dbc
    move/from16 v22, v8

    move-object v8, v11

    move-object/from16 v32, v12

    move-object/from16 v26, v14

    move-object/from16 v33, v15

    move v11, v3

    move v3, v6

    move-object v12, v7

    move v6, v2

    move-object v7, v4

    move v2, v1

    goto/16 :goto_f90

    .line 2384
    :cond_dcd
    :goto_dcd
    iget-object v0, v7, Lcom/android/server/am/ContentProviderRecord;->connections:Ljava/util/ArrayList;

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/ContentProviderConnection;

    .line 2385
    .local v0, "conn":Lcom/android/server/am/ContentProviderConnection;
    move/from16 v22, v8

    .end local v8  # "provi":I
    .local v22, "provi":I
    iget-object v8, v0, Lcom/android/server/am/ContentProviderConnection;->client:Lcom/android/server/am/ProcessRecord;

    .line 2386
    .local v8, "client":Lcom/android/server/am/ProcessRecord;
    move-object/from16 v26, v14

    .end local v14  # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .local v26, "ppr":Lcom/android/server/am/ProcessProviderRecord;
    iget-object v14, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 2387
    .local v14, "cstate":Lcom/android/server/am/ProcessStateRecord;
    if-ne v8, v10, :cond_df4

    .line 2389
    move/from16 v28, v1

    move/from16 v53, v2

    move/from16 v54, v3

    move-object/from16 v37, v4

    move/from16 v31, v5

    move/from16 v29, v6

    move-object/from16 v52, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v15

    move-object v12, v7

    goto/16 :goto_e57

    .line 2391
    :cond_df4
    if-eqz p8, :cond_e22

    .line 2392
    const/16 v27, 0x1

    move-object/from16 v52, v11

    move-object v11, v0

    .end local v0  # "conn":Lcom/android/server/am/ContentProviderConnection;
    .local v11, "conn":Lcom/android/server/am/ContentProviderConnection;
    move-object/from16 v0, p0

    move/from16 v28, v1

    .end local v1  # "adj":I
    .local v28, "adj":I
    move-object v1, v8

    move/from16 v53, v2

    const/16 v29, 0x0

    .end local v2  # "schedGroup":I
    .local v53, "schedGroup":I
    move/from16 v2, p2

    move/from16 v54, v3

    .end local v3  # "logUid":I
    .local v54, "logUid":I
    move-object/from16 v3, p3

    move-object/from16 v37, v4

    .end local v4  # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v37, "state":Lcom/android/server/am/ProcessStateRecord;
    move/from16 v4, p4

    move/from16 v31, v5

    move/from16 v29, v6

    .end local v5  # "i":I
    .end local v6  # "procState":I
    .local v29, "procState":I
    .local v31, "i":I
    move-wide/from16 v5, p5

    move-object/from16 v32, v12

    move-object v12, v7

    .end local v7  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v12, "cpr":Lcom/android/server/am/ContentProviderRecord;
    move/from16 v7, p7

    move-object/from16 v33, v15

    move-object v15, v8

    .end local v8  # "client":Lcom/android/server/am/ProcessRecord;
    .local v15, "client":Lcom/android/server/am/ProcessRecord;
    move/from16 v8, v27

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    goto :goto_e45

    .line 2394
    .end local v11  # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v12  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v15  # "client":Lcom/android/server/am/ProcessRecord;
    .end local v28  # "adj":I
    .end local v29  # "procState":I
    .end local v31  # "i":I
    .end local v37  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v53  # "schedGroup":I
    .end local v54  # "logUid":I
    .restart local v0  # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v1  # "adj":I
    .restart local v2  # "schedGroup":I
    .restart local v3  # "logUid":I
    .restart local v4  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v5  # "i":I
    .restart local v6  # "procState":I
    .restart local v7  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v8  # "client":Lcom/android/server/am/ProcessRecord;
    :cond_e22
    move/from16 v28, v1

    move/from16 v53, v2

    move/from16 v54, v3

    move-object/from16 v37, v4

    move/from16 v31, v5

    move/from16 v29, v6

    move-object/from16 v52, v11

    move-object/from16 v32, v12

    move-object/from16 v33, v15

    move-object v11, v0

    move-object v12, v7

    move-object v15, v8

    .end local v0  # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v1  # "adj":I
    .end local v2  # "schedGroup":I
    .end local v3  # "logUid":I
    .end local v4  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v5  # "i":I
    .end local v6  # "procState":I
    .end local v7  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v8  # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v11  # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v12  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v15  # "client":Lcom/android/server/am/ProcessRecord;
    .restart local v28  # "adj":I
    .restart local v29  # "procState":I
    .restart local v31  # "i":I
    .restart local v37  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v53  # "schedGroup":I
    .restart local v54  # "logUid":I
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v0

    invoke-virtual {v14, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2395
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {v14, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 2398
    :goto_e45
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object v2, v14

    move/from16 v3, v29

    move/from16 v4, v28

    move/from16 v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z

    move-result v0

    if-eqz v0, :cond_e63

    .line 2399
    nop

    .line 2383
    .end local v11  # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v12  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v14  # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .end local v15  # "client":Lcom/android/server/am/ProcessRecord;
    .end local v28  # "adj":I
    .end local v29  # "procState":I
    .end local v31  # "i":I
    .end local v37  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v53  # "schedGroup":I
    .end local v54  # "logUid":I
    .restart local v1  # "adj":I
    .restart local v2  # "schedGroup":I
    .restart local v3  # "logUid":I
    .restart local v4  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v5  # "i":I
    .restart local v6  # "procState":I
    .restart local v7  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :goto_e57
    move/from16 v1, v28

    move-object/from16 v7, v37

    move-object/from16 v8, v52

    move/from16 v2, v53

    move/from16 v6, v54

    .end local v1  # "adj":I
    .end local v2  # "schedGroup":I
    .end local v3  # "logUid":I
    .end local v4  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v5  # "i":I
    .end local v6  # "procState":I
    .end local v7  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v12  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v28  # "adj":I
    .restart local v29  # "procState":I
    .restart local v31  # "i":I
    .restart local v37  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v53  # "schedGroup":I
    .restart local v54  # "logUid":I
    goto/16 :goto_f6d

    .line 2402
    .restart local v11  # "conn":Lcom/android/server/am/ContentProviderConnection;
    .restart local v14  # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .restart local v15  # "client":Lcom/android/server/am/ProcessRecord;
    :cond_e63
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v5

    .line 2403
    .local v5, "clientAdj":I
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v0

    .line 2405
    .local v0, "clientProcState":I
    const/16 v3, 0x10

    if-lt v0, v3, :cond_e71

    .line 2408
    const/16 v0, 0x13

    .line 2410
    :cond_e71
    iget-object v1, v15, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v1

    if-eqz v1, :cond_e7f

    .line 2412
    iget-object v1, v10, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->setShouldNotFreeze(Z)V

    .line 2415
    :cond_e7f
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->isCurBoundByNonBgRestrictedApp()Z

    move-result v1

    if-nez v1, :cond_e94

    const/4 v1, 0x3

    if-le v0, v1, :cond_e94

    const/4 v1, 0x4

    if-ne v0, v1, :cond_e92

    .line 2418
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->isBackgroundRestricted()Z

    move-result v1

    if-nez v1, :cond_e92

    goto :goto_e94

    :cond_e92
    const/4 v7, 0x0

    goto :goto_e95

    :cond_e94
    :goto_e94
    const/4 v7, 0x1

    :goto_e95
    or-int v16, v16, v7

    .line 2420
    const/4 v1, 0x0

    .line 2421
    .local v1, "adjType":Ljava/lang/String;
    move/from16 v2, v28

    .end local v28  # "adj":I
    .local v2, "adj":I
    if-le v2, v5, :cond_ece

    .line 2422
    invoke-virtual/range {v37 .. v37}, Lcom/android/server/am/ProcessStateRecord;->hasShownUi()Z

    move-result v4

    if-eqz v4, :cond_eb1

    invoke-virtual/range {v37 .. v37}, Lcom/android/server/am/ProcessStateRecord;->getCachedIsHomeProcess()Z

    move-result v4

    if-nez v4, :cond_eb1

    const/16 v4, 0xc8

    if-le v5, v4, :cond_eb3

    .line 2424
    const-string v1, "cch-ui-provider"

    move-object/from16 v7, v37

    goto :goto_ec1

    .line 2422
    :cond_eb1
    const/16 v4, 0xc8

    .line 2426
    :cond_eb3
    if-lez v5, :cond_eb7

    .line 2427
    move v6, v5

    goto :goto_eb8

    :cond_eb7
    const/4 v6, 0x0

    :goto_eb8
    move v2, v6

    .line 2428
    move-object/from16 v7, v37

    .end local v37  # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v7, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2429
    const-string/jumbo v1, "provider"

    .line 2431
    :goto_ec1
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v6

    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v8

    and-int/2addr v6, v8

    invoke-virtual {v7, v6}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    goto :goto_ed2

    .line 2421
    .end local v7  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v37  # "state":Lcom/android/server/am/ProcessStateRecord;
    :cond_ece
    move-object/from16 v7, v37

    const/16 v4, 0xc8

    .line 2434
    .end local v37  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v7  # "state":Lcom/android/server/am/ProcessStateRecord;
    :goto_ed2
    const/4 v8, 0x4

    if-gt v0, v8, :cond_ee1

    .line 2435
    if-nez v1, :cond_eda

    .line 2436
    const-string/jumbo v1, "provider"

    .line 2438
    :cond_eda
    const/4 v6, 0x2

    if-ne v0, v6, :cond_edf

    .line 2439
    const/4 v0, 0x3

    goto :goto_ee2

    .line 2441
    :cond_edf
    const/4 v0, 0x5

    goto :goto_ee2

    .line 2434
    :cond_ee1
    const/4 v6, 0x2

    .line 2445
    :goto_ee2
    iget v3, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v11, v0, v3}, Lcom/android/server/am/ContentProviderConnection;->trackProcState(II)V

    .line 2446
    move/from16 v3, v29

    .end local v29  # "procState":I
    .local v3, "procState":I
    if-le v3, v0, :cond_eef

    .line 2447
    move v3, v0

    .line 2448
    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 2450
    :cond_eef
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurrentSchedulingGroup()I

    move-result v4

    move/from16 v6, v53

    .end local v53  # "schedGroup":I
    .local v6, "schedGroup":I
    if-le v4, v6, :cond_ef9

    .line 2451
    const/4 v4, 0x2

    .end local v6  # "schedGroup":I
    .local v4, "schedGroup":I
    goto :goto_efa

    .line 2450
    .end local v4  # "schedGroup":I
    .restart local v6  # "schedGroup":I
    :cond_ef9
    move v4, v6

    .line 2453
    .end local v6  # "schedGroup":I
    .restart local v4  # "schedGroup":I
    :goto_efa
    if-eqz v1, :cond_f63

    .line 2454
    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2455
    const/4 v6, 0x1

    invoke-virtual {v7, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjTypeCode(I)V

    .line 2457
    invoke-virtual {v7, v15}, Lcom/android/server/am/ProcessStateRecord;->setAdjSource(Ljava/lang/Object;)V

    .line 2458
    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjSourceProcState(I)V

    .line 2459
    iget-object v6, v12, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v7, v6}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    .line 2460
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v6, :cond_f1a

    move/from16 v6, v54

    .end local v54  # "logUid":I
    .local v6, "logUid":I
    if-ne v6, v13, :cond_f17

    goto :goto_f1c

    :cond_f17
    move-object/from16 v8, v52

    goto :goto_f69

    .end local v6  # "logUid":I
    .restart local v54  # "logUid":I
    :cond_f1a
    move/from16 v6, v54

    .line 2461
    .end local v54  # "logUid":I
    .restart local v6  # "logUid":I
    :goto_f1c
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v27, v0

    move-object/from16 v0, v33

    .end local v0  # "clientProcState":I
    .local v27, "clientProcState":I
    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-object/from16 v0, v32

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v0, ", due to "

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " adj="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v8, " procState="

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2464
    invoke-static {v3}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2461
    move-object/from16 v8, v52

    invoke-direct {v9, v8, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_f69

    .line 2453
    .end local v6  # "logUid":I
    .end local v27  # "clientProcState":I
    .restart local v0  # "clientProcState":I
    .restart local v54  # "logUid":I
    :cond_f63
    move/from16 v27, v0

    move-object/from16 v8, v52

    move/from16 v6, v54

    .line 2383
    .end local v0  # "clientProcState":I
    .end local v1  # "adjType":Ljava/lang/String;
    .end local v5  # "clientAdj":I
    .end local v11  # "conn":Lcom/android/server/am/ContentProviderConnection;
    .end local v14  # "cstate":Lcom/android/server/am/ProcessStateRecord;
    .end local v15  # "client":Lcom/android/server/am/ProcessRecord;
    .end local v54  # "logUid":I
    .restart local v6  # "logUid":I
    :goto_f69
    move v1, v2

    move/from16 v29, v3

    move v2, v4

    .end local v3  # "procState":I
    .end local v4  # "schedGroup":I
    .local v1, "adj":I
    .local v2, "schedGroup":I
    .restart local v29  # "procState":I
    :goto_f6d
    add-int/lit8 v5, v31, -0x1

    move v3, v6

    move-object v4, v7

    move-object v11, v8

    move-object v7, v12

    move/from16 v8, v22

    move-object/from16 v14, v26

    move/from16 v6, v29

    move-object/from16 v12, v32

    move-object/from16 v15, v33

    .end local v31  # "i":I
    .local v5, "i":I
    goto/16 :goto_db2

    .line 2380
    .end local v12  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .end local v22  # "provi":I
    .end local v26  # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .end local v29  # "procState":I
    .local v3, "logUid":I
    .local v4, "state":Lcom/android/server/am/ProcessStateRecord;
    .local v6, "procState":I
    .local v7, "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v8, "provi":I
    .local v14, "ppr":Lcom/android/server/am/ProcessProviderRecord;
    :cond_f7f
    move/from16 v31, v5

    move/from16 v22, v8

    move-object v8, v11

    move-object/from16 v32, v12

    move-object/from16 v26, v14

    move-object/from16 v33, v15

    move v11, v3

    move v3, v6

    move-object v12, v7

    move v6, v2

    move-object v7, v4

    move v2, v1

    .line 2471
    .end local v1  # "adj":I
    .end local v4  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v5  # "i":I
    .end local v8  # "provi":I
    .end local v14  # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .local v2, "adj":I
    .local v3, "procState":I
    .local v6, "schedGroup":I
    .local v7, "state":Lcom/android/server/am/ProcessStateRecord;
    .local v11, "logUid":I
    .restart local v12  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .restart local v22  # "provi":I
    .restart local v26  # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    :goto_f90
    invoke-virtual {v12}, Lcom/android/server/am/ContentProviderRecord;->hasExternalProcessHandles()Z

    move-result v0

    if-eqz v0, :cond_ff4

    .line 2472
    if-lez v2, :cond_fc8

    .line 2473
    const/4 v1, 0x0

    .line 2474
    .end local v2  # "adj":I
    .restart local v1  # "adj":I
    invoke-virtual {v7, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2475
    const/4 v2, 0x2

    .line 2476
    .end local v6  # "schedGroup":I
    .local v2, "schedGroup":I
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 2477
    const-string v0, "ext-provider"

    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2478
    iget-object v0, v12, Lcom/android/server/am/ContentProviderRecord;->name:Landroid/content/ComponentName;

    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjTarget(Ljava/lang/Object;)V

    .line 2479
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_fb1

    if-ne v11, v13, :cond_fcb

    .line 2480
    :cond_fb1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise adj to external provider: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v8, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_fcb

    .line 2472
    .end local v1  # "adj":I
    .local v2, "adj":I
    .restart local v6  # "schedGroup":I
    :cond_fc8
    const/4 v14, 0x0

    move v1, v2

    move v2, v6

    .line 2484
    .end local v6  # "schedGroup":I
    .restart local v1  # "adj":I
    .local v2, "schedGroup":I
    :cond_fcb
    :goto_fcb
    const/4 v0, 0x6

    if-le v3, v0, :cond_ff1

    .line 2485
    const/4 v0, 0x6

    .line 2486
    .end local v3  # "procState":I
    .local v0, "procState":I
    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 2487
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v3, :cond_fd8

    if-ne v11, v13, :cond_fee

    .line 2488
    :cond_fd8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Raise procstate to external provider: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v9, v8, v3}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2377
    .end local v12  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_fee
    move v5, v1

    move v1, v0

    goto :goto_ff8

    .line 2484
    .end local v0  # "procState":I
    .restart local v3  # "procState":I
    .restart local v12  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    :cond_ff1
    move v5, v1

    move v1, v3

    goto :goto_ff8

    .line 2471
    .end local v1  # "adj":I
    .local v2, "adj":I
    .restart local v6  # "schedGroup":I
    :cond_ff4
    const/4 v14, 0x0

    move v5, v2

    move v1, v3

    move v2, v6

    .line 2377
    .end local v3  # "procState":I
    .end local v6  # "schedGroup":I
    .end local v12  # "cpr":Lcom/android/server/am/ContentProviderRecord;
    .local v1, "procState":I
    .local v2, "schedGroup":I
    .local v5, "adj":I
    :goto_ff8
    add-int/lit8 v0, v22, -0x1

    move-object v4, v7

    move v3, v11

    move/from16 v6, v16

    move-object/from16 v14, v26

    move-object/from16 v12, v32

    move-object/from16 v15, v33

    move-object v11, v8

    move v8, v0

    .end local v22  # "provi":I
    .local v0, "provi":I
    goto/16 :goto_d8d

    .line 2374
    .end local v0  # "provi":I
    .end local v7  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v11  # "logUid":I
    .end local v16  # "boundByNonBgRestricted":Z
    .end local v26  # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .local v3, "logUid":I
    .restart local v4  # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v6, "boundByNonBgRestricted":Z
    .restart local v8  # "provi":I
    .restart local v14  # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    :cond_1008
    move-object v7, v4

    move/from16 v22, v8

    move-object v8, v11

    move-object/from16 v26, v14

    const/4 v14, 0x0

    move v11, v3

    .line 2495
    .end local v3  # "logUid":I
    .end local v4  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v8  # "provi":I
    .end local v14  # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    .restart local v7  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v11  # "logUid":I
    .restart local v26  # "ppr":Lcom/android/server/am/ProcessProviderRecord;
    :goto_1010
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ProcessProviderRecord;->getLastProviderTime()J

    move-result-wide v3

    const-wide/16 v15, 0x0

    cmp-long v0, v3, v15

    if-lez v0, :cond_107f

    .line 2496
    invoke-virtual/range {v26 .. v26}, Lcom/android/server/am/ProcessProviderRecord;->getLastProviderTime()J

    move-result-wide v3

    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v14, v0, Lcom/android/server/am/ActivityManagerConstants;->CONTENT_PROVIDER_RETAIN_TIME:J

    add-long/2addr v3, v14

    cmp-long v0, v3, p5

    if-lez v0, :cond_107f

    .line 2497
    const/16 v0, 0x2bc

    if-le v5, v0, :cond_1054

    .line 2498
    const/16 v5, 0x2bc

    .line 2499
    const/4 v2, 0x0

    .line 2500
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setCached(Z)V

    .line 2501
    const-string/jumbo v0, "recent-provider"

    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2502
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_103e

    if-ne v11, v13, :cond_1054

    .line 2503
    :cond_103e
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise adj to recent provider: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v8, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    .line 2507
    :cond_1054
    const/16 v0, 0xf

    if-le v1, v0, :cond_107d

    .line 2508
    const/16 v1, 0xf

    .line 2509
    const-string/jumbo v0, "recent-provider"

    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    .line 2510
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ_REASON:Z

    if-nez v0, :cond_1066

    if-ne v11, v13, :cond_107f

    .line 2511
    :cond_1066
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Raise procstate to recent provider: "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v9, v8, v0}, Lcom/android/server/am/OomAdjuster;->reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_107f

    .line 2507
    :cond_107d
    move v8, v2

    goto :goto_1080

    .line 2517
    :cond_107f
    :goto_107f
    move v8, v2

    .end local v2  # "schedGroup":I
    .local v8, "schedGroup":I
    :goto_1080
    const/16 v0, 0x13

    if-lt v1, v0, :cond_10a2

    .line 2518
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ProcessServiceRecord;->hasClientActivities()Z

    move-result v0

    if-eqz v0, :cond_1093

    .line 2520
    const/16 v1, 0x11

    .line 2521
    const-string v0, "cch-client-act"

    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    move v12, v1

    goto :goto_10a3

    .line 2522
    :cond_1093
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/am/ProcessServiceRecord;->isTreatedLikeActivity()Z

    move-result v0

    if-eqz v0, :cond_10a2

    .line 2525
    const/16 v1, 0x10

    .line 2526
    const-string v0, "cch-as-act"

    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setAdjType(Ljava/lang/String;)V

    move v12, v1

    goto :goto_10a3

    .line 2530
    :cond_10a2
    move v12, v1

    .end local v1  # "procState":I
    .local v12, "procState":I
    :goto_10a3
    const/16 v0, 0x1f4

    if-ne v5, v0, :cond_1101

    .line 2531
    if-eqz p4, :cond_10f7

    if-nez p7, :cond_10f7

    .line 2532
    iget v0, v9, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    iget v1, v9, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    const/4 v2, 0x3

    div-int/2addr v1, v2

    if-le v0, v1, :cond_10b5

    const/4 v0, 0x1

    goto :goto_10b6

    :cond_10b5
    const/4 v0, 0x0

    :goto_10b6
    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setServiceB(Z)V

    .line 2533
    iget v0, v9, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, v9, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 2534
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->isServiceB()Z

    move-result v0

    if-nez v0, :cond_10f2

    .line 2539
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/AppProfiler;->isLastMemoryLevelNormal()Z

    move-result v0

    if-nez v0, :cond_10ea

    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 2540
    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getLastPss()J

    move-result-wide v0

    iget-object v2, v9, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 2541
    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getCachedRestoreThresholdKb()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-ltz v0, :cond_10e8

    .line 2542
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setServiceHighRam(Z)V

    .line 2543
    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setServiceB(Z)V

    const/4 v14, 0x0

    goto :goto_10f8

    .line 2541
    :cond_10e8
    const/4 v0, 0x1

    goto :goto_10eb

    .line 2539
    :cond_10ea
    const/4 v0, 0x1

    .line 2546
    :goto_10eb
    iget v1, v9, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    add-int/2addr v1, v0

    iput v1, v9, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    const/4 v14, 0x0

    goto :goto_10f8

    .line 2550
    :cond_10f2
    const/4 v14, 0x0

    invoke-virtual {v7, v14}, Lcom/android/server/am/ProcessStateRecord;->setServiceHighRam(Z)V

    goto :goto_10f8

    .line 2531
    :cond_10f7
    const/4 v14, 0x0

    .line 2553
    :goto_10f8
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->isServiceB()Z

    move-result v0

    if-eqz v0, :cond_1102

    .line 2554
    const/16 v5, 0x320

    goto :goto_1102

    .line 2530
    :cond_1101
    const/4 v14, 0x0

    .line 2559
    :cond_1102
    :goto_1102
    move-object/from16 v15, v25

    .end local v25  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .local v15, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v15, v5}, Lcom/android/server/am/ProcessServiceRecord;->modifyRawOomAdj(I)I

    move-result v5

    .line 2560
    invoke-static {}, Lcom/android/server/am/OomAdjusterStub;->getInstance()Lcom/android/server/am/OomAdjusterStub;

    move-result-object v0

    move-object/from16 v1, p1

    move-object/from16 v2, p3

    move v3, v5

    move v4, v12

    move v14, v5

    .end local v5  # "adj":I
    .local v14, "adj":I
    move/from16 v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/OomAdjusterStub;->computeOomAdjLocked(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessRecord;IIZ)Z

    move-result v0

    if-eqz v0, :cond_1124

    .line 2562
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v5

    .line 2563
    .end local v14  # "adj":I
    .restart local v5  # "adj":I
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v12

    goto :goto_1128

    .line 2565
    .end local v5  # "adj":I
    .restart local v14  # "adj":I
    :cond_1124
    invoke-virtual {v7, v14}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    move v5, v14

    .line 2569
    .end local v14  # "adj":I
    .restart local v5  # "adj":I
    :goto_1128
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v0

    if-le v5, v0, :cond_1137

    .line 2570
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getMaxAdj()I

    move-result v5

    .line 2571
    const/16 v0, 0xfa

    if-gt v5, v0, :cond_1137

    .line 2572
    const/4 v8, 0x2

    .line 2578
    :cond_1137
    const/4 v0, 0x5

    if-lt v12, v0, :cond_114b

    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mWakefulness:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 2579
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_114c

    if-nez v30, :cond_114c

    .line 2581
    if-le v8, v1, :cond_114c

    .line 2582
    const/4 v8, 0x1

    goto :goto_114c

    .line 2578
    :cond_114b
    const/4 v1, 0x1

    .line 2587
    :cond_114c
    :goto_114c
    invoke-virtual {v15}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v0

    if-eqz v0, :cond_1154

    .line 2588
    or-int v24, v24, v39

    .line 2591
    :cond_1154
    invoke-direct {v9, v15, v12}, Lcom/android/server/am/OomAdjuster;->getDefaultCapability(Lcom/android/server/am/ProcessServiceRecord;I)I

    move-result v0

    or-int v0, v24, v0

    .line 2599
    .end local v24  # "capability":I
    .local v0, "capability":I
    iget-boolean v2, v10, Lcom/android/server/am/ProcessRecord;->enableBoost:Z

    if-eqz v2, :cond_116a

    .line 2600
    invoke-static {}, Lcom/android/server/am/ActivityManagerServiceStub;->get()Lcom/android/server/am/ActivityManagerServiceStub;

    move-result-object v2

    iget-wide v3, v10, Lcom/android/server/am/ProcessRecord;->boostBeginTime:J

    invoke-virtual {v2, v10, v3, v4}, Lcom/android/server/am/ActivityManagerServiceStub;->doBoostEx(Lcom/android/server/am/ProcessRecord;J)Z

    move-result v2

    iput-boolean v2, v10, Lcom/android/server/am/ProcessRecord;->enableBoost:Z

    .line 2606
    :cond_116a
    invoke-virtual {v7, v5}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 2608
    invoke-virtual {v7, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurCapability(I)V

    .line 2609
    invoke-virtual {v7, v8}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 2610
    invoke-virtual {v7, v12}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 2611
    invoke-virtual {v7, v12}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 2612
    move/from16 v2, v34

    .end local v34  # "hasVisibleActivities":Z
    .local v2, "hasVisibleActivities":Z
    invoke-virtual {v7, v2}, Lcom/android/server/am/ProcessStateRecord;->updateLastInvisibleTime(Z)V

    .line 2613
    move/from16 v3, v21

    .end local v21  # "foregroundActivities":Z
    .local v3, "foregroundActivities":Z
    invoke-virtual {v7, v3}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    .line 2614
    iget v4, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v7, v4}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    .line 2615
    invoke-virtual {v7, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    .line 2619
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    iget-boolean v4, v4, Lcom/android/server/wm/WindowProcessController;->mIsPreloaded:Z

    if-eqz v4, :cond_119c

    .line 2620
    const/16 v4, 0xe1

    invoke-virtual {v7, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurAdj(I)V

    .line 2621
    const/4 v12, 0x2

    .line 2622
    invoke-virtual {v7, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 2626
    :cond_119c
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v4

    move/from16 v14, v47

    .end local v47  # "prevAppAdj":I
    .local v14, "prevAppAdj":I
    if-lt v4, v14, :cond_11bf

    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v4

    move/from16 v1, v46

    .end local v46  # "prevProcState":I
    .local v1, "prevProcState":I
    if-lt v4, v1, :cond_11ba

    .line 2627
    invoke-virtual {v7}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v4

    move/from16 v16, v0

    move/from16 v0, v45

    .end local v45  # "prevCapability":I
    .local v0, "prevCapability":I
    .local v16, "capability":I
    if-eq v4, v0, :cond_11b7

    goto :goto_11c5

    :cond_11b7
    const/16 v51, 0x0

    goto :goto_11c7

    .line 2626
    .end local v16  # "capability":I
    .local v0, "capability":I
    .restart local v45  # "prevCapability":I
    :cond_11ba
    move/from16 v16, v0

    move/from16 v0, v45

    .end local v45  # "prevCapability":I
    .local v0, "prevCapability":I
    .restart local v16  # "capability":I
    goto :goto_11c5

    .end local v1  # "prevProcState":I
    .end local v16  # "capability":I
    .local v0, "capability":I
    .restart local v45  # "prevCapability":I
    .restart local v46  # "prevProcState":I
    :cond_11bf
    move/from16 v16, v0

    move/from16 v0, v45

    move/from16 v1, v46

    .line 2627
    .end local v45  # "prevCapability":I
    .end local v46  # "prevProcState":I
    .local v0, "prevCapability":I
    .restart local v1  # "prevProcState":I
    .restart local v16  # "capability":I
    :goto_11c5
    const/16 v51, 0x1

    .line 2626
    :goto_11c7
    return v51
.end method

.method private static createAdjusterThread()Lcom/android/server/ServiceThread;
    .registers 4

    .line 302
    new-instance v0, Lcom/android/server/ServiceThread;

    const-string v1, "OomAdjuster"

    const/16 v2, -0xa

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/android/server/ServiceThread;-><init>(Ljava/lang/String;IZ)V

    .line 304
    .local v0, "adjusterThread":Lcom/android/server/ServiceThread;
    invoke-virtual {v0}, Lcom/android/server/ServiceThread;->start()V

    .line 305
    return-object v0
.end method

.method private getDefaultCapability(Lcom/android/server/am/ProcessServiceRecord;I)I
    .registers 5
    .param p1, "psr"  # Lcom/android/server/am/ProcessServiceRecord;
    .param p2, "procState"  # I

    .line 2631
    const/16 v0, 0x8

    packed-switch p2, :pswitch_data_16

    .line 2652
    const/4 v0, 0x0

    return v0

    .line 2650
    :pswitch_7  #0x5
    return v0

    .line 2639
    :pswitch_8  #0x4
    invoke-virtual {p1}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v1

    if-eqz v1, :cond_f

    .line 2642
    return v0

    .line 2647
    :cond_f
    const/16 v0, 0xe

    return v0

    .line 2637
    :pswitch_12  #0x3
    return v0

    .line 2635
    :pswitch_13  #0x0, 0x1, 0x2
    const/16 v0, 0xf

    return v0

    :pswitch_data_16
    .packed-switch 0x0
        :pswitch_13  #00000000
        :pswitch_13  #00000001
        :pswitch_13  #00000002
        :pswitch_12  #00000003
        :pswitch_8  #00000004
        :pswitch_7  #00000005
    .end packed-switch
.end method

.method private maybeUpdateLastTopTime(Lcom/android/server/am/ProcessStateRecord;J)V
    .registers 6
    .param p1, "state"  # Lcom/android/server/am/ProcessStateRecord;
    .param p2, "nowUptime"  # J

    .line 3160
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    const/4 v1, 0x2

    if-gt v0, v1, :cond_10

    .line 3161
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    if-le v0, v1, :cond_10

    .line 3162
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessStateRecord;->setLastTopTime(J)V

    .line 3165
    :cond_10
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    if-le v0, v1, :cond_1f

    .line 3166
    invoke-virtual {p1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    if-ne v0, v1, :cond_1f

    .line 3167
    invoke-virtual {p1, p2, p3}, Lcom/android/server/am/ProcessStateRecord;->setLastSwitchToTopTime(J)V

    .line 3171
    :cond_1f
    return-void
.end method

.method private maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V
    .registers 21
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "nowElapsed"  # J

    .line 3105
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide/from16 v2, p2

    iget-object v4, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3106
    .local v4, "state":Lcom/android/server/am/ProcessStateRecord;
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_USAGE_STATS:Z

    if-eqz v5, :cond_48

    .line 3107
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Checking proc ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] state changes: old = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3108
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ", new = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3109
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 3107
    const-string v6, "OomAdjuster"

    invoke-static {v6, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3111
    :cond_48
    iget-object v5, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    if-nez v5, :cond_4f

    .line 3112
    return-void

    .line 3114
    :cond_4f
    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/android/server/am/ProcessStateRecord;->getCachedCompatChange(I)Z

    move-result v5

    .line 3120
    .local v5, "fgsInteractionChangeEnabled":Z
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v6

    invoke-static {v6}, Landroid/app/ActivityManager;->isProcStateConsideredInteraction(I)Z

    move-result v6

    const/4 v7, 0x6

    const-wide/16 v8, 0x0

    if-eqz v6, :cond_66

    .line 3121
    const/4 v6, 0x1

    .line 3122
    .local v6, "isInteraction":Z
    invoke-virtual {v4, v8, v9}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    goto :goto_a0

    .line 3123
    .end local v6  # "isInteraction":Z
    :cond_66
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v6

    const/4 v10, 0x4

    const/4 v11, 0x0

    const/4 v12, 0x1

    if-gt v6, v10, :cond_94

    .line 3124
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v13

    cmp-long v6, v13, v8

    if-nez v6, :cond_7c

    .line 3125
    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    .line 3126
    const/4 v6, 0x0

    .restart local v6  # "isInteraction":Z
    goto :goto_a0

    .line 3128
    .end local v6  # "isInteraction":Z
    :cond_7c
    if-eqz v5, :cond_83

    .line 3129
    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v13, v6, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_POST_S:J

    goto :goto_87

    .line 3130
    :cond_83
    iget-object v6, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v13, v6, Lcom/android/server/am/ActivityManagerConstants;->SERVICE_USAGE_INTERACTION_TIME_PRE_S:J

    :goto_87
    nop

    .line 3131
    .local v13, "interactionTime":J
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getFgInteractionTime()J

    move-result-wide v15

    add-long/2addr v15, v13

    cmp-long v6, v2, v15

    if-lez v6, :cond_92

    move v11, v12

    :cond_92
    move v6, v11

    .line 3132
    .end local v13  # "interactionTime":J
    .restart local v6  # "isInteraction":Z
    goto :goto_a0

    .line 3134
    .end local v6  # "isInteraction":Z
    :cond_94
    nop

    .line 3135
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v6

    if-gt v6, v7, :cond_9c

    move v11, v12

    :cond_9c
    move v6, v11

    .line 3136
    .restart local v6  # "isInteraction":Z
    invoke-virtual {v4, v8, v9}, Lcom/android/server/am/ProcessStateRecord;->setFgInteractionTime(J)V

    .line 3138
    :goto_a0
    if-eqz v5, :cond_a7

    .line 3139
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v10, v10, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_POST_S:J

    goto :goto_ab

    .line 3140
    :cond_a7
    iget-object v10, v0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v10, v10, Lcom/android/server/am/ActivityManagerConstants;->USAGE_STATS_INTERACTION_INTERVAL_PRE_S:J

    :goto_ab
    nop

    .line 3141
    .local v10, "interactionThreshold":J
    if-eqz v6, :cond_db

    .line 3142
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->hasReportedInteraction()Z

    move-result v12

    if-eqz v12, :cond_be

    .line 3143
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getInteractionEventTime()J

    move-result-wide v12

    sub-long v12, v2, v12

    cmp-long v12, v12, v10

    if-lez v12, :cond_db

    .line 3144
    :cond_be
    invoke-virtual {v4, v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setInteractionEventTime(J)V

    .line 3145
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessRecord;->getPackageList()[Ljava/lang/String;

    move-result-object v12

    .line 3146
    .local v12, "packages":[Ljava/lang/String;
    if-eqz v12, :cond_db

    .line 3147
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_c8
    array-length v14, v12

    if-ge v13, v14, :cond_db

    .line 3148
    iget-object v14, v0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v14, v14, Lcom/android/server/am/ActivityManagerService;->mUsageStatsService:Landroid/app/usage/UsageStatsManagerInternal;

    aget-object v15, v12, v13

    iget v8, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {v14, v15, v8, v7}, Landroid/app/usage/UsageStatsManagerInternal;->reportEvent(Ljava/lang/String;II)V

    .line 3147
    add-int/lit8 v13, v13, 0x1

    const-wide/16 v8, 0x0

    goto :goto_c8

    .line 3153
    .end local v12  # "packages":[Ljava/lang/String;
    .end local v13  # "i":I
    :cond_db
    invoke-virtual {v4, v6}, Lcom/android/server/am/ProcessStateRecord;->setReportedInteraction(Z)V

    .line 3154
    if-nez v6, :cond_e5

    .line 3155
    const-wide/16 v7, 0x0

    invoke-virtual {v4, v7, v8}, Lcom/android/server/am/ProcessStateRecord;->setInteractionEventTime(J)V

    .line 3157
    :cond_e5
    return-void
.end method

.method private performUpdateOomAdjLSP(Ljava/lang/String;)V
    .registers 10
    .param p1, "oomAdjReason"  # Ljava/lang/String;

    .line 490
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 492
    .local v0, "topApp":Lcom/android/server/am/ProcessRecord;
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 493
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/android/server/am/AppProfiler;->mHasHomeProcess:Z

    iput-boolean v3, v1, Lcom/android/server/am/AppProfiler;->mHasPreviousProcess:Z

    .line 494
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    .line 495
    return-void
.end method

.method private performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;J)Z
    .registers 18
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "cachedAdj"  # I
    .param p3, "topApp"  # Lcom/android/server/am/ProcessRecord;
    .param p4, "now"  # J

    .line 416
    move-object v9, p0

    move-object v10, p1

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_a

    .line 417
    return v1

    .line 420
    :cond_a
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    .line 421
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    .line 422
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v11

    .line 423
    .local v11, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v11, :cond_39

    .line 424
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v0, :cond_36

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Starting update of "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    :cond_36
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->reset()V

    .line 431
    :cond_39
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 433
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 434
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-wide/from16 v5, p4

    invoke-direct/range {v0 .. v8}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    .line 435
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_75

    .line 437
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_5f
    if-ltz v0, :cond_74

    .line 439
    iget-object v2, v9, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    iget-object v2, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget v3, v9, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    sub-int/2addr v3, v1

    invoke-virtual {v2, v3}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    .line 437
    add-int/lit8 v0, v0, -0x1

    goto :goto_5f

    .line 441
    .end local v0  # "i":I
    :cond_74
    return v1

    .line 444
    :cond_75
    if-eqz v11, :cond_b8

    .line 447
    new-instance v0, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda2;-><init>(Lcom/android/server/am/OomAdjuster;)V

    invoke-virtual {v11, v0}, Lcom/android/server/am/UidRecord;->forEachProcess(Ljava/util/function/Consumer;)V

    .line 448
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v0

    const/16 v1, 0x14

    if-eq v0, v1, :cond_b8

    .line 449
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v1

    if-ne v0, v1, :cond_a5

    .line 450
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v1

    if-ne v0, v1, :cond_a5

    .line 451
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v0

    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v1

    if-eq v0, v1, :cond_b8

    .line 452
    :cond_a5
    iget-object v0, v9, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 453
    .local v0, "uids":Lcom/android/server/am/ActiveUids;
    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->clear()V

    .line 454
    invoke-virtual {v11}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v1

    invoke-virtual {v0, v1, v11}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 455
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/OomAdjuster;->updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V

    .line 459
    .end local v0  # "uids":Lcom/android/server/am/ActiveUids;
    :cond_b8
    const/4 v2, 0x0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    move-object v0, p0

    move-object v1, p1

    move-wide/from16 v3, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    move-result v0

    return v0
.end method

.method private performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .registers 27
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdjReason"  # Ljava/lang/String;

    .line 536
    move-object/from16 v10, p0

    move-object/from16 v11, p1

    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v12

    .line 538
    .local v12, "topApp":Lcom/android/server/am/ProcessRecord;
    const-wide/16 v13, 0x40

    move-object/from16 v15, p2

    invoke-static {v13, v14, v15}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 539
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    .line 540
    iget v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const/16 v16, 0x1

    add-int/lit8 v0, v0, 0x1

    iput v0, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 543
    iget-object v9, v11, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 544
    .local v9, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v8

    .line 545
    .local v8, "wasCached":Z
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v7

    .line 546
    .local v7, "oldAdj":I
    const/16 v0, 0x384

    if-lt v7, v0, :cond_30

    .line 547
    move v2, v7

    goto :goto_32

    :cond_30
    const/16 v2, 0x3e9

    .line 548
    .local v2, "cachedAdj":I
    :goto_32
    nop

    .line 549
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v0

    .line 548
    invoke-static {v0}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v4

    .line 550
    .local v4, "wasBackground":Z
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetCapability()I

    move-result v5

    .line 551
    .local v5, "oldCap":I
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    .line 552
    invoke-virtual {v9, v3}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    .line 553
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    .line 554
    invoke-virtual {v9, v3}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    .line 556
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, v11}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 557
    nop

    .line 558
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v17

    .line 557
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v13, v3

    move-object v3, v12

    move v14, v4

    move v13, v5

    .end local v4  # "wasBackground":Z
    .end local v5  # "oldCap":I
    .local v13, "oldCap":I
    .local v14, "wasBackground":Z
    move-wide/from16 v4, v17

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;J)Z

    move-result v0

    .line 561
    .local v0, "success":Z
    if-eqz v0, :cond_12a

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v1

    if-ne v8, v1, :cond_90

    const/16 v1, -0x2710

    if-eq v7, v1, :cond_90

    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    .line 562
    invoke-virtual {v1}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_90

    .line 563
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v1

    if-ne v13, v1, :cond_90

    .line 565
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v1

    .line 564
    invoke-static {v1}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v1

    if-ne v14, v1, :cond_90

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v9

    goto/16 :goto_130

    .line 577
    :cond_90
    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 578
    .local v1, "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v5, v10, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 579
    .local v5, "uids":Lcom/android/server/am/ActiveUids;
    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v3, v11}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 582
    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_a1
    if-ltz v3, :cond_b3

    .line 583
    iget-object v4, v10, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    iget-object v6, v10, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v6, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v4, v6}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 582
    add-int/lit8 v3, v3, -0x1

    goto :goto_a1

    .line 585
    .end local v3  # "i":I
    :cond_b3
    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 587
    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-direct {v10, v3, v1, v5}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    move-result v18

    .line 591
    .local v18, "containsCycle":Z
    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v3}, Landroid/util/ArraySet;->clear()V

    .line 593
    if-nez v18, :cond_cc

    .line 595
    const/4 v3, 0x0

    invoke-virtual {v9, v3}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 597
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 600
    :cond_cc
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v19

    .line 601
    .local v19, "size":I
    if-lez v19, :cond_f2

    .line 602
    iget v3, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 604
    const/16 v17, 0x0

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    move-object/from16 v20, v5

    .end local v5  # "uids":Lcom/android/server/am/ActiveUids;
    .local v20, "uids":Lcom/android/server/am/ActiveUids;
    move-object v5, v12

    move-object v6, v1

    move/from16 v21, v7

    .end local v7  # "oldAdj":I
    .local v21, "oldAdj":I
    move-object/from16 v7, v20

    move/from16 v22, v8

    .end local v8  # "wasCached":Z
    .local v22, "wasCached":Z
    move/from16 v8, v18

    move-object/from16 v23, v9

    .end local v9  # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v23, "state":Lcom/android/server/am/ProcessStateRecord;
    move/from16 v9, v17

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    goto :goto_118

    .line 605
    .end local v20  # "uids":Lcom/android/server/am/ActiveUids;
    .end local v21  # "oldAdj":I
    .end local v22  # "wasCached":Z
    .end local v23  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v5  # "uids":Lcom/android/server/am/ActiveUids;
    .restart local v7  # "oldAdj":I
    .restart local v8  # "wasCached":Z
    .restart local v9  # "state":Lcom/android/server/am/ProcessStateRecord;
    :cond_f2
    move-object/from16 v20, v5

    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v9

    .end local v5  # "uids":Lcom/android/server/am/ActiveUids;
    .end local v7  # "oldAdj":I
    .end local v8  # "wasCached":Z
    .end local v9  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v20  # "uids":Lcom/android/server/am/ActiveUids;
    .restart local v21  # "oldAdj":I
    .restart local v22  # "wasCached":Z
    .restart local v23  # "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual/range {v23 .. v23}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v3

    const/16 v4, 0x3e9

    if-ne v3, v4, :cond_118

    .line 608
    invoke-virtual {v1, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 609
    invoke-direct {v10, v1}, Lcom/android/server/am/OomAdjuster;->assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V

    .line 610
    const/4 v5, 0x0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    .line 611
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 610
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    invoke-direct/range {v3 .. v9}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    .line 613
    :cond_118
    :goto_118
    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 614
    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v3}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    .line 615
    const-wide/16 v3, 0x40

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 616
    return v16

    .line 561
    .end local v1  # "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v18  # "containsCycle":Z
    .end local v19  # "size":I
    .end local v20  # "uids":Lcom/android/server/am/ActiveUids;
    .end local v21  # "oldAdj":I
    .end local v22  # "wasCached":Z
    .end local v23  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v7  # "oldAdj":I
    .restart local v8  # "wasCached":Z
    .restart local v9  # "state":Lcom/android/server/am/ProcessStateRecord;
    :cond_12a
    move/from16 v21, v7

    move/from16 v22, v8

    move-object/from16 v23, v9

    .line 566
    .end local v7  # "oldAdj":I
    .end local v8  # "wasCached":Z
    .end local v9  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v21  # "oldAdj":I
    .restart local v22  # "wasCached":Z
    .restart local v23  # "state":Lcom/android/server/am/ProcessStateRecord;
    :goto_130
    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 568
    sget-boolean v1, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v1, :cond_151

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No oomadj changes for "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v3, "ActivityManager"

    invoke-static {v3, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    :cond_151
    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    .line 572
    const-wide/16 v3, 0x40

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 573
    return v0
.end method

.method private performUpdateOomAdjPendingTargetsLocked(Ljava/lang/String;)V
    .registers 15
    .param p1, "oomAdjReason"  # Ljava/lang/String;

    .line 765
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getTopApp()Lcom/android/server/am/ProcessRecord;

    move-result-object v0

    .line 767
    .local v0, "topApp":Lcom/android/server/am/ProcessRecord;
    const-wide/16 v8, 0x40

    invoke-static {v8, v9, p1}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 768
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    .line 770
    iget-object v10, p0, Lcom/android/server/am/OomAdjuster;->mTmpProcessList:Ljava/util/ArrayList;

    .line 771
    .local v10, "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v11, p0, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 772
    .local v11, "uids":Lcom/android/server/am/ActiveUids;
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-direct {p0, v1, v10, v11}, Lcom/android/server/am/OomAdjuster;->collectReachableProcessesLocked(Landroid/util/ArraySet;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;)Z

    .line 773
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v1}, Landroid/util/ArraySet;->clear()V

    .line 774
    iget-object v12, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v12

    :try_start_23
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 775
    const/4 v6, 0x1

    const/4 v7, 0x0

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, v10

    move-object v5, v11

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/OomAdjuster;->updateOomAdjInnerLSP(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V

    .line 776
    monitor-exit v12
    :try_end_31
    .catchall {:try_start_23 .. :try_end_31} :catchall_42

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 777
    invoke-virtual {v10}, Ljava/util/ArrayList;->clear()V

    .line 779
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    .line 780
    invoke-static {v8, v9}, Landroid/os/Trace;->traceEnd(J)V

    .line 781
    return-void

    .line 776
    :catchall_42
    move-exception v1

    :try_start_43
    monitor-exit v12
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method private reportOomAdjMessageLocked(Ljava/lang/String;Ljava/lang/String;)V
    .registers 6
    .param p1, "tag"  # Ljava/lang/String;
    .param p2, "msg"  # Ljava/lang/String;

    .line 2698
    invoke-static {p1, p2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2699
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjObserverLock:Ljava/lang/Object;

    monitor-enter v0

    .line 2700
    :try_start_8
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjObserver:Lcom/android/server/am/ActivityManagerService$OomAdjObserver;

    if-eqz v1, :cond_1b

    .line 2701
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mUiHandler:Landroid/os/Handler;

    const/16 v2, 0x46

    invoke-virtual {v1, v2, p2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 2702
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 2704
    :cond_1b
    monitor-exit v0

    .line 2705
    return-void

    .line 2704
    :catchall_1d
    move-exception v1

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_8 .. :try_end_1f} :catchall_1d

    throw v1
.end method

.method private shouldKillExcessiveProcesses(J)Z
    .registers 11
    .param p1, "nowUptime"  # J

    .line 1404
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mUserController:Lcom/android/server/am/UserController;

    invoke-virtual {v0}, Lcom/android/server/am/UserController;->getLastUserUnlockingUptime()J

    move-result-wide v0

    .line 1406
    .local v0, "lastUserUnlockingUptime":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    const/4 v3, 0x1

    if-nez v2, :cond_15

    .line 1408
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesUntilBootCompleted:Z

    xor-int/2addr v2, v3

    return v2

    .line 1410
    :cond_15
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v4, v2, Lcom/android/server/am/ActivityManagerConstants;->mNoKillCachedProcessesPostBootCompletedDurationMillis:J

    .line 1412
    .local v4, "noKillCachedProcessesPostBootCompletedDurationMillis":J
    add-long v6, v0, v4

    cmp-long v2, v6, p1

    if-lez v2, :cond_21

    .line 1414
    const/4 v2, 0x0

    return v2

    .line 1416
    :cond_21
    return v3
.end method

.method private shouldSkipDueToCycle(Lcom/android/server/am/ProcessRecord;Lcom/android/server/am/ProcessStateRecord;IIZ)Z
    .registers 9
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "client"  # Lcom/android/server/am/ProcessStateRecord;
    .param p3, "procState"  # I
    .param p4, "adj"  # I
    .param p5, "cycleReEval"  # Z

    .line 2669
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2673
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    .line 2674
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2677
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCompletedAdjSeq()I

    move-result v0

    iget v2, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ge v0, v2, :cond_29

    .line 2678
    if-eqz p5, :cond_28

    .line 2681
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurRawProcState()I

    move-result v0

    if-lt v0, p3, :cond_29

    .line 2682
    invoke-virtual {p2}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v0

    if-lt v0, p4, :cond_29

    .line 2683
    return v1

    .line 2688
    :cond_28
    return v1

    .line 2692
    :cond_29
    const/4 v0, 0x0

    return v0
.end method

.method private updateAndTrimProcessLSP(JJJLcom/android/server/am/ActiveUids;)Z
    .registers 44
    .param p1, "now"  # J
    .param p3, "nowElapsed"  # J
    .param p5, "oldTime"  # J
    .param p7, "activeUids"  # Lcom/android/server/am/ActiveUids;

    .line 1104
    move-object/from16 v7, p0

    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v8

    .line 1105
    .local v8, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    .line 1107
    .local v9, "numLru":I
    invoke-direct/range {p0 .. p2}, Lcom/android/server/am/OomAdjuster;->shouldKillExcessiveProcesses(J)Z

    move-result v10

    .line 1108
    .local v10, "doKillExcessiveProcesses":Z
    const-string v11, "OomAdjuster"

    if-nez v10, :cond_25

    .line 1109
    iget-wide v0, v7, Lcom/android/server/am/OomAdjuster;->mNextNoKillDebugMessageTime:J

    cmp-long v0, v0, p1

    if-gez v0, :cond_25

    .line 1110
    const-string v0, "Not killing cached processes"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1111
    const-wide/16 v0, 0x1388

    add-long v0, p1, v0

    iput-wide v0, v7, Lcom/android/server/am/OomAdjuster;->mNextNoKillDebugMessageTime:J

    .line 1114
    :cond_25
    const v0, 0x7fffffff

    if-eqz v10, :cond_2f

    .line 1115
    iget-object v1, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_EMPTY_PROCESSES:I

    goto :goto_30

    :cond_2f
    move v1, v0

    :goto_30
    move v12, v1

    .line 1116
    .local v12, "emptyProcessLimit":I
    if-eqz v10, :cond_39

    .line 1117
    iget-object v0, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v0, v0, Lcom/android/server/am/ActivityManagerConstants;->CUR_MAX_CACHED_PROCESSES:I

    sub-int/2addr v0, v12

    goto :goto_3a

    :cond_39
    nop

    :goto_3a
    move v13, v0

    .line 1118
    .local v13, "cachedProcessLimit":I
    const/4 v0, 0x0

    .line 1119
    .local v0, "lastCachedGroup":I
    const/4 v1, 0x0

    .line 1120
    .local v1, "lastCachedGroupUid":I
    const/4 v2, 0x0

    .line 1121
    .local v2, "numCached":I
    const/4 v3, 0x0

    .line 1122
    .local v3, "numCachedExtraGroup":I
    const/4 v4, 0x0

    .line 1123
    .local v4, "numEmpty":I
    const/4 v5, 0x0

    .line 1124
    .local v5, "numTrimming":I
    const/4 v6, 0x0

    .line 1125
    .local v6, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    const-wide/16 v14, 0x0

    .line 1126
    .local v14, "serviceLastActivity":J
    const/16 v16, 0x0

    .line 1128
    .local v16, "numBServices":I
    add-int/lit8 v17, v9, -0x1

    move-wide/from16 v34, v14

    move v14, v0

    move v15, v1

    move-object v0, v6

    move v6, v4

    move/from16 v4, v16

    move/from16 v16, v3

    move v3, v5

    move v5, v2

    move/from16 v2, v17

    move-wide/from16 v17, v34

    .end local v1  # "lastCachedGroupUid":I
    .local v0, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v2, "i":I
    .local v3, "numTrimming":I
    .local v4, "numBServices":I
    .local v5, "numCached":I
    .local v6, "numEmpty":I
    .local v14, "lastCachedGroup":I
    .local v15, "lastCachedGroupUid":I
    .local v16, "numCachedExtraGroup":I
    .local v17, "serviceLastActivity":J
    :goto_58
    const-string v1, "app.processName = "

    move/from16 v19, v3

    .end local v3  # "numTrimming":I
    .local v19, "numTrimming":I
    const-string v3, " app.pid = "

    move/from16 v20, v9

    .end local v9  # "numLru":I
    .local v20, "numLru":I
    if-ltz v2, :cond_2fa

    .line 1129
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v2

    .end local v2  # "i":I
    .local v22, "i":I
    move-object/from16 v2, v21

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 1130
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget-boolean v9, v7, Lcom/android/server/am/OomAdjuster;->mEnableBServicePropagation:Z

    if-eqz v9, :cond_153

    iget-object v9, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->isServiceB()Z

    move-result v9

    if-eqz v9, :cond_153

    iget-object v9, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1131
    invoke-virtual {v9}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v9

    move/from16 v23, v5

    .end local v5  # "numCached":I
    .local v23, "numCached":I
    const/16 v5, 0x320

    if-ne v9, v5, :cond_14e

    .line 1132
    add-int/lit8 v4, v4, 0x1

    .line 1133
    iget-object v5, v2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v5}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v5

    const/4 v9, 0x1

    sub-int/2addr v5, v9

    .local v5, "s":I
    :goto_8e
    if-ltz v5, :cond_141

    .line 1134
    iget-object v9, v2, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v9, v5}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v9

    .line 1135
    .local v9, "sr":Lcom/android/server/am/ServiceRecord;
    sget-boolean v24, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v24, :cond_f7

    move-object/from16 v24, v0

    .end local v0  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v24, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v25, v4

    .end local v4  # "numBServices":I
    .local v25, "numBServices":I
    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " serviceb = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1136
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->isServiceB()Z

    move-result v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " s = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " sr.lastActivity = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    move/from16 v28, v13

    move/from16 v29, v14

    .end local v13  # "cachedProcessLimit":I
    .end local v14  # "lastCachedGroup":I
    .local v28, "cachedProcessLimit":I
    .local v29, "lastCachedGroup":I
    iget-wide v13, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    invoke-virtual {v0, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " packageName = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " processName = "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v4, v9, Lcom/android/server/am/ServiceRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1135
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_ff

    .end local v24  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v25  # "numBServices":I
    .end local v28  # "cachedProcessLimit":I
    .end local v29  # "lastCachedGroup":I
    .restart local v0  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v4  # "numBServices":I
    .restart local v13  # "cachedProcessLimit":I
    .restart local v14  # "lastCachedGroup":I
    :cond_f7
    move-object/from16 v24, v0

    move/from16 v25, v4

    move/from16 v28, v13

    move/from16 v29, v14

    .line 1139
    .end local v0  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v4  # "numBServices":I
    .end local v13  # "cachedProcessLimit":I
    .end local v14  # "lastCachedGroup":I
    .restart local v24  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v25  # "numBServices":I
    .restart local v28  # "cachedProcessLimit":I
    .restart local v29  # "lastCachedGroup":I
    :goto_ff
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v13

    move-object/from16 v26, v1

    iget-wide v0, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    sub-long/2addr v13, v0

    iget v0, v7, Lcom/android/server/am/OomAdjuster;->mMinBServiceAgingTime:I

    int-to-long v0, v0

    cmp-long v0, v13, v0

    if-gez v0, :cond_119

    .line 1141
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_133

    .line 1142
    const-string v0, "Not aged enough!!!"

    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_133

    .line 1146
    :cond_119
    const-wide/16 v0, 0x0

    cmp-long v0, v17, v0

    if-nez v0, :cond_126

    .line 1147
    iget-wide v0, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 1148
    .end local v17  # "serviceLastActivity":J
    .local v0, "serviceLastActivity":J
    move-object v4, v2

    move-wide/from16 v17, v0

    move-object v0, v4

    .end local v24  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v4, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    goto :goto_135

    .line 1149
    .end local v0  # "serviceLastActivity":J
    .end local v4  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v17  # "serviceLastActivity":J
    .restart local v24  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    :cond_126
    iget-wide v0, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    cmp-long v0, v0, v17

    if-gez v0, :cond_133

    .line 1150
    iget-wide v0, v9, Lcom/android/server/am/ServiceRecord;->lastActivity:J

    .line 1151
    .end local v17  # "serviceLastActivity":J
    .restart local v0  # "serviceLastActivity":J
    move-object v4, v2

    move-wide/from16 v17, v0

    move-object v0, v4

    .end local v24  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v4  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    goto :goto_135

    .line 1133
    .end local v0  # "serviceLastActivity":J
    .end local v4  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v9  # "sr":Lcom/android/server/am/ServiceRecord;
    .restart local v17  # "serviceLastActivity":J
    .restart local v24  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    :cond_133
    :goto_133
    move-object/from16 v0, v24

    .end local v24  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v0, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    :goto_135
    add-int/lit8 v5, v5, -0x1

    move/from16 v4, v25

    move-object/from16 v1, v26

    move/from16 v13, v28

    move/from16 v14, v29

    goto/16 :goto_8e

    .end local v25  # "numBServices":I
    .end local v28  # "cachedProcessLimit":I
    .end local v29  # "lastCachedGroup":I
    .local v4, "numBServices":I
    .restart local v13  # "cachedProcessLimit":I
    .restart local v14  # "lastCachedGroup":I
    :cond_141
    move-object/from16 v24, v0

    move/from16 v25, v4

    move/from16 v28, v13

    move/from16 v29, v14

    .end local v0  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v4  # "numBServices":I
    .end local v13  # "cachedProcessLimit":I
    .end local v14  # "lastCachedGroup":I
    .restart local v24  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v25  # "numBServices":I
    .restart local v28  # "cachedProcessLimit":I
    .restart local v29  # "lastCachedGroup":I
    move-object/from16 v9, v24

    move/from16 v13, v25

    goto :goto_15b

    .line 1131
    .end local v5  # "s":I
    .end local v24  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v25  # "numBServices":I
    .end local v28  # "cachedProcessLimit":I
    .end local v29  # "lastCachedGroup":I
    .restart local v0  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v4  # "numBServices":I
    .restart local v13  # "cachedProcessLimit":I
    .restart local v14  # "lastCachedGroup":I
    :cond_14e
    move/from16 v28, v13

    move/from16 v29, v14

    .end local v13  # "cachedProcessLimit":I
    .end local v14  # "lastCachedGroup":I
    .restart local v28  # "cachedProcessLimit":I
    .restart local v29  # "lastCachedGroup":I
    goto :goto_159

    .line 1130
    .end local v23  # "numCached":I
    .end local v28  # "cachedProcessLimit":I
    .end local v29  # "lastCachedGroup":I
    .local v5, "numCached":I
    .restart local v13  # "cachedProcessLimit":I
    .restart local v14  # "lastCachedGroup":I
    :cond_153
    move/from16 v23, v5

    move/from16 v28, v13

    move/from16 v29, v14

    .line 1155
    .end local v5  # "numCached":I
    .end local v13  # "cachedProcessLimit":I
    .end local v14  # "lastCachedGroup":I
    .restart local v23  # "numCached":I
    .restart local v28  # "cachedProcessLimit":I
    .restart local v29  # "lastCachedGroup":I
    :goto_159
    move-object v9, v0

    move v13, v4

    .end local v0  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v4  # "numBServices":I
    .local v9, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v13, "numBServices":I
    :goto_15b
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_185

    if-eqz v9, :cond_185

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Identified app.processName = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1157
    invoke-virtual {v9}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1155
    invoke-static {v11, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1158
    :cond_185
    iget-object v14, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1159
    .local v14, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_2d6

    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_2d6

    .line 1161
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCompletedAdjSeq()I

    move-result v0

    iget v1, v7, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-ne v0, v1, :cond_1b7

    .line 1162
    const/4 v3, 0x1

    move-object/from16 v0, p0

    move-object v1, v2

    move-object v5, v2

    move/from16 v30, v22

    .end local v2  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v22  # "i":I
    .local v5, "app":Lcom/android/server/am/ProcessRecord;
    .local v30, "i":I
    move v2, v3

    move/from16 v31, v19

    .end local v19  # "numTrimming":I
    .local v31, "numTrimming":I
    move-wide/from16 v3, p1

    move-object/from16 v19, v8

    move-object/from16 v32, v9

    move/from16 v33, v10

    move/from16 v8, v23

    move-object v10, v5

    move v9, v6

    .end local v5  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v6  # "numEmpty":I
    .end local v23  # "numCached":I
    .local v8, "numCached":I
    .local v9, "numEmpty":I
    .local v10, "app":Lcom/android/server/am/ProcessRecord;
    .local v19, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v32, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v33, "doKillExcessiveProcesses":Z
    move-wide/from16 v5, p3

    invoke-direct/range {v0 .. v6}, Lcom/android/server/am/OomAdjuster;->applyOomAdjLSP(Lcom/android/server/am/ProcessRecord;ZJJ)Z

    goto :goto_1c5

    .line 1161
    .end local v30  # "i":I
    .end local v31  # "numTrimming":I
    .end local v32  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v33  # "doKillExcessiveProcesses":Z
    .restart local v2  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v6  # "numEmpty":I
    .local v8, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v9, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v10, "doKillExcessiveProcesses":Z
    .local v19, "numTrimming":I
    .restart local v22  # "i":I
    .restart local v23  # "numCached":I
    :cond_1b7
    move-object/from16 v32, v9

    move/from16 v33, v10

    move/from16 v31, v19

    move/from16 v30, v22

    move-object v10, v2

    move v9, v6

    move-object/from16 v19, v8

    move/from16 v8, v23

    .line 1165
    .end local v2  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v6  # "numEmpty":I
    .end local v22  # "i":I
    .end local v23  # "numCached":I
    .local v8, "numCached":I
    .local v9, "numEmpty":I
    .local v10, "app":Lcom/android/server/am/ProcessRecord;
    .local v19, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v30  # "i":I
    .restart local v31  # "numTrimming":I
    .restart local v32  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v33  # "doKillExcessiveProcesses":Z
    :goto_1c5
    iget-object v0, v10, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 1167
    .local v0, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    packed-switch v1, :pswitch_data_368

    .line 1216
    :pswitch_1ce  #0x12
    move/from16 v6, v28

    move/from16 v2, v29

    .end local v28  # "cachedProcessLimit":I
    .end local v29  # "lastCachedGroup":I
    .local v2, "lastCachedGroup":I
    .local v6, "cachedProcessLimit":I
    iget v1, v7, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    const/4 v3, 0x1

    add-int/2addr v1, v3

    iput v1, v7, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    goto/16 :goto_29a

    .line 1196
    .end local v2  # "lastCachedGroup":I
    .end local v6  # "cachedProcessLimit":I
    .restart local v28  # "cachedProcessLimit":I
    .restart local v29  # "lastCachedGroup":I
    :pswitch_1da  #0x13
    iget-object v1, v7, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget v1, v1, Lcom/android/server/am/ActivityManagerConstants;->CUR_TRIM_EMPTY_PROCESSES:I

    if-le v9, v1, :cond_21e

    .line 1197
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v1

    cmp-long v1, v1, p5

    if-gez v1, :cond_21e

    .line 1198
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "empty for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1199
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getLastActivityTime()J

    move-result-wide v2

    sub-long v2, p1, v2

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "s"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v25, 0xd

    const/16 v26, 0x4

    const/16 v27, 0x1

    .line 1198
    const-string v24, "empty for too long"

    move-object/from16 v22, v10

    invoke-virtual/range {v22 .. v27}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V

    move/from16 v6, v28

    move/from16 v2, v29

    goto/16 :goto_29a

    .line 1205
    :cond_21e
    add-int/lit8 v6, v9, 0x1

    .line 1206
    .end local v9  # "numEmpty":I
    .local v6, "numEmpty":I
    if-le v6, v12, :cond_243

    .line 1207
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "empty #"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v25, 0xd

    const/16 v26, 0x3

    const/16 v27, 0x1

    const-string/jumbo v24, "too many empty"

    move-object/from16 v22, v10

    invoke-virtual/range {v22 .. v27}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 1220
    :cond_243
    move v9, v6

    move v5, v8

    move/from16 v6, v28

    move/from16 v2, v29

    goto :goto_29b

    .line 1170
    .end local v6  # "numEmpty":I
    .restart local v9  # "numEmpty":I
    :pswitch_24a  #0x10, 0x11
    iget v1, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v7, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 1171
    add-int/lit8 v5, v8, 0x1

    .line 1172
    .end local v8  # "numCached":I
    .local v5, "numCached":I
    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->getConnectionGroup()I

    move-result v1

    .line 1173
    .local v1, "connectionGroup":I
    if-eqz v1, :cond_26d

    .line 1174
    iget-object v2, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v15, v2, :cond_265

    move/from16 v2, v29

    .end local v29  # "lastCachedGroup":I
    .restart local v2  # "lastCachedGroup":I
    if-ne v2, v1, :cond_267

    .line 1179
    add-int/lit8 v16, v16, 0x1

    goto :goto_272

    .line 1174
    .end local v2  # "lastCachedGroup":I
    .restart local v29  # "lastCachedGroup":I
    :cond_265
    move/from16 v2, v29

    .line 1181
    .end local v29  # "lastCachedGroup":I
    .restart local v2  # "lastCachedGroup":I
    :cond_267
    iget-object v3, v10, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v15, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1182
    move v2, v1

    goto :goto_272

    .line 1185
    .end local v2  # "lastCachedGroup":I
    .restart local v29  # "lastCachedGroup":I
    :cond_26d
    move/from16 v2, v29

    .end local v29  # "lastCachedGroup":I
    .restart local v2  # "lastCachedGroup":I
    const/4 v3, 0x0

    move v2, v3

    move v15, v3

    .line 1187
    :goto_272
    sub-int v3, v5, v16

    move/from16 v6, v28

    .end local v28  # "cachedProcessLimit":I
    .local v6, "cachedProcessLimit":I
    if-le v3, v6, :cond_29b

    .line 1188
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "cached #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v25, 0xd

    const/16 v26, 0x2

    const/16 v27, 0x1

    const-string/jumbo v24, "too many cached"

    move-object/from16 v22, v10

    invoke-virtual/range {v22 .. v27}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V

    goto :goto_29b

    .line 1220
    .end local v1  # "connectionGroup":I
    .end local v5  # "numCached":I
    .restart local v8  # "numCached":I
    :goto_29a
    move v5, v8

    .end local v8  # "numCached":I
    .restart local v5  # "numCached":I
    :cond_29b
    :goto_29b
    iget-boolean v1, v10, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v1, :cond_2b7

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v1

    if-gtz v1, :cond_2b7

    .line 1221
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_2b7

    .line 1229
    const/16 v1, 0xd

    const/16 v3, 0x11

    const-string/jumbo v4, "isolated not needed"

    const/4 v8, 0x1

    invoke-virtual {v10, v4, v1, v3, v8}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    goto :goto_2ba

    .line 1233
    :cond_2b7
    invoke-direct {v7, v10}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1236
    :goto_2ba
    invoke-virtual {v14}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v1

    const/16 v3, 0xe

    if-lt v1, v3, :cond_2d1

    .line 1237
    invoke-virtual {v10}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v1

    if-nez v1, :cond_2ce

    .line 1238
    move/from16 v1, v31

    .end local v31  # "numTrimming":I
    .local v1, "numTrimming":I
    add-int/lit8 v3, v1, 0x1

    move v14, v2

    .end local v1  # "numTrimming":I
    .restart local v3  # "numTrimming":I
    goto :goto_2eb

    .line 1237
    .end local v3  # "numTrimming":I
    .restart local v31  # "numTrimming":I
    :cond_2ce
    move/from16 v1, v31

    .end local v31  # "numTrimming":I
    .restart local v1  # "numTrimming":I
    goto :goto_2d3

    .line 1236
    .end local v1  # "numTrimming":I
    .restart local v31  # "numTrimming":I
    :cond_2d1
    move/from16 v1, v31

    .line 1128
    .end local v0  # "psr":Lcom/android/server/am/ProcessServiceRecord;
    .end local v10  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v14  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v31  # "numTrimming":I
    .restart local v1  # "numTrimming":I
    :goto_2d3
    move v3, v1

    move v14, v2

    goto :goto_2eb

    .line 1159
    .end local v1  # "numTrimming":I
    .end local v5  # "numCached":I
    .end local v30  # "i":I
    .end local v32  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v33  # "doKillExcessiveProcesses":Z
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    .local v6, "numEmpty":I
    .local v8, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v9, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .local v10, "doKillExcessiveProcesses":Z
    .restart local v14  # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v19, "numTrimming":I
    .restart local v22  # "i":I
    .restart local v23  # "numCached":I
    .restart local v28  # "cachedProcessLimit":I
    .restart local v29  # "lastCachedGroup":I
    :cond_2d6
    move-object/from16 v32, v9

    move/from16 v33, v10

    move/from16 v1, v19

    move/from16 v30, v22

    move-object v10, v2

    move v9, v6

    move-object/from16 v19, v8

    move/from16 v8, v23

    move/from16 v6, v28

    move/from16 v2, v29

    .line 1128
    .end local v10  # "doKillExcessiveProcesses":Z
    .end local v14  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v22  # "i":I
    .end local v23  # "numCached":I
    .end local v28  # "cachedProcessLimit":I
    .end local v29  # "lastCachedGroup":I
    .restart local v1  # "numTrimming":I
    .local v2, "lastCachedGroup":I
    .local v6, "cachedProcessLimit":I
    .local v8, "numCached":I
    .local v9, "numEmpty":I
    .local v19, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v30  # "i":I
    .restart local v32  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v33  # "doKillExcessiveProcesses":Z
    move v3, v1

    move v14, v2

    move v5, v8

    .end local v1  # "numTrimming":I
    .end local v2  # "lastCachedGroup":I
    .end local v8  # "numCached":I
    .restart local v3  # "numTrimming":I
    .restart local v5  # "numCached":I
    .local v14, "lastCachedGroup":I
    :goto_2eb
    add-int/lit8 v2, v30, -0x1

    move v4, v13

    move-object/from16 v8, v19

    move-object/from16 v0, v32

    move/from16 v10, v33

    move v13, v6

    move v6, v9

    move/from16 v9, v20

    .end local v30  # "i":I
    .local v2, "i":I
    goto/16 :goto_58

    .end local v3  # "numTrimming":I
    .end local v9  # "numEmpty":I
    .end local v32  # "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .end local v33  # "doKillExcessiveProcesses":Z
    .local v0, "selectedAppRecord":Lcom/android/server/am/ProcessRecord;
    .restart local v4  # "numBServices":I
    .local v6, "numEmpty":I
    .local v8, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v10  # "doKillExcessiveProcesses":Z
    .local v13, "cachedProcessLimit":I
    .local v19, "numTrimming":I
    :cond_2fa
    move-object/from16 v26, v1

    move/from16 v30, v2

    move v9, v6

    move/from16 v33, v10

    move v6, v13

    move v2, v14

    move/from16 v1, v19

    move-object/from16 v19, v8

    move v8, v5

    .line 1243
    .end local v5  # "numCached":I
    .end local v10  # "doKillExcessiveProcesses":Z
    .end local v13  # "cachedProcessLimit":I
    .end local v14  # "lastCachedGroup":I
    .restart local v1  # "numTrimming":I
    .local v2, "lastCachedGroup":I
    .local v6, "cachedProcessLimit":I
    .local v8, "numCached":I
    .restart local v9  # "numEmpty":I
    .local v19, "lruList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v33  # "doKillExcessiveProcesses":Z
    iget v5, v7, Lcom/android/server/am/OomAdjuster;->mBServiceAppThreshold:I

    if-le v4, v5, :cond_35f

    iget-object v5, v7, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v5}, Lcom/android/server/am/AppProfiler;->allowLowerMemLevelLocked()Z

    move-result v5

    const/4 v10, 0x1

    if-ne v10, v5, :cond_35f

    if-eqz v0, :cond_35f

    .line 1245
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v13, 0x3e7

    invoke-static {v5, v10, v13}, Lcom/android/server/am/ProcessList;->setOomAdj(III)V

    .line 1247
    iget-object v5, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v10

    invoke-virtual {v5, v10}, Lcom/android/server/am/ProcessStateRecord;->setSetAdj(I)V

    .line 1248
    sget-boolean v5, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v5, :cond_35f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v10, v26

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v10, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1249
    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " is moved to higher adj"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1248
    invoke-static {v11, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1252
    :cond_35f
    iget-object v3, v7, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v3, v8, v9, v1}, Lcom/android/server/am/AppProfiler;->updateLowMemStateLSP(III)Z

    move-result v3

    return v3

    :pswitch_data_368
    .packed-switch 0x10
        :pswitch_24a  #00000010
        :pswitch_24a  #00000011
        :pswitch_1ce  #00000012
        :pswitch_1da  #00000013
    .end packed-switch
.end method

.method private updateAppFreezeStateLSP(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 3294
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->useFreezer()Z

    move-result v0

    if-nez v0, :cond_9

    .line 3295
    return-void

    .line 3298
    :cond_9
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFreezeExempt()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 3299
    return-void

    .line 3302
    :cond_12
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 3304
    .local v0, "opt":Lcom/android/server/am/ProcessCachedOptimizerRecord;
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v1

    if-eqz v1, :cond_26

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v1

    if-eqz v1, :cond_26

    .line 3305
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v1, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 3306
    return-void

    .line 3309
    :cond_26
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3311
    .local v1, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurAdj()I

    move-result v2

    const/16 v3, 0x384

    if-lt v2, v3, :cond_42

    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->isFrozen()Z

    move-result v2

    if-nez v2, :cond_42

    .line 3312
    invoke-virtual {v0}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->shouldNotFreeze()Z

    move-result v2

    if-nez v2, :cond_42

    .line 3313
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v2, p1}, Lcom/android/server/am/CachedAppOptimizer;->freezeAppAsyncLSP(Lcom/android/server/am/ProcessRecord;)V

    goto :goto_4d

    .line 3314
    :cond_42
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v2

    if-ge v2, v3, :cond_4d

    .line 3315
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v2, p1}, Lcom/android/server/am/CachedAppOptimizer;->unfreezeAppLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 3317
    :cond_4d
    :goto_4d
    return-void
.end method

.method private updateAppUidRecIfNecessaryLSP(Lcom/android/server/am/ProcessRecord;)V
    .registers 3
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 1257
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v0

    if-nez v0, :cond_22

    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    if-eqz v0, :cond_22

    .line 1258
    iget-boolean v0, p1, Lcom/android/server/am/ProcessRecord;->isolated:Z

    if-eqz v0, :cond_1f

    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v0

    if-gtz v0, :cond_1f

    .line 1259
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getIsolatedEntryPoint()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1f

    goto :goto_22

    .line 1263
    :cond_1f
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V

    .line 1266
    :cond_22
    :goto_22
    return-void
.end method

.method private updateAppUidRecLSP(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 1270
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getUidRecord()Lcom/android/server/am/UidRecord;

    move-result-object v0

    .line 1271
    .local v0, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v0, :cond_3a

    .line 1272
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 1273
    .local v1, "state":Lcom/android/server/am/ProcessStateRecord;
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v2}, Landroid/content/pm/ApplicationInfo;->isInstantApp()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/UidRecord;->setEphemeral(Z)V

    .line 1274
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v3

    if-le v2, v3, :cond_22

    .line 1275
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    .line 1277
    :cond_22
    iget-object v2, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v2

    if-eqz v2, :cond_2e

    .line 1278
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/am/UidRecord;->setForegroundServices(Z)V

    .line 1280
    :cond_2e
    invoke-virtual {v0}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v2

    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->getCurCapability()I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v0, v2}, Lcom/android/server/am/UidRecord;->setCurCapability(I)V

    .line 1282
    .end local v1  # "state":Lcom/android/server/am/ProcessStateRecord;
    :cond_3a
    return-void
.end method

.method private updateKeepWarmIfNecessaryForProcessLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 8
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 391
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    .line 392
    .local v0, "warmServices":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Landroid/content/ComponentName;>;"
    const/4 v1, 0x0

    .line 393
    .local v1, "includeWarmPkg":Z
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v2

    .line 394
    .local v2, "pkgList":Lcom/android/server/am/PackageList;
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "j":I
    :goto_11
    if-ltz v3, :cond_28

    .line 395
    invoke-virtual {v0, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/ComponentName;

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_25

    .line 396
    const/4 v1, 0x1

    .line 397
    goto :goto_28

    .line 394
    :cond_25
    add-int/lit8 v3, v3, -0x1

    goto :goto_11

    .line 400
    .end local v3  # "j":I
    :cond_28
    :goto_28
    if-nez v1, :cond_2b

    .line 401
    return-void

    .line 403
    :cond_2b
    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 404
    .local v3, "psr":Lcom/android/server/am/ProcessServiceRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ProcessServiceRecord;->numberOfRunningServices()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    .local v4, "j":I
    :goto_33
    if-ltz v4, :cond_3f

    .line 405
    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessServiceRecord;->getRunningServiceAt(I)Lcom/android/server/am/ServiceRecord;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/am/ServiceRecord;->updateKeepWarmLocked()V

    .line 404
    add-int/lit8 v4, v4, -0x1

    goto :goto_33

    .line 407
    .end local v4  # "j":I
    :cond_3f
    return-void
.end method

.method private updateOomAdjInnerLSP(Ljava/lang/String;Lcom/android/server/am/ProcessRecord;Ljava/util/ArrayList;Lcom/android/server/am/ActiveUids;ZZ)V
    .registers 35
    .param p1, "oomAdjReason"  # Ljava/lang/String;
    .param p2, "topApp"  # Lcom/android/server/am/ProcessRecord;
    .param p4, "uids"  # Lcom/android/server/am/ActiveUids;
    .param p5, "potentialCycles"  # Z
    .param p6, "startProfiling"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/android/server/am/ProcessRecord;",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;",
            "Lcom/android/server/am/ActiveUids;",
            "ZZ)V"
        }
    .end annotation

    .line 792
    .local p3, "processes":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move-object/from16 v10, p0

    const-wide/16 v11, 0x40

    if-eqz p6, :cond_13

    .line 793
    move-object/from16 v13, p1

    invoke-static {v11, v12, v13}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 794
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjStarted()V

    goto :goto_15

    .line 792
    :cond_13
    move-object/from16 v13, p1

    .line 796
    :goto_15
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 797
    .local v14, "now":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 798
    .local v8, "nowElapsed":J
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mMaxEmptyTimeMillis:J

    sub-long v16, v14, v0

    .line 799
    .local v16, "oldTime":J
    const/4 v0, 0x1

    const/4 v6, 0x0

    if-nez p3, :cond_29

    move v1, v0

    goto :goto_2a

    :cond_29
    move v1, v6

    :goto_2a
    move/from16 v18, v1

    .line 800
    .local v18, "fullUpdate":Z
    move-object/from16 v1, p4

    .line 801
    .local v1, "activeUids":Lcom/android/server/am/ActiveUids;
    if-eqz v18, :cond_37

    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v2

    goto :goto_39

    .line 802
    :cond_37
    move-object/from16 v2, p3

    :goto_39
    move-object v7, v2

    .line 803
    .local v7, "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 805
    .local v5, "numProc":I
    if-nez v1, :cond_62

    .line 806
    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v2

    .line 807
    .local v2, "numUids":I
    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mTmpUidRecords:Lcom/android/server/am/ActiveUids;

    .line 808
    invoke-virtual {v1}, Lcom/android/server/am/ActiveUids;->clear()V

    .line 809
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_4c
    if-ge v3, v2, :cond_60

    .line 810
    iget-object v4, v10, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v4, v3}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v4

    .line 811
    .local v4, "uidRec":Lcom/android/server/am/UidRecord;
    invoke-virtual {v4}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v11

    invoke-virtual {v1, v11, v4}, Lcom/android/server/am/ActiveUids;->put(ILcom/android/server/am/UidRecord;)V

    .line 809
    .end local v4  # "uidRec":Lcom/android/server/am/UidRecord;
    add-int/lit8 v3, v3, 0x1

    const-wide/16 v11, 0x40

    goto :goto_4c

    :cond_60
    move-object v11, v1

    goto :goto_63

    .line 805
    .end local v2  # "numUids":I
    .end local v3  # "i":I
    :cond_62
    move-object v11, v1

    .line 816
    .end local v1  # "activeUids":Lcom/android/server/am/ActiveUids;
    .local v11, "activeUids":Lcom/android/server/am/ActiveUids;
    :goto_63
    invoke-virtual {v11}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    sub-int/2addr v1, v0

    .local v1, "i":I
    :goto_68
    if-ltz v1, :cond_90

    .line 817
    invoke-virtual {v11, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 818
    .local v2, "uidRec":Lcom/android/server/am/UidRecord;
    sget-boolean v3, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v3, :cond_8a

    .line 819
    const-string v3, "ActivityManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Starting update of "

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 821
    :cond_8a
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->reset()V

    .line 816
    .end local v2  # "uidRec":Lcom/android/server/am/UidRecord;
    add-int/lit8 v1, v1, -0x1

    goto :goto_68

    .line 824
    .end local v1  # "i":I
    :cond_90
    iget v1, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    add-int/2addr v1, v0

    iput v1, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    .line 825
    if-eqz v18, :cond_9b

    .line 826
    iput v6, v10, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    .line 827
    iput v6, v10, Lcom/android/server/am/OomAdjuster;->mNewNumAServiceProcs:I

    .line 830
    :cond_9b
    const/4 v1, 0x0

    .line 831
    .local v1, "retryCycles":Z
    if-nez v18, :cond_a2

    if-eqz p5, :cond_a1

    goto :goto_a2

    :cond_a1
    move v0, v6

    :cond_a2
    :goto_a2
    move v12, v0

    .line 834
    .local v12, "computeClients":Z
    add-int/lit8 v0, v5, -0x1

    .local v0, "i":I
    :goto_a5
    if-ltz v0, :cond_d5

    .line 835
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 836
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 837
    .local v3, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v3, v6}, Lcom/android/server/am/ProcessStateRecord;->setReachable(Z)V

    .line 839
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->getAdjSeq()I

    move-result v4

    iget v6, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    if-eq v4, v6, :cond_d1

    .line 840
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessStateRecord;->setContainsCycle(Z)V

    .line 841
    const/16 v6, 0x13

    invoke-virtual {v3, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 842
    const/16 v6, 0x3e9

    invoke-virtual {v3, v6}, Lcom/android/server/am/ProcessStateRecord;->setCurRawAdj(I)V

    .line 843
    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessStateRecord;->setSetCapability(I)V

    .line 844
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStateRecord;->resetCachedInfo()V

    .line 845
    invoke-virtual {v3, v4}, Lcom/android/server/am/ProcessStateRecord;->setCurBoundByNonBgRestrictedApp(Z)V

    .line 834
    .end local v2  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v3  # "state":Lcom/android/server/am/ProcessStateRecord;
    :cond_d1
    add-int/lit8 v0, v0, -0x1

    const/4 v6, 0x0

    goto :goto_a5

    .line 848
    .end local v0  # "i":I
    :cond_d5
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 849
    add-int/lit8 v0, v5, -0x1

    move/from16 v20, v1

    .end local v1  # "retryCycles":Z
    .restart local v0  # "i":I
    .local v20, "retryCycles":Z
    :goto_de
    if-ltz v0, :cond_13b

    .line 850
    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Lcom/android/server/am/ProcessRecord;

    .line 851
    .local v6, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v6, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 852
    .local v4, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v1

    if-nez v1, :cond_129

    invoke-virtual {v6}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-eqz v1, :cond_129

    .line 853
    const/4 v3, 0x0

    invoke-virtual {v4, v3}, Lcom/android/server/am/ProcessStateRecord;->setProcStateChanged(Z)V

    .line 854
    const/16 v19, 0x3e9

    const/16 v21, 0x0

    move-object/from16 v1, p0

    move-object v2, v6

    move/from16 v22, v3

    move/from16 v3, v19

    move-object/from16 v19, v4

    .end local v4  # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v19, "state":Lcom/android/server/am/ProcessStateRecord;
    move-object/from16 v4, p2

    move/from16 v23, v5

    .end local v5  # "numProc":I
    .local v23, "numProc":I
    move/from16 v5, v18

    move-object/from16 v22, v6

    move-object/from16 v24, v7

    .end local v6  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v7  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v22, "app":Lcom/android/server/am/ProcessRecord;
    .local v24, "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move-wide v6, v14

    move-wide/from16 v25, v8

    .end local v8  # "nowElapsed":J
    .local v25, "nowElapsed":J
    move/from16 v8, v21

    move v9, v12

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    .line 857
    invoke-virtual/range {v19 .. v19}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v1

    or-int v1, v20, v1

    .line 859
    .end local v20  # "retryCycles":Z
    .restart local v1  # "retryCycles":Z
    iget v2, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    move-object/from16 v3, v19

    .end local v19  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v3  # "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v3, v2}, Lcom/android/server/am/ProcessStateRecord;->setCompletedAdjSeq(I)V

    move/from16 v20, v1

    goto :goto_132

    .line 852
    .end local v1  # "retryCycles":Z
    .end local v3  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v22  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v23  # "numProc":I
    .end local v24  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v25  # "nowElapsed":J
    .restart local v4  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v5  # "numProc":I
    .restart local v6  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v7  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v8  # "nowElapsed":J
    .restart local v20  # "retryCycles":Z
    :cond_129
    move-object v3, v4

    move/from16 v23, v5

    move-object/from16 v22, v6

    move-object/from16 v24, v7

    move-wide/from16 v25, v8

    .line 849
    .end local v4  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v5  # "numProc":I
    .end local v6  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v7  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v8  # "nowElapsed":J
    .restart local v23  # "numProc":I
    .restart local v24  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v25  # "nowElapsed":J
    :goto_132
    add-int/lit8 v0, v0, -0x1

    move/from16 v5, v23

    move-object/from16 v7, v24

    move-wide/from16 v8, v25

    goto :goto_de

    .end local v23  # "numProc":I
    .end local v24  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v25  # "nowElapsed":J
    .restart local v5  # "numProc":I
    .restart local v7  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v8  # "nowElapsed":J
    :cond_13b
    move/from16 v23, v5

    move-object/from16 v24, v7

    move-wide/from16 v25, v8

    .line 863
    .end local v0  # "i":I
    .end local v5  # "numProc":I
    .end local v7  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v8  # "nowElapsed":J
    .restart local v23  # "numProc":I
    .restart local v24  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v25  # "nowElapsed":J
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-virtual {v0}, Lcom/android/server/am/CacheOomRanker;->useOomReranking()Z

    move-result v0

    if-eqz v0, :cond_15a

    .line 864
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    iget-object v1, v10, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruProcessesLSP()Ljava/util/ArrayList;

    move-result-object v1

    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 865
    invoke-virtual {v2}, Lcom/android/server/am/ProcessList;->getLruProcessServiceStartLOSP()I

    move-result v2

    .line 864
    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/CacheOomRanker;->reRankLruCachedAppsLSP(Ljava/util/ArrayList;I)V

    .line 867
    :cond_15a
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v0

    invoke-direct {v10, v0}, Lcom/android/server/am/OomAdjuster;->assignCachedAdjIfNecessary(Ljava/util/ArrayList;)V

    .line 869
    if-eqz v12, :cond_20b

    .line 874
    const/4 v0, 0x0

    .line 875
    .local v0, "cycleCount":I
    :goto_166
    if-eqz v20, :cond_206

    const/16 v1, 0xa

    if-ge v0, v1, :cond_206

    .line 876
    add-int/lit8 v0, v0, 0x1

    .line 877
    const/4 v1, 0x0

    .line 879
    .end local v20  # "retryCycles":Z
    .restart local v1  # "retryCycles":Z
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_170
    move/from16 v9, v23

    .end local v23  # "numProc":I
    .local v9, "numProc":I
    if-ge v2, v9, :cond_19d

    .line 880
    move-object/from16 v8, v24

    .end local v24  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v8, "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    invoke-virtual {v8, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/am/ProcessRecord;

    .line 881
    .local v3, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v4, v3, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 882
    .restart local v4  # "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v5

    if-nez v5, :cond_196

    invoke-virtual {v3}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v5

    if-eqz v5, :cond_196

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v5

    if-eqz v5, :cond_196

    .line 883
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->decAdjSeq()V

    .line 884
    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->decCompletedAdjSeq()V

    .line 879
    .end local v3  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v4  # "state":Lcom/android/server/am/ProcessStateRecord;
    :cond_196
    add-int/lit8 v2, v2, 0x1

    move-object/from16 v24, v8

    move/from16 v23, v9

    goto :goto_170

    .end local v8  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v24  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_19d
    move-object/from16 v8, v24

    .line 888
    .end local v2  # "i":I
    .end local v24  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v8  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v2, 0x0

    move/from16 v20, v1

    move v6, v2

    .end local v1  # "retryCycles":Z
    .local v6, "i":I
    .restart local v20  # "retryCycles":Z
    :goto_1a3
    if-ge v6, v9, :cond_1fa

    .line 889
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/android/server/am/ProcessRecord;

    .line 890
    .local v7, "app":Lcom/android/server/am/ProcessRecord;
    iget-object v5, v7, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 891
    .local v5, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->isKilledByAm()Z

    move-result v1

    if-nez v1, :cond_1e9

    invoke-virtual {v7}, Lcom/android/server/am/ProcessRecord;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    if-eqz v1, :cond_1e9

    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->containsCycle()Z

    move-result v1

    if-eqz v1, :cond_1e9

    .line 892
    invoke-virtual {v5}, Lcom/android/server/am/ProcessStateRecord;->getCurRawAdj()I

    move-result v3

    const/16 v19, 0x1

    const/16 v21, 0x1

    const/16 v22, 0x1

    move-object/from16 v1, p0

    move-object v2, v7

    move-object/from16 v4, p2

    move-object/from16 v23, v5

    .end local v5  # "state":Lcom/android/server/am/ProcessStateRecord;
    .local v23, "state":Lcom/android/server/am/ProcessStateRecord;
    move/from16 v5, v19

    move/from16 v19, v6

    move-object/from16 v24, v7

    .end local v6  # "i":I
    .end local v7  # "app":Lcom/android/server/am/ProcessRecord;
    .local v19, "i":I
    .local v24, "app":Lcom/android/server/am/ProcessRecord;
    move-wide v6, v14

    move-object/from16 v27, v8

    .end local v8  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v27, "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move/from16 v8, v21

    move/from16 v21, v9

    .end local v9  # "numProc":I
    .local v21, "numProc":I
    move/from16 v9, v22

    invoke-direct/range {v1 .. v9}, Lcom/android/server/am/OomAdjuster;->computeOomAdjLSP(Lcom/android/server/am/ProcessRecord;ILcom/android/server/am/ProcessRecord;ZJZZ)Z

    move-result v1

    if-eqz v1, :cond_1f3

    .line 894
    const/16 v20, 0x1

    goto :goto_1f3

    .line 891
    .end local v19  # "i":I
    .end local v21  # "numProc":I
    .end local v23  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v24  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v27  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v5  # "state":Lcom/android/server/am/ProcessStateRecord;
    .restart local v6  # "i":I
    .restart local v7  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local v8  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v9  # "numProc":I
    :cond_1e9
    move-object/from16 v23, v5

    move/from16 v19, v6

    move-object/from16 v24, v7

    move-object/from16 v27, v8

    move/from16 v21, v9

    .line 888
    .end local v5  # "state":Lcom/android/server/am/ProcessStateRecord;
    .end local v6  # "i":I
    .end local v7  # "app":Lcom/android/server/am/ProcessRecord;
    .end local v8  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v9  # "numProc":I
    .restart local v19  # "i":I
    .restart local v21  # "numProc":I
    .restart local v27  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_1f3
    :goto_1f3
    add-int/lit8 v6, v19, 0x1

    move/from16 v9, v21

    move-object/from16 v8, v27

    .end local v19  # "i":I
    .restart local v6  # "i":I
    goto :goto_1a3

    .end local v21  # "numProc":I
    .end local v27  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v8  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v9  # "numProc":I
    :cond_1fa
    move/from16 v19, v6

    move-object/from16 v27, v8

    move/from16 v21, v9

    .end local v6  # "i":I
    .end local v8  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .end local v9  # "numProc":I
    .restart local v19  # "i":I
    .restart local v21  # "numProc":I
    .restart local v27  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    move/from16 v23, v21

    move-object/from16 v24, v27

    .end local v19  # "i":I
    goto/16 :goto_166

    .line 875
    .end local v21  # "numProc":I
    .end local v27  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .local v23, "numProc":I
    .local v24, "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_206
    move/from16 v21, v23

    move-object/from16 v27, v24

    .end local v23  # "numProc":I
    .end local v24  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v21  # "numProc":I
    .restart local v27  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    goto :goto_20f

    .line 869
    .end local v0  # "cycleCount":I
    .end local v21  # "numProc":I
    .end local v27  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v23  # "numProc":I
    .restart local v24  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :cond_20b
    move/from16 v21, v23

    move-object/from16 v27, v24

    .line 900
    .end local v23  # "numProc":I
    .end local v24  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    .restart local v21  # "numProc":I
    .restart local v27  # "activeProcesses":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/ProcessRecord;>;"
    :goto_20f
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mProcessesInCycle:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 902
    const/4 v0, 0x0

    iput v0, v10, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    .line 903
    iput v0, v10, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    .line 905
    move-object/from16 v1, p0

    move-wide v2, v14

    move-wide/from16 v4, v25

    move-wide/from16 v6, v16

    move-object v8, v11

    invoke-direct/range {v1 .. v8}, Lcom/android/server/am/OomAdjuster;->updateAndTrimProcessLSP(JJJLcom/android/server/am/ActiveUids;)Z

    move-result v1

    .line 906
    .local v1, "allChanged":Z
    iget v2, v10, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    iput v2, v10, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    .line 908
    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-boolean v2, v2, Lcom/android/server/am/ActivityManagerService;->mAlwaysFinishActivities:Z

    if-eqz v2, :cond_238

    .line 911
    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v3, "always-finish"

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerInternal;->scheduleDestroyAllActivities(Ljava/lang/String;)V

    .line 914
    :cond_238
    if-eqz v1, :cond_249

    .line 915
    iget-object v2, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v3, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    .line 916
    invoke-virtual {v3}, Lcom/android/server/am/ProcessStatsService;->isMemFactorLowered()Z

    move-result v3

    .line 915
    invoke-virtual {v2, v14, v15, v0, v3}, Lcom/android/server/am/AppProfiler;->requestPssAllProcsLPr(JZZ)V

    .line 919
    :cond_249
    move-wide/from16 v2, v25

    .end local v25  # "nowElapsed":J
    .local v2, "nowElapsed":J
    invoke-direct {v10, v11, v2, v3}, Lcom/android/server/am/OomAdjuster;->updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V

    .line 921
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget-object v4, v0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 922
    :try_start_255
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 923
    .local v5, "nowUptime":J
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {v0, v5, v6}, Lcom/android/server/am/ProcessStatsService;->shouldWriteNowLocked(J)Z

    move-result v0

    if-eqz v0, :cond_273

    .line 924
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v7, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;

    iget-object v8, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v9, v8, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-direct {v7, v8, v9}, Lcom/android/server/am/ActivityManagerService$ProcStatsRunnable;-><init>(Lcom/android/server/am/ActivityManagerService;Lcom/android/server/am/ProcessStatsService;)V

    invoke-virtual {v0, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 929
    :cond_273
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    iget v7, v10, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v0, v7, v5, v6}, Lcom/android/server/am/ProcessStatsService;->updateTrackingAssociationsLocked(IJ)V

    .line 930
    .end local v5  # "nowUptime":J
    monitor-exit v4
    :try_end_27d
    .catchall {:try_start_255 .. :try_end_27d} :catchall_2b4

    .line 932
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_2a5

    .line 933
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v14

    .line 938
    .local v4, "duration":J
    const-string v0, "ActivityManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Did OOM ADJ in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ms"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 941
    .end local v4  # "duration":J
    :cond_2a5
    if-eqz p6, :cond_2b3

    .line 942
    iget-object v0, v10, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mOomAdjProfiler:Lcom/android/server/am/OomAdjProfiler;

    invoke-virtual {v0}, Lcom/android/server/am/OomAdjProfiler;->oomAdjEnded()V

    .line 943
    const-wide/16 v4, 0x40

    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    .line 945
    :cond_2b3
    return-void

    .line 930
    :catchall_2b4
    move-exception v0

    :try_start_2b5
    monitor-exit v4
    :try_end_2b6
    .catchall {:try_start_2b5 .. :try_end_2b6} :catchall_2b4

    throw v0
.end method

.method private updateOomAdjLSP(Ljava/lang/String;)V
    .registers 4
    .param p1, "oomAdjReason"  # Ljava/lang/String;

    .line 474
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/server/am/OomAdjuster;->checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 476
    return-void

    .line 479
    :cond_8
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_a
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 480
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(Ljava/lang/String;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_16

    .line 483
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 484
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 485
    nop

    .line 486
    return-void

    .line 483
    :catchall_16
    move-exception v0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 484
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 485
    throw v0
.end method

.method private updateOomAdjLSP(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .registers 5
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdjReason"  # Ljava/lang/String;

    .line 514
    const/4 v0, 0x1

    if-eqz p1, :cond_25

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v1, v1, Lcom/android/server/am/ActivityManagerConstants;->OOMADJ_UPDATE_QUICK:Z

    if-nez v1, :cond_a

    goto :goto_25

    .line 519
    :cond_a
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->checkAndEnqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)Z

    move-result v1

    if-eqz v1, :cond_11

    .line 521
    return v0

    .line 525
    :cond_11
    const/4 v1, 0x0

    :try_start_12
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 526
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjLSP(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v0
    :try_end_18
    .catchall {:try_start_12 .. :try_end_18} :catchall_1e

    .line 529
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 530
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 526
    return v0

    .line 529
    :catchall_1e
    move-exception v0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 530
    invoke-virtual {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 531
    throw v0

    .line 515
    :cond_25
    :goto_25
    invoke-direct {p0, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Ljava/lang/String;)V

    .line 516
    return v0
.end method

.method private updateUidsLSP(Lcom/android/server/am/ActiveUids;J)V
    .registers 15
    .param p1, "activeUids"  # Lcom/android/server/am/ActiveUids;
    .param p2, "nowElapsed"  # J

    .line 1289
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessList;->incrementProcStateSeqAndNotifyAppsLOSP(Lcom/android/server/am/ActiveUids;)V

    .line 1291
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mTmpBecameIdle:Ljava/util/ArrayList;

    .line 1292
    .local v0, "becameIdle":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UidRecord;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1295
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_11

    .line 1296
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    .line 1298
    :cond_11
    invoke-virtual {p1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_17
    if-ltz v1, :cond_1de

    .line 1299
    invoke-virtual {p1, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v3

    .line 1300
    .local v3, "uidRec":Lcom/android/server/am/UidRecord;
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v4

    const/16 v5, 0x14

    if-eq v4, v5, :cond_1cf

    .line 1301
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v6

    if-ne v4, v6, :cond_49

    .line 1302
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v6

    if-ne v4, v6, :cond_49

    .line 1303
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v4

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v6

    if-ne v4, v6, :cond_49

    .line 1304
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getProcAdjChanged()Z

    move-result v4

    if-eqz v4, :cond_1cf

    .line 1305
    :cond_49
    const/4 v4, 0x0

    .line 1306
    .local v4, "uidChange":I
    sget-boolean v6, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_UID_OBSERVERS:Z

    if-eqz v6, :cond_c4

    .line 1307
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Changes in "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": proc state from "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1308
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " to "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1309
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", capability from "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1310
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, ", allowlist from "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1311
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v8

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1312
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ", procAdjChanged: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1313
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getProcAdjChanged()Z

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1307
    const-string v7, "ActivityManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    :cond_c4
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v6

    invoke-static {v6}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v6

    const/4 v7, 0x0

    if-eqz v6, :cond_111

    .line 1316
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v6

    if-nez v6, :cond_111

    .line 1319
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v6

    invoke-static {v6}, Landroid/app/ActivityManager;->isProcStateBackground(I)Z

    move-result v6

    if-eqz v6, :cond_e5

    .line 1320
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isSetAllowListed()Z

    move-result v6

    if-eqz v6, :cond_ff

    .line 1321
    :cond_e5
    invoke-virtual {v3, p2, p3}, Lcom/android/server/am/UidRecord;->setLastBackgroundTime(J)V

    .line 1322
    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v8, 0x3a

    invoke-virtual {v6, v8}, Lcom/android/server/am/ActivityManagerService$MainHandler;->hasMessages(I)Z

    move-result v6

    if-nez v6, :cond_ff

    .line 1327
    iget-object v6, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v6, v6, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v9, p0, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v9, v9, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    invoke-virtual {v6, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1331
    :cond_ff
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_128

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isSetIdle()Z

    move-result v6

    if-nez v6, :cond_128

    .line 1332
    or-int/lit8 v4, v4, 0x2

    .line 1333
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_128

    .line 1336
    :cond_111
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v6

    if-eqz v6, :cond_123

    .line 1337
    or-int/lit8 v4, v4, 0x4

    .line 1338
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v6

    invoke-static {v6}, Lcom/android/server/am/EventLogTags;->writeAmUidActive(I)V

    .line 1339
    invoke-virtual {v3, v7}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    .line 1341
    :cond_123
    const-wide/16 v8, 0x0

    invoke-virtual {v3, v8, v9}, Lcom/android/server/am/UidRecord;->setLastBackgroundTime(J)V

    .line 1343
    :cond_128
    :goto_128
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v6

    const/16 v8, 0xb

    if-le v6, v8, :cond_132

    move v6, v2

    goto :goto_133

    :cond_132
    move v6, v7

    .line 1345
    .local v6, "wasCached":Z
    :goto_133
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v9

    if-le v9, v8, :cond_13a

    move v7, v2

    .line 1347
    .local v7, "isCached":Z
    :cond_13a
    if-ne v6, v7, :cond_142

    .line 1348
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v8

    if-ne v8, v5, :cond_14a

    .line 1349
    :cond_142
    if-eqz v7, :cond_147

    const/16 v5, 0x8

    goto :goto_149

    .line 1350
    :cond_147
    const/16 v5, 0x10

    :goto_149
    or-int/2addr v4, v5

    .line 1352
    :cond_14a
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetCapability()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v8

    if-eq v5, v8, :cond_156

    .line 1353
    or-int/lit8 v4, v4, 0x20

    .line 1355
    :cond_156
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v5

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v8

    const/high16 v9, -0x80000000

    if-eq v5, v8, :cond_163

    .line 1356
    or-int/2addr v4, v9

    .line 1358
    :cond_163
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getProcAdjChanged()Z

    move-result v5

    if-eqz v5, :cond_16b

    .line 1359
    or-int/lit8 v4, v4, 0x40

    .line 1361
    :cond_16b
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/UidRecord;->setSetProcState(I)V

    .line 1362
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/UidRecord;->setSetCapability(I)V

    .line 1363
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/UidRecord;->setSetAllowListed(Z)V

    .line 1364
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v5

    invoke-virtual {v3, v5}, Lcom/android/server/am/UidRecord;->setSetIdle(Z)V

    .line 1365
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->clearProcAdjChanged()V

    .line 1366
    and-int v5, v4, v9

    if-nez v5, :cond_192

    and-int/lit8 v5, v4, 0x20

    if-eqz v5, :cond_1a1

    .line 1368
    :cond_192
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mAtmInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 1369
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v8

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getSetProcState()I

    move-result v10

    .line 1368
    invoke-virtual {v5, v8, v10}, Lcom/android/server/wm/ActivityTaskManagerInternal;->onUidProcStateChanged(II)V

    .line 1371
    :cond_1a1
    if-eqz v4, :cond_1a9

    .line 1372
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v8, -0x1

    invoke-virtual {v5, v3, v8, v4}, Lcom/android/server/am/ActivityManagerService;->enqueueUidChangeLocked(Lcom/android/server/am/UidRecord;II)V

    .line 1374
    :cond_1a9
    and-int v5, v4, v9

    if-nez v5, :cond_1b1

    and-int/lit8 v5, v4, 0x20

    if-eqz v5, :cond_1c2

    .line 1376
    :cond_1b1
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v8

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurProcState()I

    move-result v9

    .line 1377
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getCurCapability()I

    move-result v10

    .line 1376
    invoke-virtual {v5, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->noteUidProcessState(III)V

    .line 1379
    :cond_1c2
    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->hasForegroundServices()Z

    move-result v5

    if-eqz v5, :cond_1cf

    .line 1380
    iget-object v5, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, v5, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v5, v3}, Lcom/android/server/am/ActiveServices;->foregroundServiceProcStateChangedLocked(Lcom/android/server/am/UidRecord;)V

    .line 1384
    .end local v4  # "uidChange":I
    .end local v6  # "wasCached":Z
    .end local v7  # "isCached":Z
    :cond_1cf
    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v3}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v5

    invoke-virtual {v4, v5, p2, p3}, Landroid/app/ActivityManagerInternal;->deletePendingTopUid(IJ)V

    .line 1298
    .end local v3  # "uidRec":Lcom/android/server/am/UidRecord;
    add-int/lit8 v1, v1, -0x1

    goto/16 :goto_17

    .line 1386
    .end local v1  # "i":I
    :cond_1de
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v1, :cond_1e5

    .line 1387
    invoke-virtual {v1}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 1390
    :cond_1e5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1391
    .local v1, "size":I
    if-lez v1, :cond_203

    .line 1394
    add-int/lit8 v2, v1, -0x1

    .local v2, "i":I
    :goto_1ed
    if-ltz v2, :cond_203

    .line 1395
    iget-object v3, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, v3, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/am/UidRecord;

    invoke-virtual {v4}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/am/ActiveServices;->stopInBackgroundLocked(I)V

    .line 1394
    add-int/lit8 v2, v2, -0x1

    goto :goto_1ed

    .line 1398
    .end local v2  # "i":I
    :cond_203
    return-void
.end method


# virtual methods
.method dumpCacheOomRankerSettings(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 3289
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-virtual {v0, p1}, Lcom/android/server/am/CacheOomRanker;->dump(Ljava/io/PrintWriter;)V

    .line 3290
    return-void
.end method

.method dumpCachedAppOptimizerSettings(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 3284
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, p1}, Lcom/android/server/am/CachedAppOptimizer;->dump(Ljava/io/PrintWriter;)V

    .line 3285
    return-void
.end method

.method dumpProcCountsLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 3275
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mNumNonCachedProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 3276
    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSizeLOSP()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " total) mNumCachedHiddenProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumCachedHiddenProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNumServiceProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mNewNumServiceProcs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3275
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3280
    return-void
.end method

.method dumpProcessListVariablesLocked(Landroid/util/proto/ProtoOutputStream;)V
    .registers 5
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;

    .line 3258
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    const-wide v1, 0x10500000031L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3259
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruSeqLOSP()I

    move-result v0

    const-wide v1, 0x10500000032L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3260
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNumNonCachedProcs:I

    const-wide v1, 0x10500000033L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3262
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNumServiceProcs:I

    const-wide v1, 0x10500000035L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3263
    iget v0, p0, Lcom/android/server/am/OomAdjuster;->mNewNumServiceProcs:I

    const-wide v1, 0x10500000036L

    invoke-virtual {p1, v1, v2, v0}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 3266
    return-void
.end method

.method dumpSequenceNumbersLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 3270
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "  mAdjSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/OomAdjuster;->mAdjSeq:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " mLruSeq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessList;->getLruSeqLOSP()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3271
    return-void
.end method

.method enqueueOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;)V
    .registers 3
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 696
    if-eqz p1, :cond_7

    .line 697
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 699
    :cond_7
    return-void
.end method

.method handleUserSwitchedLocked()V
    .registers 4

    .line 385
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    new-instance v1, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0}, Lcom/android/server/am/OomAdjuster$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/am/OomAdjuster;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Lcom/android/server/am/ProcessList;->forEachLruProcessesLOSP(ZLjava/util/function/Consumer;)V

    .line 387
    return-void
.end method

.method idleUidsLocked()V
    .registers 17

    .line 3179
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v2

    .line 3180
    .local v2, "N":I
    if-gtz v2, :cond_b

    .line 3181
    return-void

    .line 3183
    :cond_b
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    .line 3184
    .local v3, "nowElapsed":J
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v5, v0, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    sub-long v5, v3, v5

    .line 3185
    .local v5, "maxBgTime":J
    const-wide/16 v7, 0x0

    .line 3186
    .local v7, "nextTime":J
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_1e

    .line 3187
    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->startUidChanges()V

    .line 3189
    :cond_1e
    add-int/lit8 v0, v2, -0x1

    move-wide v8, v7

    move v7, v0

    .local v7, "i":I
    .local v8, "nextTime":J
    :goto_22
    const-wide/16 v10, 0x0

    if-ltz v7, :cond_72

    .line 3190
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v0, v7}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v12

    .line 3191
    .local v12, "uidRec":Lcom/android/server/am/UidRecord;
    invoke-virtual {v12}, Lcom/android/server/am/UidRecord;->getLastBackgroundTime()J

    move-result-wide v13

    .line 3192
    .local v13, "bgTime":J
    cmp-long v0, v13, v10

    if-lez v0, :cond_6f

    invoke-virtual {v12}, Lcom/android/server/am/UidRecord;->isIdle()Z

    move-result v0

    if-nez v0, :cond_6f

    .line 3193
    cmp-long v0, v13, v5

    if-gtz v0, :cond_66

    .line 3194
    invoke-virtual {v12}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v0

    invoke-static {v0}, Lcom/android/server/am/EventLogTags;->writeAmUidIdle(I)V

    .line 3195
    iget-object v15, v1, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v15

    :try_start_48
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 3196
    const/4 v0, 0x1

    invoke-virtual {v12, v0}, Lcom/android/server/am/UidRecord;->setIdle(Z)V

    .line 3197
    invoke-virtual {v12, v0}, Lcom/android/server/am/UidRecord;->setSetIdle(Z)V

    .line 3198
    monitor-exit v15
    :try_end_53
    .catchall {:try_start_48 .. :try_end_53} :catchall_60

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3199
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v12}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v10

    invoke-virtual {v0, v10, v12}, Lcom/android/server/am/ActivityManagerService;->doStopUidLocked(ILcom/android/server/am/UidRecord;)V

    goto :goto_6f

    .line 3198
    :catchall_60
    move-exception v0

    :try_start_61
    monitor-exit v15
    :try_end_62
    .catchall {:try_start_61 .. :try_end_62} :catchall_60

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 3201
    :cond_66
    cmp-long v0, v8, v10

    if-eqz v0, :cond_6e

    cmp-long v0, v8, v13

    if-lez v0, :cond_6f

    .line 3202
    :cond_6e
    move-wide v8, v13

    .line 3189
    .end local v12  # "uidRec":Lcom/android/server/am/UidRecord;
    .end local v13  # "bgTime":J
    :cond_6f
    :goto_6f
    add-int/lit8 v7, v7, -0x1

    goto :goto_22

    .line 3207
    .end local v7  # "i":I
    :cond_72
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mLocalPowerManager:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_79

    .line 3208
    invoke-virtual {v0}, Landroid/os/PowerManagerInternal;->finishUidChanges()V

    .line 3213
    :cond_79
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-boolean v0, v0, Lcom/android/server/am/ActivityManagerConstants;->mKillBgRestrictedAndCachedIdle:Z

    if-eqz v0, :cond_b1

    .line 3214
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    iget-object v0, v0, Lcom/android/server/am/ProcessList;->mAppsInBackgroundRestricted:Landroid/util/ArraySet;

    .line 3215
    .local v0, "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ProcessRecord;>;"
    const/4 v7, 0x0

    .restart local v7  # "i":I
    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v12

    .local v12, "size":I
    :goto_8a
    if-ge v7, v12, :cond_b1

    .line 3217
    iget-object v13, v1, Lcom/android/server/am/OomAdjuster;->mProcessList:Lcom/android/server/am/ProcessList;

    .line 3218
    invoke-virtual {v0, v7}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/am/ProcessRecord;

    .line 3217
    invoke-virtual {v13, v14, v3, v4}, Lcom/android/server/am/ProcessList;->killAppIfBgRestrictedAndCachedIdleLocked(Lcom/android/server/am/ProcessRecord;J)J

    move-result-wide v13

    iget-object v15, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v10, v15, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    sub-long/2addr v13, v10

    .line 3219
    .restart local v13  # "bgTime":J
    const-wide/16 v10, 0x0

    cmp-long v15, v13, v10

    if-lez v15, :cond_ac

    cmp-long v15, v8, v10

    if-eqz v15, :cond_ab

    cmp-long v10, v8, v13

    if-lez v10, :cond_ac

    .line 3220
    :cond_ab
    move-wide v8, v13

    .line 3215
    .end local v13  # "bgTime":J
    :cond_ac
    add-int/lit8 v7, v7, 0x1

    const-wide/16 v10, 0x0

    goto :goto_8a

    .line 3224
    .end local v0  # "apps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/ProcessRecord;>;"
    .end local v7  # "i":I
    .end local v12  # "size":I
    :cond_b1
    const-wide/16 v10, 0x0

    cmp-long v0, v8, v10

    if-lez v0, :cond_cd

    .line 3225
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    const/16 v7, 0x3a

    invoke-virtual {v0, v7}, Lcom/android/server/am/ActivityManagerService$MainHandler;->removeMessages(I)V

    .line 3226
    iget-object v0, v1, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    iget-object v10, v1, Lcom/android/server/am/OomAdjuster;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-wide v10, v10, Lcom/android/server/am/ActivityManagerConstants;->BACKGROUND_SETTLE_TIME:J

    add-long/2addr v10, v8

    sub-long/2addr v10, v3

    invoke-virtual {v0, v7, v10, v11}, Lcom/android/server/am/ActivityManagerService$MainHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 3229
    :cond_cd
    return-void
.end method

.method initSettings()V
    .registers 6

    .line 364
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0}, Lcom/android/server/am/CachedAppOptimizer;->init()V

    .line 365
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCacheOomRanker:Lcom/android/server/am/CacheOomRanker;

    invoke-static {}, Landroid/app/ActivityThread;->currentApplication()Landroid/app/Application;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Application;->getMainExecutor()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/am/CacheOomRanker;->init(Ljava/util/concurrent/Executor;)V

    .line 366
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerConstants;->KEEP_WARMING_SERVICES:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-lez v0, :cond_36

    .line 367
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.intent.action.USER_SWITCHED"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 368
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/am/OomAdjuster$1;

    invoke-direct {v2, p0}, Lcom/android/server/am/OomAdjuster$1;-><init>(Lcom/android/server/am/OomAdjuster;)V

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v4, v4, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiverForAllUsers(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 377
    .end local v0  # "filter":Landroid/content/IntentFilter;
    :cond_36
    return-void
.end method

.method protected isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z
    .registers 5
    .param p1, "cachedCompatChangeId"  # I
    .param p2, "app"  # Landroid/content/pm/ApplicationInfo;
    .param p3, "defaultValue"  # Z

    .line 291
    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    .line 292
    invoke-static {p1, p2, p3}, Lcom/android/server/am/PlatformCompatCache;->isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z

    move-result v0

    .line 291
    return v0
.end method

.method synthetic lambda$applyOomAdjLSP$1$com-android-server-am-OomAdjuster(Lcom/android/server/am/ProcessRecord;)V
    .registers 6
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 3026
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3027
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget v2, p1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lcom/android/server/am/ActiveServices;->stopAllForegroundServicesLocked(ILjava/lang/String;)V

    .line 3029
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_3 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3030
    return-void

    .line 3029
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method synthetic lambda$new$0$com-android-server-am-OomAdjuster(Landroid/os/Message;)Z
    .registers 10
    .param p1, "msg"  # Landroid/os/Message;

    .line 331
    iget v0, p1, Landroid/os/Message;->arg1:I

    .line 332
    .local v0, "pid":I
    iget v1, p1, Landroid/os/Message;->arg2:I

    .line 333
    .local v1, "group":I
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Lcom/android/server/am/ProcessRecord;

    .line 334
    .local v2, "app":Lcom/android/server/am/ProcessRecord;
    sget v3, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v4, 0x1

    if-ne v0, v3, :cond_e

    .line 336
    return v4

    .line 338
    :cond_e
    const-wide/16 v5, 0x40

    invoke-static {v5, v6}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v3

    if-eqz v3, :cond_39

    .line 339
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setProcessGroup "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v7, v2, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v7, " to "

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, v6, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 343
    :cond_39
    :try_start_39
    iget-boolean v3, p0, Lcom/android/server/am/OomAdjuster;->mEnableProcessGroupCgroupFollow:Z

    if-eqz v3, :cond_47

    .line 344
    iget-object v3, v2, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v7, p0, Lcom/android/server/am/OomAdjuster;->mProcessGroupCgroupFollowDex2oatOnly:Z

    invoke-static {v3, v0, v1, v7}, Landroid/os/Process;->setCgroupProcsProcessGroup(IIIZ)V

    goto :goto_51

    .line 346
    :cond_47
    invoke-static {v0, v1}, Landroid/os/Process;->setProcessGroup(II)V
    :try_end_4a
    .catch Ljava/lang/Exception; {:try_start_39 .. :try_end_4a} :catch_50
    .catchall {:try_start_39 .. :try_end_4a} :catchall_4b

    goto :goto_51

    .line 353
    :catchall_4b
    move-exception v3

    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 354
    throw v3

    .line 348
    :catch_50
    move-exception v3

    .line 353
    :goto_51
    invoke-static {v5, v6}, Landroid/os/Trace;->traceEnd(J)V

    .line 354
    nop

    .line 355
    return v4
.end method

.method maybeUpdateUsageStats(Lcom/android/server/am/ProcessRecord;J)V
    .registers 7
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "nowElapsed"  # J

    .line 3096
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 3097
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v1
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_1e

    :try_start_9
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 3098
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/am/OomAdjuster;->maybeUpdateUsageStatsLSP(Lcom/android/server/am/ProcessRecord;J)V

    .line 3099
    monitor-exit v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_18

    :try_start_10
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 3100
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_10 .. :try_end_14} :catchall_1e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 3101
    return-void

    .line 3099
    :catchall_18
    move-exception v2

    :try_start_19
    monitor-exit v1
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    :try_start_1a
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .end local p0  # "this":Lcom/android/server/am/OomAdjuster;
    .end local p1  # "app":Lcom/android/server/am/ProcessRecord;
    .end local p2  # "nowElapsed":J
    throw v2

    .line 3100
    .restart local p0  # "this":Lcom/android/server/am/OomAdjuster;
    .restart local p1  # "app":Lcom/android/server/am/ProcessRecord;
    .restart local p2  # "nowElapsed":J
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method onWakefulnessChanged(I)V
    .registers 3
    .param p1, "wakefulness"  # I

    .line 2708
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mCachedAppOptimizer:Lcom/android/server/am/CachedAppOptimizer;

    invoke-virtual {v0, p1}, Lcom/android/server/am/CachedAppOptimizer;->onWakefulnessChanged(I)V

    .line 2709
    return-void
.end method

.method removeOomAdjTargetLocked(Lcom/android/server/am/ProcessRecord;Z)V
    .registers 5
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "procDied"  # Z

    .line 703
    if-eqz p1, :cond_12

    .line 704
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 705
    if-eqz p2, :cond_12

    .line 706
    invoke-static {}, Lcom/android/server/am/PlatformCompatCache;->getInstance()Lcom/android/server/am/PlatformCompatCache;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v1}, Lcom/android/server/am/PlatformCompatCache;->invalidate(Landroid/content/pm/ApplicationInfo;)V

    .line 709
    :cond_12
    return-void
.end method

.method setAppIdTempAllowlistStateLSP(IZ)V
    .registers 7
    .param p1, "uid"  # I
    .param p2, "onAllowlist"  # Z

    .line 3233
    const/4 v0, 0x0

    .line 3234
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1}, Lcom/android/server/am/ActiveUids;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_24

    .line 3235
    iget-object v2, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActiveUids;->valueAt(I)Lcom/android/server/am/UidRecord;

    move-result-object v2

    .line 3236
    .local v2, "uidRec":Lcom/android/server/am/UidRecord;
    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->getUid()I

    move-result v3

    if-ne v3, p1, :cond_21

    invoke-virtual {v2}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v3

    if-eq v3, p2, :cond_21

    .line 3237
    invoke-virtual {v2, p2}, Lcom/android/server/am/UidRecord;->setCurAllowListed(Z)V

    .line 3238
    const/4 v0, 0x1

    .line 3234
    .end local v2  # "uidRec":Lcom/android/server/am/UidRecord;
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 3241
    .end local v1  # "i":I
    :cond_24
    if-eqz v0, :cond_2c

    .line 3242
    const-string/jumbo v1, "updateOomAdj_allowlistChange"

    invoke-direct {p0, v1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Ljava/lang/String;)V

    .line 3244
    :cond_2c
    return-void
.end method

.method setAttachingSchedGroupLSP(Lcom/android/server/am/ProcessRecord;)V
    .registers 7
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 3072
    const/4 v0, 0x2

    .line 3073
    .local v0, "initialSchedGroup":I
    iget-object v1, p1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 3076
    .local v1, "state":Lcom/android/server/am/ProcessStateRecord;
    invoke-virtual {v1}, Lcom/android/server/am/ProcessStateRecord;->hasForegroundActivities()Z

    move-result v2

    if-eqz v2, :cond_3e

    .line 3081
    :try_start_9
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->onTopProcChanged()V

    .line 3082
    invoke-virtual {p1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v2

    const/16 v3, -0xa

    invoke-static {v2, v3}, Landroid/os/Process;->setThreadPriority(II)V
    :try_end_19
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_19} :catch_1b

    .line 3083
    const/4 v0, 0x3

    .line 3086
    goto :goto_3e

    .line 3084
    :catch_1b
    move-exception v2

    .line 3085
    .local v2, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to pre-set top priority to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "OomAdjuster"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3089
    .end local v2  # "e":Ljava/lang/Exception;
    :cond_3e
    :goto_3e
    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessStateRecord;->setSetSchedGroup(I)V

    .line 3090
    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessStateRecord;->setCurrentSchedulingGroup(I)V

    .line 3091
    return-void
.end method

.method setUidTempAllowlistStateLSP(IZ)V
    .registers 6
    .param p1, "uid"  # I
    .param p2, "onAllowlist"  # Z

    .line 3248
    const/4 v0, 0x0

    .line 3249
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/am/OomAdjuster;->mActiveUids:Lcom/android/server/am/ActiveUids;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ActiveUids;->get(I)Lcom/android/server/am/UidRecord;

    move-result-object v1

    .line 3250
    .local v1, "uidRec":Lcom/android/server/am/UidRecord;
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/android/server/am/UidRecord;->isCurAllowListed()Z

    move-result v2

    if-eq v2, p2, :cond_18

    .line 3251
    invoke-virtual {v1, p2}, Lcom/android/server/am/UidRecord;->setCurAllowListed(Z)V

    .line 3252
    const-string/jumbo v2, "updateOomAdj_allowlistChange"

    invoke-direct {p0, v2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Ljava/lang/String;)V

    .line 3254
    :cond_18
    return-void
.end method

.method updateOomAdjLocked(Ljava/lang/String;)V
    .registers 4
    .param p1, "oomAdjReason"  # Ljava/lang/String;

    .line 467
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 468
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Ljava/lang/String;)V

    .line 469
    monitor-exit v0
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 470
    return-void

    .line 469
    :catchall_e
    move-exception v1

    :try_start_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_f .. :try_end_10} :catchall_e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z
    .registers 5
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;
    .param p2, "oomAdjReason"  # Ljava/lang/String;

    .line 507
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 508
    invoke-direct {p0, p1, p2}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLSP(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_3 .. :try_end_b} :catchall_f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    return v1

    .line 509
    :catchall_f
    move-exception v1

    :try_start_10
    monitor-exit v0
    :try_end_11
    .catchall {:try_start_10 .. :try_end_11} :catchall_f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V
    .registers 4
    .param p1, "oomAdjReason"  # Ljava/lang/String;

    .line 738
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_10

    .line 739
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mPendingFullOomAdjUpdate:Z

    .line 740
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->clear()V

    .line 741
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjLocked(Ljava/lang/String;)V

    .line 742
    return-void

    .line 744
    :cond_10
    iget-object v0, p0, Lcom/android/server/am/OomAdjuster;->mPendingProcessSet:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_19

    .line 745
    return-void

    .line 748
    :cond_19
    iget-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    if-eqz v0, :cond_1e

    .line 751
    return-void

    .line 754
    :cond_1e
    const/4 v0, 0x1

    :try_start_1f
    iput-boolean v0, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 755
    invoke-direct {p0, p1}, Lcom/android/server/am/OomAdjuster;->performUpdateOomAdjPendingTargetsLocked(Ljava/lang/String;)V
    :try_end_24
    .catchall {:try_start_1f .. :try_end_24} :catchall_2b

    .line 758
    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 759
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 760
    nop

    .line 761
    return-void

    .line 758
    :catchall_2b
    move-exception v0

    iput-boolean v1, p0, Lcom/android/server/am/OomAdjuster;->mOomAdjUpdateOngoing:Z

    .line 759
    invoke-virtual {p0, p1}, Lcom/android/server/am/OomAdjuster;->updateOomAdjPendingTargetsLocked(Ljava/lang/String;)V

    .line 760
    throw v0
.end method
