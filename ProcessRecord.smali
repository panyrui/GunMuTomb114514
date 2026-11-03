# classes.dex

.class public Lcom/android/server/am/ProcessRecord;
.super Ljava/lang/Object;
.source "ProcessRecord.java"

# interfaces
.implements Lcom/android/server/wm/WindowProcessListener;


# static fields
.field static final TAG:Ljava/lang/String; = "ActivityManager"


# instance fields
.field final appZygote:Z

.field boostBeginTime:J

.field callerPackage:Ljava/lang/String;

.field enableBoost:Z

.field volatile info:Landroid/content/pm/ApplicationInfo;

.field public final isSdkSandbox:Z

.field final isolated:Z

.field private volatile mBindMountPending:Z

.field private mCompat:Landroid/content/res/CompatibilityInfo;

.field private mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

.field private mDebugging:Z

.field private mDisabledCompatChanges:[J

.field private mDyingPid:I

.field final mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

.field private mGids:[I

.field private volatile mHostingRecord:Lcom/android/server/am/HostingRecord;

.field private mInFullBackup:Z

.field private mInstr:Lcom/android/server/am/ActiveInstrumentation;

.field private mInstructionSet:Ljava/lang/String;

.field private mIsolatedEntryPoint:Ljava/lang/String;

.field private mIsolatedEntryPointArgs:[Ljava/lang/String;

.field private mKillTime:J

.field private mKilled:Z

.field private mKilledByAm:Z

.field private mLastActivityTime:J

.field private mLruSeq:I

.field private volatile mMountMode:I

.field final mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

.field private mPendingStart:Z

.field private volatile mPersistent:Z

.field public mPid:I

.field private mPkgDeps:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPkgList:Lcom/android/server/am/PackageList;

.field volatile mPredecessor:Lcom/android/server/am/ProcessRecord;

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field final mProfile:Lcom/android/server/am/ProcessProfileRecord;

.field final mProviders:Lcom/android/server/am/ProcessProviderRecord;

.field final mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

.field private volatile mRemoved:Z

.field private mRenderThreadTid:I

.field private mRequiredAbi:Ljava/lang/String;

.field private volatile mSeInfo:Ljava/lang/String;

.field final mService:Lcom/android/server/am/ActivityManagerService;

.field final mServices:Lcom/android/server/am/ProcessServiceRecord;

.field private mShortStringName:Ljava/lang/String;

.field private volatile mStartElapsedTime:J

.field private mStartSeq:J

.field private volatile mStartUid:I

.field private volatile mStartUptime:J

.field final mState:Lcom/android/server/am/ProcessStateRecord;

.field private mStringName:Ljava/lang/String;

.field volatile mSuccessor:Lcom/android/server/am/ProcessRecord;

.field mSuccessorStartRunnable:Ljava/lang/Runnable;

.field private mThread:Landroid/app/IApplicationThread;

.field private mUidRecord:Lcom/android/server/am/UidRecord;

.field private mUnlocked:Z

.field private mUsingWrapper:Z

.field private mWaitedForDebugger:Z

.field private mWaitingToKill:Ljava/lang/String;

.field private final mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

.field final processInfo:Landroid/content/pm/ProcessInfo;

.field public final processName:Ljava/lang/String;

.field final sdkSandboxClientAppPackage:Ljava/lang/String;

.field final sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

.field public final uid:I

.field final userId:I


# direct methods
.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;I)V
    .registers 13
    .param p1, "_service"  # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_info"  # Landroid/content/pm/ApplicationInfo;
    .param p3, "_processName"  # Ljava/lang/String;
    .param p4, "_uid"  # I

    .line 517
    const/4 v5, 0x0

    const/4 v6, -0x1

    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v7}, Lcom/android/server/am/ProcessRecord;-><init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V

    .line 518
    return-void
.end method

.method constructor <init>(Lcom/android/server/am/ActivityManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;ILjava/lang/String;ILjava/lang/String;)V
    .registers 27
    .param p1, "_service"  # Lcom/android/server/am/ActivityManagerService;
    .param p2, "_info"  # Landroid/content/pm/ApplicationInfo;
    .param p3, "_processName"  # Ljava/lang/String;
    .param p4, "_uid"  # I
    .param p5, "_sdkSandboxClientAppPackage"  # Ljava/lang/String;
    .param p6, "_definingUid"  # I
    .param p7, "_definingProcessName"  # Ljava/lang/String;

    .line 522
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move/from16 v12, p4

    move/from16 v13, p6

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 113
    new-instance v14, Lcom/android/server/am/PackageList;

    invoke-direct {v14, v8}, Lcom/android/server/am/PackageList;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v14, v8, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    .line 523
    iput-object v9, v8, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 524
    iget-object v0, v9, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, v8, Lcom/android/server/am/ProcessRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 525
    iput-object v10, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    .line 526
    const/4 v0, 0x0

    .line 527
    .local v0, "procInfo":Landroid/content/pm/ProcessInfo;
    iget-object v1, v9, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    if-eqz v1, :cond_63

    .line 528
    if-lez v13, :cond_3a

    .line 529
    iget-object v1, v9, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 530
    invoke-virtual {v1, v13}, Landroid/content/pm/PackageManagerInternal;->getProcessesForUid(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 531
    .local v1, "processes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/ProcessInfo;>;"
    if-eqz v1, :cond_37

    move-object/from16 v15, p7

    invoke-virtual {v1, v15}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/content/pm/ProcessInfo;

    goto :goto_39

    :cond_37
    move-object/from16 v15, p7

    .line 532
    .end local v1  # "processes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/ProcessInfo;>;"
    :goto_39
    goto :goto_4b

    .line 533
    :cond_3a
    move-object/from16 v15, p7

    iget-object v1, v9, Lcom/android/server/am/ActivityManagerService;->mPackageManagerInt:Landroid/content/pm/PackageManagerInternal;

    .line 534
    invoke-virtual {v1, v12}, Landroid/content/pm/PackageManagerInternal;->getProcessesForUid(I)Landroid/util/ArrayMap;

    move-result-object v1

    .line 535
    .restart local v1  # "processes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/ProcessInfo;>;"
    if-eqz v1, :cond_4b

    invoke-virtual {v1, v11}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Landroid/content/pm/ProcessInfo;

    .line 537
    .end local v1  # "processes":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/content/pm/ProcessInfo;>;"
    :cond_4b
    :goto_4b
    if-eqz v0, :cond_61

    iget-object v1, v0, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-nez v1, :cond_61

    iget v1, v0, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_61

    iget v1, v0, Landroid/content/pm/ProcessInfo;->memtagMode:I

    if-ne v1, v2, :cond_61

    iget v1, v0, Landroid/content/pm/ProcessInfo;->nativeHeapZeroInitialized:I

    if-ne v1, v2, :cond_61

    .line 544
    const/4 v0, 0x0

    move-object v7, v0

    goto :goto_66

    .line 547
    :cond_61
    move-object v7, v0

    goto :goto_66

    .line 527
    :cond_63
    move-object/from16 v15, p7

    move-object v7, v0

    .line 547
    .end local v0  # "procInfo":Landroid/content/pm/ProcessInfo;
    .local v7, "procInfo":Landroid/content/pm/ProcessInfo;
    :goto_66
    iput-object v7, v8, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    .line 548
    invoke-static/range {p4 .. p4}, Landroid/os/Process;->isIsolated(I)Z

    move-result v0

    iput-boolean v0, v8, Lcom/android/server/am/ProcessRecord;->isolated:Z

    .line 549
    invoke-static/range {p4 .. p4}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v0

    iput-boolean v0, v8, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    .line 550
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const v2, 0x15f90

    const/4 v3, 0x0

    if-lt v1, v2, :cond_89

    .line 551
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const v2, 0x182b7

    if-gt v1, v2, :cond_89

    const/4 v1, 0x1

    goto :goto_8a

    :cond_89
    move v1, v3

    :goto_8a
    iput-boolean v1, v8, Lcom/android/server/am/ProcessRecord;->appZygote:Z

    .line 552
    iput v12, v8, Lcom/android/server/am/ProcessRecord;->uid:I

    .line 553
    invoke-static/range {p4 .. p4}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v5

    iput v5, v8, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 554
    iput-object v11, v8, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 555
    move-object/from16 v6, p5

    iput-object v6, v8, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    .line 556
    if-eqz v0, :cond_a5

    .line 557
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->volumeUuid:Ljava/lang/String;

    iput-object v0, v8, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

    goto :goto_a8

    .line 559
    :cond_a5
    const/4 v0, 0x0

    iput-object v0, v8, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppVolumeUuid:Ljava/lang/String;

    .line 561
    :goto_a8
    iput-boolean v3, v8, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 562
    iput-boolean v3, v8, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    .line 563
    new-instance v0, Lcom/android/server/am/ProcessProfileRecord;

    invoke-direct {v0, v8}, Lcom/android/server/am/ProcessProfileRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v0, v8, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    .line 564
    new-instance v1, Lcom/android/server/am/ProcessServiceRecord;

    invoke-direct {v1, v8}, Lcom/android/server/am/ProcessServiceRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v1, v8, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    .line 565
    new-instance v1, Lcom/android/server/am/ProcessProviderRecord;

    invoke-direct {v1, v8}, Lcom/android/server/am/ProcessProviderRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v1, v8, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    .line 566
    new-instance v1, Lcom/android/server/am/ProcessReceiverRecord;

    invoke-direct {v1, v8}, Lcom/android/server/am/ProcessReceiverRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v1, v8, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    .line 567
    new-instance v1, Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-direct {v1, v8}, Lcom/android/server/am/ProcessErrorStateRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v1, v8, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 568
    new-instance v1, Lcom/android/server/am/ProcessStateRecord;

    invoke-direct {v1, v8}, Lcom/android/server/am/ProcessStateRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v1, v8, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    .line 569
    new-instance v2, Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-direct {v2, v8}, Lcom/android/server/am/ProcessCachedOptimizerRecord;-><init>(Lcom/android/server/am/ProcessRecord;)V

    iput-object v2, v8, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    .line 570
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 571
    .local v3, "now":J
    invoke-virtual {v0, v3, v4}, Lcom/android/server/am/ProcessProfileRecord;->init(J)V

    .line 572
    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->init(J)V

    .line 573
    invoke-virtual {v1, v3, v4}, Lcom/android/server/am/ProcessStateRecord;->init(J)V

    .line 574
    new-instance v2, Lcom/android/server/wm/WindowProcessController;

    iget-object v1, v9, Lcom/android/server/am/ActivityManagerService;->mActivityTaskManager:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v8, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v16, v0

    move-object v0, v2

    move-object v9, v2

    move-object/from16 v2, v16

    move-wide/from16 v16, v3

    .end local v3  # "now":J
    .local v16, "now":J
    move-object/from16 v3, p3

    move/from16 v4, p4

    move-object/from16 v6, p0

    move-object/from16 v18, v7

    .end local v7  # "procInfo":Landroid/content/pm/ProcessInfo;
    .local v18, "procInfo":Landroid/content/pm/ProcessInfo;
    move-object/from16 v7, p0

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/WindowProcessController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/pm/ApplicationInfo;Ljava/lang/String;IILjava/lang/Object;Lcom/android/server/wm/WindowProcessListener;)V

    iput-object v9, v8, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 576
    iget-object v0, v10, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-wide v2, v10, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v1, v2, v3}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    invoke-virtual {v14, v0, v1}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 577
    return-void
