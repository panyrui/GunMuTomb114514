# classes2.dex

.class public Lcom/android/server/wm/ActivityTaskSupervisor;
.super Ljava/lang/Object;
.source "ActivityTaskSupervisor.java"

# interfaces
.implements Lcom/android/server/wm/RecentTasks$Callbacks;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityTaskSupervisor$PreferredAppsTask;,
        Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;,
        Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;
    }
.end annotation


# static fields
.field private static final ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final ACTIVITY_RESTRICTION_APPOP:I = 0x2

.field private static final ACTIVITY_RESTRICTION_NONE:I = 0x0

.field private static final ACTIVITY_RESTRICTION_PERMISSION:I = 0x1

.field static final DEFER_RESUME:Z = true

.field private static final IDLE_NOW_MSG:I = 0xc9

.field private static final IDLE_TIMEOUT:I

.field private static final IDLE_TIMEOUT_MSG:I = 0xc8

.field private static final LAUNCH_TASK_BEHIND_COMPLETE:I = 0xd4

.field private static final LAUNCH_TIMEOUT:I

.field private static final LAUNCH_TIMEOUT_MSG:I = 0xcc

.field private static final MAX_TASK_IDS_PER_USER:I = 0x186a0

.field static final ON_TOP:Z = true

.field static final PRESERVE_WINDOWS:Z = true

.field private static final PROCESS_STOPPING_AND_FINISHING_MSG:I = 0xcd

.field static final REMOVE_FROM_RECENTS:Z = true

.field private static final REPORT_MULTI_WINDOW_MODE_CHANGED_MSG:I = 0xd6

.field private static final REPORT_PIP_MODE_CHANGED_MSG:I = 0xd7

.field private static final RESTART_ACTIVITY_PROCESS_TIMEOUT_MSG:I = 0xd5

.field private static final RESUME_TOP_ACTIVITY_MSG:I = 0xca

.field private static final SLEEP_TIMEOUT:I

.field private static final SLEEP_TIMEOUT_MSG:I = 0xcb

.field private static final START_HOME_MSG:I = 0xd8

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_IDLE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_PAUSE:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_ROOT_TASK:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TOP_RESUMED_STATE_LOSS_TIMEOUT:I = 0x1f4

.field private static final TOP_RESUMED_STATE_LOSS_TIMEOUT_MSG:I = 0xd9

.field private static final VALIDATE_WAKE_LOCK_CALLER:Z = false

.field public static mIsPerfBoostAcquired:Z

.field public static mPerfHandle:I

.field public static mPerfSendTapHint:Z


# instance fields
.field private mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

.field private final mActivityStateChangedProcs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowProcessController;",
            ">;"
        }
    .end annotation
.end field

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field mAppVisibilitiesChangedSinceLastPause:Z

.field private final mCurTaskIdForUser:Landroid/util/SparseIntArray;

.field private mDeferResumeCount:I

.field private mDeferRootVisibilityUpdate:Z

.field private mDockedRootTaskResizing:Z

.field final mFinishingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

.field private mInitialized:Z

.field private mKeyguardController:Lcom/android/server/wm/KeyguardController;

.field private mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

.field mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

.field mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

.field final mLooper:Landroid/os/Looper;

.field private final mMultiWindowModeChangedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mNoAnimActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field final mNoHistoryActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field public mPerfBoost:Landroid/util/BoostFramework;

.field mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

.field private final mPipModeChangedActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mPipModeChangedTargetRootTaskBounds:Landroid/graphics/Rect;

.field private mPowerManager:Landroid/os/PowerManager;

.field mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field public mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field private mRunningTasks:Lcom/android/server/wm/RunningTasks;

.field final mService:Lcom/android/server/wm/ActivityTaskManagerService;

.field private mServicetracker:Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker;

.field final mStartingUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/am/UserState;",
            ">;"
        }
    .end annotation
.end field

.field final mStoppingActivities:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mSystemChooserActivity:Landroid/content/ComponentName;

.field private mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field private mTopResumedActivityWaitingForPrev:Z

.field mUserLeaving:Z

.field public mUxPerf:Landroid/util/BoostFramework;

.field private mVisibilityTransactionDepth:I

.field private final mWaitingActivityLaunched:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mWindowManager:Lcom/android/server/wm/WindowManagerService;