.end method

.method static synthetic lambda$resetPackageList$1(Lcom/android/internal/app/procstats/ProcessState;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 3
    .param p0, "baseProcessTracker"  # Lcom/android/internal/app/procstats/ProcessState;
    .param p1, "holder"  # Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 1301
    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eqz v0, :cond_d

    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v0, p0, :cond_d

    .line 1302
    iget-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessState;->makeInactive()V

    .line 1304
    :cond_d
    return-void
.end method


# virtual methods
.method addOrUpdateAllowBackgroundActivityStartsToken(Landroid/os/Binder;Landroid/os/IBinder;)V
    .registers 4
    .param p1, "entity"  # Landroid/os/Binder;
    .param p2, "originatingToken"  # Landroid/os/IBinder;

    .line 1343
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1344
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->addOrUpdateAllowBackgroundActivityStartsToken(Landroid/os/Binder;Landroid/os/IBinder;)V

    .line 1346
    return-void
.end method

.method public addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z
    .registers 16
    .param p1, "pkg"  # Ljava/lang/String;
    .param p2, "versionCode"  # J
    .param p4, "tracker"  # Lcom/android/server/am/ProcessStatsService;

    .line 1258
    iget-object v0, p4, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1259
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    monitor-enter v1
    :try_end_6
    .catchall {:try_start_3 .. :try_end_6} :catchall_48

    .line 1260
    :try_start_6
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v2, p1}, Lcom/android/server/am/PackageList;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_41

    .line 1261
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    invoke-direct {v2, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    .line 1263
    .local v2, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v3}, Lcom/android/server/am/ProcessProfileRecord;->getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v3

    move-object v10, v3

    .line 1264
    .local v10, "baseProcessTracker":Lcom/android/internal/app/procstats/ProcessState;
    if-eqz v10, :cond_38

    .line 1265
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v6, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v9, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    move-object v3, p4

    move-object v4, v2

    move-object v5, p1

    move-wide v7, p2

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ProcessStatsService;->updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V

    .line 1267
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 1268
    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v3, v10, :cond_3d

    .line 1269
    iget-object v3, v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    goto :goto_3d

    .line 1272
    :cond_38
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v3, p1, v2}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 1274
    :cond_3d
    :goto_3d
    const/4 v3, 0x1

    monitor-exit v1
    :try_end_3f
    .catchall {:try_start_6 .. :try_end_3f} :catchall_45

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_48

    return v3

    .line 1276
    .end local v2  # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    .end local v10  # "baseProcessTracker":Lcom/android/internal/app/procstats/ProcessState;
    :cond_41
    :try_start_41
    monitor-exit v1
    :try_end_42
    .catchall {:try_start_41 .. :try_end_42} :catchall_45

    .line 1277
    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_48

    .line 1278
    const/4 v0, 0x0

    return v0

    .line 1276
    :catchall_45
    move-exception v2

    :try_start_46
    monitor-exit v1
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    .end local p0  # "this":Lcom/android/server/am/ProcessRecord;
    .end local p1  # "pkg":Ljava/lang/String;
    .end local p2  # "versionCode":J
    .end local p4  # "tracker":Lcom/android/server/am/ProcessStatsService;
    :try_start_47
    throw v2

    .line 1277
    .restart local p0  # "this":Lcom/android/server/am/ProcessRecord;
    .restart local p1  # "pkg":Ljava/lang/String;
    .restart local p2  # "versionCode":J
    .restart local p4  # "tracker":Lcom/android/server/am/ProcessStatsService;
    :catchall_48
    move-exception v1

    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public appDied(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"  # Ljava/lang/String;

    .line 1436
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1437
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/am/ActivityManagerService;->appDiedLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 1438
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1439
    return-void

    .line 1438
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public clearProfilerIfNeeded()V
    .registers 3

    .line 1355
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v0, v0, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 1356
    :try_start_7
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v1}, Lcom/android/server/am/AppProfiler;->clearProfilerLPf()V

    .line 1357
    monitor-exit v0

    .line 1358
    return-void

    .line 1357
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_7 .. :try_end_12} :catchall_10

    throw v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 12
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 407
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 408
    .local v0, "nowUptime":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    .line 410
    .local v2, "nowElapsedTime":J
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "user #"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 411
    const-string v4, " uid="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 412
    iget v4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v5, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v4, v5, :cond_34

    .line 413
    const-string v4, " ISOLATED uid="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(I)V

    .line 415
    :cond_34
    const-string v4, " gids={"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 416
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mGids:[I

    const-string v5, ", "

    if-eqz v4, :cond_54

    .line 417
    const/4 v4, 0x0

    .local v4, "gi":I
    :goto_40
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->mGids:[I

    array-length v6, v6

    if-ge v4, v6, :cond_54

    .line 418
    if-eqz v4, :cond_4a

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 419
    :cond_4a
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->mGids:[I

    aget v6, v6, v4

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 417
    add-int/lit8 v4, v4, 0x1

    goto :goto_40

    .line 423
    .end local v4  # "gi":I
    :cond_54
    const-string/jumbo v4, "}"

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 424
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    if-eqz v6, :cond_d7

    .line 425
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "processInfo:"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 426
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v6, v6, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    if-eqz v6, :cond_90

    .line 427
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_6e
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v7, v7, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_90

    .line 428
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v7, "  deny: "

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 429
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget-object v7, v7, Landroid/content/pm/ProcessInfo;->deniedPermissions:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 427
    add-int/lit8 v6, v6, 0x1

    goto :goto_6e

    .line 432
    .end local v6  # "i":I
    :cond_90
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v6, v6, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    const/4 v7, -0x1

    if-eq v6, v7, :cond_b4

    .line 433
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "  gwpAsanMode="

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v8, v8, Landroid/content/pm/ProcessInfo;->gwpAsanMode:I

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 435
    :cond_b4
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v6, v6, Landroid/content/pm/ProcessInfo;->memtagMode:I

    if-eq v6, v7, :cond_d7

    .line 436
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "  memtagMode="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->processInfo:Landroid/content/pm/ProcessInfo;

    iget v7, v7, Landroid/content/pm/ProcessInfo;->memtagMode:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 439
    :cond_d7
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "mRequiredAbi="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->mRequiredAbi:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 440
    const-string v6, " instructionSet="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->mInstructionSet:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 441
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    if-eqz v6, :cond_104

    .line 442
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "class="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 444
    :cond_104
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    if-eqz v6, :cond_11a

    .line 445
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "manageSpaceActivityName="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 446
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 449
    :cond_11a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v6, "dir="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 450
    const-string v6, " publicDir="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 451
    const-string v6, " data="

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 452
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v6, p1, p2}, Lcom/android/server/am/PackageList;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 453
    iget-object v6, p0, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    if-eqz v6, :cond_172

    .line 454
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v6, "packageDependencies={"

    invoke-virtual {p1, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 455
    const/4 v6, 0x0

    .restart local v6  # "i":I
    :goto_154
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v7}, Landroid/util/ArraySet;->size()I

    move-result v7

    if-ge v6, v7, :cond_16f

    .line 456
    if-lez v6, :cond_161

    invoke-virtual {p1, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 457
    :cond_161
    iget-object v7, p0, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    invoke-virtual {v7, v6}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    invoke-virtual {p1, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 455
    add-int/lit8 v6, v6, 0x1

    goto :goto_154

    .line 459
    .end local v6  # "i":I
    :cond_16f
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 461
    :cond_172
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "compat="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mCompat:Landroid/content/res/CompatibilityInfo;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 462
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    if-eqz v4, :cond_191

    .line 463
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mInstr="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 465
    :cond_191
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "thread="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 466
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "pid="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(I)V

    .line 467
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "lastActivityTime="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 468
    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 469
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "startUptimeTime="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 470
    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->mStartElapsedTime:J

    invoke-static {v4, v5, v0, v1, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 471
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "startElapsedTime="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 472
    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->mStartElapsedTime:J

    invoke-static {v4, v5, v2, v3, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 473
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 474
    iget-boolean v4, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez v4, :cond_1e2

    iget-boolean v4, p0, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    if-eqz v4, :cond_1fa

    .line 475
    :cond_1e2
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "persistent="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 476
    const-string v4, " removed="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 478
    :cond_1fa
    iget-boolean v4, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    if-eqz v4, :cond_20c

    .line 479
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mDebugging="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 481
    :cond_20c
    iget-boolean v4, p0, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    if-eqz v4, :cond_21e

    .line 482
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "pendingStart="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Z)V

    .line 484
    :cond_21e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "startSeq="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v4, p0, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    invoke-virtual {p1, v4, v5}, Ljava/io/PrintWriter;->println(J)V

    .line 485
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "mountMode="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-class v4, Lcom/android/internal/os/Zygote;

    iget v5, p0, Lcom/android/server/am/ProcessRecord;->mMountMode:I

    .line 486
    const-string v6, "MOUNT_EXTERNAL_"

    invoke-static {v4, v6, v5}, Landroid/util/DebugUtils;->valueToString(Ljava/lang/Class;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 485
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 487
    iget-boolean v4, p0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    if-nez v4, :cond_24e

    iget-boolean v4, p0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez v4, :cond_24e

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    if-eqz v4, :cond_270

    .line 488
    :cond_24e
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "killed="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 489
    const-string v4, " killedByAm="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v4, p0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Z)V

    .line 490
    const-string v4, " waitingToKill="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 492
    :cond_270
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    if-nez v4, :cond_278

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPointArgs:[Ljava/lang/String;

    if-eqz v4, :cond_298

    .line 493
    :cond_278
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "isolatedEntryPoint="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 494
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v4, "isolatedEntryPointArgs="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 495
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPointArgs:[Ljava/lang/String;

    invoke-static {v4}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 498
    :cond_298
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->callerPackage:Ljava/lang/String;

    if-eqz v4, :cond_2a9

    .line 499
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v4, "callerPackage="

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->callerPackage:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    :cond_2a9
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4}, Lcom/android/server/am/ProcessStateRecord;->getSetProcState()I

    move-result v4

    const/16 v5, 0xa

    if-le v4, v5, :cond_2b8

    .line 503
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/am/ProcessProfileRecord;->dumpCputime(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 505
    :cond_2b8
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v4, p1, p2, v0, v1}, Lcom/android/server/am/ProcessProfileRecord;->dumpPss(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 506
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v4, p1, p2, v0, v1}, Lcom/android/server/am/ProcessStateRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 507
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v4, p1, p2, v0, v1}, Lcom/android/server/am/ProcessErrorStateRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 508
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v4, p1, p2, v0, v1}, Lcom/android/server/am/ProcessServiceRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 509
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v4, p1, p2, v0, v1}, Lcom/android/server/am/ProcessProviderRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 510
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v4, p1, p2, v0, v1}, Lcom/android/server/am/ProcessReceiverRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 511
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mOptRecord:Lcom/android/server/am/ProcessCachedOptimizerRecord;

    invoke-virtual {v4, p1, p2, v0, v1}, Lcom/android/server/am/ProcessCachedOptimizerRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V

    .line 512
    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v4, p1, p2}, Lcom/android/server/wm/WindowProcessController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 5
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 1183
    const/4 v0, -0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/am/ProcessRecord;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1184
    return-void
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 10
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J
    .param p4, "lruIndex"  # I

    .line 1187
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 1188
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1189
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    const-wide v3, 0x10900000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 1190
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    const-wide v3, 0x10500000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1191
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v2}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v2

    const/16 v3, 0x2710

    if-lt v2, v3, :cond_4a

    .line 1192
    const-wide v2, 0x10500000004L

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1193
    const-wide v2, 0x10500000005L

    iget-object v4, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1195
    :cond_4a
    iget v2, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, v3, :cond_60

    .line 1196
    const-wide v2, 0x10500000006L

    iget v4, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v4}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1198
    :cond_60
    const-wide v2, 0x10800000007L

    iget-boolean v4, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 1199
    if-ltz p4, :cond_74

    .line 1200
    const-wide v2, 0x10500000008L

    invoke-virtual {p1, v2, v3, p4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 1202
    :cond_74
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1203
    return-void
.end method

.method getActiveInstrumentation()Lcom/android/server/am/ActiveInstrumentation;
    .registers 2

    .line 872
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    return-object v0
.end method

.method public getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;
    .registers 8

    .line 933
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    if-eqz v0, :cond_1c

    .line 938
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v0}, Lcom/android/server/am/ActivityManagerService;->getPackageManagerInternal()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 939
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->sdkSandboxClientAppPackage:Ljava/lang/String;

    const-wide/16 v3, 0x0

    const/16 v5, 0x3e8

    iget v6, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    move-object v1, v0

    invoke-virtual/range {v1 .. v6}, Landroid/content/pm/PackageManagerInternal;->getApplicationInfo(Ljava/lang/String;JII)Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    return-object v1

    .line 934
    .end local v0  # "pm":Landroid/content/pm/PackageManagerInternal;
    :cond_1c
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getClientInfoForSdkSandbox called for non-sandbox process"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method getCompat()Landroid/content/res/CompatibilityInfo;
    .registers 2

    .line 824
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mCompat:Landroid/content/res/CompatibilityInfo;

    return-object v0
.end method

.method public getCpuTime()J
    .registers 3

    .line 1408
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget v1, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler;->getCpuTimeForPid(I)J

    move-result-wide v0

    return-wide v0
.end method

.method getDeathRecipient()Landroid/os/IBinder$DeathRecipient;
    .registers 2

    .line 857
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    return-object v0
.end method

.method getDisabledCompatChanges()[J
    .registers 2

    .line 834
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    return-object v0
.end method

.method getDyingPid()I
    .registers 2

    .line 677
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mDyingPid:I

    return v0
.end method

.method getGids()[I
    .registers 2

    .line 687
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mGids:[I

    return-object v0
.end method

.method getHostingRecord()Lcom/android/server/am/HostingRecord;
    .registers 2

    .line 746
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    return-object v0
.end method

.method getInfo()Landroid/content/pm/ApplicationInfo;
    .registers 2

    .line 596
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    return-object v0
.end method

.method public getInputDispatchingTimeoutMillis()J
    .registers 3

    .line 1453
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getInputDispatchingTimeoutMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method getInstructionSet()Ljava/lang/String;
    .registers 2

    .line 708
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mInstructionSet:Ljava/lang/String;

    return-object v0
.end method

.method getIsolatedEntryPoint()Ljava/lang/String;
    .registers 2

    .line 1003
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    return-object v0
.end method

.method getIsolatedEntryPointArgs()[Ljava/lang/String;
    .registers 2

    .line 1013
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPointArgs:[Ljava/lang/String;

    return-object v0
.end method

.method getKillTime()J
    .registers 3

    .line 899
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mKillTime:J

    return-wide v0
.end method

.method getLastActivityTime()J
    .registers 3

    .line 972
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    return-wide v0
.end method

.method getLruProcessList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation

    .line 1470
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessList;->getLruProcessesLOSP()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method getLruSeq()I
    .registers 2

    .line 993
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mLruSeq:I

    return v0
.end method

.method getMountMode()I
    .registers 2

    .line 787
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mMountMode:I

    return v0
.end method

.method getPackageList()[Ljava/lang/String;
    .registers 2

    .line 1325
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v0}, Lcom/android/server/am/PackageList;->getPackageList()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getPackageListWithVersionCode()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/content/pm/VersionedPackage;",
            ">;"
        }
    .end annotation

    .line 1329
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v0}, Lcom/android/server/am/PackageList;->getPackageListWithVersionCode()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getPid()I
    .registers 2

    .line 612
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    return v0
.end method

.method getPkgDeps()Landroid/util/ArraySet;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 602
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    return-object v0
.end method

.method getPkgList()Lcom/android/server/am/PackageList;
    .registers 2

    .line 590
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    return-object v0
.end method

.method public getProcessClassEnum()I
    .registers 3

    .line 1457
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    sget v1, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-ne v0, v1, :cond_8

    .line 1458
    const/4 v0, 0x3

    return v0

    .line 1460
    :cond_8
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    if-nez v0, :cond_e

    .line 1461
    const/4 v0, 0x0

    return v0

    .line 1463
    :cond_e
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_18

    const/4 v1, 0x2

    goto :goto_19

    .line 1464
    :cond_18
    nop

    .line 1463
    :goto_19
    return v1
.end method

.method getRenderThreadTid()I
    .registers 2

    .line 814
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mRenderThreadTid:I

    return v0
.end method

.method getRequiredAbi()Ljava/lang/String;
    .registers 2

    .line 697
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mRequiredAbi:Ljava/lang/String;

    return-object v0
.end method

.method getSeInfo()Ljava/lang/String;
    .registers 2

    .line 754
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mSeInfo:Ljava/lang/String;

    return-object v0
.end method

.method getStartElapsedTime()J
    .registers 3

    .line 775
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mStartElapsedTime:J

    return-wide v0
.end method

.method getStartSeq()J
    .registers 3

    .line 737
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    return-wide v0
.end method

.method getStartTime()J
    .registers 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 771
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    return-wide v0
.end method

.method getStartUid()I
    .registers 2

    .line 779
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mStartUid:I

    return v0
.end method

.method getStartUptime()J
    .registers 3

    .line 762
    iget-wide v0, p0, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    return-wide v0
.end method

.method getThread()Landroid/app/IApplicationThread;
    .registers 2

    .line 628
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    return-object v0
.end method

.method getUidRecord()Lcom/android/server/am/UidRecord;
    .registers 2

    .line 581
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    return-object v0
.end method

.method getWaitingToKill()Ljava/lang/String;
    .registers 2

    .line 909
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    return-object v0
.end method

.method getWindowProcessController()Lcom/android/server/wm/WindowProcessController;
    .registers 2

    .line 1333
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    return-object v0
.end method

.method hasActivities()Z
    .registers 2

    .line 1045
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v0

    return v0
.end method

.method hasActivitiesOrRecentTasks()Z
    .registers 2

    .line 1049
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasActivitiesOrRecentTasks()Z

    move-result v0

    return v0
.end method

.method hasRecentTasks()Z
    .registers 2

    .line 1053
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasRecentTasks()Z

    move-result v0

    return v0
.end method

.method hasWaitedForDebugger()Z
    .registers 2

    .line 962
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mWaitedForDebugger:Z

    return v0
.end method

.method isBindMountPending()Z
    .registers 2

    .line 795
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mBindMountPending:Z

    return v0
.end method

.method public isCached()Z
    .registers 2

    .line 1041
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->isCached()Z

    move-result v0

    return v0
.end method

.method public isDebuggable()Z
    .registers 5

    .line 944
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v0, v0, 0x2

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    .line 945
    return v1

    .line 947
    :cond_a
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->isSdkSandbox:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_1e

    .line 948
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->getClientInfoForSdkSandbox()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 949
    .local v0, "clientInfo":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_1c

    iget v3, v0, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_1c

    goto :goto_1d

    :cond_1c
    move v1, v2

    :goto_1d
    return v1

    .line 951
    .end local v0  # "clientInfo":Landroid/content/pm/ApplicationInfo;
    :cond_1e
    return v2
.end method

.method isDebugging()Z
    .registers 2

    .line 928
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    return v0
.end method

.method isInFullBackup()Z
    .registers 2

    .line 1031
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mInFullBackup:Z

    return v0
.end method

.method public isInterestingToUserLocked()Z
    .registers 2

    .line 1080
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isInterestingToUser()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 1081
    const/4 v0, 0x1

    return v0

    .line 1084
    :cond_a
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->hasForegroundServices()Z

    move-result v0

    return v0
.end method

.method isKilled()Z
    .registers 2

    .line 887
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    return v0
.end method

.method isKilledByAm()Z
    .registers 2

    .line 877
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    return v0
.end method

.method isPendingStart()Z
    .registers 2

    .line 727
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    return v0
.end method

.method isPersistent()Z
    .registers 2

    .line 722
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    return v0
.end method

.method public isRemoved()Z
    .registers 2

    .line 919
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    return v0
.end method

.method isUnlocked()Z
    .registers 2

    .line 804
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mUnlocked:Z

    return v0
.end method

.method isUsingWrapper()Z
    .registers 2

    .line 982
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mUsingWrapper:Z

    return v0
.end method

.method killLocked(Ljava/lang/String;IIZ)V
    .registers 11
    .param p1, "reason"  # Ljava/lang/String;
    .param p2, "reasonCode"  # I
    .param p3, "subReason"  # I
    .param p4, "noisy"  # Z

    .line 1130
    move-object v0, p0

    move-object v1, p1

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V

    .line 1131
    return-void
.end method

.method killLocked(Ljava/lang/String;IZ)V
    .registers 5
    .param p1, "reason"  # Ljava/lang/String;
    .param p2, "reasonCode"  # I
    .param p3, "noisy"  # Z

    .line 1124
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IIZ)V

    .line 1125
    return-void
.end method

.method killLocked(Ljava/lang/String;Ljava/lang/String;IIZ)V
    .registers 22
    .param p1, "reason"  # Ljava/lang/String;
    .param p2, "description"  # Ljava/lang/String;
    .param p3, "reasonCode"  # I
    .param p4, "subReason"  # I
    .param p5, "noisy"  # Z

    .line 1136
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p3

    iget-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez v0, :cond_14a

    .line 1137
    const-string/jumbo v0, "kill"

    const-wide/16 v4, 0x40

    invoke-static {v4, v5, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 1138
    const/4 v0, 0x6

    if-ne v3, v0, :cond_41

    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 1139
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->getAnrAnnotation()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3e

    .line 1140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, p2

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v7, ": "

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v7}, Lcom/android/server/am/ProcessErrorStateRecord;->getAnrAnnotation()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v6, v0

    .end local p2  # "description":Ljava/lang/String;
    .local v0, "description":Ljava/lang/String;
    goto :goto_43

    .line 1139
    .end local v0  # "description":Ljava/lang/String;
    .restart local p2  # "description":Ljava/lang/String;
    :cond_3e
    move-object/from16 v6, p2

    goto :goto_43

    .line 1138
    :cond_41
    move-object/from16 v6, p2

    .line 1142
    .end local p2  # "description":Ljava/lang/String;
    .local v6, "description":Ljava/lang/String;
    :goto_43
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    move-object v7, v0

    .line 1143
    .local v7, "ux_perf":Landroid/util/BoostFramework;
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    if-eqz v0, :cond_95

    if-nez p5, :cond_59

    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget v8, v8, Lcom/android/server/am/ActivityManagerService;->mCurOomAdjUid:I

    if-ne v0, v8, :cond_95

    .line 1144
    :cond_59
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string v8, "ActivityManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Killing "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1145
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " (adj "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v10}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "): "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iget-object v10, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1144
    invoke-virtual {v0, v8, v9, v10}, Lcom/android/server/am/ActivityManagerService;->reportUidInfoMessageLocked(Ljava/lang/String;Ljava/lang/String;I)V

    .line 1148
    :cond_95
    iget v0, v1, Lcom/android/server/am/ProcessRecord;->mPid:I

    const/4 v8, 0x4

    const/4 v9, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-lez v0, :cond_e5

    .line 1149
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcessList:Lcom/android/server/am/ProcessList;

    move/from16 v12, p4

    invoke-virtual {v0, v1, v3, v12, v6}, Lcom/android/server/am/ProcessList;->noteAppKill(Lcom/android/server/am/ProcessRecord;IILjava/lang/String;)V

    .line 1150
    invoke-static {}, Lcom/android/server/am/ProcessListStub;->get()Lcom/android/server/am/ProcessListStub;

    move-result-object v0

    invoke-interface {v0, v1, v2}, Lcom/android/server/am/ProcessListStub;->notifyProcessKill(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)V

    .line 1151
    const/16 v0, 0x7547

    const/4 v13, 0x5

    new-array v13, v13, [Ljava/lang/Object;

    iget v14, v1, Lcom/android/server/am/ProcessRecord;->userId:I

    .line 1152
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v11

    iget v14, v1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v13, v10

    iget-object v14, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    aput-object v14, v13, v9

    const/4 v14, 0x3

    iget-object v15, v1, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v15}, Lcom/android/server/am/ProcessStateRecord;->getSetAdj()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    aput-object v15, v13, v14

    aput-object v2, v13, v8

    .line 1151
    invoke-static {v0, v13}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 1153
    iget v0, v1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {v0}, Landroid/os/Process;->killProcessQuiet(I)V

    .line 1154
    iget v0, v1, Lcom/android/server/am/ProcessRecord;->uid:I

    iget v13, v1, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {v0, v13}, Lcom/android/server/am/ProcessList;->killProcessGroup(II)V

    goto :goto_e9

    .line 1156
    :cond_e5
    move/from16 v12, p4

    iput-boolean v11, v1, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    .line 1158
    :goto_e9
    iget-boolean v0, v1, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    if-nez v0, :cond_10f

    .line 1159
    iget-object v13, v1, Lcom/android/server/am/ProcessRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v13

    :try_start_f0
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1160
    iput-boolean v10, v1, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    .line 1162
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/server/am/SmartPowerServiceStub;->updateProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 1163
    iput-boolean v10, v1, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 1164
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    iput-wide v14, v1, Lcom/android/server/am/ProcessRecord;->mKillTime:J

    .line 1165
    monitor-exit v13
    :try_end_105
    .catchall {:try_start_f0 .. :try_end_105} :catchall_109

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_10f

    :catchall_109
    move-exception v0

    :try_start_10a
    monitor-exit v13
    :try_end_10b
    .catchall {:try_start_10a .. :try_end_10b} :catchall_109

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v0

    .line 1167
    :cond_10f
    :goto_10f
    sget-boolean v0, Lcom/android/server/am/ActivityManagerService;->mForceStopKill:Z

    if-nez v0, :cond_144

    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isNotResponding()Z

    move-result v0

    if-nez v0, :cond_144

    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    .line 1168
    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->isCrashing()Z

    move-result v0

    if-nez v0, :cond_144

    .line 1169
    iget v0, v7, Landroid/util/BoostFramework;->board_first_api_lvl:I

    const/16 v13, 0x21

    if-ge v0, v13, :cond_132

    iget v0, v7, Landroid/util/BoostFramework;->board_api_lvl:I

    if-ge v0, v13, :cond_132

    .line 1171
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {v7, v8, v11, v0, v11}, Landroid/util/BoostFramework;->perfUXEngine_events(IILjava/lang/String;I)I

    .line 1173
    :cond_132
    const/16 v0, 0x1093

    iget-object v8, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    new-array v13, v9, [I

    aput v11, v13, v11

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v11

    aput v11, v13, v10

    invoke-virtual {v7, v0, v8, v9, v13}, Landroid/util/BoostFramework;->perfEvent(ILjava/lang/String;I[I)V

    goto :goto_146

    .line 1175
    :cond_144
    sput-boolean v11, Lcom/android/server/am/ActivityManagerService;->mForceStopKill:Z

    .line 1177
    :goto_146
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V

    goto :goto_14e

    .line 1136
    .end local v6  # "description":Ljava/lang/String;
    .end local v7  # "ux_perf":Landroid/util/BoostFramework;
    .restart local p2  # "description":Ljava/lang/String;
    :cond_14a
    move-object/from16 v6, p2

    move/from16 v12, p4

    .line 1179
    .end local p2  # "description":Ljava/lang/String;
    .restart local v6  # "description":Ljava/lang/String;
    :goto_14e
    return-void
.end method

.method synthetic lambda$resetPackageList$0$com-android-server-am-ProcessRecord(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 10
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "holder"  # Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 1294
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    .line 1296
    const/4 v0, -0x1

    invoke-static {v0}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v4

    iget-wide v5, p2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 1294
    const/4 v0, 0x3

    move-object v3, p1

    invoke-static/range {v0 .. v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public makeActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V
    .registers 4
    .param p1, "thread"  # Landroid/app/IApplicationThread;
    .param p2, "tracker"  # Lcom/android/server/am/ProcessStatsService;

    .line 648
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/am/ProcessProfileRecord;->onProcessActive(Landroid/app/IApplicationThread;Lcom/android/server/am/ProcessStatsService;)V

    .line 649
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 650
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setThread(Landroid/app/IApplicationThread;)V

    .line 651
    return-void
.end method

.method public makeInactive(Lcom/android/server/am/ProcessStatsService;)V
    .registers 4
    .param p1, "tracker"  # Lcom/android/server/am/ProcessStatsService;

    .line 670
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    .line 671
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowProcessController;->setThread(Landroid/app/IApplicationThread;)V

    .line 672
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0, p1}, Lcom/android/server/am/ProcessProfileRecord;->onProcessInactive(Lcom/android/server/am/ProcessStatsService;)V

    .line 673
    return-void
.end method

.method onCleanupApplicationRecordLSP(Lcom/android/server/am/ProcessStatsService;ZZ)Z
    .registers 5
    .param p1, "processStats"  # Lcom/android/server/am/ProcessStatsService;
    .param p2, "allowRestart"  # Z
    .param p3, "unlinkDeath"  # Z

    .line 1059
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mErrorState:Lcom/android/server/am/ProcessErrorStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessErrorStateRecord;->onCleanupApplicationRecordLSP()V

    .line 1061
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->resetPackageList(Lcom/android/server/am/ProcessStatsService;)V

    .line 1062
    if-eqz p3, :cond_d

    .line 1063
    invoke-virtual {p0}, Lcom/android/server/am/ProcessRecord;->unlinkDeathRecipient()V

    .line 1065
    :cond_d
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessRecord;->makeInactive(Lcom/android/server/am/ProcessStatsService;)V

    .line 1066
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessRecord;->setWaitingToKill(Ljava/lang/String;)V

    .line 1068
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessStateRecord;->onCleanupApplicationRecordLSP()V

    .line 1069
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessServiceRecord;->onCleanupApplicationRecordLocked()V

    .line 1070
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mReceivers:Lcom/android/server/am/ProcessReceiverRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessReceiverRecord;->onCleanupApplicationRecordLocked()V

    .line 1072
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProviders:Lcom/android/server/am/ProcessProviderRecord;

    invoke-virtual {v0, p2}, Lcom/android/server/am/ProcessProviderRecord;->onCleanupApplicationRecordLocked(Z)Z

    move-result v0

    return v0
.end method

.method public onStartActivity(IZLjava/lang/String;J)V
    .registers 9
    .param p1, "topProcessState"  # I
    .param p2, "setProfileProc"  # Z
    .param p3, "packageName"  # Ljava/lang/String;
    .param p4, "versionCode"  # J

    .line 1414
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1415
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    .line 1416
    if-eqz p2, :cond_1e

    .line 1417
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iget-object v1, v1, Lcom/android/server/am/AppProfiler;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v1
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_3e

    .line 1418
    :try_start_12
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v2, v2, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    invoke-virtual {v2, p0}, Lcom/android/server/am/AppProfiler;->setProfileProcLPf(Lcom/android/server/am/ProcessRecord;)V

    .line 1419
    monitor-exit v1

    goto :goto_1e

    :catchall_1b
    move-exception v2

    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_12 .. :try_end_1d} :catchall_1b

    .end local p0  # "this":Lcom/android/server/am/ProcessRecord;
    .end local p1  # "topProcessState":I
    .end local p2  # "setProfileProc":Z
    .end local p3  # "packageName":Ljava/lang/String;
    .end local p4  # "versionCode":J
    :try_start_1d
    throw v2

    .line 1421
    .restart local p0  # "this":Lcom/android/server/am/ProcessRecord;
    .restart local p1  # "topProcessState":I
    .restart local p2  # "setProfileProc":Z
    .restart local p3  # "packageName":Ljava/lang/String;
    .restart local p4  # "versionCode":J
    :cond_1e
    :goto_1e
    if-eqz p3, :cond_27

    .line 1422
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mProcessStats:Lcom/android/server/am/ProcessStatsService;

    invoke-virtual {p0, p3, p4, p5, v1}, Lcom/android/server/am/ProcessRecord;->addPackage(Ljava/lang/String;JLcom/android/server/am/ProcessStatsService;)Z

    .line 1426
    :cond_27
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v1, v2, v2}, Lcom/android/server/am/ProcessRecord;->updateProcessInfo(ZZZ)V

    .line 1428
    invoke-virtual {p0, v2}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    .line 1429
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ProcessStateRecord;->setHasShownUi(Z)V

    .line 1430
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessStateRecord;->forceProcessStateUpTo(I)V

    .line 1431
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_1d .. :try_end_3a} :catchall_3e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1432
    return-void

    .line 1431
    :catchall_3e
    move-exception v1

    :try_start_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3f .. :try_end_40} :catchall_3e

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V
    .registers 3
    .param p1, "entity"  # Landroid/os/Binder;

    .line 1349
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1350
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->removeAllowBackgroundActivityStartsToken(Landroid/os/Binder;)V

    .line 1351
    return-void