# direct methods
.method public static synthetic $r8$lambda$N95xFK4M590XmPo73ECsE1k6uL4(Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->addToPipModeChangedList(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method public static synthetic $r8$lambda$YCYSu7VCDmQ9YyepdoIz1eGqcY8(Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/Task;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->processRemoveTask(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method public static synthetic $r8$lambda$szUeF7sHfh6NqWP_QRz8QJk7Eps(Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->addToMultiWindowModeChangedList(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmHandler(Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmMultiWindowModeChangedActivities(Lcom/android/server/wm/ActivityTaskSupervisor;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPipModeChangedActivities(Lcom/android/server/wm/ActivityTaskSupervisor;)Ljava/util/ArrayList;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPipModeChangedTargetRootTaskBounds(Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/graphics/Rect;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPipModeChangedTargetRootTaskBounds:Landroid/graphics/Rect;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mhandleLaunchTaskBehindCompleteLocked(Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityRecord;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleLaunchTaskBehindCompleteLocked(Lcom/android/server/wm/ActivityRecord;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mprocessStoppingAndFinishingActivities(Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->processStoppingAndFinishingActivities(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 3

    .line 197
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0x2710

    sput v0, Lcom/android/server/wm/ActivityTaskSupervisor;->IDLE_TIMEOUT:I

    .line 200
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0x1388

    sput v0, Lcom/android/server/wm/ActivityTaskSupervisor;->SLEEP_TIMEOUT:I

    .line 203
    sget v0, Landroid/os/Build;->HW_TIMEOUT_MULTIPLIER:I

    mul-int/lit16 v0, v0, 0x2710

    sput v0, Lcom/android/server/wm/ActivityTaskSupervisor;->LAUNCH_TIMEOUT:I

    .line 205
    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfSendTapHint:Z

    .line 206
    sput-boolean v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mIsPerfBoostAcquired:Z

    .line 207
    const/4 v0, -0x1

    sput v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfHandle:I

    .line 244
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    sput-object v0, Lcom/android/server/wm/ActivityTaskSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 248
    const-string v1, "android.media.action.IMAGE_CAPTURE"

    const-string v2, "android.permission.CAMERA"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v1, "android.media.action.VIDEO_CAPTURE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v1, "android.intent.action.CALL"

    const-string v2, "android.permission.CALL_PHONE"

    invoke-virtual {v0, v1, v2}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    return-void
.end method

.method public constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V
    .registers 5
    .param p1, "service"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "looper"  # Landroid/os/Looper;

    .line 459
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    .line 209
    new-instance v0, Landroid/util/BoostFramework;

    invoke-direct {v0}, Landroid/util/BoostFramework;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mUxPerf:Landroid/util/BoostFramework;

    .line 297
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    .line 303
    new-instance v0, Landroid/util/SparseIntArray;

    const/16 v1, 0x14

    invoke-direct {v0, v1}, Landroid/util/SparseIntArray;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    .line 306
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    .line 310
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    .line 314
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    .line 321
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    .line 325
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    .line 329
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    .line 335
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    .line 354
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    .line 358
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 460
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 461
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLooper:Landroid/os/Looper;

    .line 462
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    invoke-direct {v0, p0, p2}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    .line 463
    return-void
.end method

.method private addToMultiWindowModeChangedList(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 2529
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 2530
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2532
    :cond_b
    return-void
.end method

.method private addToPipModeChangedList(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 2559
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 2561
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPipModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2565
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mMultiWindowModeChangedActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2566
    return-void
.end method

.method private canPlaceEntityOnDisplay(IIILcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)Z
    .registers 12
    .param p1, "displayId"  # I
    .param p2, "callingPid"  # I
    .param p3, "callingUid"  # I
    .param p4, "task"  # Lcom/android/server/wm/Task;
    .param p5, "activityInfo"  # Landroid/content/pm/ActivityInfo;

    .line 409
    const/4 v0, 0x1

    if-nez p1, :cond_4

    .line 411
    return v0

    .line 413
    :cond_4
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 415
    return v2

    .line 418
    :cond_c
    invoke-virtual {p0, p2, p3, p1, p5}, Lcom/android/server/wm/ActivityTaskSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v1

    if-nez v1, :cond_13

    .line 422
    return v2

    .line 425
    :cond_13
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 426
    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 427
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    if-eqz v1, :cond_44

    iget-object v3, v1, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->hasController()Z

    move-result v3

    if-eqz v3, :cond_44

    .line 428
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 429
    .local v3, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ActivityInfo;>;"
    if-eqz p5, :cond_2d

    .line 430
    invoke-virtual {v3, p5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 432
    :cond_2d
    if-eqz p4, :cond_37

    .line 433
    new-instance v4, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda1;

    invoke-direct {v4, v3}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda1;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p4, v4}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 437
    :cond_37
    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mDwpcHelper:Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;

    .line 438
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getWindowingMode()I

    move-result v5

    .line 437
    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/DisplayWindowPolicyControllerHelper;->canContainActivities(Ljava/util/List;I)Z

    move-result v4

    if-nez v4, :cond_44

    .line 439
    return v2

    .line 443
    .end local v3  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ActivityInfo;>;"
    :cond_44
    return v0
.end method

.method private checkFinishBootingLocked()V
    .registers 5

    .line 1452
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    .line 1453
    .local v0, "booting":Z
    const/4 v1, 0x0

    .line 1454
    .local v1, "enableScreen":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setBooting(Z)V

    .line 1455
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v2

    if-nez v2, :cond_1c

    .line 1456
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setBooted(Z)V

    .line 1457
    const/4 v1, 0x1

    .line 1459
    :cond_1c
    if-nez v0, :cond_20

    if-eqz v1, :cond_25

    .line 1460
    :cond_20
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->postFinishBooting(ZZ)V

    .line 1462
    :cond_25
    return-void
.end method

.method static dumpHistoryList(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z
    .registers 32
    .param p0, "fd"  # Ljava/io/FileDescriptor;
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p3, "prefix"  # Ljava/lang/String;
    .param p4, "label"  # Ljava/lang/String;
    .param p5, "complete"  # Z
    .param p6, "brief"  # Z
    .param p7, "client"  # Z
    .param p8, "dumpPackage"  # Ljava/lang/String;
    .param p9, "needNL"  # Z
    .param p10, "header"  # Ljava/lang/Runnable;
    .param p11, "lastTask"  # Lcom/android/server/wm/Task;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/FileDescriptor;",
            "Ljava/io/PrintWriter;",
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "ZZZ",
            "Ljava/lang/String;",
            "Z",
            "Ljava/lang/Runnable;",
            "Lcom/android/server/wm/Task;",
            ")Z"
        }
    .end annotation

    .line 2293
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v0, 0x0

    .line 2294
    .local v0, "printed":Z
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    move-object/from16 v16, p10

    move-object/from16 v17, p11

    move v15, v1

    move/from16 v1, p9

    .end local p9  # "needNL":Z
    .end local p10  # "header":Ljava/lang/Runnable;
    .end local p11  # "lastTask":Lcom/android/server/wm/Task;
    .local v1, "needNL":Z
    .local v15, "i":I
    .local v16, "header":Ljava/lang/Runnable;
    .local v17, "lastTask":Lcom/android/server/wm/Task;
    :goto_e
    if-ltz v15, :cond_4c

    .line 2295
    move-object/from16 v14, p2

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Lcom/android/server/wm/ActivityRecord;

    .line 2296
    .local v18, "r":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move v5, v15

    move-object/from16 v6, v18

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    move-object/from16 v12, p8

    move v13, v1

    move-object/from16 v14, v16

    move/from16 v19, v15

    .end local v15  # "i":I
    .local v19, "i":I
    move-object/from16 v15, v17

    invoke-static/range {v3 .. v15}, Lcom/android/server/wm/ActivityRecord;->dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z

    .line 2298
    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v17

    .line 2299
    const/16 v16, 0x0

    .line 2300
    if-eqz p7, :cond_47

    invoke-virtual/range {v18 .. v18}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v3

    if-eqz v3, :cond_47

    move v3, v2

    goto :goto_48

    :cond_47
    const/4 v3, 0x0

    :goto_48
    move v1, v3

    .line 2294
    .end local v18  # "r":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v15, v19, -0x1

    .end local v19  # "i":I
    .restart local v15  # "i":I
    goto :goto_e

    .line 2302
    .end local v15  # "i":I
    :cond_4c
    return v0
.end method

.method private getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;)I
    .registers 23
    .param p1, "action"  # Ljava/lang/String;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "callingFeatureId"  # Ljava/lang/String;
    .param p4, "callingPid"  # I
    .param p5, "callingUid"  # I
    .param p6, "checker"  # Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;

    .line 1371
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v9, p2

    const/4 v10, 0x0

    if-nez v2, :cond_a

    .line 1372
    return v10

    .line 1375
    :cond_a
    sget-object v0, Lcom/android/server/wm/ActivityTaskSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    invoke-virtual {v0, v2}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v11, v0

    check-cast v11, Ljava/lang/String;

    .line 1376
    .local v11, "permission":Ljava/lang/String;
    if-nez v11, :cond_16

    .line 1377
    return v10

    .line 1382
    :cond_16
    :try_start_16
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const/16 v3, 0x1000

    .line 1384
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 1383
    invoke-virtual {v0, v9, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfoAsUser(Ljava/lang/String;II)Landroid/content/pm/PackageInfo;

    move-result-object v0
    :try_end_28
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_16 .. :try_end_28} :catch_8e

    .line 1388
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    nop

    .line 1390
    iget-object v3, v0, Landroid/content/pm/PackageInfo;->requestedPermissions:[Ljava/lang/String;

    invoke-static {v3, v11}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_32

    .line 1391
    return v10

    .line 1394
    :cond_32
    move/from16 v12, p4

    move/from16 v13, p5

    invoke-static {v11, v12, v13}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    const/4 v14, 0x1

    const/4 v4, -0x1

    if-ne v3, v4, :cond_3f

    .line 1395
    return v14

    .line 1398
    :cond_3f
    invoke-static {v11}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v15

    .line 1399
    .local v15, "opCode":I
    if-ne v15, v4, :cond_46

    .line 1400
    return v10

    .line 1406
    :cond_46
    invoke-static {}, Lcom/android/server/wm/ActivityTaskSupervisorStub;->get()Lcom/android/server/wm/ActivityTaskSupervisorStub;

    move-result-object v3

    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    move v4, v15

    move/from16 v5, p5

    move-object/from16 v6, p2

    move-object/from16 v8, p6

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityTaskSupervisorStub;->noteOperationLocked(IILjava/lang/String;Landroid/os/Handler;Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;)I

    move-result v3

    if-eqz v3, :cond_8d

    .line 1408
    const-string v3, "android.permission.CAMERA"

    invoke-virtual {v3, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_8b

    .line 1409
    const-class v3, Landroid/hardware/SensorPrivacyManagerInternal;

    .line 1410
    invoke-static {v3}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/hardware/SensorPrivacyManagerInternal;

    .line 1412
    .local v3, "spmi":Landroid/hardware/SensorPrivacyManagerInternal;
    invoke-static/range {p5 .. p5}, Landroid/os/UserHandle;->getUserHandleForUid(I)Landroid/os/UserHandle;

    move-result-object v5

    .line 1413
    .local v5, "user":Landroid/os/UserHandle;
    nop

    .line 1414
    invoke-virtual {v5}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v6

    .line 1413
    invoke-virtual {v3, v6, v4}, Landroid/hardware/SensorPrivacyManagerInternal;->isSensorPrivacyEnabled(II)Z

    move-result v6

    .line 1415
    .local v6, "cameraPrivacyEnabled":Z
    if-eqz v6, :cond_8b

    .line 1416
    const-class v7, Landroid/app/AppOpsManagerInternal;

    invoke-static {v7}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AppOpsManagerInternal;

    .line 1418
    .local v7, "aomi":Landroid/app/AppOpsManagerInternal;
    const/16 v8, 0x1a

    const/4 v4, 0x0

    invoke-virtual {v7, v8, v5, v9, v4}, Landroid/app/AppOpsManagerInternal;->getOpRestrictionCount(ILandroid/os/UserHandle;Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 1420
    .local v4, "numCameraRestrictions":I
    if-ne v4, v14, :cond_8b

    .line 1422
    return v10

    .line 1426
    .end local v3  # "spmi":Landroid/hardware/SensorPrivacyManagerInternal;
    .end local v4  # "numCameraRestrictions":I
    .end local v5  # "user":Landroid/os/UserHandle;
    .end local v6  # "cameraPrivacyEnabled":Z
    .end local v7  # "aomi":Landroid/app/AppOpsManagerInternal;
    :cond_8b
    const/4 v3, 0x2

    return v3

    .line 1429
    :cond_8d
    return v10

    .line 1385
    .end local v0  # "packageInfo":Landroid/content/pm/PackageInfo;
    .end local v15  # "opCode":I
    :catch_8e
    move-exception v0

    move/from16 v12, p4

    move/from16 v13, p5

    .line 1386
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot find package info for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1387
    return v10
.end method

.method private getAppOpsManager()Landroid/app/AppOpsManager;
    .registers 3

    .line 1329
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_12

    .line 1330
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1332
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method private getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;Ljava/lang/String;IIZ)I
    .registers 16
    .param p1, "activityInfo"  # Landroid/content/pm/ActivityInfo;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "callingFeatureId"  # Ljava/lang/String;
    .param p4, "callingPid"  # I
    .param p5, "callingUid"  # I
    .param p6, "ignoreTargetSecurity"  # Z

    .line 1338
    const/4 v0, -0x1

    if-nez p6, :cond_13

    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    iget-object v2, p1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v2, v2, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v3, p1, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v1, p4, p5, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v1

    if-ne v1, v0, :cond_13

    .line 1341
    const/4 v0, 0x1

    return v0

    .line 1344
    :cond_13
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    const/4 v2, 0x0

    if-nez v1, :cond_19

    .line 1345
    return v2

    .line 1348
    :cond_19
    iget-object v1, p1, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-static {v1}, Landroid/app/AppOpsManager;->permissionToOpCode(Ljava/lang/String;)I

    move-result v1

    .line 1349
    .local v1, "opCode":I
    if-ne v1, v0, :cond_22

    .line 1350
    return v2

    .line 1353
    :cond_22
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v3

    const-string v8, "NoAskNoRecord"

    move v4, v1

    move v5, p5

    move-object v6, p2

    move-object v7, p3

    invoke-virtual/range {v3 .. v8}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_36

    .line 1357
    if-nez p6, :cond_36

    .line 1358
    const/4 v0, 0x2

    return v0

    .line 1362
    :cond_36
    return v2
.end method

.method private handleForcedResizableTaskIfNeeded(Lcom/android/server/wm/Task;I)V
    .registers 7
    .param p1, "task"  # Lcom/android/server/wm/Task;
    .param p2, "reason"  # I

    .line 2505
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2506
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_2e

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v1, :cond_2e

    .line 2507
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->canForceResizeNonResizable(I)Z

    move-result v1

    if-eqz v1, :cond_2e

    .line 2509
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-ne v1, v2, :cond_1c

    goto :goto_2e

    .line 2512
    :cond_1c
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    iget v2, p1, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2, p2, v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 2514
    return-void

    .line 2510
    :cond_2e
    :goto_2e
    return-void
.end method

.method private handleLaunchTaskBehindCompleteLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 2136
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2137
    .local v0, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2139
    .local v1, "rootTask":Lcom/android/server/wm/Task;
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 2140
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 2141
    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v3}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2145
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2146
    .local v2, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_28

    .line 2147
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->touchActiveTime()V

    .line 2149
    :cond_28
    return-void
.end method

.method static synthetic lambda$canPlaceEntityOnDisplay$0(Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p0, "activities"  # Ljava/util/ArrayList;
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 434
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 435
    return-void
.end method

.method private logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V
    .registers 7
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "icicle"  # Landroid/os/Bundle;

    .line 1102
    const/4 v0, 0x0

    .line 1103
    .local v0, "extrasSize":I
    if-eqz p1, :cond_d

    .line 1104
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    .line 1105
    .local v1, "extras":Landroid/os/Bundle;
    if-eqz v1, :cond_d

    .line 1106
    invoke-virtual {v1}, Landroid/os/Bundle;->getSize()I

    move-result v0

    .line 1109
    .end local v1  # "extras":Landroid/os/Bundle;
    :cond_d
    if-nez p2, :cond_11

    const/4 v1, 0x0

    goto :goto_15

    :cond_11
    invoke-virtual {p2}, Landroid/os/Bundle;->getSize()I

    move-result v1

    .line 1110
    .local v1, "icicleSize":I
    :goto_15
    add-int v2, v0, v1

    const v3, 0x30d40

    if-le v2, v3, :cond_48

    .line 1111
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Transaction too large, intent: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", extras size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", icicle size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1114
    :cond_48
    return-void
.end method

.method private moveHomeRootTaskToFrontIfNeeded(ILcom/android/server/wm/TaskDisplayArea;Ljava/lang/String;)V
    .registers 7
    .param p1, "flags"  # I
    .param p2, "taskDisplayArea"  # Lcom/android/server/wm/TaskDisplayArea;
    .param p3, "reason"  # Ljava/lang/String;

    .line 1621
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1623
    .local v0, "focusedRootTask":Lcom/android/server/wm/Task;
    invoke-virtual {p2}, Lcom/android/server/wm/TaskDisplayArea;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_f

    and-int/lit8 v1, p1, 0x1

    if-nez v1, :cond_17

    :cond_f
    if-eqz v0, :cond_1a

    .line 1625
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isActivityTypeRecents()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1629
    :cond_17
    invoke-virtual {p2, p3}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    .line 1631
    :cond_1a
    return-void
.end method

.method private static nextTaskIdForUser(II)I
    .registers 5
    .param p0, "taskId"  # I
    .param p1, "userId"  # I

    .line 599
    add-int/lit8 v0, p0, 0x1

    .line 600
    .local v0, "nextTaskId":I
    add-int/lit8 v1, p1, 0x1

    const v2, 0x186a0

    mul-int/2addr v1, v2

    if-ne v0, v1, :cond_b

    .line 602
    sub-int/2addr v0, v2

    .line 604
    :cond_b
    return v0
.end method

.method static printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z
    .registers 7
    .param p0, "pw"  # Ljava/io/PrintWriter;
    .param p1, "activity"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "dumpPackage"  # Ljava/lang/String;
    .param p3, "needSep"  # Z
    .param p4, "prefix"  # Ljava/lang/String;
    .param p5, "header"  # Ljava/lang/Runnable;

    .line 2274
    if-eqz p1, :cond_1e

    .line 2275
    if-eqz p2, :cond_c

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 2276
    :cond_c
    if-eqz p3, :cond_11

    .line 2277
    invoke-virtual {p0}, Ljava/io/PrintWriter;->println()V

    .line 2279
    :cond_11
    if-eqz p5, :cond_16

    .line 2280
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 2282
    :cond_16
    invoke-virtual {p0, p4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2283
    invoke-virtual {p0, p1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2284
    const/4 v0, 0x1

    return v0

    .line 2287
    :cond_1e
    const/4 v0, 0x0

    return v0
.end method

.method private processRemoveTask(Lcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "task"  # Lcom/android/server/wm/Task;

    .line 1707
    const/4 v0, 0x1

    const-string/jumbo v1, "remove-root-task"

    invoke-virtual {p0, p1, v0, v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    .line 1708
    return-void
.end method

.method private processStoppingAndFinishingActivities(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V
    .registers 22
    .param p1, "launchedActivity"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "processPausingActivities"  # Z
    .param p3, "reason"  # Ljava/lang/String;

    .line 2163
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    const/4 v2, 0x0

    .line 2164
    .local v2, "readyToStopActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    const/4 v4, 0x1

    sub-int/2addr v3, v4

    .local v3, "i":I
    :goto_d
    const/4 v5, 0x0

    if-ltz v3, :cond_9f

    .line 2165
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/ActivityRecord;

    .line 2166
    .local v6, "s":Lcom/android/server/wm/ActivityRecord;
    const/16 v7, 0x9

    const/4 v8, 0x3

    invoke-virtual {v6, v8, v7}, Lcom/android/server/wm/ActivityRecord;->isAnimating(II)Z

    move-result v7

    if-nez v7, :cond_2a

    .line 2168
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->inTransition()Z

    move-result v7

    if-eqz v7, :cond_28

    goto :goto_2a

    :cond_28
    move v7, v5

    goto :goto_2b

    :cond_2a
    :goto_2a
    move v7, v4

    .line 2169
    .local v7, "animating":Z
    :goto_2b
    sget-boolean v9, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v9, :cond_5c

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .local v9, "protoLogParam0":Ljava/lang/String;
    iget-boolean v11, v6, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    .local v11, "protoLogParam1":Z
    move v12, v7

    .local v12, "protoLogParam2":Z
    iget-boolean v13, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    invoke-static {v13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v13

    .local v13, "protoLogParam3":Ljava/lang/String;
    sget-object v14, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v15, -0x67be1ed4

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v9, v10, v5

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v10, v4

    const/16 v16, 0x2

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v10, v16

    aput-object v13, v10, v8

    const/4 v5, 0x0

    const/16 v8, 0x3c

    invoke-static {v14, v15, v8, v5, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2171
    .end local v9  # "protoLogParam0":Ljava/lang/String;
    .end local v11  # "protoLogParam1":Z
    .end local v12  # "protoLogParam2":Z
    .end local v13  # "protoLogParam3":Ljava/lang/String;
    :cond_5c
    if-eqz v7, :cond_64

    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-eqz v5, :cond_9b

    .line 2172
    :cond_64
    if-nez p2, :cond_75

    sget-object v5, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v5

    if-eqz v5, :cond_75

    .line 2175
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeIdleTimeoutForActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 2176
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdleTimeout(Lcom/android/server/wm/ActivityRecord;)V

    .line 2177
    goto :goto_9b

    .line 2180
    :cond_75
    sget-boolean v5, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v5, :cond_8b

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam0":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x65c46946

    new-array v10, v4, [Ljava/lang/Object;

    const/4 v11, 0x0

    aput-object v5, v10, v11

    const/4 v12, 0x0

    invoke-static {v8, v9, v11, v12, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2181
    .end local v5  # "protoLogParam0":Ljava/lang/String;
    :cond_8b
    if-nez v2, :cond_93

    .line 2182
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 2184
    :cond_93
    invoke-virtual {v2, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2186
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2164
    .end local v6  # "s":Lcom/android/server/wm/ActivityRecord;
    .end local v7  # "animating":Z
    :cond_9b
    :goto_9b
    add-int/lit8 v3, v3, -0x1

    goto/16 :goto_d

    :cond_9f
    move v11, v5

    .line 2190
    .end local v3  # "i":I
    if-nez v2, :cond_a4

    move v5, v11

    goto :goto_a8

    :cond_a4
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v5

    :goto_a8
    move v3, v5

    .line 2191
    .local v3, "numReadyStops":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_aa
    if-ge v4, v3, :cond_ea

    .line 2192
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/ActivityRecord;

    .line 2193
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isInHistory()Z

    move-result v6

    if-eqz v6, :cond_e7

    .line 2194
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_c0

    .line 2196
    invoke-virtual {v5, v1}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    goto :goto_e7

    .line 2200
    :cond_c0
    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->mIsCastMode:Z

    if-nez v6, :cond_cd

    iget-boolean v6, v5, Lcom/android/server/wm/ActivityRecord;->mIsHoldOn:Z

    if-eqz v6, :cond_c9

    goto :goto_cd

    .line 2203
    :cond_c9
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->stopIfPossible()V

    goto :goto_e7

    .line 2201
    :cond_cd
    :goto_cd
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "current activity should not stop, activity:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const-string v7, "ActivityTaskManager"

    invoke-static {v7, v6}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2191
    .end local v5  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_e7
    :goto_e7
    add-int/lit8 v4, v4, 0x1

    goto :goto_aa

    .line 2210
    .end local v4  # "i":I
    :cond_ea
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 2211
    .local v4, "numFinishingActivities":I
    if-nez v4, :cond_f3

    .line 2212
    return-void

    .line 2217
    :cond_f3
    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2218
    .local v5, "finishingActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 2219
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_100
    if-ge v6, v4, :cond_127

    .line 2220
    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    .line 2221
    .local v7, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->isInHistory()Z

    move-result v8

    if-eqz v8, :cond_124

    .line 2222
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "finish-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/android/server/wm/ActivityRecord;->destroyImmediately(Ljava/lang/String;)Z

    .line 2219
    .end local v7  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_124
    add-int/lit8 v6, v6, 0x1

    goto :goto_100

    .line 2225
    .end local v6  # "i":I
    :cond_127
    return-void
.end method

.method private removeHistoryRecords(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V
    .registers 9
    .param p2, "app"  # Lcom/android/server/wm/WindowProcessController;
    .param p3, "listName"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;",
            "Lcom/android/server/wm/WindowProcessController;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 2235
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 2236
    .local v0, "i":I
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    const-string v2, "ActivityTaskManager"

    if-eqz v1, :cond_3a

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Removing app "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " from list "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " with "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " entries"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2238
    :cond_3a
    :goto_3a
    if-lez v0, :cond_7c

    .line 2239
    add-int/lit8 v0, v0, -0x1

    .line 2240
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    .line 2241
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v3, :cond_68

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Record #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2242
    :cond_68
    iget-object v3, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v3, p2, :cond_7b

    .line 2243
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_CLEANUP:Z

    if-eqz v3, :cond_75

    const-string v3, "---> REMOVING this entry!"

    invoke-static {v2, v3}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2244
    :cond_75
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 2245
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->removeTimeouts()V

    .line 2247
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_7b
    goto :goto_3a

    .line 2248
    :cond_7c
    return-void
.end method

.method private removePinnedRootTaskInSurfaceTransaction(Lcom/android/server/wm/Task;)V
    .registers 8
    .param p1, "rootTask"  # Lcom/android/server/wm/Task;

    .line 1667
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->cancelAnimation()V

    .line 1668
    const/4 v0, 0x1

    invoke-virtual {p1, v0, v0}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    .line 1669
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1670
    invoke-virtual {p0, v1, v2, v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->activityIdleInternal(Lcom/android/server/wm/ActivityRecord;ZZLandroid/content/res/Configuration;)V

    .line 1674
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1675
    invoke-virtual {v3, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 1677
    .local v3, "toDisplay":Lcom/android/server/wm/DisplayContent;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 1679
    :try_start_1a
    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 1680
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x5

    if-eq v4, v5, :cond_27

    .line 1681
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 1683
    :cond_27
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/android/server/wm/TaskDisplayArea;->positionTaskBehindHome(Lcom/android/server/wm/Task;)V

    .line 1687
    invoke-virtual {p1, v0, v2}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    .line 1688
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v1, v2, v0}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1689
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z
    :try_end_3b
    .catchall {:try_start_1a .. :try_end_3b} :catchall_42

    .line 1691
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1692
    nop

    .line 1693
    return-void

    .line 1691
    :catchall_42
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1692
    throw v0
.end method

.method private removeRootTaskInSurfaceTransaction(Lcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "rootTask"  # Lcom/android/server/wm/Task;

    .line 1696
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_b

    .line 1697
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removePinnedRootTaskInSurfaceTransaction(Lcom/android/server/wm/Task;)V

    goto :goto_21

    .line 1699
    :cond_b
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda0;-><init>()V

    const-class v1, Lcom/android/server/wm/Task;

    .line 1700
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 1699
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 1701
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 1702
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 1704
    .end local v0  # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :goto_21
    return-void
.end method

.method private scheduleStartHome(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"  # Ljava/lang/String;

    .line 1096
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v1, 0xd8

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_13

    .line 1097
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 1099
    :cond_13
    return-void
.end method

.method private scheduleTopResumedActivityStateIfNeeded()V
    .registers 3

    .line 2374
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_c

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivityWaitingForPrev:Z

    if-nez v1, :cond_c

    .line 2375
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->scheduleTopResumedActivityChanged(Z)Z

    .line 2377
    :cond_c
    return-void
.end method

.method private scheduleTopResumedStateLossTimeout(Lcom/android/server/wm/ActivityRecord;)V
    .registers 9
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 2383
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v1, 0xd9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 2384
    .local v0, "msg":Landroid/os/Message;
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 2385
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p1, Lcom/android/server/wm/ActivityRecord;->topResumedStateLossTime:J

    .line 2386
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const-wide/16 v2, 0x1f4

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2387
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_2e

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x476ab3e

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2388
    .end local v1  # "protoLogParam0":Ljava/lang/String;
    :cond_2e
    return-void
.end method


# virtual methods
.method acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V
    .registers 33
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 2015
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v2, :cond_158

    .line 2017
    const/16 v3, 0x1601

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v2, v3, v4}, Landroid/util/BoostFramework;->perfGetFeedback(ILjava/lang/String;)I

    move-result v2

    .line 2019
    .local v2, "pkgType":I
    const/4 v3, -0x1

    .line 2020
    .local v3, "wpcPid":I
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v4, :cond_3b

    if-eqz v1, :cond_3b

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    if-eqz v4, :cond_3b

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_3b

    .line 2021
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2022
    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    .line 2023
    .local v4, "wpc":Lcom/android/server/wm/WindowProcessController;
    if-eqz v4, :cond_3b

    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v5

    if-eqz v5, :cond_3b

    .line 2025
    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v3

    .line 2028
    .end local v4  # "wpc":Lcom/android/server/wm/WindowProcessController;
    :cond_3b
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    invoke-virtual {v4}, Landroid/util/BoostFramework;->getPerfHalVersion()D

    move-result-wide v4

    const-wide v6, 0x4002666660000000L  # 2.299999952316284

    cmpl-double v4, v4, v6

    const/4 v13, 0x0

    const/4 v14, -0x1

    const/4 v15, 0x2

    const/4 v12, 0x1

    if-ltz v4, :cond_de

    .line 2029
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v17, -0x1

    const/16 v18, 0x1081

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v20, -0x1

    const/16 v21, 0x1

    const/16 v22, 0x2

    new-array v6, v15, [I

    aput v2, v6, v13

    aput v3, v6, v12

    move-object/from16 v16, v4

    move-object/from16 v19, v5

    move-object/from16 v23, v6

    invoke-virtual/range {v16 .. v23}, Landroid/util/BoostFramework;->perfHintAcqRel(IILjava/lang/String;III[I)I

    .line 2031
    sput-boolean v12, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfSendTapHint:Z

    .line 2032
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v24, -0x1

    const/16 v25, 0x1081

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v27, -0x1

    const/16 v28, 0x2

    const/16 v29, 0x2

    new-array v6, v15, [I

    aput v2, v6, v13

    aput v3, v6, v12

    move-object/from16 v23, v4

    move-object/from16 v26, v5

    move-object/from16 v30, v6

    invoke-virtual/range {v23 .. v30}, Landroid/util/BoostFramework;->perfHintAcqRel(IILjava/lang/String;III[I)I

    .line 2034
    if-eq v3, v14, :cond_a3

    .line 2035
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    const/4 v6, -0x1

    const/16 v7, 0x1081

    iget-object v8, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v10, 0x67

    const/4 v11, 0x2

    new-array v4, v15, [I

    aput v2, v4, v13

    aput v3, v4, v12

    move v9, v3

    move v14, v12

    move-object v12, v4

    invoke-virtual/range {v5 .. v12}, Landroid/util/BoostFramework;->perfHintAcqRel(IILjava/lang/String;III[I)I

    goto :goto_a4

    .line 2034
    :cond_a3
    move v14, v12

    .line 2040
    :goto_a4
    if-ne v2, v15, :cond_c7

    .line 2042
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v18, -0x1

    const/16 v19, 0x1081

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v21, -0x1

    const/16 v22, 0x4

    const/16 v23, 0x2

    new-array v6, v15, [I

    aput v2, v6, v13

    aput v3, v6, v14

    .line 2043
    move-object/from16 v17, v4

    move-object/from16 v20, v5

    move-object/from16 v24, v6

    invoke-virtual/range {v17 .. v24}, Landroid/util/BoostFramework;->perfHintAcqRel(IILjava/lang/String;III[I)I

    move-result v4

    sput v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfHandle:I

    goto :goto_118

    .line 2046
    :cond_c7
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    const/4 v6, -0x1

    const/16 v7, 0x1081

    iget-object v8, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v9, -0x1

    const/4 v10, 0x3

    const/4 v11, 0x2

    new-array v12, v15, [I

    aput v2, v12, v13

    aput v3, v12, v14

    .line 2047
    invoke-virtual/range {v5 .. v12}, Landroid/util/BoostFramework;->perfHintAcqRel(IILjava/lang/String;III[I)I

    move-result v4

    sput v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfHandle:I

    goto :goto_118

    .line 2052
    :cond_de
    move v14, v12

    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v6, 0x1081

    const/4 v7, -0x1

    invoke-virtual {v4, v6, v5, v7, v14}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 2054
    sput-boolean v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfSendTapHint:Z

    .line 2055
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v6, v5, v7, v15}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 2057
    if-eq v3, v7, :cond_fd

    .line 2058
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/16 v7, 0x67

    invoke-virtual {v4, v6, v5, v3, v7}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 2062
    :cond_fd
    if-ne v2, v15, :cond_10c

    .line 2064
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v7, 0x4

    const/4 v8, -0x1

    invoke-virtual {v4, v6, v5, v8, v7}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v4

    sput v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfHandle:I

    goto :goto_118

    .line 2067
    :cond_10c
    const/4 v8, -0x1

    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v7, 0x3

    invoke-virtual {v4, v6, v5, v8, v7}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    move-result v4

    sput v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfHandle:I

    .line 2071
    :goto_118
    sget v4, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfHandle:I

    if-lez v4, :cond_11e

    .line 2072
    sput-boolean v14, Lcom/android/server/wm/ActivityTaskSupervisor;->mIsPerfBoostAcquired:Z

    .line 2074
    :cond_11e
    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v4, :cond_158

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    if-eqz v4, :cond_158

    .line 2075
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget v4, v4, Landroid/util/BoostFramework;->board_first_api_lvl:I

    const/16 v5, 0x21

    if-ge v4, v5, :cond_158

    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget v4, v4, Landroid/util/BoostFramework;->board_api_lvl:I

    if-ge v4, v5, :cond_158

    .line 2077
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    iget-object v5, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v6, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v6, v6, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    iget-object v7, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v7, v7, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v7, v7, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    const/16 v8, 0x2f

    .line 2078
    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    invoke-virtual {v6, v13, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 2077
    const/4 v7, -0x1

    invoke-virtual {v4, v7, v5, v6}, Landroid/util/BoostFramework;->perfIOPrefetchStart(ILjava/lang/String;Ljava/lang/String;)I

    .line 2082
    .end local v2  # "pkgType":I
    .end local v3  # "wpcPid":I
    :cond_158
    return-void
.end method

.method acquireLaunchWakelock()V
    .registers 5

    .line 1440
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1441
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_17

    .line 1443
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    sget v2, Lcom/android/server/wm/ActivityTaskSupervisor;->LAUNCH_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 1445
    :cond_17
    return-void
.end method

.method activityIdleInternal(Lcom/android/server/wm/ActivityRecord;ZZLandroid/content/res/Configuration;)V
    .registers 16
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "fromTimeout"  # Z
    .param p3, "processPausingActivities"  # Z
    .param p4, "config"  # Landroid/content/res/Configuration;

    .line 1468
    const-string v0, "ActivityTaskManager"

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_61

    .line 1469
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v3, :cond_25

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "activityIdleInternal: Callers="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x4

    .line 1470
    invoke-static {v4}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1469
    invoke-static {v0, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1471
    :cond_25
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v4, 0xc8

    invoke-virtual {v3, v4, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 1472
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->finishLaunchTickingLocked()V

    .line 1473
    if-eqz p2, :cond_3a

    .line 1474
    const-wide/16 v8, -0x1

    const/4 v10, -0x1

    move-object v5, p0

    move v6, p2

    move-object v7, p1

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->reportActivityLaunched(ZLcom/android/server/wm/ActivityRecord;JI)V

    .line 1482
    :cond_3a
    if-eqz p4, :cond_3f

    .line 1483
    invoke-virtual {p1, p4}, Lcom/android/server/wm/ActivityRecord;->setLastReportedGlobalConfiguration(Landroid/content/res/Configuration;)V

    .line 1488
    :cond_3f
    iput-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->idle:Z

    .line 1492
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v3

    if-eqz v3, :cond_51

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->allResumedActivitiesIdle()Z

    move-result v3

    if-nez v3, :cond_53

    :cond_51
    if-eqz p2, :cond_56

    .line 1494
    :cond_53
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkFinishBootingLocked()V

    .line 1498
    :cond_56
    invoke-static {}, Lcom/android/server/wm/ActivityStarterStub;->get()Lcom/android/server/wm/ActivityStarterStub;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStarterStub;->activityIdle(Landroid/content/pm/ActivityInfo;)V

    .line 1502
    iput v2, p1, Lcom/android/server/wm/ActivityRecord;->mRelaunchReason:I

    .line 1505
    :cond_61
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->allResumedActivitiesIdle()Z

    move-result v3

    if-eqz v3, :cond_8f

    .line 1506
    if-eqz p1, :cond_75

    .line 1507
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->scheduleAppGcsLocked()V

    .line 1508
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RecentTasks;->onActivityIdle(Lcom/android/server/wm/ActivityRecord;)V

    .line 1511
    :cond_75
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v3

    if-eqz v3, :cond_89

    .line 1512
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v4, 0xcc

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->removeMessages(I)V

    .line 1517
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v3}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1519
    :cond_89
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, v4, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1523
    :cond_8f
    const-string v3, "idle"

    invoke-direct {p0, p1, p3, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->processStoppingAndFinishingActivities(Lcom/android/server/wm/ActivityRecord;ZLjava/lang/String;)V

    .line 1525
    sget-boolean v3, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v3, :cond_a6

    .line 1526
    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    aput-object p1, v3, v2

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    aput-object v4, v3, v1

    const-string v4, "activityIdleInternal(): r=%s, mStartingUsers=%s"

    invoke-static {v0, v4, v3}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1529
    :cond_a6
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_e4

    .line 1530
    new-instance v3, Ljava/util/ArrayList;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1531
    .local v3, "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStartingUsers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1533
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_bb
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v4, v5, :cond_e4

    .line 1534
    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/am/UserState;

    .line 1535
    .local v5, "userState":Lcom/android/server/am/UserState;
    new-array v6, v1, [Ljava/lang/Object;

    iget-object v7, v5, Lcom/android/server/am/UserState;->mHandle:Landroid/os/UserHandle;

    invoke-virtual {v7}, Landroid/os/UserHandle;->getIdentifier()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v2

    const-string v7, "finishing switch of user %d"

    invoke-static {v0, v7, v6}, Lcom/android/server/utils/Slogf;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1536
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v6, v5}, Landroid/app/ActivityManagerInternal;->finishUserSwitch(Ljava/lang/Object;)V

    .line 1533
    .end local v5  # "userState":Lcom/android/server/am/UserState;
    add-int/lit8 v4, v4, 0x1

    goto :goto_bb

    .line 1540
    .end local v3  # "startingUsers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/am/UserState;>;"
    .end local v4  # "i":I
    :cond_e4
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda7;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda7;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 1541
    return-void
.end method

.method beginActivityVisibilityUpdate()V
    .registers 2

    .line 2575
    iget v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    if-nez v0, :cond_b

    .line 2576
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/KeyguardController;->updateVisibility()V

    .line 2578
    :cond_b
    iget v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    .line 2579
    return-void
.end method

.method beginDeferResume()V
    .registers 2

    .line 2636
    iget v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferResumeCount:I

    .line 2637
    return-void
.end method

.method canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z
    .registers 11
    .param p1, "displayId"  # I
    .param p2, "callingPid"  # I
    .param p3, "callingUid"  # I
    .param p4, "activityInfo"  # Landroid/content/pm/ActivityInfo;

    .line 398
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->canPlaceEntityOnDisplay(IIILcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method canPlaceEntityOnDisplay(IIILcom/android/server/wm/Task;)Z
    .registers 11
    .param p1, "displayId"  # I
    .param p2, "callingPid"  # I
    .param p3, "callingUid"  # I
    .param p4, "task"  # Lcom/android/server/wm/Task;

    .line 403
    const/4 v5, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->canPlaceEntityOnDisplay(IIILcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z
    .registers 5
    .param p1, "options"  # Landroid/app/ActivityOptions;

    .line 1636
    const/4 v0, 0x0

    if-eqz p1, :cond_1f

    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-nez v1, :cond_a

    goto :goto_1f

    .line 1639
    :cond_a
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    if-eqz v1, :cond_17

    .line 1640
    invoke-virtual {p1}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_1d

    :cond_17
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v1, :cond_1e

    :cond_1d
    const/4 v0, 0x1

    .line 1639
    :cond_1e
    return v0

    .line 1637
    :cond_1f
    :goto_1f
    return v0
.end method

.method checkReadyForSleepLocked(Z)V
    .registers 4
    .param p1, "allowDelay"  # Z

    .line 2096
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v0

    if-nez v0, :cond_9

    .line 2098
    return-void

    .line 2101
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->putTasksToSleep(ZZ)Z

    move-result v0

    if-nez v0, :cond_13

    .line 2103
    return-void

    .line 2107
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->endLaunchPowerMode(I)V

    .line 2109
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeSleepTimeouts()V

    .line 2111
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_29

    .line 2112
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2114
    :cond_29
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-eqz v0, :cond_36

    .line 2115
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2117
    :cond_36
    return-void
.end method

.method checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z
    .registers 29
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "aInfo"  # Landroid/content/pm/ActivityInfo;
    .param p3, "resultWho"  # Ljava/lang/String;
    .param p4, "requestCode"  # I
    .param p5, "callingPid"  # I
    .param p6, "callingUid"  # I
    .param p7, "callingPackage"  # Ljava/lang/String;
    .param p8, "callingFeatureId"  # Ljava/lang/String;
    .param p9, "ignoreTargetSecurity"  # Z
    .param p10, "launchingInTask"  # Z
    .param p11, "callerApp"  # Lcom/android/server/wm/WindowProcessController;
    .param p12, "resultRecord"  # Lcom/android/server/wm/ActivityRecord;
    .param p13, "resultRootTask"  # Lcom/android/server/wm/Task;

    .line 1159
    const/4 v14, 0x0

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move/from16 v9, p9

    move/from16 v10, p10

    move-object/from16 v11, p11

    move-object/from16 v12, p12

    move-object/from16 v13, p13

    invoke-virtual/range {v0 .. v14}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;)Z

    move-result v0

    return v0
.end method

.method checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;)Z
    .registers 39
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "aInfo"  # Landroid/content/pm/ActivityInfo;
    .param p3, "resultWho"  # Ljava/lang/String;
    .param p4, "requestCode"  # I
    .param p5, "callingPid"  # I
    .param p6, "callingUid"  # I
    .param p7, "callingPackage"  # Ljava/lang/String;
    .param p8, "callingFeatureId"  # Ljava/lang/String;
    .param p9, "ignoreTargetSecurity"  # Z
    .param p10, "launchingInTask"  # Z
    .param p11, "callerApp"  # Lcom/android/server/wm/WindowProcessController;
    .param p12, "resultRecord"  # Lcom/android/server/wm/ActivityRecord;
    .param p13, "resultRootTask"  # Lcom/android/server/wm/Task;
    .param p14, "checker"  # Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;

    .line 1172
    move-object/from16 v7, p0

    move-object/from16 v8, p2

    move/from16 v9, p5

    move/from16 v10, p6

    move-object/from16 v11, p11

    move-object/from16 v12, p14

    iget-object v0, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    const/4 v14, 0x1

    if-eqz v0, :cond_23

    iget-object v0, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1173
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v0

    invoke-virtual {v0, v10}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    if-eqz v0, :cond_23

    move v0, v14

    goto :goto_24

    :cond_23
    const/4 v0, 0x0

    :goto_24
    move v15, v0

    .line 1174
    .local v15, "isCallerRecents":Z
    const-string v0, "android.permission.START_ANY_ACTIVITY"

    invoke-static {v0, v9, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v16

    .line 1176
    .local v16, "startAnyPerm":I
    if-eqz v16, :cond_1d9

    if-eqz v15, :cond_33

    if-eqz p10, :cond_33

    goto/16 :goto_1d9

    .line 1182
    :cond_33
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p7

    move-object/from16 v3, p8

    move/from16 v4, p5

    move/from16 v5, p6

    move/from16 v6, p9

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->getComponentRestrictionForCallingPackage(Landroid/content/pm/ActivityInfo;Ljava/lang/String;Ljava/lang/String;IIZ)I

    move-result v6

    .line 1184
    .local v6, "componentRestriction":I
    nop

    .line 1185
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    .line 1184
    move v13, v6

    .end local v6  # "componentRestriction":I
    .local v13, "componentRestriction":I
    move-object/from16 v6, p14

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActionRestrictionForCallingPackage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;)I

    move-result v0

    .line 1186
    .local v0, "actionRestriction":I
    const-string v1, ") requires "

    const-string v2, "ActivityTaskManager"

    const-string v3, ", uid="

    const-string v4, " (pid="

    const-string v5, " from "

    if-eq v13, v14, :cond_fc

    if-ne v0, v14, :cond_61

    goto/16 :goto_fc

    .line 1213
    :cond_61
    const-string v6, "Appop Denial: starting "

    const/4 v14, 0x2

    if-ne v0, v14, :cond_b0

    .line 1214
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/server/wm/ActivityTaskSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 1218
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 1217
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1219
    .local v1, "message":Ljava/lang/String;
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const/4 v2, 0x0

    return v2

    .line 1221
    .end local v1  # "message":Ljava/lang/String;
    :cond_b0
    if-ne v13, v14, :cond_fa

    .line 1222
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") requires appop "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    .line 1225
    invoke-static {v3}, Landroid/app/AppOpsManager;->permissionToOp(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1226
    .restart local v1  # "message":Ljava/lang/String;
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    if-eqz v12, :cond_fa

    iget-object v2, v12, Lcom/android/server/wm/ActivityTaskSupervisorStub$OpCheckData;->newAInfo:Landroid/content/pm/ActivityInfo;

    if-nez v2, :cond_fa

    .line 1230
    const/4 v2, 0x0

    return v2

    .line 1235
    .end local v1  # "message":Ljava/lang/String;
    :cond_fa
    const/4 v1, 0x1

    return v1

    .line 1188
    :cond_fc
    :goto_fc
    if-eqz p12, :cond_10f

    .line 1189
    const/16 v18, -0x1

    const/16 v21, 0x0

    const/16 v22, 0x0

    const/16 v23, 0x0

    move-object/from16 v17, p12

    move-object/from16 v19, p3

    move/from16 v20, p4

    invoke-virtual/range {v17 .. v23}, Lcom/android/server/wm/ActivityRecord;->sendResult(ILjava/lang/String;IILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)V

    .line 1193
    :cond_10f
    const-string v6, "Permission Denial: starting "

    const/4 v14, 0x1

    if-eq v0, v14, :cond_18d

    .line 1198
    iget-boolean v14, v8, Landroid/content/pm/ActivityInfo;->exported:Z

    if-nez v14, :cond_155

    .line 1199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") not exported from uid "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .local v1, "msg":Ljava/lang/String;
    goto/16 :goto_1d0

    .line 1204
    .end local v1  # "msg":Ljava/lang/String;
    :cond_155
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v6, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, v8, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .restart local v1  # "msg":Ljava/lang/String;
    goto :goto_1d0

    .line 1194
    .end local v1  # "msg":Ljava/lang/String;
    :cond_18d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ") with revoked permission "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v3, Lcom/android/server/wm/ActivityTaskSupervisor;->ACTION_TO_RUNTIME_PERMISSION:Landroid/util/ArrayMap;

    .line 1197
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 1209
    .restart local v1  # "msg":Ljava/lang/String;
    :goto_1d0
    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1210
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1180
    .end local v0  # "actionRestriction":I
    .end local v1  # "msg":Ljava/lang/String;
    .end local v13  # "componentRestriction":I
    :cond_1d9
    :goto_1d9
    const/4 v0, 0x1

    return v0
.end method

.method cleanUpRemovedTaskLocked(Lcom/android/server/wm/Task;ZZ)V
    .registers 15
    .param p1, "task"  # Lcom/android/server/wm/Task;
    .param p2, "killProcess"  # Z
    .param p3, "removeFromRecents"  # Z

    .line 1768
    if-eqz p3, :cond_7

    .line 1769
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 1771
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 1772
    .local v0, "component":Landroid/content/ComponentName;
    if-nez v0, :cond_2a

    .line 1773
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No component for base intent of task: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1774
    return-void

    .line 1778
    :cond_2a
    new-instance v1, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda4;-><init>()V

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v3, p1, Lcom/android/server/wm/Task;->mUserId:I

    .line 1779
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-instance v4, Landroid/content/Intent;

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1778
    invoke-static {v1, v2, v3, v0, v4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1780
    .local v1, "msg":Landroid/os/Message;
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1782
    if-nez p2, :cond_50

    .line 1783
    return-void

    .line 1787
    :cond_50
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 1788
    .local v2, "pkg":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1789
    .local v3, "procsToKill":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Object;>;"
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 1790
    invoke-virtual {v4}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v4

    .line 1791
    .local v4, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;>;"
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_62
    invoke-virtual {v4}, Landroid/util/ArrayMap;->size()I

    move-result v6

    if-ge v5, v6, :cond_a9

    .line 1793
    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/SparseArray;

    .line 1794
    .local v6, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_6f
    invoke-virtual {v6}, Landroid/util/SparseArray;->size()I

    move-result v8

    if-ge v7, v8, :cond_a6

    .line 1795
    invoke-virtual {v6, v7}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wm/WindowProcessController;

    .line 1796
    .local v8, "proc":Lcom/android/server/wm/WindowProcessController;
    iget v9, v8, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    iget v10, p1, Lcom/android/server/wm/Task;->mUserId:I

    if-eq v9, v10, :cond_82

    .line 1798
    goto :goto_a3

    .line 1800
    :cond_82
    iget-object v9, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v9, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v8, v9, :cond_89

    .line 1802
    goto :goto_a3

    .line 1804
    :cond_89
    iget-object v9, v8, Lcom/android/server/wm/WindowProcessController;->mPkgList:Landroid/util/ArraySet;

    invoke-virtual {v9, v2}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_92

    .line 1806
    goto :goto_a3

    .line 1809
    :cond_92
    invoke-virtual {v8, p1}, Lcom/android/server/wm/WindowProcessController;->shouldKillProcessForRemovedTask(Lcom/android/server/wm/Task;)Z

    move-result v9

    if-nez v9, :cond_99

    .line 1812
    return-void

    .line 1815
    :cond_99
    invoke-virtual {v8}, Lcom/android/server/wm/WindowProcessController;->hasForegroundServices()Z

    move-result v9

    if-eqz v9, :cond_a0

    .line 1817
    return-void

    .line 1821
    :cond_a0
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1794
    .end local v8  # "proc":Lcom/android/server/wm/WindowProcessController;
    :goto_a3
    add-int/lit8 v7, v7, 0x1

    goto :goto_6f

    .line 1791
    .end local v6  # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    .end local v7  # "j":I
    :cond_a6
    add-int/lit8 v5, v5, 0x1

    goto :goto_62

    .line 1827
    .end local v5  # "i":I
    :cond_a9
    new-instance v5, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda5;

    invoke-direct {v5}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda5;-><init>()V

    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v5, v6, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1830
    .local v5, "m":Landroid/os/Message;
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v6, v5}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 1832
    return-void
.end method

.method cleanupActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 654
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 656
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V

    .line 657
    return-void
.end method

.method comeOutOfSleepIfNeededLocked()V
    .registers 2

    .line 2089
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeSleepTimeouts()V

    .line 2090
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 2091
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 2093
    :cond_10
    return-void
.end method

.method computeProcessActivityStateBatch()V
    .registers 3

    .line 2623
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 2624
    return-void

    .line 2626
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_11
    if-ltz v0, :cond_21

    .line 2627
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->computeProcessActivityState()V

    .line 2626
    add-int/lit8 v0, v0, -0x1

    goto :goto_11

    .line 2629
    .end local v0  # "i":I
    :cond_21
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 2630
    return-void
.end method

.method public destroyServicetrackerInstance()V
    .registers 2

    .line 505
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker;

    .line 506
    return-void
.end method

.method public dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 7
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 2251
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2252
    const-string v0, "ActivityTaskSupervisor state:"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2253
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Lcom/android/server/wm/RootWindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2254
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/KeyguardController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2255
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/LockTaskController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2256
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2257
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mCurTaskIdForUser="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2258
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mUserRootTaskInFront="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mUserRootTaskInFront:Landroid/util/SparseIntArray;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2259
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mVisibilityTransactionDepth="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2260
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isHomeRecentsComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 2261
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v2, v2, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RecentTasks;->isRecentsComponentHomeActivity(I)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 2262
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_d3

    .line 2263
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v2, "mWaitingActivityLaunched="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2264
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_b0
    if-ltz v0, :cond_d3

    .line 2265
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 2264
    add-int/lit8 v0, v0, -0x1

    goto :goto_b0

    .line 2268
    .end local v0  # "i":I
    :cond_d3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "mNoHistoryActivities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2269
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 2270
    return-void
.end method

.method endActivityVisibilityUpdate()V
    .registers 2

    .line 2583
    iget v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    .line 2584
    if-nez v0, :cond_b

    .line 2585
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->computeProcessActivityStateBatch()V

    .line 2588
    :cond_b
    invoke-static {}, Lcom/android/server/am/SmartPowerServiceStub;->getInstance()Lcom/android/server/am/SmartPowerServiceStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/am/SmartPowerServiceStub;->updateActivitiesVisibility()V

    .line 2589
    return-void
.end method

.method endDeferResume()V
    .registers 2

    .line 2643
    iget v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferResumeCount:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferResumeCount:I

    .line 2644
    return-void
.end method

.method findTaskToMoveToFront(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V
    .registers 27
    .param p1, "task"  # Lcom/android/server/wm/Task;
    .param p2, "flags"  # I
    .param p3, "options"  # Landroid/app/ActivityOptions;
    .param p4, "reason"  # Ljava/lang/String;
    .param p5, "forceNonResizeable"  # Z

    .line 1546
    move-object/from16 v7, p0

    move-object/from16 v15, p1

    move/from16 v6, p2

    move-object/from16 v5, p3

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1548
    .local v1, "currentRootTask":Lcom/android/server/wm/Task;
    iget-object v0, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v16

    .line 1549
    .local v16, "focusedStack":Lcom/android/server/wm/Task;
    const/4 v0, 0x0

    if-eqz v16, :cond_1a

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_1b

    :cond_1a
    move-object v2, v0

    :goto_1b
    move-object v4, v2

    .line 1553
    .local v4, "top_activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_29

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v2

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->DESTROYED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne v2, v3, :cond_29

    .line 1554
    invoke-virtual {v7, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->acquireAppLaunchPerfLock(Lcom/android/server/wm/ActivityRecord;)V

    .line 1557
    :cond_29
    const-string v3, "ActivityTaskManager"

    if-nez v1, :cond_4a

    .line 1558
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findTaskToMoveToFront: can\'t move task="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " to front. Root task is null"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1560
    return-void

    .line 1564
    :cond_4a
    and-int/lit8 v2, v6, 0x2

    const/4 v14, 0x1

    const/4 v13, 0x0

    if-nez v2, :cond_5a

    .line 1565
    :try_start_50
    iput-boolean v14, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z
    :try_end_52
    .catchall {:try_start_50 .. :try_end_52} :catchall_53

    goto :goto_5a

    .line 1615
    :catchall_53
    move-exception v0

    move-object/from16 v9, p4

    move-object v10, v4

    move v12, v13

    goto/16 :goto_16f

    .line 1568
    :cond_5a
    :goto_5a
    :try_start_5a
    iget-object v8, v15, Lcom/android/server/wm/Task;->mTransitionController:Lcom/android/server/wm/TransitionController;
    :try_end_5c
    .catchall {:try_start_5a .. :try_end_5c} :catchall_16a

    const/4 v9, 0x3

    const/4 v10, 0x0

    .line 1570
    if-eqz v5, :cond_65

    :try_start_60
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getRemoteTransition()Landroid/window/RemoteTransition;

    move-result-object v2
    :try_end_64
    .catchall {:try_start_60 .. :try_end_64} :catchall_53

    goto :goto_66

    :cond_65
    move-object v2, v0

    :goto_66
    const/16 v17, 0x0

    .line 1568
    move-object/from16 v11, p1

    move-object/from16 v12, p1

    move-object/from16 v18, v3

    move v3, v13

    move-object v13, v2

    move v2, v14

    move-object/from16 v14, v17

    :try_start_73
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/wm/TransitionController;->requestTransitionIfNeeded(IILcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;Landroid/window/RemoteTransition;Landroid/window/TransitionRequestInfo$DisplayChange;)Lcom/android/server/wm/Transition;

    .line 1572
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_7b
    .catchall {:try_start_73 .. :try_end_7b} :catchall_164

    move-object/from16 v9, p4

    :try_start_7d
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v10, " findTaskToMoveToFront"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8
    :try_end_8b
    .catchall {:try_start_7d .. :try_end_8b} :catchall_160

    move-object v14, v8

    .line 1573
    .end local p4  # "reason":Ljava/lang/String;
    .local v14, "reason":Ljava/lang/String;
    const/16 v17, 0x0

    .line 1574
    .local v17, "reparented":Z
    :try_start_8e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v8
    :try_end_92
    .catchall {:try_start_8e .. :try_end_92} :catchall_15b

    if-eqz v8, :cond_e7

    :try_start_94
    invoke-virtual {v7, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->canUseActivityOptionsLaunchBounds(Landroid/app/ActivityOptions;)Z

    move-result v8

    if-eqz v8, :cond_e7

    .line 1575
    invoke-virtual/range {p3 .. p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v8

    move-object v13, v8

    .line 1576
    .local v13, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v15, v13}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 1578
    iget-object v8, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1579
    invoke-virtual {v8, v0, v5, v15, v2}, Lcom/android/server/wm/RootWindowContainer;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v2

    .line 1581
    .local v2, "targetRootTask":Lcom/android/server/wm/Task;
    if-eq v2, v1, :cond_c6

    .line 1582
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    invoke-direct {v7, v6, v8, v14}, Lcom/android/server/wm/ActivityTaskSupervisor;->moveHomeRootTaskToFrontIfNeeded(ILcom/android/server/wm/TaskDisplayArea;Ljava/lang/String;)V
    :try_end_b1
    .catchall {:try_start_94 .. :try_end_b1} :catchall_de

    .line 1583
    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const/16 v19, 0x1

    move-object/from16 v8, p1

    move-object v9, v2

    move-object v0, v13

    .end local v13  # "bounds":Landroid/graphics/Rect;
    .local v0, "bounds":Landroid/graphics/Rect;
    move/from16 v13, v19

    move-object/from16 p4, v14

    .end local v14  # "reason":Ljava/lang/String;
    .restart local p4  # "reason":Ljava/lang/String;
    :try_start_be
    invoke-virtual/range {v8 .. v14}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)Z

    .line 1585
    move-object v1, v2

    .line 1586
    const/4 v8, 0x1

    move/from16 v17, v8

    .end local v17  # "reparented":Z
    .local v8, "reparented":Z
    goto :goto_c9

    .line 1581
    .end local v0  # "bounds":Landroid/graphics/Rect;
    .end local v8  # "reparented":Z
    .end local p4  # "reason":Ljava/lang/String;
    .restart local v13  # "bounds":Landroid/graphics/Rect;
    .restart local v14  # "reason":Ljava/lang/String;
    .restart local v17  # "reparented":Z
    :cond_c6
    move-object v0, v13

    move-object/from16 p4, v14

    .line 1590
    .end local v13  # "bounds":Landroid/graphics/Rect;
    .end local v14  # "reason":Ljava/lang/String;
    .restart local v0  # "bounds":Landroid/graphics/Rect;
    .restart local p4  # "reason":Ljava/lang/String;
    :goto_c9
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->shouldResizeRootTaskWithLaunchBounds()Z

    move-result v8

    if-eqz v8, :cond_d3

    .line 1591
    invoke-virtual {v2, v0, v3, v3}, Lcom/android/server/wm/Task;->resize(Landroid/graphics/Rect;ZZ)V

    goto :goto_e9

    .line 1596
    :cond_d3
    invoke-virtual {v15, v3, v3}, Lcom/android/server/wm/Task;->resize(ZZ)V
    :try_end_d6
    .catchall {:try_start_be .. :try_end_d6} :catchall_d7

    goto :goto_e9

    .line 1615
    .end local v0  # "bounds":Landroid/graphics/Rect;
    .end local v2  # "targetRootTask":Lcom/android/server/wm/Task;
    .end local v17  # "reparented":Z
    :catchall_d7
    move-exception v0

    move-object/from16 v9, p4

    move v12, v3

    move-object v10, v4

    goto/16 :goto_16f

    .end local p4  # "reason":Ljava/lang/String;
    .restart local v14  # "reason":Ljava/lang/String;
    :catchall_de
    move-exception v0

    move-object/from16 p4, v14

    move-object/from16 v9, p4

    move v12, v3

    move-object v10, v4

    .end local v14  # "reason":Ljava/lang/String;
    .restart local p4  # "reason":Ljava/lang/String;
    goto/16 :goto_16f

    .line 1574
    .end local p4  # "reason":Ljava/lang/String;
    .restart local v14  # "reason":Ljava/lang/String;
    .restart local v17  # "reparented":Z
    :cond_e7
    move-object/from16 p4, v14

    .line 1600
    .end local v14  # "reason":Ljava/lang/String;
    .restart local p4  # "reason":Ljava/lang/String;
    :goto_e9
    move-object v8, v1

    .end local v1  # "currentRootTask":Lcom/android/server/wm/Task;
    .local v8, "currentRootTask":Lcom/android/server/wm/Task;
    if-nez v17, :cond_104

    .line 1601
    :try_start_ec
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0
    :try_end_f0
    .catchall {:try_start_ec .. :try_end_f0} :catchall_fc

    move-object/from16 v9, p4

    .end local p4  # "reason":Ljava/lang/String;
    .local v9, "reason":Ljava/lang/String;
    :try_start_f2
    invoke-direct {v7, v6, v0, v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->moveHomeRootTaskToFrontIfNeeded(ILcom/android/server/wm/TaskDisplayArea;Ljava/lang/String;)V
    :try_end_f5
    .catchall {:try_start_f2 .. :try_end_f5} :catchall_f6

    goto :goto_106

    .line 1615
    .end local v17  # "reparented":Z
    :catchall_f6
    move-exception v0

    move v12, v3

    move-object v10, v4

    move-object v1, v8

    goto/16 :goto_16f

    .end local v9  # "reason":Ljava/lang/String;
    .restart local p4  # "reason":Ljava/lang/String;
    :catchall_fc
    move-exception v0

    move-object/from16 v9, p4

    move v12, v3

    move-object v10, v4

    move-object v1, v8

    .end local p4  # "reason":Ljava/lang/String;
    .restart local v9  # "reason":Ljava/lang/String;
    goto/16 :goto_16f

    .line 1600
    .end local v9  # "reason":Ljava/lang/String;
    .restart local v17  # "reparented":Z
    .restart local p4  # "reason":Ljava/lang/String;
    :cond_104
    move-object/from16 v9, p4

    .line 1604
    .end local p4  # "reason":Ljava/lang/String;
    .restart local v9  # "reason":Ljava/lang/String;
    :goto_106
    :try_start_106
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1605
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v10, 0x0

    .line 1606
    if-nez v0, :cond_110

    const/16 v20, 0x0

    goto :goto_114

    :cond_110
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;
    :try_end_112
    .catchall {:try_start_106 .. :try_end_112} :catchall_156

    move-object/from16 v20, v1

    .line 1605
    :goto_114
    move-object v1, v8

    move-object/from16 v2, p1

    move v12, v3

    move-object/from16 v11, v18

    move v3, v10

    move-object v10, v4

    .end local v4  # "top_activity":Lcom/android/server/wm/ActivityRecord;
    .local v10, "top_activity":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v4, p3

    move-object/from16 v5, v20

    move-object v6, v9

    :try_start_121
    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/Task;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V

    .line 1608
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v1, :cond_13e

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findTaskToMoveToFront: moved to front of root task="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v11, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1611
    :cond_13e
    const/4 v3, 0x0

    iget-object v1, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1612
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 1611
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v5, v8

    move/from16 v6, p5

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V
    :try_end_14f
    .catchall {:try_start_121 .. :try_end_14f} :catchall_153

    .line 1615
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v17  # "reparented":Z
    iput-boolean v12, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 1616
    nop

    .line 1617
    return-void

    .line 1615
    :catchall_153
    move-exception v0

    move-object v1, v8

    goto :goto_16f

    .end local v10  # "top_activity":Lcom/android/server/wm/ActivityRecord;
    .restart local v4  # "top_activity":Lcom/android/server/wm/ActivityRecord;
    :catchall_156
    move-exception v0

    move v12, v3

    move-object v10, v4

    move-object v1, v8

    .end local v4  # "top_activity":Lcom/android/server/wm/ActivityRecord;
    .restart local v10  # "top_activity":Lcom/android/server/wm/ActivityRecord;
    goto :goto_16f

    .end local v8  # "currentRootTask":Lcom/android/server/wm/Task;
    .end local v9  # "reason":Ljava/lang/String;
    .end local v10  # "top_activity":Lcom/android/server/wm/ActivityRecord;
    .restart local v1  # "currentRootTask":Lcom/android/server/wm/Task;
    .restart local v4  # "top_activity":Lcom/android/server/wm/ActivityRecord;
    .restart local v14  # "reason":Ljava/lang/String;
    :catchall_15b
    move-exception v0

    move v12, v3

    move-object v10, v4

    move-object v9, v14

    .end local v4  # "top_activity":Lcom/android/server/wm/ActivityRecord;
    .end local v14  # "reason":Ljava/lang/String;
    .restart local v9  # "reason":Ljava/lang/String;
    .restart local v10  # "top_activity":Lcom/android/server/wm/ActivityRecord;
    goto :goto_16f

    .end local v9  # "reason":Ljava/lang/String;
    .end local v10  # "top_activity":Lcom/android/server/wm/ActivityRecord;
    .restart local v4  # "top_activity":Lcom/android/server/wm/ActivityRecord;
    .restart local p4  # "reason":Ljava/lang/String;
    :catchall_160
    move-exception v0

    move v12, v3

    move-object v10, v4

    .end local v4  # "top_activity":Lcom/android/server/wm/ActivityRecord;
    .restart local v10  # "top_activity":Lcom/android/server/wm/ActivityRecord;
    goto :goto_16f

    .end local v10  # "top_activity":Lcom/android/server/wm/ActivityRecord;
    .restart local v4  # "top_activity":Lcom/android/server/wm/ActivityRecord;
    :catchall_164
    move-exception v0

    move-object/from16 v9, p4

    move v12, v3

    move-object v10, v4

    .end local v4  # "top_activity":Lcom/android/server/wm/ActivityRecord;
    .restart local v10  # "top_activity":Lcom/android/server/wm/ActivityRecord;
    goto :goto_16f

    .end local v10  # "top_activity":Lcom/android/server/wm/ActivityRecord;
    .restart local v4  # "top_activity":Lcom/android/server/wm/ActivityRecord;
    :catchall_16a
    move-exception v0

    move-object/from16 v9, p4

    move-object v10, v4

    move v12, v13

    .end local v4  # "top_activity":Lcom/android/server/wm/ActivityRecord;
    .end local p4  # "reason":Ljava/lang/String;
    .restart local v9  # "reason":Ljava/lang/String;
    .restart local v10  # "top_activity":Lcom/android/server/wm/ActivityRecord;
    :goto_16f
    iput-boolean v12, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 1616
    throw v0
.end method

.method finishNoHistoryActivitiesIfNeeded(Lcom/android/server/wm/ActivityRecord;)V
    .registers 11
    .param p1, "next"  # Lcom/android/server/wm/ActivityRecord;

    .line 585
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_4c

    .line 586
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 587
    .local v2, "noHistoryActivity":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_49

    if-eq v2, p1, :cond_49

    .line 588
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v3

    if-eqz v3, :cond_49

    .line 589
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v4

    if-ne v3, v4, :cond_49

    .line 590
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v4, 0x0

    if-eqz v3, :cond_3e

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x1cdc3765

    const/4 v7, 0x0

    new-array v8, v1, [Ljava/lang/Object;

    aput-object v3, v8, v4

    invoke-static {v5, v6, v4, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 592
    .end local v3  # "protoLogParam0":Ljava/lang/String;
    :cond_3e
    const-string/jumbo v3, "resume-no-history"

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 593
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 585
    .end local v2  # "noHistoryActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_49
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 596
    .end local v0  # "i":I
    :cond_4c
    return-void
.end method

.method public getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;
    .registers 2

    .line 520
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    return-object v0
.end method

.method public getKeyguardController()Lcom/android/server/wm/KeyguardController;
    .registers 2

    .line 524
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    return-object v0
.end method

.method getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;
    .registers 2

    .line 1645
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    return-object v0
.end method

.method getNextTaskIdForUser()I
    .registers 2

    .line 608
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v0, v0, Lcom/android/server/wm/RootWindowContainer;->mCurrentUser:I

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getNextTaskIdForUser(I)I

    move-result v0

    return v0
.end method

.method getNextTaskIdForUser(I)I
    .registers 6
    .param p1, "userId"  # I

    .line 612
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const v1, 0x186a0

    mul-int/2addr v1, p1

    invoke-virtual {v0, p1, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 616
    .local v0, "currentTaskId":I
    invoke-static {v0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->nextTaskIdForUser(II)I

    move-result v1

    .line 617
    .local v1, "candidateTaskId":I
    :goto_e
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2, v1, p1}, Lcom/android/server/wm/RecentTasks;->containsTaskId(II)Z

    move-result v2

    if-nez v2, :cond_26

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x1

    .line 618
    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_20

    goto :goto_26

    .line 629
    :cond_20
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseIntArray;->put(II)V

    .line 630
    return v1

    .line 620
    :cond_26
    :goto_26
    invoke-static {v1, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->nextTaskIdForUser(II)I

    move-result v1

    .line 621
    if-eq v1, v0, :cond_2d

    goto :goto_e

    .line 624
    :cond_2d
    new-instance v2, Ljava/lang/IllegalStateException;

    const-string v3, "Cannot get an available task id. Reached limit of 100000 running tasks per user."

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method getReparentTargetRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;
    .registers 10
    .param p1, "task"  # Lcom/android/server/wm/Task;
    .param p2, "rootTask"  # Lcom/android/server/wm/Task;
    .param p3, "toTop"  # Z

    .line 1914
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1915
    .local v0, "prevRootTask":Lcom/android/server/wm/Task;
    iget v1, p2, Lcom/android/server/wm/Task;->mTaskId:I

    .line 1916
    .local v1, "rootTaskId":I
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v2

    .line 1919
    .local v2, "inMultiWindowMode":Z
    const-string v3, "ActivityTaskManager"

    if-eqz v0, :cond_33

    iget v4, v0, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v4, v1, :cond_33

    .line 1920
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not reparent to same root task, task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " already in rootTaskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    return-object v0

    .line 1927
    :cond_33
    if-eqz v2, :cond_5f

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    if-eqz v4, :cond_3c

    goto :goto_5f

    .line 1928
    :cond_3c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device doesn\'t support multi-window, can not reparent task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to root-task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1934
    :cond_5f
    :goto_5f
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v4

    if-eqz v4, :cond_8f

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    if-eqz v4, :cond_6c

    goto :goto_8f

    .line 1935
    :cond_6c
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device doesn\'t support multi-display, can not reparent task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to rootTaskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1940
    :cond_8f
    :goto_8f
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x5

    if-ne v4, v5, :cond_b6

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v4, :cond_9d

    goto :goto_b6

    .line 1942
    :cond_9d
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Device doesn\'t support freeform, can not reparent task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1946
    :cond_b6
    :goto_b6
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v4

    if-nez v4, :cond_ff

    .line 1952
    if-eqz v2, :cond_fe

    .line 1953
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/android/server/wm/Task;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v4

    if-nez v4, :cond_fe

    .line 1954
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can not move unresizeable task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " to multi-window root task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Moving to a fullscreen root task instead."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1956
    if-eqz v0, :cond_f1

    .line 1957
    return-object v0

    .line 1959
    :cond_f1
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    const/4 v4, 0x1

    .line 1960
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v5

    .line 1959
    invoke-virtual {v3, v4, v5, p3}, Lcom/android/server/wm/TaskDisplayArea;->createRootTask(IIZ)Lcom/android/server/wm/Task;

    move-result-object p2

    .line 1962
    :cond_fe
    return-object p2

    .line 1947
    :cond_ff
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No support to reparent to PIP, task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method getRunningTasks()Lcom/android/server/wm/RunningTasks;
    .registers 2

    .line 549
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRunningTasks:Lcom/android/server/wm/RunningTasks;

    return-object v0
.end method

.method public getServicetrackerInstance()Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker;
    .registers 5

    .line 487
    const-string v0, "ActivityTaskManager"

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker;

    if-nez v1, :cond_23

    .line 489
    const/4 v1, 0x0

    const/4 v2, 0x0

    :try_start_8
    invoke-static {v1}, Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker;->getService(Z)Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker;
    :try_end_e
    .catch Ljava/util/NoSuchElementException; {:try_start_8 .. :try_end_e} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_e} :catch_f

    goto :goto_17

    .line 492
    :catch_f
    move-exception v1

    .line 493
    .local v1, "e":Landroid/os/RemoteException;
    const-string v3, "Failed to get servicetracker interface"

    invoke-static {v0, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 494
    return-object v2

    .line 490
    .end local v1  # "e":Landroid/os/RemoteException;
    :catch_16
    move-exception v1

    .line 495
    :goto_17
    nop

    .line 496
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker;

    if-nez v1, :cond_23

    .line 497
    const-string/jumbo v1, "servicetracker HIDL not available"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    return-object v2

    .line 501
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mServicetracker:Lvendor/qti/hardware/servicetracker/V1_2/IServicetracker;

    return-object v0
.end method

.method getSystemChooserActivity()Landroid/content/ComponentName;
    .registers 3

    .line 528
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mSystemChooserActivity:Landroid/content/ComponentName;

    if-nez v0, :cond_19

    .line 529
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 530
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1040235

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 529
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mSystemChooserActivity:Landroid/content/ComponentName;

    .line 532
    :cond_19
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mSystemChooserActivity:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 2085
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method getUserInfo(I)Landroid/content/pm/UserInfo;
    .registers 5
    .param p1, "userId"  # I

    .line 1320
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1322
    .local v0, "identity":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v2
    :try_end_10
    .catchall {:try_start_4 .. :try_end_10} :catchall_14

    .line 1324
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1322
    return-object v2

    .line 1324
    :catchall_14
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1325
    throw v2
.end method

.method goingToSleepLocked()V
    .registers 3

    .line 1966
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleSleepTimeout()V

    .line 1967
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-nez v0, :cond_24

    .line 1968
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 1969
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->isHeld()Z

    move-result v0

    if-eqz v0, :cond_24

    .line 1973
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 1974
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v1, 0xcc

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->removeMessages(I)V

    .line 1978
    :cond_24
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->applySleepTokens(Z)V

    .line 1980
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkReadyForSleepLocked(Z)V

    .line 1981
    return-void
.end method

.method handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;)V
    .registers 11
    .param p1, "task"  # Lcom/android/server/wm/Task;
    .param p2, "preferredWindowingMode"  # I
    .param p3, "preferredTaskDisplayArea"  # Lcom/android/server/wm/TaskDisplayArea;
    .param p4, "actualRootTask"  # Lcom/android/server/wm/Task;

    .line 2454
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V

    .line 2456
    return-void
.end method

.method handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;Z)V
    .registers 11
    .param p1, "task"  # Lcom/android/server/wm/Task;
    .param p2, "preferredWindowingMode"  # I
    .param p3, "preferredTaskDisplayArea"  # Lcom/android/server/wm/TaskDisplayArea;
    .param p4, "actualRootTask"  # Lcom/android/server/wm/Task;
    .param p5, "forceNonResizable"  # Z

    .line 2461
    const/4 v0, 0x1

    if-eqz p3, :cond_b

    .line 2462
    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v1

    if-eqz v1, :cond_b

    move v1, v0

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 2464
    .local v1, "isSecondaryDisplayPreferred":Z
    :goto_c
    if-eqz p4, :cond_15

    invoke-virtual {p4}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-nez v2, :cond_15

    return-void

    .line 2465
    :cond_15
    if-eqz p1, :cond_26

    if-eqz p4, :cond_26

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v2

    if-eqz v2, :cond_26

    .line 2466
    invoke-virtual {p4}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v2

    if-eqz v2, :cond_26

    return-void

    .line 2468
    :cond_26
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v2

    if-nez v2, :cond_2d

    .line 2469
    return-void

    .line 2473
    :cond_2d
    if-eqz v1, :cond_8e

    .line 2474
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_86

    .line 2478
    iget-object v0, p3, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 2479
    .local v0, "preferredDisplay":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    if-eq v0, v2, :cond_75

    .line 2480
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to put "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " on display "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2482
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    .line 2483
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v3

    iget v4, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v2, v3, v4}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityLaunchOnSecondaryDisplayFailed(Landroid/app/TaskInfo;I)V

    goto :goto_85

    .line 2487
    :cond_75
    if-nez p5, :cond_85

    .line 2488
    invoke-static {}, Lcom/android/server/wm/PreloadStateManagerStub;->get()Lcom/android/server/wm/PreloadStateManagerStub;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/android/server/wm/PreloadStateManagerStub;->isPreloadDisplayContent(Lcom/android/server/wm/DisplayContent;)Z

    move-result v2

    if-nez v2, :cond_85

    .line 2490
    const/4 v2, 0x2

    invoke-direct {p0, p1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleForcedResizableTaskIfNeeded(Lcom/android/server/wm/Task;I)V

    .line 2495
    :cond_85
    :goto_85
    return-void

    .line 2475
    .end local v0  # "preferredDisplay":Lcom/android/server/wm/DisplayContent;
    :cond_86
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "Task resolved to incompatible display"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2498
    :cond_8e
    if-nez p5, :cond_93

    .line 2499
    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleForcedResizableTaskIfNeeded(Lcom/android/server/wm/Task;I)V

    .line 2501
    :cond_93
    return-void
.end method

.method handleTopResumedStateReleased(Z)V
    .registers 8
    .param p1, "timeout"  # Z

    .line 2395
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1e

    if-eqz p1, :cond_a

    const-string v0, "(due to timeout)"

    goto :goto_c

    :cond_a
    const-string v0, "(transition complete)"

    :goto_c
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x2a35662a

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v1

    invoke-static {v2, v3, v1, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2398
    .end local v0  # "protoLogParam0":Ljava/lang/String;
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v2, 0xd9

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->removeMessages(I)V

    .line 2399
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivityWaitingForPrev:Z

    if-nez v0, :cond_2a

    .line 2401
    return-void

    .line 2403
    :cond_2a
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivityWaitingForPrev:Z

    .line 2404
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleTopResumedActivityStateIfNeeded()V

    .line 2405
    return-void
.end method

.method inActivityVisibilityUpdate()Z
    .registers 2

    .line 2593
    iget v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mVisibilityTransactionDepth:I

    if-lez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method initPowerManagement()V
    .registers 4

    .line 557
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/os/PowerManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPowerManager:Landroid/os/PowerManager;

    .line 558
    nop

    .line 559
    const/4 v1, 0x1

    const-string v2, "ActivityManager-Sleep"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mGoingToSleepWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 560
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "*launch*"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 561
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 562
    return-void
.end method

.method public initialize()V
    .registers 4

    .line 466
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mInitialized:Z

    if-eqz v0, :cond_5

    .line 467
    return-void

    .line 470
    :cond_5
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mInitialized:Z

    .line 471
    new-instance v0, Lcom/android/server/wm/RunningTasks;

    invoke-direct {v0}, Lcom/android/server/wm/RunningTasks;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->setRunningTasks(Lcom/android/server/wm/RunningTasks;)V

    .line 473
    new-instance v0, Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ActivityMetricsLogger;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    .line 474
    new-instance v0, Lcom/android/server/wm/KeyguardController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v1, p0}, Lcom/android/server/wm/KeyguardController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 476
    new-instance v0, Lcom/android/server/wm/PersisterQueue;

    invoke-direct {v0}, Lcom/android/server/wm/PersisterQueue;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    .line 477
    new-instance v1, Lcom/android/server/wm/LaunchParamsPersister;

    invoke-direct {v1, v0, p0}, Lcom/android/server/wm/LaunchParamsPersister;-><init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityTaskSupervisor;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    .line 478
    new-instance v0, Lcom/android/server/wm/LaunchParamsController;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v0, v2, v1}, Lcom/android/server/wm/LaunchParamsController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/LaunchParamsPersister;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsController:Lcom/android/server/wm/LaunchParamsController;

    .line 479
    invoke-virtual {v0, p0}, Lcom/android/server/wm/LaunchParamsController;->registerDefaultModifiers(Lcom/android/server/wm/ActivityTaskSupervisor;)V

    .line 480
    return-void
.end method

.method isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z
    .registers 23
    .param p1, "callingPid"  # I
    .param p2, "callingUid"  # I
    .param p3, "launchDisplayId"  # I
    .param p4, "aInfo"  # Landroid/content/pm/ActivityInfo;

    .line 1248
    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x0

    if-eqz v3, :cond_31

    int-to-long v7, v2

    .local v7, "protoLogParam0":J
    int-to-long v9, v0

    .local v9, "protoLogParam1":J
    int-to-long v11, v1

    .local v11, "protoLogParam2":J
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, -0x493bc4bb

    const/16 v14, 0x15

    const/4 v15, 0x3

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v15, v5

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v15, v4

    const/16 v16, 0x2

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v3, v13, v14, v6, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1251
    .end local v7  # "protoLogParam0":J
    .end local v9  # "protoLogParam1":J
    .end local v11  # "protoLogParam2":J
    :cond_31
    const/4 v3, -0x1

    if-ne v0, v3, :cond_46

    if-ne v1, v3, :cond_46

    .line 1252
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v3, :cond_45

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x5ad90dca

    move-object v8, v6

    check-cast v8, [Ljava/lang/Object;

    invoke-static {v3, v7, v5, v6, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1253
    :cond_45
    return v4

    .line 1256
    :cond_46
    move-object/from16 v7, p0

    iget-object v8, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1257
    invoke-virtual {v8, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContentOrCreate(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    .line 1258
    .local v8, "displayContent":Lcom/android/server/wm/DisplayContent;
    const-string v9, "ActivityTaskManager"

    if-eqz v8, :cond_103

    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->isRemoved()Z

    move-result v10

    if-eqz v10, :cond_5c

    move-object/from16 v13, p4

    goto/16 :goto_105

    .line 1265
    :cond_5c
    const-string v10, "android.permission.INTERNAL_SYSTEM_WINDOW"

    invoke-static {v10, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v10

    .line 1267
    .local v10, "startAnyPerm":I
    if-nez v10, :cond_74

    .line 1268
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v3, :cond_73

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0x19bb75e4

    move-object v11, v6

    check-cast v11, [Ljava/lang/Object;

    invoke-static {v3, v9, v5, v6, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1269
    :cond_73
    return v4

    .line 1273
    :cond_74
    invoke-virtual {v8, v1}, Lcom/android/server/wm/DisplayContent;->isUidPresent(I)Z

    move-result v11

    .line 1275
    .local v11, "uidPresentOnDisplay":Z
    iget-object v12, v8, Lcom/android/server/wm/DisplayContent;->mDisplay:Landroid/view/Display;

    .line 1276
    .local v12, "display":Landroid/view/Display;
    invoke-virtual {v12}, Landroid/view/Display;->isTrusted()Z

    move-result v13

    if-nez v13, :cond_bd

    .line 1281
    move-object/from16 v13, p4

    iget v14, v13, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v15, -0x80000000

    and-int/2addr v14, v15

    if-nez v14, :cond_a3

    invoke-static {}, Lcom/android/server/wm/PreloadStateManagerStub;->get()Lcom/android/server/wm/PreloadStateManagerStub;

    move-result-object v14

    invoke-interface {v14, v1}, Lcom/android/server/wm/PreloadStateManagerStub;->alreadyPreload(I)Z

    move-result v14

    if-nez v14, :cond_a3

    .line 1282
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v3, :cond_a2

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x57e4a777

    move-object v9, v6

    check-cast v9, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1284
    :cond_a2
    return v5

    .line 1287
    :cond_a3
    const-string v14, "android.permission.ACTIVITY_EMBEDDING"

    invoke-static {v14, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v14

    if-ne v14, v3, :cond_bf

    if-nez v11, :cond_bf

    .line 1289
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v3, :cond_bc

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x3a5faa1d

    move-object v9, v6

    check-cast v9, [Ljava/lang/Object;

    invoke-static {v3, v4, v5, v6, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1291
    :cond_bc
    return v5

    .line 1276
    :cond_bd
    move-object/from16 v13, p4

    .line 1295
    :cond_bf
    invoke-virtual {v8}, Lcom/android/server/wm/DisplayContent;->isPrivate()Z

    move-result v3

    if-nez v3, :cond_d5

    .line 1297
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v3, :cond_d4

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x6854c06d

    move-object v14, v6

    check-cast v14, [Ljava/lang/Object;

    invoke-static {v3, v9, v5, v6, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1299
    :cond_d4
    return v4

    .line 1303
    :cond_d5
    invoke-virtual {v12}, Landroid/view/Display;->getOwnerUid()I

    move-result v3

    if-ne v3, v1, :cond_eb

    .line 1304
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v3, :cond_ea

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x3310f815

    move-object v14, v6

    check-cast v14, [Ljava/lang/Object;

    invoke-static {v3, v9, v5, v6, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1306
    :cond_ea
    return v4

    .line 1309
    :cond_eb
    if-eqz v11, :cond_fd

    .line 1310
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v3, :cond_fc

    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x75fc1716

    move-object v14, v6

    check-cast v14, [Ljava/lang/Object;

    invoke-static {v3, v9, v5, v6, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1312
    :cond_fc
    return v4

    .line 1315
    :cond_fd
    const-string v3, "Launch on display check: denied"

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1316
    return v5

    .line 1258
    .end local v10  # "startAnyPerm":I
    .end local v11  # "uidPresentOnDisplay":Z
    .end local v12  # "display":Landroid/view/Display;
    :cond_103
    move-object/from16 v13, p4

    .line 1259
    :goto_105
    const-string v3, "Launch on display check: display not found"

    invoke-static {v9, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1260
    return v5
.end method

.method isCallerAllowedToLaunchOnTaskDisplayArea(IILcom/android/server/wm/TaskDisplayArea;Landroid/content/pm/ActivityInfo;)Z
    .registers 6
    .param p1, "callingPid"  # I
    .param p2, "callingUid"  # I
    .param p3, "taskDisplayArea"  # Lcom/android/server/wm/TaskDisplayArea;
    .param p4, "aInfo"  # Landroid/content/pm/ActivityInfo;

    .line 1241
    nop

    .line 1242
    if-eqz p3, :cond_8

    invoke-virtual {p3}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v0

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 1241
    :goto_9
    invoke-virtual {p0, p1, p2, v0, p4}, Lcom/android/server/wm/ActivityTaskSupervisor;->isCallerAllowedToLaunchOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v0

    return v0
.end method

.method isRootVisibilityUpdateDeferred()Z
    .registers 2

    .line 2601
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    return v0
.end method

.method synthetic lambda$activityIdleInternal$2$com-android-server-wm-ActivityTaskSupervisor()V
    .registers 2

    .line 1540
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->trimApplications()V

    return-void
.end method

.method synthetic lambda$removeRootTask$3$com-android-server-wm-ActivityTaskSupervisor(Lcom/android/server/wm/Task;)V
    .registers 2
    .param p1, "task"  # Lcom/android/server/wm/Task;

    .line 1716
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTaskInSurfaceTransaction(Lcom/android/server/wm/Task;)V

    return-void
.end method

.method synthetic lambda$resolveActivity$1$com-android-server-wm-ActivityTaskSupervisor(Landroid/content/pm/ActivityInfo;ILandroid/app/ProfilerInfo;)V
    .registers 7
    .param p1, "aInfo"  # Landroid/content/pm/ActivityInfo;
    .param p2, "startFlags"  # I
    .param p3, "profilerInfo"  # Landroid/app/ProfilerInfo;

    .line 747
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0, p1, p2, p3, v1}, Landroid/app/ActivityManagerInternal;->setDebugFlagsForStartingActivity(Landroid/content/pm/ActivityInfo;ILandroid/app/ProfilerInfo;Ljava/lang/Object;)V
    :try_end_b
    .catchall {:try_start_0 .. :try_end_b} :catchall_c

    .line 755
    goto :goto_1f

    .line 749
    :catchall_c
    move-exception v0

    .line 751
    .local v0, "e":Ljava/lang/Throwable;
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 752
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v1

    .line 753
    :try_start_17
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notifyAll()V

    .line 754
    monitor-exit v1

    .line 756
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_1f
    return-void

    .line 754
    .restart local v0  # "e":Ljava/lang/Throwable;
    :catchall_20
    move-exception v2

    monitor-exit v1
    :try_end_22
    .catchall {:try_start_17 .. :try_end_22} :catchall_20

    throw v2
.end method

.method moveRecentsRootTaskToFront(Ljava/lang/String;)V
    .registers 5
    .param p1, "reason"  # Ljava/lang/String;

    .line 570
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 571
    const/4 v1, 0x0

    const/4 v2, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(II)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 572
    .local v0, "recentsRootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_11

    .line 573
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 575
    :cond_11
    return-void
.end method

.method onProcessActivityStateChanged(Lcom/android/server/wm/WindowProcessController;Z)V
    .registers 4
    .param p1, "wpc"  # Lcom/android/server/wm/WindowProcessController;
    .param p2, "forceBatch"  # Z

    .line 2613
    if-nez p2, :cond_d

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->inActivityVisibilityUpdate()Z

    move-result v0

    if-eqz v0, :cond_9

    goto :goto_d

    .line 2619
    :cond_9
    invoke-virtual {p1}, Lcom/android/server/wm/WindowProcessController;->computeProcessActivityState()V

    .line 2620
    return-void

    .line 2614
    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1a

    .line 2615
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityStateChangedProcs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2617
    :cond_1a
    return-void
.end method

.method public onRecentTaskAdded(Lcom/android/server/wm/Task;)V
    .registers 2
    .param p1, "task"  # Lcom/android/server/wm/Task;

    .line 1893
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->touchActiveTime()V

    .line 1894
    return-void
.end method

.method public onRecentTaskRemoved(Lcom/android/server/wm/Task;ZZ)V
    .registers 7
    .param p1, "task"  # Lcom/android/server/wm/Task;
    .param p2, "wasTrimmed"  # Z
    .param p3, "killProcess"  # Z

    .line 1898
    if-eqz p2, :cond_b

    .line 1901
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v1, 0x0

    const-string/jumbo v2, "recent-task-trimmed"

    invoke-virtual {p0, v0, p3, v1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTaskById(IZZLjava/lang/String;)Z

    .line 1904
    :cond_b
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->removedFromRecents()V

    .line 1905
    return-void
.end method

.method onSystemReady()V
    .registers 2

    .line 483
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v0}, Lcom/android/server/wm/LaunchParamsPersister;->onSystemReady()V

    .line 484
    return-void
.end method

.method onUserUnlocked(I)V
    .registers 3
    .param p1, "userId"  # I

    .line 512
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-virtual {v0}, Lcom/android/server/wm/PersisterQueue;->startPersisting()V

    .line 513
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->onUnlockUser(I)V

    .line 516
    const-string/jumbo v0, "userUnlocked"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleStartHome(Ljava/lang/String;)V

    .line 517
    return-void
.end method

.method readyToResume()Z
    .registers 2

    .line 2648
    iget v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferResumeCount:I

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z
    .registers 47
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "proc"  # Lcom/android/server/wm/WindowProcessController;
    .param p3, "andResume"  # Z
    .param p4, "checkConfig"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 836
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, "2nd-crash"

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    move-result v0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-nez v0, :cond_28

    .line 840
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_27

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x2638d388

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v0, v6, v7

    invoke-static {v4, v8, v7, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 843
    .end local v0  # "protoLogParam0":Ljava/lang/String;
    :cond_27
    return v7

    .line 846
    :cond_28
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v8

    .line 847
    .local v8, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v9

    .line 849
    .local v9, "rootTask":Lcom/android/server/wm/Task;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 854
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->pauseConfigurationDispatch()V

    .line 857
    :try_start_36
    invoke-virtual {v2, v3, v7}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(Lcom/android/server/wm/WindowProcessController;I)V

    .line 860
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->startLaunchTickingLocked()V

    .line 862
    invoke-virtual/range {p1 .. p2}, Lcom/android/server/wm/ActivityRecord;->setProcess(Lcom/android/server/wm/WindowProcessController;)V

    .line 864
    invoke-static {}, Lcom/android/server/wm/PreloadStateManagerStub;->get()Lcom/android/server/wm/PreloadStateManagerStub;

    move-result-object v0

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v10

    invoke-interface {v0, v10}, Lcom/android/server/wm/PreloadStateManagerStub;->alreadyPreload(I)Z

    move-result v0

    iput-boolean v0, v3, Lcom/android/server/wm/WindowProcessController;->mIsPreloaded:Z
    :try_end_4d
    .catchall {:try_start_36 .. :try_end_4d} :catchall_3c5

    .line 867
    if-eqz p3, :cond_5f

    :try_start_4f
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    move-result v0
    :try_end_53
    .catchall {:try_start_4f .. :try_end_53} :catchall_58

    if-nez v0, :cond_5f

    .line 868
    const/4 v0, 0x0

    move v10, v0

    .end local p3  # "andResume":Z
    .local v0, "andResume":Z
    goto :goto_61

    .line 1038
    .end local v0  # "andResume":Z
    .restart local p3  # "andResume":Z
    :catchall_58
    move-exception v0

    move/from16 v10, p3

    move-object/from16 v38, v8

    goto/16 :goto_3ca

    .line 871
    :cond_5f
    move/from16 v10, p3

    .end local p3  # "andResume":Z
    .local v10, "andResume":Z
    :goto_61
    :try_start_61
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->notifyUnknownVisibilityLaunchedForKeyguardTransition()V
    :try_end_64
    .catchall {:try_start_61 .. :try_end_64} :catchall_3c1

    .line 877
    if-eqz p4, :cond_75

    .line 881
    :try_start_66
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v11

    invoke-virtual {v0, v2, v11, v7, v6}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z
    :try_end_6f
    .catchall {:try_start_66 .. :try_end_6f} :catchall_70

    goto :goto_75

    .line 1038
    :catchall_70
    move-exception v0

    move-object/from16 v38, v8

    goto/16 :goto_3ca

    .line 885
    :cond_75
    :goto_75
    :try_start_75
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/KeyguardController;->checkKeyguardVisibility(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0
    :try_end_7b
    .catchall {:try_start_75 .. :try_end_7b} :catchall_3c1

    if-eqz v0, :cond_86

    :try_start_7d
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->allowMoveToFront()Z

    move-result v0

    if-eqz v0, :cond_86

    .line 890
    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V
    :try_end_86
    .catchall {:try_start_7d .. :try_end_86} :catchall_70

    .line 894
    :cond_86
    :try_start_86
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;
    :try_end_8a
    .catchall {:try_start_86 .. :try_end_8a} :catchall_3c1

    if-eqz v0, :cond_93

    :try_start_8c
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_92
    .catchall {:try_start_8c .. :try_end_92} :catchall_70

    goto :goto_94

    :cond_93
    const/4 v0, -0x1

    :goto_94
    move v11, v0

    .line 895
    .local v11, "applicationInfoUid":I
    :try_start_95
    iget v0, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget v12, v3, Lcom/android/server/wm/WindowProcessController;->mUserId:I
    :try_end_99
    .catchall {:try_start_95 .. :try_end_99} :catchall_3c1

    const-string v13, "ActivityTaskManager"

    if-ne v0, v12, :cond_a5

    :try_start_9d
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_a3
    .catchall {:try_start_9d .. :try_end_a3} :catchall_70

    if-eq v0, v11, :cond_eb

    .line 896
    :cond_a5
    :try_start_a5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "User ID for activity changing for "

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, " appInfo.uid="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v12, v12, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v12, v12, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, " info.ai.uid="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, " old="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v12, " new="

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v13, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 907
    :cond_eb
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->hasEverLaunchedActivity()Z

    move-result v0

    if-eqz v0, :cond_f4

    move-object/from16 v31, v5

    goto :goto_fa

    :cond_f4
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    move-object/from16 v31, v0

    .line 908
    .local v31, "activityClientController":Landroid/app/IActivityClientController;
    :goto_fa
    iget v0, v2, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    add-int/2addr v0, v6

    iput v0, v2, Lcom/android/server/wm/ActivityRecord;->launchCount:I

    .line 909
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    iput-wide v14, v2, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    .line 910
    iget-wide v14, v2, Lcom/android/server/wm/ActivityRecord;->lastLaunchTime:J

    invoke-virtual {v3, v14, v15}, Lcom/android/server/wm/WindowProcessController;->setLastActivityLaunchTime(J)V

    .line 914
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    move-object v12, v0

    .line 915
    .local v12, "lockTaskController":Lcom/android/server/wm/LockTaskController;
    iget v0, v8, Lcom/android/server/wm/Task;->mLockTaskAuth:I
    :try_end_113
    .catchall {:try_start_a5 .. :try_end_113} :catchall_3c1

    const/4 v15, 0x2

    if-eq v0, v15, :cond_126

    :try_start_116
    iget v0, v8, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v14, 0x4

    if-eq v0, v14, :cond_126

    iget v0, v8, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    const/4 v14, 0x3

    if-ne v0, v14, :cond_129

    .line 918
    invoke-virtual {v12}, Lcom/android/server/wm/LockTaskController;->getLockTaskModeState()I

    move-result v0
    :try_end_124
    .catchall {:try_start_116 .. :try_end_124} :catchall_70

    if-ne v0, v6, :cond_129

    .line 920
    :cond_126
    :try_start_126
    invoke-virtual {v12, v8, v7, v7}, Lcom/android/server/wm/LockTaskController;->startLockTaskMode(Lcom/android/server/wm/Task;ZI)V
    :try_end_129
    .catchall {:try_start_126 .. :try_end_129} :catchall_3c1

    .line 924
    :cond_129
    :try_start_129
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v0
    :try_end_12d
    .catch Landroid/os/RemoteException; {:try_start_129 .. :try_end_12d} :catch_373
    .catchall {:try_start_129 .. :try_end_12d} :catchall_3c1

    if-eqz v0, :cond_363

    .line 927
    const/4 v0, 0x0

    .line 928
    .local v0, "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    const/4 v14, 0x0

    .line 929
    .local v14, "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    if-eqz v10, :cond_145

    .line 932
    :try_start_133
    iget-object v15, v2, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    move-object v0, v15

    .line 933
    iget-object v15, v2, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;
    :try_end_138
    .catch Landroid/os/RemoteException; {:try_start_133 .. :try_end_138} :catch_13a
    .catchall {:try_start_133 .. :try_end_138} :catchall_70

    move-object v14, v15

    goto :goto_146

    .line 1021
    .end local v0  # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v14  # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :catch_13a
    move-exception v0

    move-object/from16 v39, v4

    move-object/from16 v38, v8

    move/from16 v35, v11

    move-object/from16 v36, v12

    goto/16 :goto_37c

    .line 929
    .restart local v0  # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .restart local v14  # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :cond_145
    move-object v15, v14

    .line 935
    .end local v14  # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .local v15, "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :goto_146
    :try_start_146
    sget-boolean v14, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z
    :try_end_148
    .catch Landroid/os/RemoteException; {:try_start_146 .. :try_end_148} :catch_373
    .catchall {:try_start_146 .. :try_end_148} :catchall_3c1

    if-eqz v14, :cond_18c

    :try_start_14a
    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Launching: "

    invoke-virtual {v14, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, " savedState="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 936
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getSavedState()Landroid/os/Bundle;

    move-result-object v14

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, " with results="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, " newIntents="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v14, " andResume="

    invoke-virtual {v5, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 935
    invoke-static {v13, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_18c
    .catch Landroid/os/RemoteException; {:try_start_14a .. :try_end_18c} :catch_13a
    .catchall {:try_start_14a .. :try_end_18c} :catchall_70

    .line 939
    :cond_18c
    :try_start_18c
    iget v5, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v14

    iget v6, v8, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-static {v5, v14, v6, v7}, Lcom/android/server/wm/EventLogTags;->writeWmRestartActivity(IIILjava/lang/String;)V

    .line 941
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v5
    :try_end_19d
    .catch Landroid/os/RemoteException; {:try_start_18c .. :try_end_19d} :catch_373
    .catchall {:try_start_18c .. :try_end_19d} :catchall_3c1

    if-eqz v5, :cond_1a8

    .line 943
    :try_start_19f
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateHomeProcess(Lcom/android/server/wm/WindowProcessController;)V
    :try_end_1a8
    .catch Landroid/os/RemoteException; {:try_start_19f .. :try_end_1a8} :catch_13a
    .catchall {:try_start_19f .. :try_end_1a8} :catchall_70

    .line 945
    :cond_1a8
    :try_start_1a8
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v5

    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 946
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    .line 945
    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/content/pm/PackageManagerInternal;->notifyPackageUse(Ljava/lang/String;I)V

    .line 947
    iput-boolean v7, v2, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    .line 948
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v5}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;

    move-result-object v5

    invoke-virtual {v5, v2}, Lcom/android/server/wm/AppWarnings;->onStartActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 949
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v5

    iput-object v5, v2, Lcom/android/server/wm/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    .line 954
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->prepareConfigurationForLaunchingActivity()Landroid/content/res/Configuration;

    move-result-object v5

    .line 955
    .local v5, "procConfig":Landroid/content/res/Configuration;
    new-instance v6, Landroid/util/MergedConfiguration;

    .line 956
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getMergedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-direct {v6, v5, v7}, Landroid/util/MergedConfiguration;-><init>(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 957
    .local v6, "mergedConfiguration":Landroid/util/MergedConfiguration;
    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityRecord;->setLastReportedConfiguration(Landroid/util/MergedConfiguration;)V

    .line 959
    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getSavedState()Landroid/os/Bundle;

    move-result-object v14

    invoke-direct {v1, v7, v14}, Lcom/android/server/wm/ActivityTaskSupervisor;->logIfTransactionTooLarge(Landroid/content/Intent;Landroid/os/Bundle;)V

    .line 961
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isEmbedded()Z

    move-result v7
    :try_end_1f0
    .catch Landroid/os/RemoteException; {:try_start_1a8 .. :try_end_1f0} :catch_373
    .catchall {:try_start_1a8 .. :try_end_1f0} :catchall_3c1

    if-eqz v7, :cond_1fd

    .line 964
    :try_start_1f2
    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v7, v7, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 965
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v14

    .line 964
    invoke-virtual {v7, v14}, Lcom/android/server/wm/TaskFragmentOrganizerController;->dispatchPendingInfoChangedEvent(Lcom/android/server/wm/TaskFragment;)V
    :try_end_1fd
    .catch Landroid/os/RemoteException; {:try_start_1f2 .. :try_end_1fd} :catch_13a
    .catchall {:try_start_1f2 .. :try_end_1fd} :catchall_70

    .line 969
    :cond_1fd
    nop

    .line 970
    :try_start_1fe
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    iget-object v14, v2, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    .line 969
    invoke-static {v7, v14}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v7

    .line 972
    .local v7, "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isTransitionForward()Z

    move-result v28

    .line 973
    .local v28, "isTransitionForward":Z
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v14

    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->getFragmentToken()Landroid/os/IBinder;

    move-result-object v34

    .line 974
    .local v34, "fragmentToken":Landroid/os/IBinder;
    new-instance v14, Landroid/content/Intent;
    :try_end_216
    .catch Landroid/os/RemoteException; {:try_start_1fe .. :try_end_216} :catch_373
    .catchall {:try_start_1fe .. :try_end_216} :catchall_3c1

    move/from16 v35, v11

    .end local v11  # "applicationInfoUid":I
    .local v35, "applicationInfoUid":I
    :try_start_218
    iget-object v11, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v14, v11}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 975
    invoke-static/range {p1 .. p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v11
    :try_end_221
    .catch Landroid/os/RemoteException; {:try_start_218 .. :try_end_221} :catch_35b
    .catchall {:try_start_218 .. :try_end_221} :catchall_3c1

    move-object/from16 v36, v12

    .end local v12  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .local v36, "lockTaskController":Lcom/android/server/wm/LockTaskController;
    :try_start_223
    iget-object v12, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 978
    invoke-virtual {v6}, Landroid/util/MergedConfiguration;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v17

    .line 979
    invoke-virtual {v6}, Landroid/util/MergedConfiguration;->getOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v18

    move-object/from16 v37, v6

    .end local v6  # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .local v37, "mergedConfiguration":Landroid/util/MergedConfiguration;
    iget-object v6, v2, Lcom/android/server/wm/ActivityRecord;->compat:Landroid/content/res/CompatibilityInfo;

    move-object/from16 v16, v15

    .end local v15  # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .local v16, "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    iget-object v15, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 980
    invoke-virtual {v2, v15}, Lcom/android/server/wm/ActivityRecord;->getFilteredReferrer(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    iget-object v15, v8, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 981
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->getReportedProcState()I

    move-result v22

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getSavedState()Landroid/os/Bundle;

    move-result-object v23

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getPersistentSavedState()Landroid/os/PersistableBundle;

    move-result-object v24

    .line 982
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->takeOptions()Landroid/app/ActivityOptions;

    move-result-object v27

    .line 983
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->createProfilerInfoIfNeeded()Landroid/app/ProfilerInfo;

    move-result-object v29
    :try_end_24f
    .catch Landroid/os/RemoteException; {:try_start_223 .. :try_end_24f} :catch_355
    .catchall {:try_start_223 .. :try_end_24f} :catchall_3c1

    move-object/from16 v38, v8

    .end local v8  # "task":Lcom/android/server/wm/Task;
    .local v38, "task":Lcom/android/server/wm/Task;
    :try_start_251
    iget-object v8, v2, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;
    :try_end_253
    .catch Landroid/os/RemoteException; {:try_start_251 .. :try_end_253} :catch_351
    .catchall {:try_start_251 .. :try_end_253} :catchall_3bf

    move-object/from16 v39, v4

    :try_start_255
    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->shareableActivityToken:Landroid/os/Binder;

    .line 984
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getLaunchedFromBubble()Z

    move-result v33

    .line 974
    move-object/from16 v21, v15

    move-object/from16 v40, v16

    const/16 v41, 0x2

    .end local v16  # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    .local v40, "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    move v15, v11

    move-object/from16 v16, v12

    move-object/from16 v19, v6

    move-object/from16 v25, v0

    move-object/from16 v26, v40

    move-object/from16 v30, v8

    move-object/from16 v32, v4

    invoke-static/range {v14 .. v34}, Landroid/app/servertransaction/LaunchActivityItem;->obtain(Landroid/content/Intent;ILandroid/content/pm/ActivityInfo;Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/content/res/CompatibilityInfo;Ljava/lang/String;Lcom/android/internal/app/IVoiceInteractor;ILandroid/os/Bundle;Landroid/os/PersistableBundle;Ljava/util/List;Ljava/util/List;Landroid/app/ActivityOptions;ZLandroid/app/ProfilerInfo;Landroid/os/IBinder;Landroid/app/IActivityClientController;Landroid/os/IBinder;ZLandroid/os/IBinder;)Landroid/app/servertransaction/LaunchActivityItem;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 988
    if-eqz v10, :cond_283

    .line 989
    invoke-static/range {v28 .. v28}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(Z)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v4

    .line 991
    .local v4, "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->onForegroundActivityChangedLocked(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_287

    .line 993
    .end local v4  # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :cond_283
    invoke-static {}, Landroid/app/servertransaction/PauseActivityItem;->obtain()Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v4

    .line 995
    .restart local v4  # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    :goto_287
    invoke-virtual {v7, v4}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 998
    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v6

    invoke-virtual {v6, v7}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 1000
    iget v6, v5, Landroid/content/res/Configuration;->seq:I

    iget-object v8, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v8}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    iget v8, v8, Landroid/content/res/Configuration;->seq:I

    if-le v6, v8, :cond_2a2

    .line 1003
    invoke-virtual {v3, v5}, Lcom/android/server/wm/WindowProcessController;->setLastReportedConfiguration(Landroid/content/res/Configuration;)V

    .line 1005
    :cond_2a2
    iget-object v6, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v6, Landroid/content/pm/ApplicationInfo;->privateFlags:I

    and-int/lit8 v6, v6, 0x2

    if-eqz v6, :cond_2f1

    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    if-eqz v6, :cond_2f1

    .line 1010
    iget-object v6, v3, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget-object v8, v3, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2f1

    .line 1011
    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v6, :cond_2ec

    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v6, v3, :cond_2ec

    .line 1013
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Starting new heavy weight process "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v8, " when already running "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v8, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v8, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v13, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1017
    :cond_2ec
    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->setHeavyWeightProcess(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_2f1
    .catch Landroid/os/RemoteException; {:try_start_255 .. :try_end_2f1} :catch_371
    .catchall {:try_start_255 .. :try_end_2f1} :catchall_3bf

    .line 1036
    .end local v0  # "results":Ljava/util/List;, "Ljava/util/List<Landroid/app/ResultInfo;>;"
    .end local v4  # "lifecycleItem":Landroid/app/servertransaction/ActivityLifecycleItem;
    .end local v5  # "procConfig":Landroid/content/res/Configuration;
    .end local v7  # "clientTransaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v28  # "isTransitionForward":Z
    .end local v34  # "fragmentToken":Landroid/os/IBinder;
    .end local v37  # "mergedConfiguration":Landroid/util/MergedConfiguration;
    .end local v40  # "newIntents":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/content/ReferrerIntent;>;"
    :cond_2f1
    nop

    .line 1038
    .end local v31  # "activityClientController":Landroid/app/IActivityClientController;
    .end local v35  # "applicationInfoUid":I
    .end local v36  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 1039
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()Z

    .line 1040
    nop

    .line 1042
    const/4 v4, 0x0

    iput-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 1046
    if-eqz v10, :cond_308

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->readyToResume()Z

    move-result v0

    if-eqz v0, :cond_308

    .line 1049
    invoke-virtual {v9, v2}, Lcom/android/server/wm/Task;->minimalResumeActivityLocked(Lcom/android/server/wm/ActivityRecord;)V

    goto :goto_32c

    .line 1054
    :cond_308
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_31f

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x578b3372

    const/4 v6, 0x1

    new-array v7, v6, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v7, v6

    const/4 v8, 0x0

    invoke-static {v4, v5, v6, v8, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1056
    .end local v0  # "protoLogParam0":Ljava/lang/String;
    :cond_31f
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    const-string/jumbo v4, "realStartActivityLocked"

    invoke-virtual {v2, v0, v4}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 1057
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->executeAppTransitionForAllDisplay()V

    .line 1061
    :goto_32c
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v3, v0, v4}, Lcom/android/server/wm/WindowProcessController;->onStartActivity(ILandroid/content/pm/ActivityInfo;)V

    .line 1067
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v9}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedRootTask(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_346

    .line 1068
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStartController;->startSetupActivity()V

    .line 1073
    :cond_346
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_34f

    .line 1074
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->updateServiceConnectionActivities()V

    .line 1077
    :cond_34f
    const/4 v4, 0x1

    return v4

    .line 1021
    .restart local v31  # "activityClientController":Landroid/app/IActivityClientController;
    .restart local v35  # "applicationInfoUid":I
    .restart local v36  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    :catch_351
    move-exception v0

    move-object/from16 v39, v4

    goto :goto_37c

    .end local v38  # "task":Lcom/android/server/wm/Task;
    .restart local v8  # "task":Lcom/android/server/wm/Task;
    :catch_355
    move-exception v0

    move-object/from16 v39, v4

    move-object/from16 v38, v8

    .end local v8  # "task":Lcom/android/server/wm/Task;
    .restart local v38  # "task":Lcom/android/server/wm/Task;
    goto :goto_37c

    .end local v36  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v38  # "task":Lcom/android/server/wm/Task;
    .restart local v8  # "task":Lcom/android/server/wm/Task;
    .restart local v12  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    :catch_35b
    move-exception v0

    move-object/from16 v39, v4

    move-object/from16 v38, v8

    move-object/from16 v36, v12

    .end local v8  # "task":Lcom/android/server/wm/Task;
    .end local v12  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v36  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v38  # "task":Lcom/android/server/wm/Task;
    goto :goto_37c

    .line 925
    .end local v35  # "applicationInfoUid":I
    .end local v36  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v38  # "task":Lcom/android/server/wm/Task;
    .restart local v8  # "task":Lcom/android/server/wm/Task;
    .restart local v11  # "applicationInfoUid":I
    .restart local v12  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    :cond_363
    move-object/from16 v39, v4

    move-object/from16 v38, v8

    move/from16 v35, v11

    move-object/from16 v36, v12

    .end local v8  # "task":Lcom/android/server/wm/Task;
    .end local v11  # "applicationInfoUid":I
    .end local v12  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v35  # "applicationInfoUid":I
    .restart local v36  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v38  # "task":Lcom/android/server/wm/Task;
    :try_start_36b
    new-instance v0, Landroid/os/RemoteException;

    invoke-direct {v0}, Landroid/os/RemoteException;-><init>()V

    .end local v9  # "rootTask":Lcom/android/server/wm/Task;
    .end local v10  # "andResume":Z
    .end local v31  # "activityClientController":Landroid/app/IActivityClientController;
    .end local v35  # "applicationInfoUid":I
    .end local v36  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v38  # "task":Lcom/android/server/wm/Task;
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskSupervisor;
    .end local p1  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local p2  # "proc":Lcom/android/server/wm/WindowProcessController;
    .end local p4  # "checkConfig":Z
    throw v0
    :try_end_371
    .catch Landroid/os/RemoteException; {:try_start_36b .. :try_end_371} :catch_371
    .catchall {:try_start_36b .. :try_end_371} :catchall_3bf

    .line 1021
    .restart local v9  # "rootTask":Lcom/android/server/wm/Task;
    .restart local v10  # "andResume":Z
    .restart local v31  # "activityClientController":Landroid/app/IActivityClientController;
    .restart local v35  # "applicationInfoUid":I
    .restart local v36  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v38  # "task":Lcom/android/server/wm/Task;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskSupervisor;
    .restart local p1  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local p2  # "proc":Lcom/android/server/wm/WindowProcessController;
    .restart local p4  # "checkConfig":Z
    :catch_371
    move-exception v0

    goto :goto_37c

    .end local v35  # "applicationInfoUid":I
    .end local v36  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .end local v38  # "task":Lcom/android/server/wm/Task;
    .restart local v8  # "task":Lcom/android/server/wm/Task;
    .restart local v11  # "applicationInfoUid":I
    .restart local v12  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    :catch_373
    move-exception v0

    move-object/from16 v39, v4

    move-object/from16 v38, v8

    move/from16 v35, v11

    move-object/from16 v36, v12

    .line 1022
    .end local v8  # "task":Lcom/android/server/wm/Task;
    .end local v11  # "applicationInfoUid":I
    .end local v12  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .local v0, "e":Landroid/os/RemoteException;
    .restart local v35  # "applicationInfoUid":I
    .restart local v36  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v38  # "task":Lcom/android/server/wm/Task;
    :goto_37c
    :try_start_37c
    iget-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    if-eqz v4, :cond_3b7

    .line 1024
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Second failure launching "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1025
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", giving up"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1024
    invoke-static {v13, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1026
    move-object/from16 v4, v39

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowProcessController;->appDied(Ljava/lang/String;)V

    .line 1027
    const/4 v5, 0x0

    invoke-virtual {v2, v4, v5}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I
    :try_end_3af
    .catchall {:try_start_37c .. :try_end_3af} :catchall_3bf

    .line 1028
    nop

    .line 1038
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 1039
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()Z

    .line 1028
    return v5

    .line 1033
    :cond_3b7
    const/4 v4, 0x1

    :try_start_3b8
    iput-boolean v4, v2, Lcom/android/server/wm/ActivityRecord;->launchFailed:Z

    .line 1034
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->detachFromProcess()V

    .line 1035
    nop

    .end local v9  # "rootTask":Lcom/android/server/wm/Task;
    .end local v10  # "andResume":Z
    .end local v38  # "task":Lcom/android/server/wm/Task;
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskSupervisor;
    .end local p1  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local p2  # "proc":Lcom/android/server/wm/WindowProcessController;
    .end local p4  # "checkConfig":Z
    throw v0
    :try_end_3bf
    .catchall {:try_start_3b8 .. :try_end_3bf} :catchall_3bf

    .line 1038
    .end local v0  # "e":Landroid/os/RemoteException;
    .end local v31  # "activityClientController":Landroid/app/IActivityClientController;
    .end local v35  # "applicationInfoUid":I
    .end local v36  # "lockTaskController":Lcom/android/server/wm/LockTaskController;
    .restart local v9  # "rootTask":Lcom/android/server/wm/Task;
    .restart local v10  # "andResume":Z
    .restart local v38  # "task":Lcom/android/server/wm/Task;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskSupervisor;
    .restart local p1  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local p2  # "proc":Lcom/android/server/wm/WindowProcessController;
    .restart local p4  # "checkConfig":Z
    :catchall_3bf
    move-exception v0

    goto :goto_3ca

    .end local v38  # "task":Lcom/android/server/wm/Task;
    .restart local v8  # "task":Lcom/android/server/wm/Task;
    :catchall_3c1
    move-exception v0

    move-object/from16 v38, v8

    .end local v8  # "task":Lcom/android/server/wm/Task;
    .restart local v38  # "task":Lcom/android/server/wm/Task;
    goto :goto_3ca

    .end local v10  # "andResume":Z
    .end local v38  # "task":Lcom/android/server/wm/Task;
    .restart local v8  # "task":Lcom/android/server/wm/Task;
    .restart local p3  # "andResume":Z
    :catchall_3c5
    move-exception v0

    move-object/from16 v38, v8

    move/from16 v10, p3

    .end local v8  # "task":Lcom/android/server/wm/Task;
    .end local p3  # "andResume":Z
    .restart local v10  # "andResume":Z
    .restart local v38  # "task":Lcom/android/server/wm/Task;
    :goto_3ca
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 1039
    invoke-virtual/range {p2 .. p2}, Lcom/android/server/wm/WindowProcessController;->resumeConfigurationDispatch()Z

    .line 1040
    throw v0
.end method

.method removeHistoryRecords(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4
    .param p1, "app"  # Lcom/android/server/wm/WindowProcessController;

    .line 2228
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    const-string/jumbo v1, "mStoppingActivities"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeHistoryRecords(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 2229
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    const-string v1, "mFinishingActivities"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeHistoryRecords(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 2230
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    const-string v1, "mNoHistoryActivities"

    invoke-direct {p0, v0, p1, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeHistoryRecords(Ljava/util/ArrayList;Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)V

    .line 2231
    return-void
.end method

.method removeIdleTimeoutForActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 2408
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeTimeoutsForActivity: Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    .line 2409
    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2408
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2410
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2411
    return-void
.end method

.method removeRestartTimeouts(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 2443
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v1, 0xd5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->removeMessages(ILjava/lang/Object;)V

    .line 2444
    return-void
.end method

.method removeRootTask(Lcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "task"  # Lcom/android/server/wm/Task;

    .line 1716
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda8;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda8;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 1717
    return-void
.end method

.method removeSleepTimeouts()V
    .registers 3

    .line 2434
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v1, 0xcb

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->removeMessages(I)V

    .line 2435
    return-void
.end method

.method removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V
    .registers 9
    .param p1, "task"  # Lcom/android/server/wm/Task;
    .param p2, "killProcess"  # Z
    .param p3, "removeFromRecents"  # Z
    .param p4, "reason"  # Ljava/lang/String;

    .line 1740
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    if-eqz v0, :cond_5

    .line 1742
    return-void

    .line 1744
    :cond_5
    iget-object v0, p1, Lcom/android/server/wm/Task;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TransitionController;->requestCloseTransitionIfNeeded(Lcom/android/server/wm/WindowContainer;)V

    .line 1745
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    .line 1747
    const/4 v1, 0x0

    :try_start_e
    invoke-virtual {p1, p4, v1}, Lcom/android/server/wm/Task;->removeActivities(Ljava/lang/String;Z)V

    .line 1748
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->cleanUpRemovedTaskLocked(Lcom/android/server/wm/Task;ZZ)V

    .line 1749
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    .line 1750
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1751
    iget-boolean v2, p1, Lcom/android/server/wm/Task;->isPersistable:Z

    if-eqz v2, :cond_30

    .line 1752
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V
    :try_end_30
    .catchall {:try_start_e .. :try_end_30} :catchall_4a

    .line 1755
    :cond_30
    iput-boolean v1, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    .line 1756
    nop

    .line 1758
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v1

    if-eqz v1, :cond_40

    .line 1759
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v1, p1, v0}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->removeFreeFormActivityStack(Lcom/android/server/wm/Task;Z)V

    .line 1763
    :cond_40
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v0

    iget v1, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v0, v1}, Lcom/android/server/wm/WindowManagerServiceStub;->clearOverrideBrightnessRecord(I)V

    .line 1765
    return-void

    .line 1755
    :catchall_4a
    move-exception v0

    iput-boolean v1, p1, Lcom/android/server/wm/Task;->mInRemoveTask:Z

    .line 1756
    throw v0
.end method

.method removeTaskById(IZZLjava/lang/String;)Z
    .registers 8
    .param p1, "taskId"  # I
    .param p2, "killProcess"  # Z
    .param p3, "removeFromRecents"  # Z
    .param p4, "reason"  # Ljava/lang/String;

    .line 1729
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1730
    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1731
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_d

    .line 1732
    invoke-virtual {p0, v0, p2, p3, p4}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    .line 1733
    return v1

    .line 1735
    :cond_d
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Request to remove task ignored for non-existent task "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1736
    const/4 v1, 0x0

    return v1
.end method

.method reportActivityLaunched(ZLcom/android/server/wm/ActivityRecord;JI)V
    .registers 11
    .param p1, "timeout"  # Z
    .param p2, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "totalTime"  # J
    .param p5, "launchState"  # I

    .line 667
    const/4 v0, 0x0

    .line 668
    .local v0, "changed":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_2f

    .line 669
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;

    .line 670
    .local v2, "info":Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;
    invoke-virtual {v2, p2}, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->matches(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-nez v3, :cond_1a

    .line 671
    goto :goto_2c

    .line 673
    :cond_1a
    iget-object v3, v2, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mResult:Landroid/app/WaitResult;

    .line 674
    .local v3, "w":Landroid/app/WaitResult;
    iput-boolean p1, v3, Landroid/app/WaitResult;->timeout:Z

    .line 675
    iget-object v4, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v4, v3, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 676
    iput-wide p3, v3, Landroid/app/WaitResult;->totalTime:J

    .line 677
    iput p5, v3, Landroid/app/WaitResult;->launchState:I

    .line 678
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 679
    const/4 v0, 0x1

    .line 668
    .end local v2  # "info":Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;
    .end local v3  # "w":Landroid/app/WaitResult;
    :goto_2c
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 681
    .end local v1  # "i":I
    :cond_2f
    if-eqz v0, :cond_38

    .line 682
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 684
    :cond_38
    return-void
.end method

.method reportResumedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 6
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 2121
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 2123
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2124
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_21

    .line 2125
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x0

    invoke-virtual {v1, v3, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 2128
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->executeAppTransitionForAllDisplay()V

    .line 2129
    const/4 v1, 0x1

    return v1

    .line 2131
    :cond_21
    return v2
.end method

.method reportWaitingActivityLaunchedIfNeeded(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 9
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "result"  # I

    .line 687
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 688
    return-void

    .line 691
    :cond_9
    const/4 v0, 0x3

    if-eq p2, v0, :cond_10

    const/4 v1, 0x2

    if-eq p2, v1, :cond_10

    .line 692
    return-void

    .line 695
    :cond_10
    const/4 v1, 0x0

    .line 697
    .local v1, "changed":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_19
    if-ltz v2, :cond_3d

    .line 698
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;

    .line 699
    .local v3, "info":Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;
    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->matches(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v4

    if-nez v4, :cond_2a

    .line 700
    goto :goto_3a

    .line 702
    :cond_2a
    iget-object v4, v3, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;->mResult:Landroid/app/WaitResult;

    .line 703
    .local v4, "w":Landroid/app/WaitResult;
    iput p2, v4, Landroid/app/WaitResult;->result:I

    .line 704
    if-ne p2, v0, :cond_3a

    .line 707
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iput-object v5, v4, Landroid/app/WaitResult;->who:Landroid/content/ComponentName;

    .line 708
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 709
    const/4 v1, 0x1

    .line 697
    .end local v3  # "info":Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;
    .end local v4  # "w":Landroid/app/WaitResult;
    :cond_3a
    :goto_3a
    add-int/lit8 v2, v2, -0x1

    goto :goto_19

    .line 712
    .end local v2  # "i":I
    :cond_3d
    if-eqz v1, :cond_46

    .line 713
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 715
    :cond_46
    return-void
.end method

.method resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;
    .registers 12
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "rInfo"  # Landroid/content/pm/ResolveInfo;
    .param p3, "startFlags"  # I
    .param p4, "profilerInfo"  # Landroid/app/ProfilerInfo;

    .line 719
    if-eqz p2, :cond_5

    iget-object v0, p2, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    goto :goto_6

    :cond_5
    const/4 v0, 0x0

    .line 720
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_6
    if-eqz v0, :cond_a0

    .line 725
    new-instance v1, Landroid/content/ComponentName;

    iget-object v2, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 728
    and-int/lit8 v1, p3, 0xe

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_1e

    move v1, v2

    goto :goto_1f

    :cond_1e
    move v1, v3

    .line 730
    .local v1, "requestDebug":Z
    :goto_1f
    if-eqz p4, :cond_23

    move v4, v2

    goto :goto_24

    :cond_23
    move v4, v3

    .line 731
    .local v4, "requestProfile":Z
    :goto_24
    if-nez v1, :cond_28

    if-eqz v4, :cond_8d

    .line 732
    :cond_28
    sget-boolean v5, Landroid/os/Build;->IS_DEBUGGABLE:Z

    if-nez v5, :cond_34

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x2

    if-eqz v5, :cond_40

    :cond_34
    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    const-string/jumbo v6, "system"

    .line 734
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_40

    goto :goto_41

    :cond_40
    move v2, v3

    .line 735
    .local v2, "debuggable":Z
    :goto_41
    if-eqz v1, :cond_45

    if-eqz v2, :cond_51

    :cond_45
    if-eqz v4, :cond_6c

    if-nez v2, :cond_6c

    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 736
    invoke-virtual {v3}, Landroid/content/pm/ApplicationInfo;->isProfileableByShell()Z

    move-result v3

    if-nez v3, :cond_6c

    .line 737
    :cond_51
    const-string v3, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ignore debugging for non-debuggable app: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_8d

    .line 743
    :cond_6c
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_71
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 745
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v6, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda6;

    invoke-direct {v6, p0, v0, p3, p4}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/content/pm/ActivityInfo;ILandroid/app/ProfilerInfo;)V

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z
    :try_end_80
    .catchall {:try_start_71 .. :try_end_80} :catchall_9a

    .line 758
    :try_start_80
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v5}, Ljava/lang/Object;->wait()V
    :try_end_87
    .catch Ljava/lang/InterruptedException; {:try_start_80 .. :try_end_87} :catch_88
    .catchall {:try_start_80 .. :try_end_87} :catchall_9a

    .line 761
    goto :goto_89

    .line 759
    :catch_88
    move-exception v5

    .line 762
    :goto_89
    :try_start_89
    monitor-exit v3
    :try_end_8a
    .catchall {:try_start_89 .. :try_end_8a} :catchall_9a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 765
    .end local v2  # "debuggable":Z
    :cond_8d
    :goto_8d
    invoke-virtual {p1}, Landroid/content/Intent;->getLaunchToken()Ljava/lang/String;

    move-result-object v2

    .line 766
    .local v2, "intentLaunchToken":Ljava/lang/String;
    iget-object v3, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    if-nez v3, :cond_a0

    if-eqz v2, :cond_a0

    .line 767
    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->launchToken:Ljava/lang/String;

    goto :goto_a0

    .line 762
    .local v2, "debuggable":Z
    :catchall_9a
    move-exception v5

    :try_start_9b
    monitor-exit v3
    :try_end_9c
    .catchall {:try_start_9b .. :try_end_9c} :catchall_9a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v5

    .line 770
    .end local v1  # "requestDebug":Z
    .end local v2  # "debuggable":Z
    .end local v4  # "requestProfile":Z
    :cond_a0
    :goto_a0
    return-object v0
.end method

.method public resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;
    .registers 13
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "resolvedType"  # Ljava/lang/String;
    .param p3, "startFlags"  # I
    .param p4, "profilerInfo"  # Landroid/app/ProfilerInfo;
    .param p5, "userId"  # I
    .param p6, "filterCallingUid"  # I

    .line 829
    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 830
    .local v0, "rInfo":Landroid/content/pm/ResolveInfo;
    invoke-virtual {p0, p1, v0, p3, p4}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Landroid/content/pm/ResolveInfo;ILandroid/app/ProfilerInfo;)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    return-object v1
.end method

.method resolveIntent(Landroid/content/Intent;Ljava/lang/String;III)Landroid/content/pm/ResolveInfo;
    .registers 13
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "resolvedType"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .param p4, "flags"  # I
    .param p5, "filterCallingUid"  # I

    .line 776
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method resolveIntent(Landroid/content/Intent;Ljava/lang/String;IIII)Landroid/content/pm/ResolveInfo;
    .registers 26
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "resolvedType"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .param p4, "flags"  # I
    .param p5, "filterCallingUid"  # I
    .param p6, "callingPid"  # I

    move-object/from16 v1, p0

    move-object/from16 v12, p1

    .line 783
    const-wide/16 v13, 0x20

    :try_start_6
    const-string/jumbo v0, "resolveIntent"

    invoke-static {v13, v14, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 784
    const/high16 v0, 0x10000

    or-int v0, p4, v0

    or-int/lit16 v0, v0, 0x400

    .line 786
    .local v0, "modifiedFlags":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v2

    if-nez v2, :cond_23

    .line 787
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x800

    if-eqz v2, :cond_21

    goto :goto_23

    :cond_21
    move v15, v0

    goto :goto_27

    .line 788
    :cond_23
    :goto_23
    const/high16 v2, 0x800000

    or-int/2addr v0, v2

    move v15, v0

    .line 790
    .end local v0  # "modifiedFlags":I
    .local v15, "modifiedFlags":I
    :goto_27
    const/4 v0, 0x0

    .line 791
    .local v0, "privateResolveFlags":I
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->isWebIntent()Z

    move-result v2

    if-eqz v2, :cond_38

    .line 792
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x400

    if-eqz v2, :cond_38

    .line 793
    or-int/lit8 v0, v0, 0x1

    .line 795
    :cond_38
    invoke-virtual/range {p1 .. p1}, Landroid/content/Intent;->getFlags()I

    move-result v2

    and-int/lit16 v2, v2, 0x200

    if-eqz v2, :cond_44

    .line 796
    or-int/lit8 v0, v0, 0x2

    move v11, v0

    goto :goto_45

    .line 795
    :cond_44
    move v11, v0

    .line 805
    .end local v0  # "privateResolveFlags":I
    .local v11, "privateResolveFlags":I
    :goto_45
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_4a
    .catchall {:try_start_6 .. :try_end_4a} :catchall_aa

    :try_start_4a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 806
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    move/from16 v10, p5

    move/from16 v9, p6

    invoke-virtual {v0, v9, v10}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0
    :try_end_57
    .catchall {:try_start_4a .. :try_end_57} :catchall_a0

    .line 807
    .local v0, "wpc":Lcom/android/server/wm/WindowProcessController;
    if-eqz v0, :cond_69

    :try_start_59
    iget-object v3, v0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    if-eqz v3, :cond_69

    .line 808
    iget-object v3, v0, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, v3, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v3}, Landroid/content/Intent;->setSender(Ljava/lang/String;)V
    :try_end_64
    .catchall {:try_start_59 .. :try_end_64} :catchall_65

    goto :goto_6d

    .line 812
    .end local v0  # "wpc":Lcom/android/server/wm/WindowProcessController;
    :catchall_65
    move-exception v0

    move/from16 v18, v11

    goto :goto_a3

    .line 810
    .restart local v0  # "wpc":Lcom/android/server/wm/WindowProcessController;
    :cond_69
    const/4 v3, 0x0

    :try_start_6a
    invoke-virtual {v12, v3}, Landroid/content/Intent;->setSender(Ljava/lang/String;)V

    .line 812
    .end local v0  # "wpc":Lcom/android/server/wm/WindowProcessController;
    :goto_6d
    monitor-exit v2
    :try_end_6e
    .catchall {:try_start_6a .. :try_end_6e} :catchall_a0

    :try_start_6e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 814
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_75
    .catchall {:try_start_6e .. :try_end_75} :catchall_aa

    move-wide/from16 v16, v2

    .line 816
    .local v16, "token":J
    :try_start_77
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2
    :try_end_7d
    .catchall {:try_start_77 .. :try_end_7d} :catchall_98

    int-to-long v5, v15

    int-to-long v7, v11

    const/4 v0, 0x1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v9, p3

    move v10, v0

    move/from16 v18, v11

    .end local v11  # "privateResolveFlags":I
    .local v18, "privateResolveFlags":I
    move/from16 v11, p5

    :try_start_8b
    invoke-virtual/range {v2 .. v11}, Landroid/content/pm/PackageManagerInternal;->resolveIntent(Landroid/content/Intent;Ljava/lang/String;JJIZI)Landroid/content/pm/ResolveInfo;

    move-result-object v0
    :try_end_8f
    .catchall {:try_start_8b .. :try_end_8f} :catchall_96

    .line 820
    :try_start_8f
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_92
    .catchall {:try_start_8f .. :try_end_92} :catchall_aa

    .line 823
    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 816
    return-object v0

    .line 820
    :catchall_96
    move-exception v0

    goto :goto_9b

    .end local v18  # "privateResolveFlags":I
    .restart local v11  # "privateResolveFlags":I
    :catchall_98
    move-exception v0

    move/from16 v18, v11

    .end local v11  # "privateResolveFlags":I
    .restart local v18  # "privateResolveFlags":I
    :goto_9b
    :try_start_9b
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 821
    nop

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskSupervisor;
    .end local p1  # "intent":Landroid/content/Intent;
    .end local p2  # "resolvedType":Ljava/lang/String;
    .end local p3  # "userId":I
    .end local p4  # "flags":I
    .end local p5  # "filterCallingUid":I
    .end local p6  # "callingPid":I
    throw v0
    :try_end_a0
    .catchall {:try_start_9b .. :try_end_a0} :catchall_aa

    .line 812
    .end local v16  # "token":J
    .end local v18  # "privateResolveFlags":I
    .restart local v11  # "privateResolveFlags":I
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskSupervisor;
    .restart local p1  # "intent":Landroid/content/Intent;
    .restart local p2  # "resolvedType":Ljava/lang/String;
    .restart local p3  # "userId":I
    .restart local p4  # "flags":I
    .restart local p5  # "filterCallingUid":I
    .restart local p6  # "callingPid":I
    :catchall_a0
    move-exception v0

    move/from16 v18, v11

    .end local v11  # "privateResolveFlags":I
    .restart local v18  # "privateResolveFlags":I
    :goto_a3
    :try_start_a3
    monitor-exit v2
    :try_end_a4
    .catchall {:try_start_a3 .. :try_end_a4} :catchall_a8

    :try_start_a4
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskSupervisor;
    .end local p1  # "intent":Landroid/content/Intent;
    .end local p2  # "resolvedType":Ljava/lang/String;
    .end local p3  # "userId":I
    .end local p4  # "flags":I
    .end local p5  # "filterCallingUid":I
    .end local p6  # "callingPid":I
    throw v0
    :try_end_a8
    .catchall {:try_start_a4 .. :try_end_a8} :catchall_aa

    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskSupervisor;
    .restart local p1  # "intent":Landroid/content/Intent;
    .restart local p2  # "resolvedType":Ljava/lang/String;
    .restart local p3  # "userId":I
    .restart local p4  # "flags":I
    .restart local p5  # "filterCallingUid":I
    .restart local p6  # "callingPid":I
    :catchall_a8
    move-exception v0

    goto :goto_a3

    .line 823
    .end local v15  # "modifiedFlags":I
    .end local v18  # "privateResolveFlags":I
    :catchall_aa
    move-exception v0

    invoke-static {v13, v14}, Landroid/os/Trace;->traceEnd(J)V

    .line 824
    throw v0
.end method

.method restoreRecentTaskLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Z)Z
    .registers 10
    .param p1, "task"  # Lcom/android/server/wm/Task;
    .param p2, "aOptions"  # Landroid/app/ActivityOptions;
    .param p3, "onTop"  # Z

    .line 1851
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1852
    const/4 v1, 0x0

    invoke-virtual {v0, v1, p2, p1, p3}, Lcom/android/server/wm/RootWindowContainer;->getOrCreateRootTask(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1854
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1855
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v1, v0}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->updateCornerRadius(Lcom/android/server/wm/Task;)V

    .line 1857
    :cond_14
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    const/4 v2, 0x0

    const-string v3, "ActivityTaskManager"

    if-eqz v1, :cond_46

    if-eqz p2, :cond_46

    .line 1858
    invoke-virtual {p2}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 1859
    .local v1, "bounds":Landroid/graphics/Rect;
    if-eqz v1, :cond_46

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_46

    .line 1860
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "restoreRecentTaskLocked freeform stack resize bounds: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1861
    const/4 v4, 0x2

    invoke-virtual {v0, v1, v4, v2}, Lcom/android/server/wm/Task;->resize(Landroid/graphics/Rect;IZ)Z

    .line 1865
    .end local v1  # "bounds":Landroid/graphics/Rect;
    :cond_46
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 1867
    .local v1, "parent":Lcom/android/server/wm/WindowContainer;
    const/4 v4, 0x1

    if-eq v1, v0, :cond_93

    if-ne p1, v0, :cond_50

    goto :goto_93

    .line 1872
    :cond_50
    if-eqz v1, :cond_5c

    .line 1874
    const v2, 0x7fffffff

    const-string/jumbo v3, "restoreRecentTaskLocked"

    invoke-virtual {p1, v0, v2, v4, v3}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;IZLjava/lang/String;)V

    .line 1875
    return v4

    .line 1878
    :cond_5c
    invoke-virtual {v0, p1, p3, v4}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;ZZ)V

    .line 1881
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_6e

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inSplitScreenPrimaryWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_6e

    .line 1882
    invoke-virtual {p1, v2}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 1886
    :cond_6e
    sget-boolean v2, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v2, :cond_92

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Added restored task="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, " to root task="

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1888
    :cond_92
    return v4

    .line 1869
    :cond_93
    :goto_93
    return v4
.end method

.method final scheduleIdle()V
    .registers 4

    .line 2312
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v1, 0xc9

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_31

    .line 2313
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v0, :cond_2c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "scheduleIdle: Callers="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v2, 0x4

    invoke-static {v2}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2314
    :cond_2c
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2316
    :cond_31
    return-void
.end method

.method scheduleIdleTimeout(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "next"  # Lcom/android/server/wm/ActivityRecord;

    .line 2306
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_IDLE:Z

    if-eqz v0, :cond_22

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "scheduleIdleTimeout: Callers="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x4

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2307
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v1, 0xc8

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 2308
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    sget v2, Lcom/android/server/wm/ActivityTaskSupervisor;->IDLE_TIMEOUT:I

    int-to-long v2, v2

    invoke-virtual {v1, v0, v2, v3}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2309
    return-void
.end method

.method scheduleLaunchTaskBehindComplete(Landroid/os/IBinder;)V
    .registers 4
    .param p1, "token"  # Landroid/os/IBinder;

    .line 2152
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v1, 0xd4

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 2153
    return-void
.end method

.method scheduleProcessStoppingAndFinishingActivitiesIfNeeded()V
    .registers 3

    .line 2420
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mFinishingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2421
    return-void

    .line 2423
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->allResumedActivitiesIdle()Z

    move-result v0

    if-eqz v0, :cond_1d

    .line 2424
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdle()V

    .line 2425
    return-void

    .line 2427
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v1, 0xcd

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 2428
    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->allResumedActivitiesVisible()Z

    move-result v0

    if-eqz v0, :cond_34

    .line 2429
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2431
    :cond_34
    return-void
.end method

.method final scheduleRestartTimeout(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 2447
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRestartTimeouts(Lcom/android/server/wm/ActivityRecord;)V

    .line 2448
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v1, 0xd5

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 2450
    return-void
.end method

.method final scheduleResumeTopActivities()V
    .registers 3

    .line 2414
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_f

    .line 2415
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2417
    :cond_f
    return-void
.end method

.method final scheduleSleepTimeout()V
    .registers 5

    .line 2438
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeSleepTimeouts()V

    .line 2439
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    sget v1, Lcom/android/server/wm/ActivityTaskSupervisor;->SLEEP_TIMEOUT:I

    int-to-long v1, v1

    const/16 v3, 0xcb

    invoke-virtual {v0, v3, v1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->sendEmptyMessageDelayed(IJ)Z

    .line 2440
    return-void
.end method

.method scheduleUpdateMultiWindowMode(Lcom/android/server/wm/Task;)V
    .registers 5
    .param p1, "task"  # Lcom/android/server/wm/Task;

    .line 2517
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda3;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 2519
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 2517
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 2520
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2521
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2523
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v2, 0xd6

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_24

    .line 2524
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2526
    :cond_24
    return-void
.end method

.method scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "task"  # Lcom/android/server/wm/Task;
    .param p2, "targetRootTaskBounds"  # Landroid/graphics/Rect;

    .line 2545
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityTaskSupervisor$$ExternalSyntheticLambda2;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 2547
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 2545
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 2548
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p1, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2549
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2551
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPipModeChangedTargetRootTaskBounds:Landroid/graphics/Rect;

    .line 2553
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    const/16 v2, 0xd7

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->hasMessages(I)Z

    move-result v1

    if-nez v1, :cond_26

    .line 2554
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mHandler:Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor$ActivityTaskSupervisorHandler;->sendEmptyMessage(I)Z

    .line 2556
    :cond_26
    return-void
.end method

.method scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V
    .registers 5
    .param p1, "task"  # Lcom/android/server/wm/Task;
    .param p2, "prevRootTask"  # Lcom/android/server/wm/Task;

    .line 2535
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2536
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-eqz p2, :cond_1d

    if-eq p2, v0, :cond_15

    .line 2537
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_15

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_15

    goto :goto_1d

    .line 2541
    :cond_15
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    .line 2542
    return-void

    .line 2538
    :cond_1d
    :goto_1d
    return-void
.end method

.method setDeferRootVisibilityUpdate(Z)V
    .registers 2
    .param p1, "deferUpdate"  # Z

    .line 2597
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDeferRootVisibilityUpdate:Z

    .line 2598
    return-void
.end method

.method setLaunchSource(I)V
    .registers 4
    .param p1, "uid"  # I

    .line 1433
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchingActivityWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p1}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 1434
    return-void
.end method

.method setNextTaskIdForUser(II)V
    .registers 5
    .param p1, "taskId"  # I
    .param p2, "userId"  # I

    .line 578
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    const/4 v1, -0x1

    invoke-virtual {v0, p2, v1}, Landroid/util/SparseIntArray;->get(II)I

    move-result v0

    .line 579
    .local v0, "currentTaskId":I
    if-le p1, v0, :cond_e

    .line 580
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mCurTaskIdForUser:Landroid/util/SparseIntArray;

    invoke-virtual {v1, p2, p1}, Landroid/util/SparseIntArray;->put(II)V

    .line 582
    :cond_e
    return-void
.end method

.method setRecentTasks(Lcom/android/server/wm/RecentTasks;)V
    .registers 3
    .param p1, "recentTasks"  # Lcom/android/server/wm/RecentTasks;

    .line 536
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    if-eqz v0, :cond_7

    .line 537
    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentTasks;->unregisterCallback(Lcom/android/server/wm/RecentTasks$Callbacks;)V

    .line 539
    :cond_7
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 540
    invoke-virtual {p1, p0}, Lcom/android/server/wm/RecentTasks;->registerCallback(Lcom/android/server/wm/RecentTasks$Callbacks;)V

    .line 541
    return-void
.end method

.method setRunningTasks(Lcom/android/server/wm/RunningTasks;)V
    .registers 2
    .param p1, "runningTasks"  # Lcom/android/server/wm/RunningTasks;

    .line 545
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRunningTasks:Lcom/android/server/wm/RunningTasks;

    .line 546
    return-void
.end method

.method setSplitScreenResizing(Z)V
    .registers 3
    .param p1, "resizing"  # Z

    .line 1649
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDockedRootTaskResizing:Z

    if-ne p1, v0, :cond_5

    .line 1650
    return-void

    .line 1653
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mDockedRootTaskResizing:Z

    .line 1654
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowManagerService;->setDockedRootTaskResizing(Z)V

    .line 1655
    return-void
.end method

.method setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 3
    .param p1, "wm"  # Lcom/android/server/wm/WindowManagerService;

    .line 565
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 566
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/KeyguardController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 567
    return-void
.end method

.method shutdownLocked(I)Z
    .registers 9
    .param p1, "timeout"  # I

    .line 1984
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->goingToSleepLocked()V

    .line 1986
    const/4 v0, 0x0

    .line 1987
    .local v0, "timedout":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    int-to-long v3, p1

    add-long/2addr v1, v3

    .line 1989
    .local v1, "endTime":J
    :goto_a
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, v4, v4}, Lcom/android/server/wm/RootWindowContainer;->putTasksToSleep(ZZ)Z

    move-result v3

    if-nez v3, :cond_32

    .line 1991
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sub-long v3, v1, v3

    .line 1992
    .local v3, "timeRemaining":J
    const-wide/16 v5, 0x0

    cmp-long v5, v3, v5

    if-lez v5, :cond_2a

    .line 1994
    :try_start_1f
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v5, v3, v4}, Ljava/lang/Object;->wait(J)V
    :try_end_26
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_26} :catch_27

    goto :goto_28

    .line 1995
    :catch_27
    move-exception v5

    .line 1996
    :goto_28
    nop

    .line 2002
    .end local v3  # "timeRemaining":J
    goto :goto_a

    .line 1998
    .restart local v3  # "timeRemaining":J
    :cond_2a
    const-string v5, "ActivityTaskManager"

    const-string v6, "Activity manager shutdown timed out"

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1999
    const/4 v0, 0x1

    .line 2008
    .end local v3  # "timeRemaining":J
    :cond_32
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkReadyForSleepLocked(Z)V

    .line 2010
    return v0
.end method

.method startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I
    .registers 33
    .param p1, "callingPid"  # I
    .param p2, "callingUid"  # I
    .param p3, "taskId"  # I
    .param p4, "options"  # Lcom/android/server/wm/SafeActivityOptions;

    .line 2783
    move-object/from16 v1, p0

    move/from16 v14, p1

    move/from16 v13, p2

    move/from16 v12, p3

    move-object/from16 v11, p4

    const/4 v2, 0x0

    .line 2789
    .local v2, "task":Lcom/android/server/wm/Task;
    if-eqz v11, :cond_12

    .line 2790
    invoke-virtual {v11, v1}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v0

    goto :goto_13

    .line 2791
    :cond_12
    const/4 v0, 0x0

    :goto_13
    move-object v10, v0

    .line 2792
    .local v10, "activityOptions":Landroid/app/ActivityOptions;
    const/4 v3, 0x1

    .line 2793
    .local v3, "moveHomeTaskForward":Z
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v9

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_388

    .line 2794
    const/4 v0, 0x0

    .line 2796
    .local v0, "activityType":I
    const/4 v4, 0x0

    .line 2797
    .local v4, "windowingMode":I
    if-eqz v10, :cond_55

    .line 2798
    :try_start_21
    invoke-virtual {v10}, Landroid/app/ActivityOptions;->getLaunchActivityType()I

    move-result v5

    move v0, v5

    .line 2801
    invoke-virtual {v10}, Landroid/app/ActivityOptions;->getLaunchWindowingMode()I

    move-result v5

    move v4, v5

    .line 2802
    invoke-virtual {v10}, Landroid/app/ActivityOptions;->freezeRecentTasksReordering()Z

    move-result v5

    if-eqz v5, :cond_3e

    const-string v5, "android.permission.MANAGE_ACTIVITY_TASKS"

    .line 2803
    invoke-static {v5, v14, v13}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v5

    if-nez v5, :cond_3e

    .line 2805
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v5}, Lcom/android/server/wm/RecentTasks;->setFreezeTaskListReordering()V

    .line 2807
    :cond_3e
    invoke-virtual {v10}, Landroid/app/ActivityOptions;->getLaunchRootTask()Landroid/window/WindowContainerToken;

    move-result-object v5
    :try_end_42
    .catchall {:try_start_21 .. :try_end_42} :catchall_4f

    if-eqz v5, :cond_4a

    .line 2809
    const/4 v3, 0x0

    move v8, v0

    move/from16 v21, v3

    move v15, v4

    goto :goto_59

    .line 2807
    :cond_4a
    move v8, v0

    move/from16 v21, v3

    move v15, v4

    goto :goto_59

    .line 2942
    .end local v0  # "activityType":I
    .end local v4  # "windowingMode":I
    :catchall_4f
    move-exception v0

    move-object/from16 v27, v10

    move v4, v12

    goto/16 :goto_38c

    .line 2797
    .restart local v0  # "activityType":I
    .restart local v4  # "windowingMode":I
    :cond_55
    move v8, v0

    move/from16 v21, v3

    move v15, v4

    .line 2812
    .end local v0  # "activityType":I
    .end local v3  # "moveHomeTaskForward":Z
    .end local v4  # "windowingMode":I
    .local v8, "activityType":I
    .local v15, "windowingMode":I
    .local v21, "moveHomeTaskForward":Z
    :goto_59
    const/4 v0, 0x2

    if-eq v8, v0, :cond_35e

    const/4 v3, 0x3

    if-eq v8, v3, :cond_35e

    .line 2818
    const/4 v3, 0x0

    const/4 v4, 0x5

    if-ne v15, v4, :cond_de

    .line 2819
    :try_start_63
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5, v12}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v5

    move-object v2, v5

    .line 2820
    if-eqz v2, :cond_ab

    invoke-virtual {v10}, Landroid/app/ActivityOptions;->getMiuiConfigFlag()I

    move-result v5

    and-int/lit8 v5, v5, 0x4

    if-eqz v5, :cond_ab

    .line 2821
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v6, v2, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v5, v6, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskSnapshot(IZ)Landroid/window/TaskSnapshot;

    move-result-object v5

    .line 2822
    .local v5, "snapshot":Landroid/window/TaskSnapshot;
    if-eqz v5, :cond_ab

    invoke-virtual {v5}, Landroid/window/TaskSnapshot;->getWindowingMode()I

    move-result v6

    if-ne v6, v4, :cond_ab

    .line 2823
    new-instance v6, Landroid/graphics/Rect;

    invoke-direct {v6}, Landroid/graphics/Rect;-><init>()V

    .line 2824
    .local v6, "launchBounds":Landroid/graphics/Rect;
    invoke-virtual {v5}, Landroid/window/TaskSnapshot;->getFreeformTaskBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 2825
    invoke-virtual {v5}, Landroid/window/TaskSnapshot;->getFreeformScale()F

    move-result v3

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 2826
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    invoke-static {v0, v4}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getFreeFormAccessibleArea(Landroid/content/Context;Lcom/android/server/wm/DisplayContent;)Landroid/graphics/Rect;

    move-result-object v0

    .line 2824
    invoke-static {v7, v6, v3, v0}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->reviewFreeFormBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;FLandroid/graphics/Rect;)F

    move-result v0

    .line 2827
    .local v0, "scale":F
    invoke-virtual {v10, v6}, Landroid/app/ActivityOptions;->setLaunchBounds(Landroid/graphics/Rect;)Landroid/app/ActivityOptions;

    .line 2828
    const/4 v3, 0x5

    invoke-virtual {v10, v3}, Landroid/app/ActivityOptions;->setLaunchWindowingMode(I)V

    .line 2829
    invoke-static {v0, v10}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->setFreeformScale(FLandroid/app/ActivityOptions;)Z

    .line 2832
    .end local v0  # "scale":F
    .end local v5  # "snapshot":Landroid/window/TaskSnapshot;
    .end local v6  # "launchBounds":Landroid/graphics/Rect;
    :cond_ab
    if-eqz v2, :cond_c9

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    .line 2833
    invoke-interface {v3, v2}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getStackPackageName(Lcom/android/server/wm/Task;)Ljava/lang/String;

    move-result-object v3

    .line 2832
    invoke-interface {v0, v3}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->shouldStopStartFreeform(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_c9

    .line 2834
    invoke-static {v10}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 2835
    const/16 v0, -0x60

    monitor-exit v9
    :try_end_c5
    .catchall {:try_start_63 .. :try_end_c5} :catchall_d6

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v0

    .line 2837
    :cond_c9
    :try_start_c9
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-static {v0, v10}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->checkFreeformSupport(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/app/ActivityOptions;)V

    .line 2838
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v0, v2, v10}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->onStartActivity(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;)V
    :try_end_d5
    .catchall {:try_start_c9 .. :try_end_d5} :catchall_d6

    goto :goto_de

    .line 2942
    .end local v8  # "activityType":I
    .end local v15  # "windowingMode":I
    :catchall_d6
    move-exception v0

    move-object/from16 v27, v10

    move v4, v12

    move/from16 v3, v21

    goto/16 :goto_38c

    .line 2842
    .restart local v8  # "activityType":I
    .restart local v15  # "windowingMode":I
    :cond_de
    :goto_de
    const/16 v23, 0x0

    .line 2843
    .local v23, "shouldStartActivity":Z
    :try_start_e0
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V
    :try_end_e5
    .catchall {:try_start_e0 .. :try_end_e5} :catchall_357

    .line 2845
    :try_start_e5
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x1

    const/4 v4, 0x2

    invoke-virtual {v0, v12, v4, v10, v3}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(IILandroid/app/ActivityOptions;Z)Lcom/android/server/wm/Task;

    move-result-object v0
    :try_end_ed
    .catchall {:try_start_e5 .. :try_end_ed} :catchall_347

    move-object v7, v0

    .line 2847
    .end local v2  # "task":Lcom/android/server/wm/Task;
    .local v7, "task":Lcom/android/server/wm/Task;
    if-eqz v7, :cond_30f

    .line 2854
    :try_start_f0
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCastModeStackId()I

    move-result v0

    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v2
    :try_end_fa
    .catchall {:try_start_f0 .. :try_end_fa} :catchall_302

    if-ne v0, v2, :cond_12b

    .line 2855
    :try_start_fc
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const-string v2, "exitCastMode"

    invoke-virtual {v0, v2, v7}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 2856
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->resumeCastActivity()V
    :try_end_10a
    .catchall {:try_start_fc .. :try_end_10a} :catchall_121

    .line 2857
    nop

    .line 2930
    if-nez v23, :cond_112

    .line 2931
    :try_start_10d
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    :cond_112
    monitor-exit v9
    :try_end_113
    .catchall {:try_start_10d .. :try_end_113} :catchall_118

    .line 2857
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x0

    return v0

    .line 2942
    .end local v8  # "activityType":I
    .end local v15  # "windowingMode":I
    .end local v23  # "shouldStartActivity":Z
    :catchall_118
    move-exception v0

    move-object v2, v7

    move-object/from16 v27, v10

    move v4, v12

    move/from16 v3, v21

    goto/16 :goto_38c

    .line 2930
    .restart local v8  # "activityType":I
    .restart local v15  # "windowingMode":I
    .restart local v23  # "shouldStartActivity":Z
    :catchall_121
    move-exception v0

    move-object v2, v7

    move-object/from16 v27, v10

    move v4, v12

    move/from16 v26, v15

    move v15, v8

    goto/16 :goto_34e

    .line 2861
    :cond_12b
    if-eqz v21, :cond_139

    .line 2866
    :try_start_12d
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const-string/jumbo v2, "startActivityFromRecents"

    invoke-virtual {v0, v2}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V
    :try_end_139
    .catchall {:try_start_12d .. :try_end_139} :catchall_121

    .line 2872
    :cond_139
    :try_start_139
    invoke-static {}, Landroid/appcompat/ApplicationCompatUtilsStub;->get()Landroid/appcompat/ApplicationCompatUtilsStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/appcompat/ApplicationCompatUtilsStub;->isContinuityEnabled()Z

    move-result v0
    :try_end_141
    .catchall {:try_start_139 .. :try_end_141} :catchall_302

    if-eqz v0, :cond_192

    .line 2873
    :try_start_143
    invoke-static {}, Lcom/android/server/wm/AppContinuityRouterStub;->get()Lcom/android/server/wm/AppContinuityRouterStub;

    move-result-object v0

    .line 2874
    .local v0, "appStub":Lcom/android/server/wm/AppContinuityRouterStub;
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2875
    .local v2, "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v4, v7, Lcom/android/server/wm/Task;->mAppCompatTaskCreator:Lcom/android/server/wm/AppCompatTask$Creator;

    .line 2876
    invoke-virtual {v4, v14}, Lcom/android/server/wm/AppCompatTask$Creator;->setCallingPid(I)Lcom/android/server/wm/AppCompatTask$Creator;

    move-result-object v4

    .line 2877
    invoke-virtual {v4, v13}, Lcom/android/server/wm/AppCompatTask$Creator;->setCallingUid(I)Lcom/android/server/wm/AppCompatTask$Creator;

    move-result-object v4

    const-string/jumbo v5, "startActivityFromRecents"

    .line 2878
    invoke-virtual {v4, v5}, Lcom/android/server/wm/AppCompatTask$Creator;->setReason(Ljava/lang/String;)Lcom/android/server/wm/AppCompatTask$Creator;

    move-result-object v4

    .line 2879
    invoke-virtual {v4, v10}, Lcom/android/server/wm/AppCompatTask$Creator;->setActivityOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/AppCompatTask$Creator;

    move-result-object v4

    .line 2880
    invoke-virtual {v4}, Lcom/android/server/wm/AppCompatTask$Creator;->create()Lcom/android/server/wm/AppCompatTask;

    move-result-object v4

    .line 2881
    .local v4, "appCompatTask":Lcom/android/server/wm/AppCompatTask;
    if-nez v4, :cond_18f

    .line 2882
    new-instance v5, Lcom/android/server/wm/AppCompatTask$Creator;

    .line 2883
    invoke-static {}, Lcom/android/server/wm/ApplicationCompatRouterStub;->get()Lcom/android/server/wm/ApplicationCompatRouterStub;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/ApplicationCompatRouterStub;->getConfigDisplayID()I

    move-result v6

    invoke-direct {v5, v7, v6}, Lcom/android/server/wm/AppCompatTask$Creator;-><init>(Lcom/android/server/wm/Task;I)V

    invoke-virtual {v5, v2}, Lcom/android/server/wm/AppCompatTask$Creator;->setActivityRecord(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/AppCompatTask$Creator;

    move-result-object v5

    .line 2884
    invoke-virtual {v5, v14}, Lcom/android/server/wm/AppCompatTask$Creator;->setCallingPid(I)Lcom/android/server/wm/AppCompatTask$Creator;

    move-result-object v5

    .line 2885
    invoke-virtual {v5, v13}, Lcom/android/server/wm/AppCompatTask$Creator;->setCallingUid(I)Lcom/android/server/wm/AppCompatTask$Creator;

    move-result-object v5

    const-string/jumbo v6, "startActivityFromRecents"

    .line 2886
    invoke-virtual {v5, v6}, Lcom/android/server/wm/AppCompatTask$Creator;->setReason(Ljava/lang/String;)Lcom/android/server/wm/AppCompatTask$Creator;

    move-result-object v5

    .line 2887
    invoke-virtual {v5, v10}, Lcom/android/server/wm/AppCompatTask$Creator;->setActivityOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/AppCompatTask$Creator;

    move-result-object v5

    .line 2888
    invoke-virtual {v5}, Lcom/android/server/wm/AppCompatTask$Creator;->create()Lcom/android/server/wm/AppCompatTask;

    move-result-object v5

    move-object v4, v5

    .line 2890
    :cond_18f
    invoke-virtual {v0, v4}, Lcom/android/server/wm/AppContinuityRouterStub;->notifyActivityStart(Lcom/android/server/wm/AppCompatTask;)V
    :try_end_192
    .catchall {:try_start_143 .. :try_end_192} :catchall_121

    .line 2897
    .end local v0  # "appStub":Lcom/android/server/wm/AppContinuityRouterStub;
    .end local v2  # "topRunningActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v4  # "appCompatTask":Lcom/android/server/wm/AppCompatTask;
    :cond_192
    :try_start_192
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v2, v7, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v2}, Landroid/app/ActivityManagerInternal;->shouldConfirmCredentials(I)Z

    move-result v0
    :try_end_19c
    .catchall {:try_start_192 .. :try_end_19c} :catchall_302

    if-nez v0, :cond_252

    .line 2898
    :try_start_19e
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_23f

    .line 2899
    invoke-virtual {v7}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v6, v0

    .line 2901
    .local v6, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v3, v6}, Lcom/android/server/wm/RootWindowContainer;->startPowerModeLaunchIfNeeded(ZLcom/android/server/wm/ActivityRecord;)V

    .line 2903
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;

    iget-object v2, v7, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 2904
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunching(Landroid/content/Intent;)Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    move-result-object v16
    :try_end_1b6
    .catchall {:try_start_19e .. :try_end_1b6} :catchall_245

    .line 2906
    .local v16, "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    :try_start_1b6
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, v7, Lcom/android/server/wm/Task;->mTaskId:I
    :try_end_1bc
    .catchall {:try_start_1b6 .. :try_end_1bc} :catchall_218

    const/4 v0, 0x0

    move-object/from16 v24, v6

    .end local v6  # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .local v24, "targetActivity":Lcom/android/server/wm/ActivityRecord;
    move v6, v0

    move-object/from16 v25, v7

    .end local v7  # "task":Lcom/android/server/wm/Task;
    .local v25, "task":Lcom/android/server/wm/Task;
    move-object/from16 v7, p4

    :try_start_1c4
    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;)V

    .line 2911
    invoke-virtual/range {v24 .. v24}, Lcom/android/server/wm/ActivityRecord;->applyOptionsAnimation()V
    :try_end_1ca
    .catchall {:try_start_1c4 .. :try_end_1ca} :catchall_214

    .line 2913
    :try_start_1ca
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;
    :try_end_1cc
    .catchall {:try_start_1ca .. :try_end_1cc} :catchall_209

    const/16 v17, 0x2

    const/16 v18, 0x0

    move/from16 v26, v15

    .end local v15  # "windowingMode":I
    .local v26, "windowingMode":I
    move-object v15, v0

    move-object/from16 v19, v24

    move-object/from16 v20, v10

    :try_start_1d7
    invoke-virtual/range {v15 .. v20}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 2916
    nop

    .line 2918
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    .line 2919
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2920
    invoke-virtual/range {v25 .. v25}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2918
    const/4 v4, 0x2

    invoke-virtual {v0, v2, v4, v3}, Lcom/android/server/wm/ActivityStartController;->postStartActivityProcessingForLastStarter(Lcom/android/server/wm/ActivityRecord;ILcom/android/server/wm/Task;)V

    .line 2924
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->resumeAppSwitches()V
    :try_end_1f2
    .catchall {:try_start_1d7 .. :try_end_1f2} :catchall_200

    .line 2925
    nop

    .line 2930
    if-nez v23, :cond_1fa

    .line 2931
    :try_start_1f5
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    :cond_1fa
    monitor-exit v9
    :try_end_1fb
    .catchall {:try_start_1f5 .. :try_end_1fb} :catchall_260

    .line 2925
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v0, 0x2

    return v0

    .line 2930
    .end local v16  # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .end local v24  # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    :catchall_200
    move-exception v0

    move v15, v8

    move-object/from16 v27, v10

    move v4, v12

    move-object/from16 v2, v25

    goto/16 :goto_34e

    .end local v26  # "windowingMode":I
    .restart local v15  # "windowingMode":I
    :catchall_209
    move-exception v0

    move/from16 v26, v15

    move v15, v8

    move-object/from16 v27, v10

    move v4, v12

    move-object/from16 v2, v25

    .end local v15  # "windowingMode":I
    .restart local v26  # "windowingMode":I
    goto/16 :goto_34e

    .line 2913
    .end local v26  # "windowingMode":I
    .restart local v15  # "windowingMode":I
    .restart local v16  # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .restart local v24  # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    :catchall_214
    move-exception v0

    move/from16 v26, v15

    .end local v15  # "windowingMode":I
    .restart local v26  # "windowingMode":I
    goto :goto_21f

    .end local v24  # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v25  # "task":Lcom/android/server/wm/Task;
    .end local v26  # "windowingMode":I
    .restart local v6  # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v7  # "task":Lcom/android/server/wm/Task;
    .restart local v15  # "windowingMode":I
    :catchall_218
    move-exception v0

    move-object/from16 v24, v6

    move-object/from16 v25, v7

    move/from16 v26, v15

    .end local v6  # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v7  # "task":Lcom/android/server/wm/Task;
    .end local v15  # "windowingMode":I
    .restart local v24  # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v25  # "task":Lcom/android/server/wm/Task;
    .restart local v26  # "windowingMode":I
    :goto_21f
    :try_start_21f
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mActivityMetricsLogger:Lcom/android/server/wm/ActivityMetricsLogger;
    :try_end_221
    .catchall {:try_start_21f .. :try_end_221} :catchall_236

    const/4 v5, 0x2

    const/4 v6, 0x0

    move-object/from16 v4, v16

    move-object/from16 v7, v24

    move v15, v8

    .end local v8  # "activityType":I
    .local v15, "activityType":I
    move-object v8, v10

    :try_start_229
    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyActivityLaunched(Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;IZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 2916
    nop

    .end local v10  # "activityOptions":Landroid/app/ActivityOptions;
    .end local v15  # "activityType":I
    .end local v21  # "moveHomeTaskForward":Z
    .end local v23  # "shouldStartActivity":Z
    .end local v25  # "task":Lcom/android/server/wm/Task;
    .end local v26  # "windowingMode":I
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskSupervisor;
    .end local p1  # "callingPid":I
    .end local p2  # "callingUid":I
    .end local p3  # "taskId":I
    .end local p4  # "options":Lcom/android/server/wm/SafeActivityOptions;
    throw v0
    :try_end_22e
    .catchall {:try_start_229 .. :try_end_22e} :catchall_22e

    .line 2930
    .end local v16  # "launchingState":Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;
    .end local v24  # "targetActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v10  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v15  # "activityType":I
    .restart local v21  # "moveHomeTaskForward":Z
    .restart local v23  # "shouldStartActivity":Z
    .restart local v25  # "task":Lcom/android/server/wm/Task;
    .restart local v26  # "windowingMode":I
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskSupervisor;
    .restart local p1  # "callingPid":I
    .restart local p2  # "callingUid":I
    .restart local p3  # "taskId":I
    .restart local p4  # "options":Lcom/android/server/wm/SafeActivityOptions;
    :catchall_22e
    move-exception v0

    move-object/from16 v27, v10

    move v4, v12

    move-object/from16 v2, v25

    goto/16 :goto_34e

    .end local v15  # "activityType":I
    .restart local v8  # "activityType":I
    :catchall_236
    move-exception v0

    move v15, v8

    move-object/from16 v27, v10

    move v4, v12

    move-object/from16 v2, v25

    .end local v8  # "activityType":I
    .restart local v15  # "activityType":I
    goto/16 :goto_34e

    .line 2898
    .end local v25  # "task":Lcom/android/server/wm/Task;
    .end local v26  # "windowingMode":I
    .restart local v7  # "task":Lcom/android/server/wm/Task;
    .restart local v8  # "activityType":I
    .local v15, "windowingMode":I
    :cond_23f
    move-object/from16 v25, v7

    move/from16 v26, v15

    move v15, v8

    .end local v7  # "task":Lcom/android/server/wm/Task;
    .end local v8  # "activityType":I
    .local v15, "activityType":I
    .restart local v25  # "task":Lcom/android/server/wm/Task;
    .restart local v26  # "windowingMode":I
    goto :goto_257

    .line 2930
    .end local v25  # "task":Lcom/android/server/wm/Task;
    .end local v26  # "windowingMode":I
    .restart local v7  # "task":Lcom/android/server/wm/Task;
    .restart local v8  # "activityType":I
    .local v15, "windowingMode":I
    :catchall_245
    move-exception v0

    move-object/from16 v25, v7

    move/from16 v26, v15

    move v15, v8

    move-object/from16 v27, v10

    move v4, v12

    move-object/from16 v2, v25

    .end local v7  # "task":Lcom/android/server/wm/Task;
    .end local v8  # "activityType":I
    .local v15, "activityType":I
    .restart local v25  # "task":Lcom/android/server/wm/Task;
    .restart local v26  # "windowingMode":I
    goto/16 :goto_34e

    .line 2897
    .end local v25  # "task":Lcom/android/server/wm/Task;
    .end local v26  # "windowingMode":I
    .restart local v7  # "task":Lcom/android/server/wm/Task;
    .restart local v8  # "activityType":I
    .local v15, "windowingMode":I
    :cond_252
    move-object/from16 v25, v7

    move/from16 v26, v15

    move v15, v8

    .line 2928
    .end local v7  # "task":Lcom/android/server/wm/Task;
    .end local v8  # "activityType":I
    .local v15, "activityType":I
    .restart local v25  # "task":Lcom/android/server/wm/Task;
    .restart local v26  # "windowingMode":I
    :goto_257
    const/4 v0, 0x1

    .line 2930
    .end local v23  # "shouldStartActivity":Z
    .local v0, "shouldStartActivity":Z
    if-nez v0, :cond_26a

    .line 2931
    :try_start_25a
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V
    :try_end_25f
    .catchall {:try_start_25a .. :try_end_25f} :catchall_260

    goto :goto_26a

    .line 2942
    .end local v0  # "shouldStartActivity":Z
    .end local v15  # "activityType":I
    .end local v26  # "windowingMode":I
    :catchall_260
    move-exception v0

    move-object/from16 v27, v10

    move v4, v12

    move/from16 v3, v21

    move-object/from16 v2, v25

    goto/16 :goto_38c

    .line 2934
    .restart local v0  # "shouldStartActivity":Z
    .restart local v15  # "activityType":I
    .restart local v26  # "windowingMode":I
    :cond_26a
    :goto_26a
    move-object/from16 v8, v25

    .end local v25  # "task":Lcom/android/server/wm/Task;
    .local v8, "task":Lcom/android/server/wm/Task;
    :try_start_26c
    iget v3, v8, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 2935
    .local v3, "taskCallingUid":I
    iget-object v6, v8, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 2936
    .local v6, "callingPackage":Ljava/lang/String;
    iget-object v7, v8, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 2937
    .local v7, "callingFeatureId":Ljava/lang/String;
    iget-object v2, v8, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    move-object v5, v2

    .line 2938
    .local v5, "intent":Landroid/content/Intent;
    const/high16 v2, 0x100000

    invoke-virtual {v5, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2940
    invoke-static {}, Lcom/android/server/wm/ActivityTaskSupervisorStub;->get()Lcom/android/server/wm/ActivityTaskSupervisorStub;

    move-result-object v2

    invoke-virtual {v2, v5}, Lcom/android/server/wm/ActivityTaskSupervisorStub;->startActivityFromRecentsFlag(Landroid/content/Intent;)V

    .line 2941
    iget v2, v8, Lcom/android/server/wm/Task;->mUserId:I

    move v15, v2

    .line 2942
    .end local v0  # "shouldStartActivity":Z
    .end local v26  # "windowingMode":I
    .local v15, "userId":I
    monitor-exit v9
    :try_end_285
    .catchall {:try_start_26c .. :try_end_285} :catchall_2f5

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2946
    :try_start_288
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v2

    const/4 v9, 0x0

    const/4 v0, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v22, 0x0

    const-string/jumbo v23, "startActivityFromRecents"
    :try_end_299
    .catchall {:try_start_288 .. :try_end_299} :catchall_2d6

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v4, p1

    move-object/from16 v24, v5

    .end local v5  # "intent":Landroid/content/Intent;
    .local v24, "intent":Landroid/content/Intent;
    move/from16 v5, p2

    move-object/from16 v25, v8

    .end local v8  # "task":Lcom/android/server/wm/Task;
    .restart local v25  # "task":Lcom/android/server/wm/Task;
    move-object/from16 v8, v24

    move-object/from16 v27, v10

    .end local v10  # "activityOptions":Landroid/app/ActivityOptions;
    .local v27, "activityOptions":Landroid/app/ActivityOptions;
    move-object v10, v0

    move-object/from16 v11, v16

    move/from16 v12, v17

    move/from16 v13, v22

    move-object/from16 v14, p4

    move-object/from16 v16, v25

    move-object/from16 v17, v23

    :try_start_2b8
    invoke-virtual/range {v2 .. v20}, Lcom/android/server/wm/ActivityStartController;->startActivityInPackage(IIILjava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;ILcom/android/server/wm/Task;Ljava/lang/String;ZLcom/android/server/am/PendingIntentRecord;Z)I

    move-result v0
    :try_end_2bc
    .catchall {:try_start_2b8 .. :try_end_2bc} :catchall_2d4

    .line 2952
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_2c1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2953
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2954
    monitor-exit v2
    :try_end_2ca
    .catchall {:try_start_2c1 .. :try_end_2ca} :catchall_2ce

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2946
    return v0

    .line 2954
    :catchall_2ce
    move-exception v0

    :try_start_2cf
    monitor-exit v2
    :try_end_2d0
    .catchall {:try_start_2cf .. :try_end_2d0} :catchall_2ce

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2952
    :catchall_2d4
    move-exception v0

    goto :goto_2dd

    .end local v24  # "intent":Landroid/content/Intent;
    .end local v25  # "task":Lcom/android/server/wm/Task;
    .end local v27  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v5  # "intent":Landroid/content/Intent;
    .restart local v8  # "task":Lcom/android/server/wm/Task;
    .restart local v10  # "activityOptions":Landroid/app/ActivityOptions;
    :catchall_2d6
    move-exception v0

    move-object/from16 v24, v5

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    .end local v5  # "intent":Landroid/content/Intent;
    .end local v8  # "task":Lcom/android/server/wm/Task;
    .end local v10  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v24  # "intent":Landroid/content/Intent;
    .restart local v25  # "task":Lcom/android/server/wm/Task;
    .restart local v27  # "activityOptions":Landroid/app/ActivityOptions;
    :goto_2dd
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_2e2
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2953
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2954
    monitor-exit v2
    :try_end_2eb
    .catchall {:try_start_2e2 .. :try_end_2eb} :catchall_2ef

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2955
    throw v0

    .line 2954
    :catchall_2ef
    move-exception v0

    :try_start_2f0
    monitor-exit v2
    :try_end_2f1
    .catchall {:try_start_2f0 .. :try_end_2f1} :catchall_2ef

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 2942
    .end local v3  # "taskCallingUid":I
    .end local v6  # "callingPackage":Ljava/lang/String;
    .end local v7  # "callingFeatureId":Ljava/lang/String;
    .end local v15  # "userId":I
    .end local v24  # "intent":Landroid/content/Intent;
    .end local v25  # "task":Lcom/android/server/wm/Task;
    .end local v27  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v8  # "task":Lcom/android/server/wm/Task;
    .restart local v10  # "activityOptions":Landroid/app/ActivityOptions;
    :catchall_2f5
    move-exception v0

    move-object/from16 v25, v8

    move-object/from16 v27, v10

    move/from16 v4, p3

    move/from16 v3, v21

    move-object/from16 v2, v25

    .end local v8  # "task":Lcom/android/server/wm/Task;
    .end local v10  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v25  # "task":Lcom/android/server/wm/Task;
    .restart local v27  # "activityOptions":Landroid/app/ActivityOptions;
    goto/16 :goto_38c

    .line 2930
    .end local v25  # "task":Lcom/android/server/wm/Task;
    .end local v27  # "activityOptions":Landroid/app/ActivityOptions;
    .local v7, "task":Lcom/android/server/wm/Task;
    .local v8, "activityType":I
    .restart local v10  # "activityOptions":Landroid/app/ActivityOptions;
    .local v15, "windowingMode":I
    .restart local v23  # "shouldStartActivity":Z
    :catchall_302
    move-exception v0

    move-object/from16 v25, v7

    move-object/from16 v27, v10

    move/from16 v26, v15

    move v15, v8

    move/from16 v4, p3

    move-object/from16 v2, v25

    .end local v7  # "task":Lcom/android/server/wm/Task;
    .end local v8  # "activityType":I
    .end local v10  # "activityOptions":Landroid/app/ActivityOptions;
    .local v15, "activityType":I
    .restart local v25  # "task":Lcom/android/server/wm/Task;
    .restart local v26  # "windowingMode":I
    .restart local v27  # "activityOptions":Landroid/app/ActivityOptions;
    goto :goto_34e

    .line 2848
    .end local v25  # "task":Lcom/android/server/wm/Task;
    .end local v26  # "windowingMode":I
    .end local v27  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v7  # "task":Lcom/android/server/wm/Task;
    .restart local v8  # "activityType":I
    .restart local v10  # "activityOptions":Landroid/app/ActivityOptions;
    .local v15, "windowingMode":I
    :cond_30f
    move-object/from16 v25, v7

    move-object/from16 v27, v10

    move/from16 v26, v15

    move v15, v8

    .end local v7  # "task":Lcom/android/server/wm/Task;
    .end local v8  # "activityType":I
    .end local v10  # "activityOptions":Landroid/app/ActivityOptions;
    .local v15, "activityType":I
    .restart local v25  # "task":Lcom/android/server/wm/Task;
    .restart local v26  # "windowingMode":I
    .restart local v27  # "activityOptions":Landroid/app/ActivityOptions;
    :try_start_316
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->executeAppTransition()V

    .line 2849
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "startActivityFromRecents: Task "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2
    :try_end_329
    .catchall {:try_start_316 .. :try_end_329} :catchall_341

    move/from16 v4, p3

    :try_start_32b
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not found."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v15  # "activityType":I
    .end local v21  # "moveHomeTaskForward":Z
    .end local v23  # "shouldStartActivity":Z
    .end local v25  # "task":Lcom/android/server/wm/Task;
    .end local v26  # "windowingMode":I
    .end local v27  # "activityOptions":Landroid/app/ActivityOptions;
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskSupervisor;
    .end local p1  # "callingPid":I
    .end local p2  # "callingUid":I
    .end local p3  # "taskId":I
    .end local p4  # "options":Lcom/android/server/wm/SafeActivityOptions;
    throw v0
    :try_end_33d
    .catchall {:try_start_32b .. :try_end_33d} :catchall_33d

    .line 2930
    .restart local v15  # "activityType":I
    .restart local v21  # "moveHomeTaskForward":Z
    .restart local v23  # "shouldStartActivity":Z
    .restart local v25  # "task":Lcom/android/server/wm/Task;
    .restart local v26  # "windowingMode":I
    .restart local v27  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskSupervisor;
    .restart local p1  # "callingPid":I
    .restart local p2  # "callingUid":I
    .restart local p3  # "taskId":I
    .restart local p4  # "options":Lcom/android/server/wm/SafeActivityOptions;
    :catchall_33d
    move-exception v0

    move-object/from16 v2, v25

    goto :goto_34e

    :catchall_341
    move-exception v0

    move/from16 v4, p3

    move-object/from16 v2, v25

    goto :goto_34e

    .end local v25  # "task":Lcom/android/server/wm/Task;
    .end local v26  # "windowingMode":I
    .end local v27  # "activityOptions":Landroid/app/ActivityOptions;
    .local v2, "task":Lcom/android/server/wm/Task;
    .restart local v8  # "activityType":I
    .restart local v10  # "activityOptions":Landroid/app/ActivityOptions;
    .local v15, "windowingMode":I
    :catchall_347
    move-exception v0

    move-object/from16 v27, v10

    move v4, v12

    move/from16 v26, v15

    move v15, v8

    .end local v8  # "activityType":I
    .end local v10  # "activityOptions":Landroid/app/ActivityOptions;
    .local v15, "activityType":I
    .restart local v26  # "windowingMode":I
    .restart local v27  # "activityOptions":Landroid/app/ActivityOptions;
    :goto_34e
    if-nez v23, :cond_355

    .line 2931
    :try_start_350
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 2933
    :cond_355
    nop

    .end local v2  # "task":Lcom/android/server/wm/Task;
    .end local v21  # "moveHomeTaskForward":Z
    .end local v27  # "activityOptions":Landroid/app/ActivityOptions;
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskSupervisor;
    .end local p1  # "callingPid":I
    .end local p2  # "callingUid":I
    .end local p3  # "taskId":I
    .end local p4  # "options":Lcom/android/server/wm/SafeActivityOptions;
    throw v0

    .line 2942
    .end local v15  # "activityType":I
    .end local v23  # "shouldStartActivity":Z
    .end local v26  # "windowingMode":I
    .restart local v2  # "task":Lcom/android/server/wm/Task;
    .restart local v10  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v21  # "moveHomeTaskForward":Z
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskSupervisor;
    .restart local p1  # "callingPid":I
    .restart local p2  # "callingUid":I
    .restart local p3  # "taskId":I
    .restart local p4  # "options":Lcom/android/server/wm/SafeActivityOptions;
    :catchall_357
    move-exception v0

    move-object/from16 v27, v10

    move v4, v12

    move/from16 v3, v21

    .end local v10  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v27  # "activityOptions":Landroid/app/ActivityOptions;
    goto :goto_38c

    .line 2812
    .end local v27  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v8  # "activityType":I
    .restart local v10  # "activityOptions":Landroid/app/ActivityOptions;
    .local v15, "windowingMode":I
    :cond_35e
    move-object/from16 v27, v10

    move v4, v12

    move/from16 v26, v15

    move v15, v8

    .line 2813
    .end local v8  # "activityType":I
    .end local v10  # "activityOptions":Landroid/app/ActivityOptions;
    .local v15, "activityType":I
    .restart local v26  # "windowingMode":I
    .restart local v27  # "activityOptions":Landroid/app/ActivityOptions;
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "startActivityFromRecents: Task "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " can\'t be launch in the home/recents root task."

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v2  # "task":Lcom/android/server/wm/Task;
    .end local v21  # "moveHomeTaskForward":Z
    .end local v27  # "activityOptions":Landroid/app/ActivityOptions;
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskSupervisor;
    .end local p1  # "callingPid":I
    .end local p2  # "callingUid":I
    .end local p3  # "taskId":I
    .end local p4  # "options":Lcom/android/server/wm/SafeActivityOptions;
    throw v0
    :try_end_384
    .catchall {:try_start_350 .. :try_end_384} :catchall_384

    .line 2942
    .end local v15  # "activityType":I
    .end local v26  # "windowingMode":I
    .restart local v2  # "task":Lcom/android/server/wm/Task;
    .restart local v21  # "moveHomeTaskForward":Z
    .restart local v27  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskSupervisor;
    .restart local p1  # "callingPid":I
    .restart local p2  # "callingUid":I
    .restart local p3  # "taskId":I
    .restart local p4  # "options":Lcom/android/server/wm/SafeActivityOptions;
    :catchall_384
    move-exception v0

    move/from16 v3, v21

    goto :goto_38c

    .end local v21  # "moveHomeTaskForward":Z
    .end local v27  # "activityOptions":Landroid/app/ActivityOptions;
    .local v3, "moveHomeTaskForward":Z
    .restart local v10  # "activityOptions":Landroid/app/ActivityOptions;
    :catchall_388
    move-exception v0

    move-object/from16 v27, v10

    move v4, v12

    .end local v10  # "activityOptions":Landroid/app/ActivityOptions;
    .restart local v27  # "activityOptions":Landroid/app/ActivityOptions;
    :goto_38c
    :try_start_38c
    monitor-exit v9
    :try_end_38d
    .catchall {:try_start_38c .. :try_end_38d} :catchall_391

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_391
    move-exception v0

    goto :goto_38c
.end method

.method public startPreferredApps()V
    .registers 4

    .line 1836
    :try_start_0
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor$PreferredAppsTask;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor$PreferredAppsTask;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor$PreferredAppsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_b} :catch_c

    .line 1839
    goto :goto_25

    .line 1837
    :catch_c
    move-exception v0

    .line 1838
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception while calling PreferredAppsTask: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1840
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_25
    return-void
.end method

.method startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V
    .registers 12
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "andResume"  # Z
    .param p3, "checkConfig"  # Z

    .line 1118
    const-string v0, "ActivityTaskManager"

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1119
    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 1121
    .local v1, "wpc":Lcom/android/server/wm/WindowProcessController;
    const/4 v2, 0x0

    .line 1122
    .local v2, "knownToBeDead":Z
    if-eqz v1, :cond_8e

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v3

    if-eqz v3, :cond_8e

    .line 1124
    :try_start_19
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    if-eqz v3, :cond_52

    .line 1125
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The Process "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " Already Exists in BG. So sending its PID: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPerfBoost:Landroid/util/BoostFramework;

    const/16 v4, 0x1081

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v6

    const/16 v7, 0x66

    invoke-virtual {v3, v4, v5, v6, v7}, Landroid/util/BoostFramework;->perfHint(ILjava/lang/String;II)I

    .line 1128
    :cond_52
    invoke-virtual {p0, p1, v1, p2, p3}, Lcom/android/server/wm/ActivityTaskSupervisor;->realStartActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/WindowProcessController;ZZ)Z
    :try_end_55
    .catch Landroid/os/RemoteException; {:try_start_19 .. :try_end_55} :catch_56

    .line 1129
    return-void

    .line 1130
    :catch_56
    move-exception v3

    .line 1131
    .local v3, "e":Landroid/os/RemoteException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Exception when starting activity "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 1132
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1131
    invoke-static {v0, v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1137
    .end local v3  # "e":Landroid/os/RemoteException;
    const/4 v2, 0x1

    .line 1139
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    iget-object v3, v1, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iget v4, v1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {v0, v3, v4}, Lcom/android/internal/app/ProcessMap;->remove(Ljava/lang/String;I)Ljava/lang/Object;

    .line 1140
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/android/server/wm/WindowProcessControllerMap;->remove(I)V

    .line 1143
    :cond_8e
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->notifyUnknownVisibilityLaunchedForKeyguardTransition()V

    .line 1145
    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->isColdStart:Z

    .line 1147
    if-eqz p2, :cond_9d

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isTopRunningActivity()Z

    move-result v3

    if-eqz v3, :cond_9d

    goto :goto_9e

    :cond_9d
    const/4 v0, 0x0

    .line 1148
    .local v0, "isTop":Z
    :goto_9e
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1149
    if-eqz v0, :cond_a6

    const-string/jumbo v4, "top-activity"

    goto :goto_a8

    .line 1150
    :cond_a6
    const-string v4, "activity"

    .line 1148
    :goto_a8
    invoke-virtual {v3, p1, v2, v0, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->startProcessAsync(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    .line 1151
    return-void
.end method

.method stopWaitingForActivityVisible(Lcom/android/server/wm/ActivityRecord;)V
    .registers 8
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 661
    const/4 v1, 0x0

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    move-object v0, p0

    move-object v2, p1

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->reportActivityLaunched(ZLcom/android/server/wm/ActivityRecord;JI)V

    .line 663
    return-void
.end method

.method updateHomeProcess(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4
    .param p1, "app"  # Lcom/android/server/wm/WindowProcessController;

    .line 1081
    if-eqz p1, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, p1, :cond_43

    .line 1082
    const-string v0, "homeChanged"

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleStartHome(Ljava/lang/String;)V

    .line 1083
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object p1, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    .line 1085
    iget v0, p1, Lcom/android/server/wm/WindowProcessController;->mRenderThreadTid:I

    if-lez v0, :cond_38

    .line 1086
    invoke-static {}, Lcom/android/server/am/SchedBoostManagerInternalStub;->getInstance()Lcom/android/server/am/SchedBoostManagerInternalStub;

    move-result-object v0

    iget v1, p1, Lcom/android/server/wm/WindowProcessController;->mRenderThreadTid:I

    .line 1087
    invoke-interface {v0, v1}, Lcom/android/server/am/SchedBoostManagerInternalStub;->setHomeRenderThreadTid(I)V

    .line 1088
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "home renderThread tid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p1, Lcom/android/server/wm/WindowProcessController;->mRenderThreadTid:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1090
    :cond_38
    invoke-static {}, Lcom/android/server/am/SpeedTestModeServiceStub;->get()Lcom/android/server/am/SpeedTestModeServiceStub;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/server/am/SpeedTestModeServiceStub;->updateHomeProcess(Ljava/lang/String;)V

    .line 1093
    :cond_43
    return-void
.end method

.method updateTopResumedActivityIfNeeded(Ljava/lang/String;)V
    .registers 7
    .param p1, "reason"  # Ljava/lang/String;

    .line 2326
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2327
    .local v0, "prevTopActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2328
    .local v1, "topRootTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_57

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-ne v2, v0, :cond_11

    goto :goto_57

    .line 2338
    :cond_11
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_1b

    iget-boolean v4, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivityWaitingForPrev:Z

    if-nez v4, :cond_1b

    move v4, v2

    goto :goto_1c

    :cond_1b
    move v4, v3

    .line 2343
    .local v4, "prevActivityReceivedTopState":Z
    :goto_1c
    if-eqz v4, :cond_29

    .line 2344
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityRecord;->scheduleTopResumedActivityChanged(Z)Z

    move-result v3

    if-eqz v3, :cond_29

    .line 2345
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleTopResumedStateLossTimeout(Lcom/android/server/wm/ActivityRecord;)V

    .line 2346
    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivityWaitingForPrev:Z

    .line 2350
    :cond_29
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 2355
    if-eqz v2, :cond_43

    if-eqz v0, :cond_43

    .line 2356
    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v2, :cond_3e

    .line 2357
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->addToPendingTop()V

    .line 2359
    :cond_3e
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 2364
    :cond_43
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_4c

    .line 2365
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3, v2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->setLastResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 2367
    :cond_4c
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleTopResumedActivityStateIfNeeded()V

    .line 2369
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mTopResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateTopApp(Lcom/android/server/wm/ActivityRecord;)V

    .line 2370
    return-void

    .line 2329
    .end local v4  # "prevActivityReceivedTopState":Z
    :cond_57
    :goto_57
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result v2

    if-eqz v2, :cond_65

    .line 2332
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateTopApp(Lcom/android/server/wm/ActivityRecord;)V

    .line 2334
    :cond_65
    return-void
.end method

.method waitActivityVisibleOrLaunched(Landroid/app/WaitResult;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)V
    .registers 6
    .param p1, "w"  # Landroid/app/WaitResult;
    .param p2, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "launchingState"  # Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;

    .line 635
    iget v0, p1, Landroid/app/WaitResult;->result:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    iget v0, p1, Landroid/app/WaitResult;->result:I

    if-eqz v0, :cond_a

    .line 638
    return-void

    .line 640
    :cond_a
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;

    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-direct {v0, p1, v1, p3}, Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;-><init>(Landroid/app/WaitResult;Landroid/content/ComponentName;Lcom/android/server/wm/ActivityMetricsLogger$LaunchingState;)V

    .line 641
    .local v0, "waitInfo":Lcom/android/server/wm/ActivityTaskSupervisor$WaitInfo;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 644
    :goto_16
    :try_start_16
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_1d
    .catch Ljava/lang/InterruptedException; {:try_start_16 .. :try_end_1d} :catch_1e

    .line 646
    goto :goto_1f

    .line 645
    :catch_1e
    move-exception v1

    .line 647
    :goto_1f
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mWaitingActivityLaunched:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_28

    .line 648
    return-void

    .line 647
    :cond_28
    goto :goto_16
.end method

.method wakeUp(Ljava/lang/String;)V
    .registers 7
    .param p1, "reason"  # Ljava/lang/String;

    .line 2569
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskSupervisor;->mPowerManager:Landroid/os/PowerManager;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "android.server.am:TURN_ON:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v2, v4, v3}, Landroid/os/PowerManager;->wakeUp(JILjava/lang/String;)V

    .line 2571
    return-void
.end method