.end method

.method public resetPackageList(Lcom/android/server/am/ProcessStatsService;)V
    .registers 20
    .param p1, "tracker"  # Lcom/android/server/am/ProcessStatsService;

    .line 1285
    move-object/from16 v1, p0

    move-object/from16 v9, p1

    iget-object v10, v9, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 1286
    :try_start_7
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getBaseProcessTracker()Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    move-object v8, v0

    .line 1287
    .local v8, "baseProcessTracker":Lcom/android/internal/app/procstats/ProcessState;
    iget-object v6, v1, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    monitor-enter v6
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_ae

    .line 1288
    :try_start_11
    iget-object v0, v1, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v0}, Lcom/android/server/am/PackageList;->size()I

    move-result v0

    .line 1289
    .local v0, "numOfPkgs":I
    const/4 v2, 0x1

    if-eqz v8, :cond_85

    .line 1290
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    .line 1291
    .local v14, "now":J
    const/4 v12, -0x1

    .line 1292
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->getMemFactorLocked()I

    move-result v13

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v3}, Lcom/android/server/am/PackageList;->getPackageListLocked()Landroid/util/ArrayMap;

    move-result-object v16

    .line 1291
    move-object v11, v8

    invoke-virtual/range {v11 .. v16}, Lcom/android/internal/app/procstats/ProcessState;->setState(IIJLandroid/util/ArrayMap;)V

    .line 1293
    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    new-instance v4, Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda0;

    invoke-direct {v4, v1}, Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessRecord;)V

    invoke-virtual {v3, v4}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/BiConsumer;)V

    .line 1299
    if-eq v0, v2, :cond_81

    .line 1300
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    new-instance v3, Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda1;

    invoke-direct {v3, v8}, Lcom/android/server/am/ProcessRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/internal/app/procstats/ProcessState;)V

    invoke-virtual {v2, v3}, Lcom/android/server/am/PackageList;->forEachPackageProcessStats(Ljava/util/function/Consumer;)V

    .line 1305
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v2}, Lcom/android/server/am/PackageList;->clear()V

    .line 1306
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v3, v3, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v2, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    move-object v11, v2

    .line 1308
    .local v11, "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v5, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v12, v2, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    iget-object v7, v1, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;
    :try_end_60
    .catchall {:try_start_11 .. :try_end_60} :catchall_a6

    move-object/from16 v2, p1

    move-object v3, v11

    move-object/from16 v16, v6

    move-object/from16 v17, v7

    move-wide v6, v12

    move-object v12, v8

    .end local v8  # "baseProcessTracker":Lcom/android/internal/app/procstats/ProcessState;
    .local v12, "baseProcessTracker":Lcom/android/internal/app/procstats/ProcessState;
    move-object/from16 v8, v17

    :try_start_6b
    invoke-virtual/range {v2 .. v8}, Lcom/android/server/am/ProcessStatsService;->updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V

    .line 1310
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v11}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 1311
    iget-object v2, v11, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    if-eq v2, v12, :cond_a2

    .line 1312
    iget-object v2, v11, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    invoke-virtual {v2}, Lcom/android/internal/app/procstats/ProcessState;->makeActive()V

    goto :goto_a2

    .line 1299
    .end local v11  # "holder":Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    .end local v12  # "baseProcessTracker":Lcom/android/internal/app/procstats/ProcessState;
    .restart local v8  # "baseProcessTracker":Lcom/android/internal/app/procstats/ProcessState;
    :cond_81
    move-object/from16 v16, v6

    move-object v12, v8

    .end local v8  # "baseProcessTracker":Lcom/android/internal/app/procstats/ProcessState;
    .restart local v12  # "baseProcessTracker":Lcom/android/internal/app/procstats/ProcessState;
    goto :goto_a2

    .line 1315
    .end local v12  # "baseProcessTracker":Lcom/android/internal/app/procstats/ProcessState;
    .end local v14  # "now":J
    .restart local v8  # "baseProcessTracker":Lcom/android/internal/app/procstats/ProcessState;
    :cond_85
    move-object/from16 v16, v6

    move-object v12, v8

    .end local v8  # "baseProcessTracker":Lcom/android/internal/app/procstats/ProcessState;
    .restart local v12  # "baseProcessTracker":Lcom/android/internal/app/procstats/ProcessState;
    if-eq v0, v2, :cond_a2

    .line 1316
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    invoke-virtual {v2}, Lcom/android/server/am/PackageList;->clear()V

    .line 1317
    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->mPkgList:Lcom/android/server/am/PackageList;

    iget-object v3, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    new-instance v4, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    iget-object v5, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-wide v5, v5, Landroid/content/pm/ApplicationInfo;->longVersionCode:J

    invoke-direct {v4, v5, v6}, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;-><init>(J)V

    invoke-virtual {v2, v3, v4}, Lcom/android/server/am/PackageList;->put(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    goto :goto_a3

    .line 1315
    :cond_a2
    :goto_a2
    nop

    .line 1320
    .end local v0  # "numOfPkgs":I
    :goto_a3
    monitor-exit v16
    :try_end_a4
    .catchall {:try_start_6b .. :try_end_a4} :catchall_ac

    .line 1321
    .end local v12  # "baseProcessTracker":Lcom/android/internal/app/procstats/ProcessState;
    :try_start_a4
    monitor-exit v10
    :try_end_a5
    .catchall {:try_start_a4 .. :try_end_a5} :catchall_ae

    .line 1322
    return-void

    .line 1320
    .restart local v8  # "baseProcessTracker":Lcom/android/internal/app/procstats/ProcessState;
    :catchall_a6
    move-exception v0

    move-object/from16 v16, v6

    move-object v12, v8

    .end local v8  # "baseProcessTracker":Lcom/android/internal/app/procstats/ProcessState;
    .restart local v12  # "baseProcessTracker":Lcom/android/internal/app/procstats/ProcessState;
    :goto_aa
    :try_start_aa
    monitor-exit v16
    :try_end_ab
    .catchall {:try_start_aa .. :try_end_ab} :catchall_ac

    .end local p0  # "this":Lcom/android/server/am/ProcessRecord;
    .end local p1  # "tracker":Lcom/android/server/am/ProcessStatsService;
    :try_start_ab
    throw v0

    .restart local p0  # "this":Lcom/android/server/am/ProcessRecord;
    .restart local p1  # "tracker":Lcom/android/server/am/ProcessStatsService;
    :catchall_ac
    move-exception v0

    goto :goto_aa

    .line 1321
    .end local v12  # "baseProcessTracker":Lcom/android/internal/app/procstats/ProcessState;
    :catchall_ae
    move-exception v0

    monitor-exit v10
    :try_end_b0
    .catchall {:try_start_ab .. :try_end_b0} :catchall_ae

    throw v0
.end method

.method scheduleCrashLocked(Ljava/lang/String;ILandroid/os/Bundle;)V
    .registers 10
    .param p1, "message"  # Ljava/lang/String;
    .param p2, "exceptionTypeId"  # I
    .param p3, "extras"  # Landroid/os/Bundle;

    .line 1101
    iget-boolean v0, p0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    if-nez v0, :cond_4d

    .line 1102
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_4d

    .line 1103
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_19

    .line 1104
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "scheduleCrash: trying to crash system process!"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    return-void

    .line 1107
    :cond_19
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1109
    .local v0, "ident":J
    :try_start_1d
    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    invoke-interface {v2, p1, p2, p3}, Landroid/app/IApplicationThread;->scheduleCrash(Ljava/lang/String;ILandroid/os/Bundle;)V
    :try_end_22
    .catch Landroid/os/RemoteException; {:try_start_1d .. :try_end_22} :catch_28
    .catchall {:try_start_1d .. :try_end_22} :catchall_26

    .line 1116
    :goto_22
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1117
    goto :goto_4d

    .line 1116
    :catchall_26
    move-exception v2

    goto :goto_49

    .line 1110
    :catch_28
    move-exception v2

    .line 1113
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_29
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "scheduleCrash for \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' failed"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x4

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v4, v5}, Lcom/android/server/am/ProcessRecord;->killLocked(Ljava/lang/String;IZ)V
    :try_end_48
    .catchall {:try_start_29 .. :try_end_48} :catchall_26

    .end local v2  # "e":Landroid/os/RemoteException;
    goto :goto_22

    .line 1116
    :goto_49
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1117
    throw v2

    .line 1120
    .end local v0  # "ident":J
    :cond_4d
    :goto_4d
    return-void
.end method

.method setActiveInstrumentation(Lcom/android/server/am/ActiveInstrumentation;)V
    .registers 8
    .param p1, "instr"  # Lcom/android/server/am/ActiveInstrumentation;

    .line 862
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mInstr:Lcom/android/server/am/ActiveInstrumentation;

    .line 863
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_8

    move v2, v0

    goto :goto_9

    :cond_8
    move v2, v1

    .line 864
    .local v2, "isInstrumenting":Z
    :goto_9
    iget-object v3, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    .line 866
    if-eqz v2, :cond_10

    iget v4, p1, Lcom/android/server/am/ActiveInstrumentation;->mSourceUid:I

    goto :goto_11

    :cond_10
    const/4 v4, -0x1

    :goto_11
    if-eqz v2, :cond_18

    iget-boolean v5, p1, Lcom/android/server/am/ActiveInstrumentation;->mHasBackgroundActivityStartsPermission:Z

    if-eqz v5, :cond_18

    goto :goto_19

    :cond_18
    move v0, v1

    .line 864
    :goto_19
    invoke-virtual {v3, v2, v4, v0}, Lcom/android/server/wm/WindowProcessController;->setInstrumenting(ZIZ)V

    .line 868
    return-void
.end method

.method setBindMountPending(Z)V
    .registers 2
    .param p1, "bindMountPending"  # Z

    .line 799
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mBindMountPending:Z

    .line 800
    return-void
.end method

.method setCompat(Landroid/content/res/CompatibilityInfo;)V
    .registers 2
    .param p1, "compat"  # Landroid/content/res/CompatibilityInfo;

    .line 829
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mCompat:Landroid/content/res/CompatibilityInfo;

    .line 830
    return-void
.end method

.method setDeathRecipient(Landroid/os/IBinder$DeathRecipient;)V
    .registers 2
    .param p1, "deathRecipient"  # Landroid/os/IBinder$DeathRecipient;

    .line 852
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 853
    return-void
.end method

.method setDebugging(Z)V
    .registers 3
    .param p1, "debugging"  # Z

    .line 956
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mDebugging:Z

    .line 957
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setDebugging(Z)V

    .line 958
    return-void
.end method

.method setDisabledCompatChanges([J)V
    .registers 2
    .param p1, "disabledCompatChanges"  # [J

    .line 839
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mDisabledCompatChanges:[J

    .line 840
    return-void
.end method

.method setDyingPid(I)V
    .registers 2
    .param p1, "dyingPid"  # I

    .line 682
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mDyingPid:I

    .line 683
    return-void
.end method

.method setGids([I)V
    .registers 2
    .param p1, "gids"  # [I

    .line 692
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mGids:[I

    .line 693
    return-void
.end method

.method setHostingRecord(Lcom/android/server/am/HostingRecord;)V
    .registers 2
    .param p1, "hostingRecord"  # Lcom/android/server/am/HostingRecord;

    .line 750
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 751
    return-void
.end method

.method setInFullBackup(Z)V
    .registers 2
    .param p1, "inFullBackup"  # Z

    .line 1036
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mInFullBackup:Z

    .line 1037
    return-void
.end method

.method setInstructionSet(Ljava/lang/String;)V
    .registers 2
    .param p1, "instructionSet"  # Ljava/lang/String;

    .line 713
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mInstructionSet:Ljava/lang/String;

    .line 714
    return-void
.end method

.method setIsolatedEntryPoint(Ljava/lang/String;)V
    .registers 2
    .param p1, "isolatedEntryPoint"  # Ljava/lang/String;

    .line 1008
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPoint:Ljava/lang/String;

    .line 1009
    return-void
.end method

.method setIsolatedEntryPointArgs([Ljava/lang/String;)V
    .registers 2
    .param p1, "isolatedEntryPointArgs"  # [Ljava/lang/String;

    .line 1018
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mIsolatedEntryPointArgs:[Ljava/lang/String;

    .line 1019
    return-void
.end method

.method setKillTime(J)V
    .registers 3
    .param p1, "killTime"  # J

    .line 904
    iput-wide p1, p0, Lcom/android/server/am/ProcessRecord;->mKillTime:J

    .line 905
    return-void
.end method

.method setKilled(Z)V
    .registers 3
    .param p1, "killed"  # Z

    .line 892
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mKilled:Z

    .line 894
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    invoke-interface {v0, p0}, Lcom/android/server/am/SmartPowerServiceStub;->updateProcess(Lcom/android/server/am/ProcessRecord;)V

    .line 895
    return-void
.end method

.method setKilledByAm(Z)V
    .registers 2
    .param p1, "killedByAm"  # Z

    .line 882
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mKilledByAm:Z

    .line 883
    return-void
.end method

.method setLastActivityTime(J)V
    .registers 3
    .param p1, "lastActivityTime"  # J

    .line 977
    iput-wide p1, p0, Lcom/android/server/am/ProcessRecord;->mLastActivityTime:J

    .line 978
    return-void
.end method

.method setLruSeq(I)V
    .registers 2
    .param p1, "lruSeq"  # I

    .line 998
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mLruSeq:I

    .line 999
    return-void
.end method

.method setMountMode(I)V
    .registers 2
    .param p1, "mountMode"  # I

    .line 791
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mMountMode:I

    .line 792
    return-void
.end method

.method setPendingStart(Z)V
    .registers 2
    .param p1, "pendingStart"  # Z

    .line 732
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mPendingStart:Z

    .line 733
    return-void
.end method

.method public setPendingUiClean(Z)V
    .registers 4
    .param p1, "pendingUiClean"  # Z

    .line 1369
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 1370
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessProfileRecord;->setPendingUiClean(Z)V

    .line 1371
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 1372
    return-void

    .line 1371
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method public setPendingUiCleanAndForceProcessStateUpTo(I)V
    .registers 4
    .param p1, "newState"  # I

    .line 1376
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1377
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessRecord;->setPendingUiClean(Z)V

    .line 1378
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessStateRecord;->forceProcessStateUpTo(I)V

    .line 1379
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1380
    return-void

    .line 1379
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setPersistent(Z)V
    .registers 3
    .param p1, "persistent"  # Z

    .line 717
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mPersistent:Z

    .line 718
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setPersistent(Z)V

    .line 719
    return-void
.end method

.method setPid(I)V
    .registers 4
    .param p1, "pid"  # I

    .line 617
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    .line 618
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setPid(I)V

    .line 619
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mShortStringName:Ljava/lang/String;

    .line 620
    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mStringName:Ljava/lang/String;

    .line 621
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessProfileRecord;->mProfilerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 622
    :try_start_11
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessProfileRecord;->setPid(I)V

    .line 623
    monitor-exit v0

    .line 624
    return-void

    .line 623
    :catchall_18
    move-exception v1

    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_11 .. :try_end_1a} :catchall_18

    throw v1
.end method

.method setPkgDeps(Landroid/util/ArraySet;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 607
    .local p1, "pkgDeps":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mPkgDeps:Landroid/util/ArraySet;

    .line 608
    return-void
.end method

.method setRemoved(Z)V
    .registers 2
    .param p1, "removed"  # Z

    .line 923
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mRemoved:Z

    .line 924
    return-void
.end method

.method setRenderThreadTid(I)V
    .registers 2
    .param p1, "renderThreadTid"  # I

    .line 819
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mRenderThreadTid:I

    .line 820
    return-void
.end method

.method setRequiredAbi(Ljava/lang/String;)V
    .registers 3
    .param p1, "requiredAbi"  # Ljava/lang/String;

    .line 702
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mRequiredAbi:Ljava/lang/String;

    .line 703
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setRequiredAbi(Ljava/lang/String;)V

    .line 704
    return-void
.end method

.method public setRunningRemoteAnimation(Z)V
    .registers 4
    .param p1, "runningRemoteAnimation"  # Z

    .line 1443
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v1

    if-ne v0, v1, :cond_11

    .line 1444
    const-string v0, "ActivityManager"

    const-string/jumbo v1, "system can\'t run remote animation"

    invoke-static {v0, v1}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1445
    return-void

    .line 1447
    :cond_11
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_14
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1448
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mState:Lcom/android/server/am/ProcessStateRecord;

    invoke-virtual {v1, p1}, Lcom/android/server/am/ProcessStateRecord;->setRunningRemoteAnimation(Z)V

    .line 1449
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1450
    return-void

    .line 1449
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setSchedMode(IJ)V
    .registers 11
    .param p1, "mode"  # I
    .param p2, "timeout"  # J

    .line 1024
    invoke-static {}, Lcom/android/server/am/SchedBoostManagerInternalStub;->getInstance()Lcom/android/server/am/SchedBoostManagerInternalStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v2, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    iget v3, p0, Lcom/android/server/am/ProcessRecord;->mRenderThreadTid:I

    move v4, p1

    move-wide v5, p2

    invoke-interface/range {v0 .. v6}, Lcom/android/server/am/SchedBoostManagerInternalStub;->setSchedMode(Ljava/lang/String;IIIJ)V

    .line 1026
    return-void
.end method

.method setSeInfo(Ljava/lang/String;)V
    .registers 2
    .param p1, "seInfo"  # Ljava/lang/String;

    .line 758
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mSeInfo:Ljava/lang/String;

    .line 759
    return-void
.end method

.method setStartParams(ILcom/android/server/am/HostingRecord;Ljava/lang/String;JJ)V
    .registers 8
    .param p1, "startUid"  # I
    .param p2, "hostingRecord"  # Lcom/android/server/am/HostingRecord;
    .param p3, "seInfo"  # Ljava/lang/String;
    .param p4, "startUptime"  # J
    .param p6, "startElapsedTime"  # J

    .line 398
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mStartUid:I

    .line 399
    iput-object p2, p0, Lcom/android/server/am/ProcessRecord;->mHostingRecord:Lcom/android/server/am/HostingRecord;

    .line 400
    iput-object p3, p0, Lcom/android/server/am/ProcessRecord;->mSeInfo:Ljava/lang/String;

    .line 401
    iput-wide p4, p0, Lcom/android/server/am/ProcessRecord;->mStartUptime:J

    .line 402
    iput-wide p6, p0, Lcom/android/server/am/ProcessRecord;->mStartElapsedTime:J

    .line 403
    return-void
.end method

.method setStartSeq(J)V
    .registers 3
    .param p1, "startSeq"  # J

    .line 742
    iput-wide p1, p0, Lcom/android/server/am/ProcessRecord;->mStartSeq:J

    .line 743
    return-void
.end method

.method setStartUid(I)V
    .registers 2
    .param p1, "startUid"  # I

    .line 783
    iput p1, p0, Lcom/android/server/am/ProcessRecord;->mStartUid:I

    .line 784
    return-void
.end method

.method setUidRecord(Lcom/android/server/am/UidRecord;)V
    .registers 2
    .param p1, "uidRecord"  # Lcom/android/server/am/UidRecord;

    .line 586
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mUidRecord:Lcom/android/server/am/UidRecord;

    .line 587
    return-void
.end method

.method setUnlocked(Z)V
    .registers 2
    .param p1, "unlocked"  # Z

    .line 809
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mUnlocked:Z

    .line 810
    return-void
.end method

.method setUsingWrapper(Z)V
    .registers 3
    .param p1, "usingWrapper"  # Z

    .line 987
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mUsingWrapper:Z

    .line 988
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mWindowProcessController:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setUsingWrapper(Z)V

    .line 989
    return-void
.end method

.method setWaitedForDebugger(Z)V
    .registers 2
    .param p1, "waitedForDebugger"  # Z

    .line 967
    iput-boolean p1, p0, Lcom/android/server/am/ProcessRecord;->mWaitedForDebugger:Z

    .line 968
    return-void
.end method

.method setWaitingToKill(Ljava/lang/String;)V
    .registers 2
    .param p1, "waitingToKill"  # Ljava/lang/String;

    .line 914
    iput-object p1, p0, Lcom/android/server/am/ProcessRecord;->mWaitingToKill:Ljava/lang/String;

    .line 915
    return-void
.end method

.method public toShortString()Ljava/lang/String;
    .registers 4

    .line 1206
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mShortStringName:Ljava/lang/String;

    .line 1207
    .local v0, "shortStringName":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 1208
    return-object v0

    .line 1210
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1211
    .local v1, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    .line 1212
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->mShortStringName:Ljava/lang/String;

    return-object v2
.end method

.method toShortString(Ljava/lang/StringBuilder;)V
    .registers 5
    .param p1, "sb"  # Ljava/lang/StringBuilder;

    .line 1216
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->mPid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1217
    const/16 v0, 0x3a

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1218
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1219
    const/16 v0, 0x2f

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1220
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    const/16 v1, 0x2710

    if-ge v0, v1, :cond_22

    .line 1221
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_63

    .line 1223
    :cond_22
    const/16 v0, 0x75

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1224
    iget v0, p0, Lcom/android/server/am/ProcessRecord;->userId:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1225
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    .line 1226
    .local v0, "appId":I
    if-lt v0, v1, :cond_41

    .line 1227
    const/16 v1, 0x61

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1228
    add-int/lit16 v1, v0, -0x2710

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_49

    .line 1230
    :cond_41
    const/16 v1, 0x73

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1231
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1233
    :goto_49
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v1, v2, :cond_63

    .line 1234
    const/16 v1, 0x69

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1235
    iget v1, p0, Lcom/android/server/am/ProcessRecord;->uid:I

    invoke-static {v1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v1

    const v2, 0x182b8

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1238
    .end local v0  # "appId":I
    :cond_63
    :goto_63
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    .line 1241
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mStringName:Ljava/lang/String;

    .line 1242
    .local v0, "stringName":Ljava/lang/String;
    if-eqz v0, :cond_5

    .line 1243
    return-object v0

    .line 1245
    :cond_5
    new-instance v1, Ljava/lang/StringBuilder;

    const/16 v2, 0x80

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1246
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string v2, "ProcessRecord{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1247
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1248
    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1249
    invoke-virtual {p0, v1}, Lcom/android/server/am/ProcessRecord;->toShortString(Ljava/lang/StringBuilder;)V

    .line 1250
    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1251
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/am/ProcessRecord;->mStringName:Ljava/lang/String;

    return-object v2
.end method

.method unlinkDeathRecipient()V
    .registers 4

    .line 844
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    if-eqz v0, :cond_12

    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    if-eqz v0, :cond_12

    .line 845
    invoke-interface {v0}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    .line 847
    :cond_12
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/am/ProcessRecord;->mDeathRecipient:Landroid/os/IBinder$DeathRecipient;

    .line 848
    return-void
.end method

.method public updateProcessInfo(ZZZ)V
    .registers 7
    .param p1, "updateServiceConnectionActivities"  # Z
    .param p2, "activityChange"  # Z
    .param p3, "updateOomAdj"  # Z

    .line 1385
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1386
    if-eqz p1, :cond_11

    .line 1387
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    .line 1389
    :cond_11
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mThread:Landroid/app/IApplicationThread;

    if-nez v1, :cond_1a

    .line 1393
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_3 .. :try_end_16} :catchall_2f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1395
    :cond_1a
    :try_start_1a
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const/4 v2, 0x0

    invoke-virtual {v1, p0, p2, v2}, Lcom/android/server/am/ActivityManagerService;->updateLruProcessLocked(Lcom/android/server/am/ProcessRecord;ZLcom/android/server/am/ProcessRecord;)V

    .line 1396
    if-eqz p3, :cond_2a

    .line 1397
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    const-string/jumbo v2, "updateOomAdj_activityChange"

    invoke-virtual {v1, p0, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    .line 1399
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_1a .. :try_end_2b} :catchall_2f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1400
    return-void

    .line 1399
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public updateServiceConnectionActivities()V
    .registers 4

    .line 1362
    iget-object v0, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForLockedSection()V

    .line 1363
    iget-object v1, p0, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mServices:Lcom/android/server/am/ActiveServices;

    iget-object v2, p0, Lcom/android/server/am/ProcessRecord;->mServices:Lcom/android/server/am/ProcessServiceRecord;

    invoke-virtual {v1, v2}, Lcom/android/server/am/ActiveServices;->updateServiceConnectionActivitiesLocked(Lcom/android/server/am/ProcessServiceRecord;)V

    .line 1364
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    .line 1365
    return-void

    .line 1364
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method
