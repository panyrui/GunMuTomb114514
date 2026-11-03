# classes2.dex

.class public Lcom/android/server/wm/ActivityTaskManagerService;
.super Landroid/app/IActivityTaskManager$Stub;
.source "ActivityTaskManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/ActivityTaskManagerService$LocalService;,
        Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;,
        Lcom/android/server/wm/ActivityTaskManagerService$H;,
        Lcom/android/server/wm/ActivityTaskManagerService$SleepTokenAcquirerImpl;,
        Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;,
        Lcom/android/server/wm/ActivityTaskManagerService$Lifecycle;,
        Lcom/android/server/wm/ActivityTaskManagerService$HotPath;,
        Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;,
        Lcom/android/server/wm/ActivityTaskManagerService$LayoutReason;,
        Lcom/android/server/wm/ActivityTaskManagerService$PowerModeReason;,
        Lcom/android/server/wm/ActivityTaskManagerService$AppSwitchState;,
        Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;
    }
.end annotation


# static fields
.field private static final ACTION_DONE_POLL_WAIT_MS:I = 0x64

.field static final ACTIVITY_BG_START_GRACE_PERIOD_MS:J = 0x2710L

.field static final ANIMATE:Z = true

.field static final APP_SWITCH_ALLOW:I = 0x2

.field static final APP_SWITCH_DISALLOW:I = 0x0

.field static final APP_SWITCH_FG_ONLY:I = 0x1

.field private static final CAST_MODE_ENTER:I = 0x1

.field private static final CAST_MODE_EXIT:I = 0x0

.field private static final DOZE_ANIMATING_STATE_RETAIN_TIME_MS:J = 0x7d0L

.field public static final DUMP_ACTIVITIES_CMD:Ljava/lang/String; = "activities"

.field public static final DUMP_ACTIVITIES_SHORT_CMD:Ljava/lang/String; = "a"

.field public static final DUMP_CONTAINERS_CMD:Ljava/lang/String; = "containers"

.field public static final DUMP_LASTANR_CMD:Ljava/lang/String; = "lastanr"

.field public static final DUMP_LASTANR_TRACES_CMD:Ljava/lang/String; = "lastanr-traces"

.field public static final DUMP_RECENTS_CMD:Ljava/lang/String; = "recents"

.field public static final DUMP_RECENTS_SHORT_CMD:Ljava/lang/String; = "r"

.field public static final DUMP_STARTER_CMD:Ljava/lang/String; = "starter"

.field public static final DUMP_TOP_RESUMED_ACTIVITY:Ljava/lang/String; = "top-resumed"

.field static final INSTRUMENTATION_KEY_DISPATCHING_TIMEOUT_MILLIS:J = 0xea60L

.field static final LAYOUT_REASON_CONFIG_CHANGED:I = 0x1

.field static final LAYOUT_REASON_VISIBILITY_CHANGED:I = 0x2

.field private static final MAX_RESUME_TIME:I = 0x7d0

.field private static final PENDING_ASSIST_EXTRAS_LONG_TIMEOUT:I = 0x7d0

.field private static final PENDING_ASSIST_EXTRAS_TIMEOUT:I = 0x1f4

.field private static final PENDING_AUTOFILL_ASSIST_STRUCTURE_TIMEOUT:I = 0x7d0

.field static final POWER_MODE_REASON_ALL:I = 0x3

.field static final POWER_MODE_REASON_CHANGE_DISPLAY:I = 0x2

.field static final POWER_MODE_REASON_START_ACTIVITY:I = 0x1

.field static final POWER_MODE_REASON_UNKNOWN_VISIBILITY:I = 0x4

.field private static final POWER_MODE_UNKNOWN_VISIBILITY_TIMEOUT_MS:J = 0x3e8L

.field public static final RELAUNCH_REASON_FREE_RESIZE:I = 0x2

.field public static final RELAUNCH_REASON_NONE:I = 0x0

.field public static final RELAUNCH_REASON_WINDOWING_MODE_RESIZE:I = 0x1

.field private static final RESUME_FG_APP_SWITCH_MS:J = 0x1f4L

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_ROOT_TASK:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"


# instance fields
.field final GL_ES_VERSION:I

.field private mAccessibilityServiceUids:[I

.field private final mActionDoneSync:Ljava/lang/Object;

.field final mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

.field mActiveVoiceInteractionServiceComponent:Landroid/content/ComponentName;

.field mActivityClientController:Lcom/android/server/wm/ActivityClientController;

.field private mActivityInterceptorCallbacks:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/ActivityInterceptorCallback;",
            ">;"
        }
    .end annotation
.end field

.field private mActivityStartController:Lcom/android/server/wm/ActivityStartController;

.field final mAllowAppSwitchUids:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Landroid/util/ArrayMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mAmInternal:Landroid/app/ActivityManagerInternal;

.field private final mAnrController:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/app/AnrController;",
            ">;"
        }
    .end annotation
.end field

.field private mAppOpsManager:Landroid/app/AppOpsManager;

.field private volatile mAppSwitchesState:I

.field mAppWarnings:Lcom/android/server/wm/AppWarnings;

.field private final mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

.field private mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

.field public mCastActivity:Lcom/android/server/wm/ActivityRecord;

.field private mCastRotationChanged:Z

.field private final mCompanionAppUidsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

.field private mConfigurationSeq:I

.field mContext:Landroid/content/Context;

.field mController:Landroid/app/IActivityController;

.field mControllerIsAMonkey:Z

.field mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

.field mDevEnableNonResizableMultiWindow:Z

.field private mDeviceOwnerUid:I

.field private volatile mDreaming:Z

.field final mFactoryTest:I

.field public mFinishCastActivity:Z

.field mForceResizableActivities:Z

.field private mGlobalAssetsSeq:I

.field final mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

.field final mGlobalLockWithoutBoost:Ljava/lang/Object;

.field mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

.field mHasHeavyWeightFeature:Z

.field mHasLeanbackFeature:Z

.field volatile mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

.field volatile mHomeProcess:Lcom/android/server/wm/WindowProcessController;

.field mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

.field final mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

.field mKeyguardController:Lcom/android/server/wm/KeyguardController;

.field private mKeyguardShown:Z

.field mLargeScreenSmallestScreenWidthDp:I

.field mLastANRState:Ljava/lang/String;

.field mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field private volatile mLastStopAppSwitchesTime:J

.field private mLaunchPowerModeReasons:I

.field private mLayoutReasons:I

.field private final mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

.field private mLockTaskController:Lcom/android/server/wm/LockTaskController;

.field mMinPercentageMultiWindowSupportHeight:F

.field mMinPercentageMultiWindowSupportWidth:F

.field public mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

.field mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

.field private final mPendingAssistExtras:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;",
            ">;"
        }
    .end annotation
.end field

.field mPendingIntentController:Lcom/android/server/am/PendingIntentController;

.field private mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

.field private mPmInternal:Landroid/content/pm/PackageManagerInternal;

.field private mPowerManagerInternal:Landroid/os/PowerManagerInternal;

.field volatile mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

.field private mPreviousProcessVisibleTime:J

.field final mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

.field final mProcessNames:Lcom/android/internal/app/ProcessMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/android/internal/app/ProcessMap<",
            "Lcom/android/server/wm/WindowProcessController;",
            ">;"
        }
    .end annotation
.end field

.field mProfileApp:Ljava/lang/String;

.field mProfileProc:Lcom/android/server/wm/WindowProcessController;

.field mProfilerInfo:Landroid/app/ProfilerInfo;

.field private mRecentTasks:Lcom/android/server/wm/RecentTasks;

.field mRespectsActivityMinWidthHeightMultiWindow:I

.field public mResumeCastActivity:Z

.field private volatile mRetainPowerModeAndTopProcessState:Z

.field mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

.field final mScreenObservers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingsObserver:Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;

.field private mShowDialogs:Z

.field mShuttingDown:Z

.field private volatile mSleeping:Z

.field private mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

.field private mSupportedSystemLocales:[Ljava/lang/String;

.field mSupportsExpandedPictureInPicture:Z

.field mSupportsFreeformWindowManagement:Z

.field mSupportsMultiDisplay:Z

.field mSupportsMultiWindow:Z

.field mSupportsNonResizableMultiWindow:I

.field mSupportsPictureInPicture:Z

.field mSupportsSplitScreenMultiWindow:Z

.field mSuppressResizeConfigChanges:Z

.field private mSysUiServiceComponent:Landroid/content/ComponentName;

.field final mSystemThread:Landroid/app/ActivityThread;

.field private mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

.field mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

.field mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

.field public mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private mTempConfig:Landroid/content/res/Configuration;

.field private mThumbnailHeight:I

.field private mThumbnailWidth:I

.field final mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

.field mTopAction:Ljava/lang/String;

.field volatile mTopApp:Lcom/android/server/wm/WindowProcessController;

.field mTopComponent:Landroid/content/ComponentName;

.field mTopData:Ljava/lang/String;

.field volatile mTopProcessState:I

.field private mTracedResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

.field final mUiContext:Landroid/content/Context;

.field mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

.field private final mUpdateLock:Landroid/os/UpdateLock;

.field private final mUpdateOomAdjRunnable:Ljava/lang/Runnable;

.field private mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

.field private mUserManager:Lcom/android/server/pm/UserManagerService;

.field private mViSessionId:I

.field final mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

.field mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

.field mVr2dDisplayId:I

.field mVrController:Lcom/android/server/wm/VrController;

.field mWindowManager:Lcom/android/server/wm/WindowManagerService;

.field mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;


# direct methods
.method public static synthetic $r8$lambda$0lt5hsgGpP8ewA1uu12UgfVfgEw(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->cancelHeavyWeightProcessNotification(I)V

    return-void
.end method

.method public static synthetic $r8$lambda$cB4k8uAIgFV-rmxpnihi_DiMpv4(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;Landroid/content/Intent;I)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->postHeavyWeightProcessNotification(Lcom/android/server/wm/WindowProcessController;Landroid/content/Intent;I)V

    return-void
.end method

.method public static synthetic $r8$lambda$uDPnzqVuuoVSFA7RJcXFWsrCwrY(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/res/Configuration;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->sendPutConfigurationForUserMsg(ILandroid/content/res/Configuration;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$fgetmActivityInterceptorCallbacks(Lcom/android/server/wm/ActivityTaskManagerService;)Landroid/util/SparseArray;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityInterceptorCallbacks:Landroid/util/SparseArray;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmAppSwitchesState(Lcom/android/server/wm/ActivityTaskManagerService;)I
    .registers 1

    iget p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmCompanionAppUidsMap(Lcom/android/server/wm/ActivityTaskManagerService;)Ljava/util/Map;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmPreviousProcessVisibleTime(Lcom/android/server/wm/ActivityTaskManagerService;)J
    .registers 3

    iget-wide v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcessVisibleTime:J

    return-wide v0
.end method

.method static bridge synthetic -$$Nest$fgetmRecentTasks(Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/RecentTasks;
    .registers 1

    iget-object p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    return-object p0
.end method

.method static bridge synthetic -$$Nest$fgetmRetainPowerModeAndTopProcessState(Lcom/android/server/wm/ActivityTaskManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRetainPowerModeAndTopProcessState:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmShowDialogs(Lcom/android/server/wm/ActivityTaskManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fgetmSleeping(Lcom/android/server/wm/ActivityTaskManagerService;)Z
    .registers 1

    iget-boolean p0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmAccessibilityServiceUids(Lcom/android/server/wm/ActivityTaskManagerService;[I)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAccessibilityServiceUids:[I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmAppSwitchesState(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .registers 2

    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmBackgroundActivityStartCallback(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/BackgroundActivityStartCallback;)V
    .registers 2

    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmDreaming(Lcom/android/server/wm/ActivityTaskManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDreaming:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$fputmRetainPowerModeAndTopProcessState(Lcom/android/server/wm/ActivityTaskManagerService;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRetainPowerModeAndTopProcessState:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$mcanCloseSystemDialogs(Lcom/android/server/wm/ActivityTaskManagerService;II)Z
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->canCloseSystemDialogs(II)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mgetAppTasks(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;I)Ljava/util/List;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppTasks(Ljava/lang/String;I)Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$monLocalVoiceInteractionStartedLocked(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->onLocalVoiceInteractionStartedLocked(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mpendingAssistExtrasTimedOut(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->pendingAssistExtrasTimedOut(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstart(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->start()V

    return-void
.end method

.method static bridge synthetic -$$Nest$mstartActivityAsUser(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I
    .registers 14

    invoke-direct/range {p0 .. p13}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateConfigurationLocked(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z
    .registers 7

    invoke-direct/range {p0 .. p6}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$mupdateEventDispatchingLocked(Lcom/android/server/wm/ActivityTaskManagerService;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateEventDispatchingLocked(Z)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFontScaleIfNeeded(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateFontScaleIfNeeded(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateFontWeightAdjustmentIfNeeded(Lcom/android/server/wm/ActivityTaskManagerService;I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateFontWeightAdjustmentIfNeeded(I)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mupdateShouldShowDialogsLocked(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/res/Configuration;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateShouldShowDialogsLocked(Landroid/content/res/Configuration;)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteSleepStateToProto(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/util/proto/ProtoOutputStream;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/ActivityTaskManagerService;->writeSleepStateToProto(Landroid/util/proto/ProtoOutputStream;IZ)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 7
    .param p1, "context"  # Landroid/content/Context;

    .line 850
    invoke-direct {p0}, Landroid/app/IActivityTaskManager$Stub;-><init>()V

    .line 336
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActionDoneSync:Ljava/lang/Object;

    .line 404
    new-instance v0, Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-direct {v0}, Lcom/android/server/wm/WindowManagerGlobalLock;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    .line 412
    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    .line 422
    new-instance v0, Lcom/android/server/wm/MirrorActiveUids;

    invoke-direct {v0}, Lcom/android/server/wm/MirrorActiveUids;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    .line 424
    new-instance v0, Lcom/android/internal/app/ProcessMap;

    invoke-direct {v0}, Lcom/android/internal/app/ProcessMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 426
    new-instance v0, Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-direct {v0}, Lcom/android/server/wm/WindowProcessControllerMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    .line 446
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardShown:Z

    .line 450
    const/16 v1, 0x3e8

    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I

    .line 463
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    .line 470
    new-instance v1, Landroid/util/ArrayMap;

    invoke-direct {v1}, Landroid/util/ArrayMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    .line 483
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityInterceptorCallbacks:Landroid/util/SparseArray;

    .line 489
    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    invoke-direct {v1}, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    .line 511
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    .line 518
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    .line 524
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    .line 552
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAnrController:Ljava/util/List;

    .line 553
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 554
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerIsAMonkey:Z

    .line 560
    const-string v3, "android.intent.action.MAIN"

    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    .line 564
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileApp:Ljava/lang/String;

    .line 565
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfileProc:Lcom/android/server/wm/WindowProcessController;

    .line 566
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProfilerInfo:Landroid/app/ProfilerInfo;

    .line 578
    new-instance v3, Landroid/os/UpdateLock;

    const-string v4, "immersive"

    invoke-direct {v3, v4}, Landroid/os/UpdateLock;-><init>(Ljava/lang/String;)V

    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    .line 584
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAllowAppSwitchUids:Landroid/util/SparseArray;

    .line 665
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    .line 668
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVr2dDisplayId:I

    .line 696
    iput v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    .line 740
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    .line 743
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    .line 792
    new-array v2, v0, [I

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAccessibilityServiceUids:[I

    .line 794
    iput v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDeviceOwnerUid:I

    .line 842
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$1;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ActivityTaskManagerService$1;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateOomAdjRunnable:Ljava/lang/Runnable;

    .line 851
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 852
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v2

    iput v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    .line 853
    invoke-static {}, Landroid/app/ActivityThread;->currentActivityThread()Landroid/app/ActivityThread;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    .line 854
    invoke-virtual {v2}, Landroid/app/ActivityThread;->getSystemUiContext()Landroid/app/ContextImpl;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    .line 855
    new-instance v2, Lcom/android/server/wm/ClientLifecycleManager;

    invoke-direct {v2}, Lcom/android/server/wm/ClientLifecycleManager;-><init>()V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    .line 856
    new-instance v2, Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-direct {v2, p0}, Lcom/android/server/wm/VisibleActivityProcessTracker;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    .line 857
    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;

    invoke-direct {v2, p0}, Lcom/android/server/wm/ActivityTaskManagerService$LocalService;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    .line 858
    const-string/jumbo v2, "ro.opengles.version"

    invoke-static {v2, v0}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->GL_ES_VERSION:I

    .line 859
    new-instance v0, Lcom/android/server/wm/WindowOrganizerController;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowOrganizerController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    .line 860
    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 861
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 863
    invoke-static {}, Lcom/android/server/wm/BackNavigationController;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 864
    new-instance v1, Lcom/android/server/wm/BackNavigationController;

    invoke-direct {v1}, Lcom/android/server/wm/BackNavigationController;-><init>()V

    goto :goto_eb

    :cond_ea
    nop

    :goto_eb
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    .line 867
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->init(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;)V

    .line 869
    invoke-static {}, Landroid/appcompat/ApplicationCompatUtilsStub;->get()Landroid/appcompat/ApplicationCompatUtilsStub;

    move-result-object v0

    invoke-interface {v0}, Landroid/appcompat/ApplicationCompatUtilsStub;->isContinuityEnabled()Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 870
    invoke-static {}, Lcom/android/server/wm/ApplicationCompatRouterStub;->get()Lcom/android/server/wm/ApplicationCompatRouterStub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ApplicationCompatRouterStub;->init(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 871
    invoke-static {}, Lcom/android/server/wm/AppContinuityRouterStub;->get()Lcom/android/server/wm/AppContinuityRouterStub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/AppContinuityRouterStub;->init(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 873
    :cond_10e
    invoke-static {}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getInstance()Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    .line 874
    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->init(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 876
    return-void
.end method

.method private buildAssistBundleLocked(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;Landroid/os/Bundle;)V
    .registers 6
    .param p1, "pae"  # Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    .param p2, "result"  # Landroid/os/Bundle;

    .line 3507
    if-eqz p2, :cond_9

    .line 3508
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    const-string v1, "android.intent.extra.ASSIST_CONTEXT"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3510
    :cond_9
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->hint:Ljava/lang/String;

    if-eqz v0, :cond_15

    .line 3511
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->hint:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3513
    :cond_15
    return-void
.end method

.method private canCloseSystemDialogs(II)Z
    .registers 12
    .param p1, "pid"  # I
    .param p2, "uid"  # I

    .line 3312
    const-string v0, "android.permission.BROADCAST_CLOSE_SYSTEM_DIALOGS"

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_a

    .line 3314
    return v1

    .line 3316
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3319
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v2, p2}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcesses(I)Landroid/util/ArraySet;

    move-result-object v2

    .line 3320
    .local v2, "processes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    if-eqz v2, :cond_4d

    .line 3321
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    .local v4, "n":I
    :goto_1d
    if-ge v3, v4, :cond_4d

    .line 3322
    invoke-virtual {v2, v3}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wm/WindowProcessController;

    .line 3328
    .local v5, "process":Lcom/android/server/wm/WindowProcessController;
    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->getInstrumentationSourceUid()I

    move-result v6

    .line 3329
    .local v6, "sourceUid":I
    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->isInstrumenting()Z

    move-result v7

    if-eqz v7, :cond_3f

    const/4 v7, -0x1

    if-eq v6, v7, :cond_3f

    const-string v8, "android.permission.BROADCAST_CLOSE_SYSTEM_DIALOGS"

    invoke-static {v8, v7, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v7

    if-nez v7, :cond_3f

    .line 3332
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_d .. :try_end_3b} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3336
    :cond_3f
    :try_start_3f
    invoke-virtual {v5}, Lcom/android/server/wm/WindowProcessController;->canCloseSystemDialogsByToken()Z

    move-result v7

    if-eqz v7, :cond_4a

    .line 3337
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3f .. :try_end_46} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3321
    .end local v5  # "process":Lcom/android/server/wm/WindowProcessController;
    .end local v6  # "sourceUid":I
    :cond_4a
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 3341
    .end local v3  # "i":I
    .end local v4  # "n":I
    :cond_4d
    const-wide/32 v3, 0xa692aad

    :try_start_50
    invoke-static {v3, v4, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v3

    if-nez v3, :cond_70

    .line 3351
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p2}, Lcom/android/server/wm/RootWindowContainer;->hasVisibleWindowAboveButDoesNotOwnNotificationShade(I)Z

    move-result v3

    if-eqz v3, :cond_63

    .line 3352
    monitor-exit v0
    :try_end_5f
    .catchall {:try_start_50 .. :try_end_5f} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3357
    :cond_63
    :try_start_63
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAccessibilityServiceUids:[I

    invoke-static {v3, p2}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    move-result v3

    if-eqz v3, :cond_70

    .line 3358
    monitor-exit v0
    :try_end_6c
    .catchall {:try_start_63 .. :try_end_6c} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3361
    .end local v2  # "processes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/WindowProcessController;>;"
    :cond_70
    :try_start_70
    monitor-exit v0
    :try_end_71
    .catchall {:try_start_70 .. :try_end_71} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3362
    const/4 v0, 0x0

    return v0

    .line 3361
    :catchall_76
    move-exception v1

    :try_start_77
    monitor-exit v0
    :try_end_78
    .catchall {:try_start_77 .. :try_end_78} :catchall_76

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private cancelHeavyWeightProcessNotification(I)V
    .registers 9
    .param p1, "userId"  # I

    .line 5078
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v6

    .line 5079
    .local v6, "inm":Landroid/app/INotificationManager;
    if-nez v6, :cond_7

    .line 5080
    return-void

    .line 5083
    :cond_7
    :try_start_7
    const-string v1, "android"

    const-string v2, "android"

    const/4 v3, 0x0

    const/16 v4, 0xb

    move-object v0, v6

    move v5, p1

    invoke-interface/range {v0 .. v5}, Landroid/app/INotificationManager;->cancelNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)V
    :try_end_13
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_13} :catch_16
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_13} :catch_14

    goto :goto_1e

    .line 5087
    :catch_14
    move-exception v0

    goto :goto_1f

    .line 5085
    :catch_16
    move-exception v0

    .line 5086
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ActivityTaskManager"

    const-string v2, "Error canceling notification for service"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5088
    .end local v0  # "e":Ljava/lang/RuntimeException;
    :goto_1e
    nop

    .line 5090
    :goto_1f
    return-void
.end method

.method private static checkCallingPermission(Ljava/lang/String;)I
    .registers 3
    .param p0, "permission"  # Ljava/lang/String;

    .line 3258
    nop

    .line 3259
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 3258
    invoke-static {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static checkComponentPermission(Ljava/lang/String;IIIZ)I
    .registers 6
    .param p0, "permission"  # Ljava/lang/String;
    .param p1, "pid"  # I
    .param p2, "uid"  # I
    .param p3, "owningUid"  # I
    .param p4, "exported"  # Z

    .line 3391
    invoke-static {p0, p1, p2, p3, p4}, Lcom/android/server/am/ActivityManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    return v0
.end method

.method static checkPermission(Ljava/lang/String;II)I
    .registers 5
    .param p0, "permission"  # Ljava/lang/String;
    .param p1, "pid"  # I
    .param p2, "uid"  # I

    .line 3383
    const/4 v0, -0x1

    if-nez p0, :cond_4

    .line 3384
    return v0

    .line 3386
    :cond_4
    const/4 v1, 0x1

    invoke-static {p0, p1, p2, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkComponentPermission(Ljava/lang/String;IIIZ)I

    move-result v0

    return v0
.end method

.method private constructResumedTraceName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;

    .line 5192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "focused app: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private dumpActivity(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;[Ljava/lang/String;Z)V
    .registers 12
    .param p1, "prefix"  # Ljava/lang/String;
    .param p2, "fd"  # Ljava/io/FileDescriptor;
    .param p3, "pw"  # Ljava/io/PrintWriter;
    .param p4, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p5, "args"  # [Ljava/lang/String;
    .param p6, "dumpAll"  # Z

    .line 4331
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4332
    .local v0, "innerPrefix":Ljava/lang/String;
    const/4 v1, 0x0

    .line 4333
    .local v1, "appThread":Landroid/app/IApplicationThread;
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4334
    invoke-virtual {p3, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4335
    const-string v3, "ACTIVITY "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4336
    iget-object v3, p4, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4337
    const-string v3, " "

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4338
    invoke-static {p4}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4339
    const-string v3, " pid="

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4340
    invoke-virtual {p4}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v3

    if-eqz v3, :cond_53

    .line 4341
    iget-object v3, p4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 4342
    iget-object v3, p4, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v3

    move-object v1, v3

    goto :goto_58

    .line 4344
    :cond_53
    const-string v3, "(not running)"

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4346
    :goto_58
    if-eqz p6, :cond_5e

    .line 4347
    const/4 v3, 0x1

    invoke-virtual {p4, p3, v0, v3}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 4349
    :cond_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_17 .. :try_end_5f} :catchall_ba

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4350
    if-eqz v1, :cond_b9

    .line 4353
    invoke-virtual {p3}, Ljava/io/PrintWriter;->flush()V

    .line 4354
    :try_start_67
    new-instance v2, Lcom/android/internal/os/TransferPipe;

    invoke-direct {v2}, Lcom/android/internal/os/TransferPipe;-><init>()V
    :try_end_6c
    .catch Ljava/io/IOException; {:try_start_67 .. :try_end_6c} :catch_9e
    .catch Landroid/os/RemoteException; {:try_start_67 .. :try_end_6c} :catch_86

    .line 4355
    .local v2, "tp":Lcom/android/internal/os/TransferPipe;
    :try_start_6c
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->getWriteFd()Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    iget-object v4, p4, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-interface {v1, v3, v4, v0, p5}, Landroid/app/IApplicationThread;->dumpActivity(Landroid/os/ParcelFileDescriptor;Landroid/os/IBinder;Ljava/lang/String;[Ljava/lang/String;)V

    .line 4356
    invoke-virtual {v2, p2}, Lcom/android/internal/os/TransferPipe;->go(Ljava/io/FileDescriptor;)V
    :try_end_78
    .catchall {:try_start_6c .. :try_end_78} :catchall_7c

    .line 4357
    :try_start_78
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_7b
    .catch Ljava/io/IOException; {:try_start_78 .. :try_end_7b} :catch_9e
    .catch Landroid/os/RemoteException; {:try_start_78 .. :try_end_7b} :catch_86

    goto :goto_b9

    .line 4354
    :catchall_7c
    move-exception v3

    :try_start_7d
    invoke-virtual {v2}, Lcom/android/internal/os/TransferPipe;->close()V
    :try_end_80
    .catchall {:try_start_7d .. :try_end_80} :catchall_81

    goto :goto_85

    :catchall_81
    move-exception v4

    :try_start_82
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0  # "innerPrefix":Ljava/lang/String;
    .end local v1  # "appThread":Landroid/app/IApplicationThread;
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "prefix":Ljava/lang/String;
    .end local p2  # "fd":Ljava/io/FileDescriptor;
    .end local p3  # "pw":Ljava/io/PrintWriter;
    .end local p4  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local p5  # "args":[Ljava/lang/String;
    .end local p6  # "dumpAll":Z
    :goto_85
    throw v3
    :try_end_86
    .catch Ljava/io/IOException; {:try_start_82 .. :try_end_86} :catch_9e
    .catch Landroid/os/RemoteException; {:try_start_82 .. :try_end_86} :catch_86

    .line 4359
    .end local v2  # "tp":Lcom/android/internal/os/TransferPipe;
    .restart local v0  # "innerPrefix":Ljava/lang/String;
    .restart local v1  # "appThread":Landroid/app/IApplicationThread;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "prefix":Ljava/lang/String;
    .restart local p2  # "fd":Ljava/io/FileDescriptor;
    .restart local p3  # "pw":Ljava/io/PrintWriter;
    .restart local p4  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local p5  # "args":[Ljava/lang/String;
    .restart local p6  # "dumpAll":Z
    :catch_86
    move-exception v2

    .line 4360
    .local v2, "e":Landroid/os/RemoteException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Got a RemoteException while dumping the activity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_b9

    .line 4357
    .end local v2  # "e":Landroid/os/RemoteException;
    :catch_9e
    move-exception v2

    .line 4358
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Failure while dumping the activity: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4363
    .end local v2  # "e":Ljava/io/IOException;
    :cond_b9
    :goto_b9
    return-void

    .line 4349
    :catchall_ba
    move-exception v3

    :try_start_bb
    monitor-exit v2
    :try_end_bc
    .catchall {:try_start_bb .. :try_end_bc} :catchall_ba

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method private enforceCallerIsDream(Ljava/lang/String;)V
    .registers 6
    .param p1, "callerPackageName"  # Ljava/lang/String;

    .line 1495
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1497
    .local v0, "origId":J
    :try_start_4
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->canLaunchDreamActivity(Ljava/lang/String;)Z

    move-result v2
    :try_end_8
    .catchall {:try_start_4 .. :try_end_8} :catchall_17

    if-eqz v2, :cond_f

    .line 1502
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1503
    nop

    .line 1504
    return-void

    .line 1498
    :cond_f
    :try_start_f
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "The dream activity can be started only when the device is dreaming and only by the active dream package."

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "callerPackageName":Ljava/lang/String;
    throw v2
    :try_end_17
    .catchall {:try_start_f .. :try_end_17} :catchall_17

    .line 1502
    .restart local v0  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "callerPackageName":Ljava/lang/String;
    :catchall_17
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1503
    throw v2
.end method

.method static enforceNotIsolatedCaller(Ljava/lang/String;)V
    .registers 4
    .param p0, "caller"  # Ljava/lang/String;

    .line 4390
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-static {v0}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v0

    if-nez v0, :cond_b

    .line 4393
    return-void

    .line 4391
    :cond_b
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Isolated process not allowed to call "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static enforceTaskPermission(Ljava/lang/String;)V
    .registers 4
    .param p0, "func"  # Ljava/lang/String;

    .line 3366
    const-string v0, "android.permission.MANAGE_ACTIVITY_TASKS"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_9

    .line 3367
    return-void

    .line 3370
    :cond_9
    const-string v0, "android.permission.MANAGE_ACTIVITY_STACKS"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    const-string v1, "ActivityTaskManager"

    if-nez v0, :cond_19

    .line 3371
    const-string v0, "MANAGE_ACTIVITY_STACKS is deprecated, please use alternative permission: MANAGE_ACTIVITY_TASKS"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3373
    return-void

    .line 3376
    :cond_19
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " from pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3377
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " requires android.permission.MANAGE_ACTIVITY_TASKS"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3378
    .local v0, "msg":Ljava/lang/String;
    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3379
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private enqueueAssistContext(ILandroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZILandroid/os/Bundle;JI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    .registers 38
    .param p1, "requestType"  # I
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "hint"  # Ljava/lang/String;
    .param p4, "receiver"  # Landroid/app/IAssistDataReceiver;
    .param p5, "receiverExtras"  # Landroid/os/Bundle;
    .param p6, "activityToken"  # Landroid/os/IBinder;
    .param p7, "checkActivityIsTop"  # Z
    .param p8, "newSessionId"  # Z
    .param p9, "userHandle"  # I
    .param p10, "args"  # Landroid/os/Bundle;
    .param p11, "timeout"  # J
    .param p13, "flags"  # I

    .line 3440
    move-object/from16 v10, p0

    move-object/from16 v11, p6

    move-object/from16 v12, p10

    iget-object v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.GET_TOP_ACTIVITY_INFO"

    const-string v2, "enqueueAssistContext()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3443
    iget-object v13, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v13

    :try_start_12
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3444
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    move-object v14, v0

    .line 3446
    .local v14, "rootTask":Lcom/android/server/wm/Task;
    const/4 v15, 0x0

    if-eqz v14, :cond_22

    invoke-virtual {v14}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_23

    :cond_22
    move-object v0, v15

    .line 3447
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_23
    if-nez v0, :cond_31

    .line 3448
    const-string v1, "ActivityTaskManager"

    const-string v2, "getAssistContextExtras failed: no top activity"

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3449
    monitor-exit v13
    :try_end_2d
    .catchall {:try_start_12 .. :try_end_2d} :catchall_164

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v15

    .line 3451
    :cond_31
    :try_start_31
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-nez v1, :cond_54

    .line 3452
    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAssistContextExtras failed: no process for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3453
    monitor-exit v13
    :try_end_50
    .catchall {:try_start_31 .. :try_end_50} :catchall_164

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v15

    .line 3455
    :cond_54
    if-eqz p7, :cond_87

    .line 3456
    if-eqz v11, :cond_85

    .line 3457
    :try_start_58
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3458
    .local v1, "caller":Lcom/android/server/wm/ActivityRecord;
    if-eq v0, v1, :cond_85

    .line 3459
    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "enqueueAssistContext failed: caller "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is not current top "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3461
    monitor-exit v13
    :try_end_81
    .catchall {:try_start_58 .. :try_end_81} :catchall_164

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v15

    .line 3478
    .end local v1  # "caller":Lcom/android/server/wm/ActivityRecord;
    :cond_85
    move-object v9, v0

    goto :goto_d5

    .line 3465
    :cond_87
    :try_start_87
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    move-object v0, v1

    .line 3466
    if-nez v0, :cond_b1

    .line 3467
    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueueAssistContext failed: activity for token="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " couldn\'t be found"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3469
    monitor-exit v13
    :try_end_ad
    .catchall {:try_start_87 .. :try_end_ad} :catchall_164

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v15

    .line 3471
    :cond_b1
    :try_start_b1
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-nez v1, :cond_d4

    .line 3472
    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "enqueueAssistContext failed: no process for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3473
    monitor-exit v13
    :try_end_d0
    .catchall {:try_start_b1 .. :try_end_d0} :catchall_164

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v15

    .line 3471
    :cond_d4
    move-object v9, v0

    .line 3478
    .end local v0  # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v9, "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_d5
    :try_start_d5
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    move-object v8, v0

    .line 3479
    .local v8, "extras":Landroid/os/Bundle;
    if-eqz v12, :cond_e0

    .line 3480
    invoke-virtual {v8, v12}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 3482
    :cond_e0
    const-string v0, "android.intent.extra.ASSIST_PACKAGE"

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 3483
    const-string v0, "android.intent.extra.ASSIST_UID"

    iget-object v1, v9, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v1, v1, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {v8, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3485
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    move-object v1, v0

    move-object/from16 v2, p0

    move-object v3, v9

    move-object v4, v8

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    move-object/from16 v16, v8

    .end local v8  # "extras":Landroid/os/Bundle;
    .local v16, "extras":Landroid/os/Bundle;
    move-object/from16 v8, p5

    move-object/from16 v17, v9

    .end local v9  # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v17, "activity":Lcom/android/server/wm/ActivityRecord;
    move/from16 v9, p9

    invoke-direct/range {v1 .. v9}, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;I)V

    move-object v1, v0

    .line 3487
    .local v1, "pae":Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v0

    iput-boolean v0, v1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->isHome:Z

    .line 3490
    if-eqz p8, :cond_117

    .line 3491
    iget v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I
    :try_end_117
    .catchall {:try_start_d5 .. :try_end_117} :catchall_164

    .line 3494
    :cond_117
    move-object/from16 v2, v17

    .end local v17  # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    :try_start_119
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v18

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    iget v3, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mViSessionId:I

    move-object/from16 v19, v0

    move-object/from16 v20, v1

    move/from16 v21, p1

    move/from16 v22, v3

    move/from16 v23, p13

    invoke-interface/range {v18 .. v23}, Landroid/app/IApplicationThread;->requestAssistContextExtras(Landroid/os/IBinder;Landroid/os/IBinder;III)V

    .line 3496
    iget-object v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3497
    iget-object v0, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;
    :try_end_137
    .catch Landroid/os/RemoteException; {:try_start_119 .. :try_end_137} :catch_144
    .catchall {:try_start_119 .. :try_end_137} :catchall_164

    move-wide/from16 v3, p11

    :try_start_139
    invoke-virtual {v0, v1, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->postDelayed(Ljava/lang/Runnable;J)Z
    :try_end_13c
    .catch Landroid/os/RemoteException; {:try_start_139 .. :try_end_13c} :catch_142
    .catchall {:try_start_139 .. :try_end_13c} :catchall_16c

    .line 3501
    nop

    .line 3502
    :try_start_13d
    monitor-exit v13
    :try_end_13e
    .catchall {:try_start_13d .. :try_end_13e} :catchall_16c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 3498
    :catch_142
    move-exception v0

    goto :goto_147

    :catch_144
    move-exception v0

    move-wide/from16 v3, p11

    .line 3499
    .local v0, "e":Landroid/os/RemoteException;
    :goto_147
    :try_start_147
    const-string v5, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getAssistContextExtras failed: crash calling "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3500
    monitor-exit v13
    :try_end_160
    .catchall {:try_start_147 .. :try_end_160} :catchall_16c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v15

    .line 3503
    .end local v0  # "e":Landroid/os/RemoteException;
    .end local v1  # "pae":Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    .end local v2  # "activity":Lcom/android/server/wm/ActivityRecord;
    .end local v14  # "rootTask":Lcom/android/server/wm/Task;
    .end local v16  # "extras":Landroid/os/Bundle;
    :catchall_164
    move-exception v0

    move-wide/from16 v3, p11

    :goto_167
    :try_start_167
    monitor-exit v13
    :try_end_168
    .catchall {:try_start_167 .. :try_end_168} :catchall_16c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_16c
    move-exception v0

    goto :goto_167
.end method

.method private getAppTasks(Ljava/lang/String;I)Ljava/util/List;
    .registers 7
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 2768
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2770
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_1e

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2771
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v3, p2, p1}, Lcom/android/server/wm/RecentTasks;->getAppTasksList(ILjava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    monitor-exit v2
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_18

    .line 2774
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2771
    return-object v3

    .line 2772
    :catchall_18
    move-exception v3

    :try_start_19
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "pkgName":Ljava/lang/String;
    .end local p2  # "uid":I
    throw v3
    :try_end_1e
    .catchall {:try_start_1a .. :try_end_1e} :catchall_1e

    .line 2774
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "pkgName":Ljava/lang/String;
    .restart local p2  # "uid":I
    :catchall_1e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2775
    throw v2
.end method

.method static getInputDispatchingTimeoutMillisLocked(Lcom/android/server/wm/ActivityRecord;)J
    .registers 3
    .param p0, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 4695
    if-eqz p0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->hasProcess()Z

    move-result v0

    if-nez v0, :cond_9

    goto :goto_10

    .line 4698
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getInputDispatchingTimeoutMillisLocked(Lcom/android/server/wm/WindowProcessController;)J

    move-result-wide v0

    return-wide v0

    .line 4696
    :cond_10
    :goto_10
    sget v0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v0, v0

    return-wide v0
.end method

.method private static getInputDispatchingTimeoutMillisLocked(Lcom/android/server/wm/WindowProcessController;)J
    .registers 3
    .param p0, "r"  # Lcom/android/server/wm/WindowProcessController;

    .line 4702
    if-nez p0, :cond_6

    .line 4703
    sget v0, Landroid/os/InputConstants;->DEFAULT_DISPATCHING_TIMEOUT_MILLIS:I

    int-to-long v0, v0

    return-wide v0

    .line 4705
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/WindowProcessController;->getInputDispatchingTimeoutMillis()J

    move-result-wide v0

    return-wide v0
.end method

.method private increaseAssetConfigurationSeq()I
    .registers 3

    .line 4583
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalAssetsSeq:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalAssetsSeq:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalAssetsSeq:I

    .line 4584
    return v0
.end method

.method private isSameApp(ILjava/lang/String;)Z
    .registers 5
    .param p1, "callingUid"  # I
    .param p2, "packageName"  # Ljava/lang/String;

    .line 2367
    if-eqz p1, :cond_11

    const/16 v0, 0x3e8

    if-eq p1, v0, :cond_11

    .line 2368
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    invoke-static {p1}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v1

    invoke-virtual {v0, p2, p1, v1}, Landroid/content/pm/PackageManagerInternal;->isSameApp(Ljava/lang/String;II)Z

    move-result v0

    return v0

    .line 2370
    :cond_11
    const/4 v0, 0x1

    return v0
.end method

.method private isTaskSizeChange(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)Z
    .registers 5
    .param p1, "task"  # Lcom/android/server/wm/Task;
    .param p2, "rect"  # Landroid/graphics/Rect;

    .line 7264
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->width()I

    move-result v1

    if-ne v0, v1, :cond_1e

    .line 7265
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/Rect;->height()I

    move-result v1

    if-ne v0, v1, :cond_1e

    .line 7266
    const/4 v0, 0x0

    return v0

    .line 7269
    :cond_1e
    const/4 v0, 0x1

    return v0
.end method

.method static logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;
    .registers 4
    .param p0, "name"  # Ljava/lang/String;
    .param p1, "e"  # Ljava/lang/RuntimeException;

    .line 5496
    instance-of v0, p1, Ljava/lang/SecurityException;

    if-nez v0, :cond_32

    .line 5497
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " onTransact aborts UID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5498
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " PID:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 5499
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 5497
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0, p1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5501
    :cond_32
    throw p1
.end method

.method private onLocalVoiceInteractionStartedLocked(Landroid/os/IBinder;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;)V
    .registers 8
    .param p1, "activity"  # Landroid/os/IBinder;
    .param p2, "voiceSession"  # Landroid/service/voice/IVoiceInteractionSession;
    .param p3, "voiceInteractor"  # Lcom/android/internal/app/IVoiceInteractor;

    .line 3590
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3591
    .local v0, "activityToCallback":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_7

    return-void

    .line 3592
    :cond_7
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityRecord;->setVoiceSessionLocked(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 3596
    :try_start_a
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    invoke-interface {v1, p1, p3}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V

    .line 3598
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_17
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_17} :catch_2b

    .line 3600
    .local v1, "token":J
    :try_start_17
    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, p2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->startRunningVoiceLocked(Landroid/service/voice/IVoiceInteractionSession;I)V
    :try_end_20
    .catchall {:try_start_17 .. :try_end_20} :catchall_25

    .line 3602
    :try_start_20
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3603
    nop

    .line 3609
    .end local v1  # "token":J
    goto :goto_2f

    .line 3602
    .restart local v1  # "token":J
    :catchall_25
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3603
    nop

    .end local v0  # "activityToCallback":Lcom/android/server/wm/ActivityRecord;
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "activity":Landroid/os/IBinder;
    .end local p2  # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .end local p3  # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    throw v3
    :try_end_2b
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_2b} :catch_2b

    .line 3606
    .end local v1  # "token":J
    .restart local v0  # "activityToCallback":Lcom/android/server/wm/ActivityRecord;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "activity":Landroid/os/IBinder;
    .restart local p2  # "voiceSession":Landroid/service/voice/IVoiceInteractionSession;
    .restart local p3  # "voiceInteractor":Lcom/android/internal/app/IVoiceInteractor;
    :catch_2b
    move-exception v1

    .line 3607
    .local v1, "re":Landroid/os/RemoteException;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->clearVoiceSessionLocked()V

    .line 3610
    .end local v1  # "re":Landroid/os/RemoteException;
    :goto_2f
    return-void
.end method

.method private pendingAssistExtrasTimedOut(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;)V
    .registers 6
    .param p1, "pae"  # Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    .line 3517
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3518
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3519
    iget-object v1, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    .line 3520
    .local v1, "receiver":Landroid/app/IAssistDataReceiver;
    monitor-exit v0
    :try_end_e
    .catchall {:try_start_3 .. :try_end_e} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3521
    if-eqz v1, :cond_27

    .line 3523
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 3525
    .local v0, "sendBundle":Landroid/os/Bundle;
    const-string/jumbo v2, "receiverExtras"

    iget-object v3, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiverExtras:Landroid/os/Bundle;

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 3527
    :try_start_20
    iget-object v2, p1, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    invoke-interface {v2, v0}, Landroid/app/IAssistDataReceiver;->onHandleAssistData(Landroid/os/Bundle;)V
    :try_end_25
    .catch Landroid/os/RemoteException; {:try_start_20 .. :try_end_25} :catch_26

    .line 3529
    goto :goto_27

    .line 3528
    :catch_26
    move-exception v2

    .line 3531
    .end local v0  # "sendBundle":Landroid/os/Bundle;
    :cond_27
    :goto_27
    return-void

    .line 3520
    .end local v1  # "receiver":Landroid/app/IAssistDataReceiver;
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method private postHeavyWeightProcessNotification(Lcom/android/server/wm/WindowProcessController;Landroid/content/Intent;I)V
    .registers 15
    .param p1, "proc"  # Lcom/android/server/wm/WindowProcessController;
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "userId"  # I

    .line 5094
    const-string v0, "ActivityTaskManager"

    if-nez p1, :cond_5

    .line 5095
    return-void

    .line 5098
    :cond_5
    invoke-static {}, Landroid/app/NotificationManager;->getService()Landroid/app/INotificationManager;

    move-result-object v8

    .line 5099
    .local v8, "inm":Landroid/app/INotificationManager;
    if-nez v8, :cond_c

    .line 5100
    return-void

    .line 5104
    :cond_c
    :try_start_c
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v2, p1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v1

    move-object v9, v1

    .line 5105
    .local v9, "context":Landroid/content/Context;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v2, 0x104046a

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    .line 5106
    invoke-virtual {v9}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v6

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v6

    aput-object v6, v5, v3

    .line 5105
    invoke-virtual {v1, v2, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object v10, v1

    .line 5107
    .local v10, "text":Ljava/lang/String;
    new-instance v1, Landroid/app/Notification$Builder;

    sget-object v2, Lcom/android/internal/notification/SystemNotificationChannels;->HEAVY_WEIGHT_APP:Ljava/lang/String;

    invoke-direct {v1, v9, v2}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v2, 0x108084f

    .line 5110
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const-wide/16 v2, 0x0

    .line 5111
    invoke-virtual {v1, v2, v3}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 5112
    invoke-virtual {v1, v4}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 5113
    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v3, 0x106001c

    .line 5114
    invoke-virtual {v2, v3}, Landroid/content/Context;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 5116
    invoke-virtual {v1, v10}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const v3, 0x104046b

    .line 5118
    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    .line 5117
    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const/4 v3, 0x0

    const/high16 v5, 0x14000000

    const/4 v6, 0x0

    new-instance v7, Landroid/os/UserHandle;

    invoke-direct {v7, p3}, Landroid/os/UserHandle;-><init>(I)V

    .line 5119
    move-object v4, p2

    invoke-static/range {v2 .. v7}, Landroid/app/PendingIntent;->getActivityAsUser(Landroid/content/Context;ILandroid/content/Intent;ILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 5123
    invoke-virtual {v1}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v6
    :try_end_85
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_c .. :try_end_85} :catch_9c

    .line 5125
    .local v6, "notification":Landroid/app/Notification;
    :try_start_85
    const-string v2, "android"

    const-string v3, "android"

    const/4 v4, 0x0

    const/16 v5, 0xb

    move-object v1, v8

    move v7, p3

    invoke-interface/range {v1 .. v7}, Landroid/app/INotificationManager;->enqueueNotificationWithTag(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILandroid/app/Notification;I)V
    :try_end_91
    .catch Ljava/lang/RuntimeException; {:try_start_85 .. :try_end_91} :catch_94
    .catch Landroid/os/RemoteException; {:try_start_85 .. :try_end_91} :catch_92
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_85 .. :try_end_91} :catch_9c

    .line 5130
    goto :goto_9b

    .line 5129
    :catch_92
    move-exception v0

    goto :goto_9b

    .line 5127
    :catch_94
    move-exception v1

    .line 5128
    .local v1, "e":Ljava/lang/RuntimeException;
    :try_start_95
    const-string v2, "Error showing notification for heavy-weight app"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_9a
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_95 .. :try_end_9a} :catch_9c

    .line 5130
    nop

    .line 5133
    .end local v1  # "e":Ljava/lang/RuntimeException;
    .end local v6  # "notification":Landroid/app/Notification;
    .end local v9  # "context":Landroid/content/Context;
    .end local v10  # "text":Ljava/lang/String;
    :goto_9b
    goto :goto_a2

    .line 5131
    :catch_9c
    move-exception v1

    .line 5132
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "Unable to create context for heavy notification"

    invoke-static {v0, v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5135
    .end local v1  # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    :goto_a2
    return-void
.end method

.method public static relaunchReasonToString(I)Ljava/lang/String;
    .registers 2
    .param p0, "relaunchReason"  # I

    .line 4099
    packed-switch p0, :pswitch_data_c

    .line 4105
    const/4 v0, 0x0

    return-object v0

    .line 4103
    :pswitch_5  #0x2
    const-string v0, "free_resize"

    return-object v0

    .line 4101
    :pswitch_8  #0x1
    const-string/jumbo v0, "window_resize"

    return-object v0

    :pswitch_data_c
    .packed-switch 0x1
        :pswitch_8  #00000001
        :pswitch_5  #00000002
    .end packed-switch
.end method

.method private sendPutConfigurationForUserMsg(ILandroid/content/res/Configuration;)V
    .registers 4
    .param p1, "userId"  # I
    .param p2, "config"  # Landroid/content/res/Configuration;

    .line 4682
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 4683
    .local v0, "resolver":Landroid/content/ContentResolver;
    invoke-static {v0, p2, p1}, Landroid/provider/Settings$System;->putConfigurationForUser(Landroid/content/ContentResolver;Landroid/content/res/Configuration;I)Z

    .line 4684
    return-void
.end method

.method private start()V
    .registers 3

    .line 1214
    const-class v0, Lcom/android/server/wm/ActivityTaskManagerInternal;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 1215
    return-void
.end method

.method private startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I
    .registers 28
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "callingFeatureId"  # Ljava/lang/String;
    .param p4, "intent"  # Landroid/content/Intent;
    .param p5, "resolvedType"  # Ljava/lang/String;
    .param p6, "resultTo"  # Landroid/os/IBinder;
    .param p7, "resultWho"  # Ljava/lang/String;
    .param p8, "requestCode"  # I
    .param p9, "startFlags"  # I
    .param p10, "profilerInfo"  # Landroid/app/ProfilerInfo;
    .param p11, "bOptions"  # Landroid/os/Bundle;
    .param p12, "userId"  # I
    .param p13, "validateIncomingUser"  # Z

    .line 1290
    move-object/from16 v0, p2

    move-object/from16 v1, p4

    move-object v2, p0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 1291
    const-string/jumbo v3, "startActivityAsUser"

    invoke-static {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1292
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-static {v4}, Landroid/os/Process;->isSdkSandboxUid(I)Z

    move-result v4

    if-eqz v4, :cond_2e

    .line 1293
    const-class v4, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    invoke-static {v4}, Lcom/android/server/LocalManagerRegistry;->getManager(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;

    .line 1295
    .local v4, "sdkSandboxManagerLocal":Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;
    if-eqz v4, :cond_26

    .line 1299
    invoke-interface {v4, v1}, Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;->enforceAllowedToStartActivity(Landroid/content/Intent;)V

    goto :goto_2e

    .line 1296
    :cond_26
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v5, "SdkSandboxManagerLocal not found when starting an activity from an SDK sandbox uid."

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1302
    .end local v4  # "sdkSandboxManagerLocal":Lcom/android/server/sdksandbox/SdkSandboxManagerLocal;
    :cond_2e
    :goto_2e
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v6

    .line 1303
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    .line 1302
    const-string/jumbo v11, "startActivityAsUser"

    move/from16 v7, p12

    move/from16 v8, p13

    invoke-virtual/range {v6 .. v11}, Lcom/android/server/wm/ActivityStartController;->checkTargetUser(IZIILjava/lang/String;)I

    move-result v4

    .line 1306
    .end local p12  # "userId":I
    .local v4, "userId":I
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v5

    invoke-virtual {v5, v1, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1307
    move-object v5, p1

    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1308
    invoke-virtual {v3, v0}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1309
    move-object/from16 v6, p3

    invoke-virtual {v3, v6}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1310
    move-object/from16 v7, p5

    invoke-virtual {v3, v7}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1311
    move-object/from16 v8, p6

    invoke-virtual {v3, v8}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1312
    move-object/from16 v9, p7

    invoke-virtual {v3, v9}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1313
    move/from16 v10, p8

    invoke-virtual {v3, v10}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1314
    move/from16 v11, p9

    invoke-virtual {v3, v11}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1315
    move-object/from16 v12, p10

    invoke-virtual {v3, v12}, Lcom/android/server/wm/ActivityStarter;->setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1316
    move-object/from16 v13, p11

    invoke-virtual {v3, v13}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1317
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1318
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v3

    .line 1306
    return v3
.end method

.method private startRunningVoiceLocked(Landroid/service/voice/IVoiceInteractionSession;I)V
    .registers 5
    .param p1, "session"  # Landroid/service/voice/IVoiceInteractionSession;
    .param p2, "targetUid"  # I

    .line 3613
    const-string v0, "ActivityTaskManager"

    const-string v1, "<<<  startRunningVoiceLocked()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3614
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v1, Landroid/os/WorkSource;

    invoke-direct {v1, p2}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 3615
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_1f

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    if-eq v0, v1, :cond_32

    .line 3616
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    .line 3617
    .local v0, "wasRunningVoice":Z
    :goto_26
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    .line 3618
    if-nez v0, :cond_32

    .line 3619
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3620
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 3623
    .end local v0  # "wasRunningVoice":Z
    :cond_32
    return-void
.end method

.method private startTimeTrackingFocusedActivityLocked()V
    .registers 4

    .line 5173
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 5174
    .local v0, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    if-nez v1, :cond_15

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v1, :cond_15

    if-eqz v0, :cond_15

    .line 5175
    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/android/server/am/AppTimeTracker;->start(Ljava/lang/String;)V

    .line 5177
    :cond_15
    return-void
.end method

.method private updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z
    .registers 15
    .param p1, "values"  # Landroid/content/res/Configuration;
    .param p2, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "initLocale"  # Z
    .param p4, "persistent"  # Z
    .param p5, "userId"  # I
    .param p6, "deferResume"  # Z

    .line 4445
    const/4 v7, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    move-result v0

    return v0
.end method

.method private updateEventDispatchingLocked(Z)V
    .registers 4
    .param p1, "booted"  # Z

    .line 4678
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p1, :cond_a

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-nez v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->setEventDispatching(Z)V

    .line 4679
    return-void
.end method

.method private updateFontScaleIfNeeded(I)V
    .registers 6
    .param p1, "userId"  # I

    .line 4729
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_7

    .line 4730
    return-void

    .line 4733
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_scale"

    const/high16 v2, 0x3f800000  # 1.0f

    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    .line 4736
    .local v0, "scaleFactor":F
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4737
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    cmpl-float v2, v2, v0

    if-nez v2, :cond_2a

    .line 4738
    monitor-exit v1
    :try_end_26
    .catchall {:try_start_18 .. :try_end_26} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4741
    :cond_2a
    :try_start_2a
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    .line 4742
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v2

    .line 4743
    .local v2, "configuration":Landroid/content/res/Configuration;
    iput v0, v2, Landroid/content/res/Configuration;->fontScale:F

    .line 4744
    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updatePersistentConfiguration(Landroid/content/res/Configuration;I)V

    .line 4745
    .end local v2  # "configuration":Landroid/content/res/Configuration;
    monitor-exit v1
    :try_end_37
    .catchall {:try_start_2a .. :try_end_37} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4746
    return-void

    .line 4745
    :catchall_3b
    move-exception v2

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private updateFontWeightAdjustmentIfNeeded(I)V
    .registers 6
    .param p1, "userId"  # I

    .line 4749
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v0

    if-eq p1, v0, :cond_7

    .line 4750
    return-void

    .line 4753
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 4755
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "font_weight_adjustment"

    const v2, 0x7fffffff

    .line 4754
    invoke-static {v0, v1, v2, p1}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    .line 4760
    .local v0, "fontWeightAdjustment":I
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_19
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4761
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    if-ne v2, v0, :cond_29

    .line 4762
    monitor-exit v1
    :try_end_25
    .catchall {:try_start_19 .. :try_end_25} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 4765
    :cond_29
    :try_start_29
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    .line 4766
    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v2

    .line 4767
    .local v2, "configuration":Landroid/content/res/Configuration;
    iput v0, v2, Landroid/content/res/Configuration;->fontWeightAdjustment:I

    .line 4768
    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updatePersistentConfiguration(Landroid/content/res/Configuration;I)V

    .line 4769
    .end local v2  # "configuration":Landroid/content/res/Configuration;
    monitor-exit v1
    :try_end_36
    .catchall {:try_start_29 .. :try_end_36} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4770
    return-void

    .line 4769
    :catchall_3a
    move-exception v2

    :try_start_3b
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method private updateResumedAppTrace(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "resumed"  # Lcom/android/server/wm/ActivityRecord;

    .line 5180
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTracedResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    const-wide/16 v2, 0x20

    if-eqz v0, :cond_10

    .line 5181
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 5182
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->constructResumedTraceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5181
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceEnd(JLjava/lang/String;I)V

    .line 5184
    :cond_10
    if-eqz p1, :cond_1b

    .line 5185
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 5186
    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->constructResumedTraceName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5185
    invoke-static {v2, v3, v0, v1}, Landroid/os/Trace;->asyncTraceBegin(JLjava/lang/String;I)V

    .line 5188
    :cond_1b
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTracedResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 5189
    return-void
.end method

.method private updateShouldShowDialogsLocked(Landroid/content/res/Configuration;)V
    .registers 7
    .param p1, "config"  # Landroid/content/res/Configuration;

    .line 4718
    iget v0, p1, Landroid/content/res/Configuration;->keyboard:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_11

    iget v0, p1, Landroid/content/res/Configuration;->touchscreen:I

    if-ne v0, v2, :cond_11

    iget v0, p1, Landroid/content/res/Configuration;->navigation:I

    if-eq v0, v2, :cond_f

    goto :goto_11

    :cond_f
    move v0, v1

    goto :goto_12

    :cond_11
    :goto_11
    move v0, v2

    .line 4721
    .local v0, "inputMethodExists":Z
    :goto_12
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "hide_error_dialogs"

    invoke-static {v3, v4, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    if-eqz v3, :cond_22

    move v3, v2

    goto :goto_23

    :cond_22
    move v3, v1

    .line 4723
    .local v3, "hideDialogsSet":Z
    :goto_23
    if-eqz v0, :cond_2f

    .line 4724
    invoke-static {p1}, Landroid/app/ActivityTaskManager;->currentUiModeSupportsErrorDialogs(Landroid/content/res/Configuration;)Z

    move-result v4

    if-eqz v4, :cond_2f

    if-nez v3, :cond_2f

    move v1, v2

    goto :goto_30

    :cond_2f
    nop

    :goto_30
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShowDialogs:Z

    .line 4726
    return-void
.end method

.method private writeSleepStateToProto(Landroid/util/proto/ProtoOutputStream;IZ)V
    .registers 12
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "wakeFullness"  # I
    .param p3, "testPssMode"  # Z

    .line 4367
    const-wide v0, 0x10b0000001bL

    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 4368
    .local v0, "sleepToken":J
    nop

    .line 4369
    invoke-static {p2}, Landroid/os/PowerManagerInternal;->wakefulnessToProtoEnum(I)I

    move-result v2

    .line 4368
    const-wide v3, 0x10e00000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 4370
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, v2, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 4371
    .local v2, "tokenSize":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1f
    if-ge v3, v2, :cond_3a

    .line 4372
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, v4, Lcom/android/server/wm/RootWindowContainer;->mSleepTokens:Landroid/util/SparseArray;

    .line 4373
    invoke-virtual {v4, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/RootWindowContainer$SleepToken;

    .line 4374
    .local v4, "st":Lcom/android/server/wm/RootWindowContainer$SleepToken;
    const-wide v5, 0x20900000002L

    .line 4375
    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer$SleepToken;->toString()Ljava/lang/String;

    move-result-object v7

    .line 4374
    invoke-virtual {p1, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 4371
    .end local v4  # "st":Lcom/android/server/wm/RootWindowContainer$SleepToken;
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 4377
    .end local v3  # "i":I
    :cond_3a
    const-wide v3, 0x10800000003L

    iget-boolean v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4378
    const-wide v3, 0x10800000004L

    iget-boolean v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4380
    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v3, v4, p3}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 4382
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 4383
    return-void
.end method


# virtual methods
.method public addAppTask(Landroid/os/IBinder;Landroid/content/Intent;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Bitmap;)I
    .registers 16
    .param p1, "activityToken"  # Landroid/os/IBinder;
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "description"  # Landroid/app/ActivityManager$TaskDescription;
    .param p4, "thumbnail"  # Landroid/graphics/Bitmap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2878
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2879
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2882
    .local v1, "callingIdent":J
    :try_start_8
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_176

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2883
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2884
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_157

    .line 2888
    invoke-virtual {p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 2889
    .local v5, "comp":Landroid/content/ComponentName;
    if-eqz v5, :cond_138

    .line 2893
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    iget v7, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    if-ne v6, v7, :cond_f3

    .line 2894
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    iget v7, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    if-ne v6, v7, :cond_f3

    .line 2899
    invoke-virtual {p2}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v6

    const/4 v7, 0x0

    if-eqz v6, :cond_34

    .line 2900
    invoke-virtual {p2, v7}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 2902
    :cond_34
    invoke-virtual {p2}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v6

    if-eqz v6, :cond_3d

    .line 2903
    invoke-virtual {p2, v7}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 2905
    :cond_3d
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/high16 v7, 0x80000

    and-int/2addr v6, v7

    if-eqz v6, :cond_52

    .line 2906
    invoke-virtual {p2}, Landroid/content/Intent;->getFlags()I

    move-result v6

    const/16 v7, 0x2000

    and-int/2addr v6, v7

    if-nez v6, :cond_52

    .line 2909
    invoke-virtual {p2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 2912
    :cond_52
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v6

    const-wide/16 v7, 0x400

    .line 2913
    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v9

    .line 2912
    invoke-interface {v6, v5, v7, v8, v9}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v6

    .line 2914
    .local v6, "ainfo":Landroid/content/pm/ActivityInfo;
    const/4 v7, -0x1

    if-eqz v6, :cond_c1

    iget-object v8, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v8, v8, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v8, v0, :cond_6a

    goto :goto_c1

    .line 2921
    :cond_6a
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v8

    .line 2922
    .local v8, "rootTask":Lcom/android/server/wm/Task;
    new-instance v9, Lcom/android/server/wm/Task$Builder;

    invoke-direct {v9, p0}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 2923
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/Task$Builder;->setWindowingMode(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v9

    .line 2924
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/Task$Builder;->setActivityType(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v9

    .line 2925
    invoke-virtual {v9, v6}, Lcom/android/server/wm/Task$Builder;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/Task$Builder;

    move-result-object v9

    .line 2926
    invoke-virtual {v9, p2}, Lcom/android/server/wm/Task$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object v9

    .line 2927
    invoke-virtual {v8}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/TaskDisplayArea;->getNextRootTaskId()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/Task$Builder;->setTaskId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v9

    .line 2928
    invoke-virtual {v9}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object v9

    .line 2930
    .local v9, "task":Lcom/android/server/wm/Task;
    iget-object v10, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v10, v9}, Lcom/android/server/wm/RecentTasks;->addToBottom(Lcom/android/server/wm/Task;)Z

    move-result v10

    if-nez v10, :cond_b0

    .line 2932
    const-string v10, "addAppTask"

    invoke-virtual {v8, v9, v10}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    .line 2933
    monitor-exit v3
    :try_end_a9
    .catchall {:try_start_b .. :try_end_a9} :catchall_170

    .line 2942
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2933
    return v7

    .line 2935
    :cond_b0
    :try_start_b0
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v7

    invoke-virtual {v7, p3}, Landroid/app/ActivityManager$TaskDescription;->copyFrom(Landroid/app/ActivityManager$TaskDescription;)V

    .line 2939
    iget v7, v9, Lcom/android/server/wm/Task;->mTaskId:I

    monitor-exit v3
    :try_end_ba
    .catchall {:try_start_b0 .. :try_end_ba} :catchall_170

    .line 2942
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2939
    return v7

    .line 2915
    .end local v8  # "rootTask":Lcom/android/server/wm/Task;
    .end local v9  # "task":Lcom/android/server/wm/Task;
    :cond_c1
    :goto_c1
    :try_start_c1
    const-string v8, "ActivityTaskManager"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Can\'t add task for another application: target uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 2916
    if-nez v6, :cond_d2

    move v10, v7

    goto :goto_d6

    :cond_d2
    iget-object v10, v6, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    :goto_d6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, ", calling uid="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 2915
    invoke-static {v8, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2918
    monitor-exit v3
    :try_end_ec
    .catchall {:try_start_c1 .. :try_end_ec} :catchall_170

    .line 2942
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2918
    return v7

    .line 2895
    .end local v6  # "ainfo":Landroid/content/pm/ActivityInfo;
    :cond_f3
    :try_start_f3
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Bad thumbnail size: got "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 2896
    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p4}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", require "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "x"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "callingUid":I
    .end local v1  # "callingIdent":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "activityToken":Landroid/os/IBinder;
    .end local p2  # "intent":Landroid/content/Intent;
    .end local p3  # "description":Landroid/app/ActivityManager$TaskDescription;
    .end local p4  # "thumbnail":Landroid/graphics/Bitmap;
    throw v6

    .line 2890
    .restart local v0  # "callingUid":I
    .restart local v1  # "callingIdent":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "activityToken":Landroid/os/IBinder;
    .restart local p2  # "intent":Landroid/content/Intent;
    .restart local p3  # "description":Landroid/app/ActivityManager$TaskDescription;
    .restart local p4  # "thumbnail":Landroid/graphics/Bitmap;
    :cond_138
    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Intent "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " must specify explicit component"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "callingUid":I
    .end local v1  # "callingIdent":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "activityToken":Landroid/os/IBinder;
    .end local p2  # "intent":Landroid/content/Intent;
    .end local p3  # "description":Landroid/app/ActivityManager$TaskDescription;
    .end local p4  # "thumbnail":Landroid/graphics/Bitmap;
    throw v6

    .line 2885
    .end local v5  # "comp":Landroid/content/ComponentName;
    .restart local v0  # "callingUid":I
    .restart local v1  # "callingIdent":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "activityToken":Landroid/os/IBinder;
    .restart local p2  # "intent":Landroid/content/Intent;
    .restart local p3  # "description":Landroid/app/ActivityManager$TaskDescription;
    .restart local p4  # "thumbnail":Landroid/graphics/Bitmap;
    :cond_157
    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Activity does not exist; token="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0  # "callingUid":I
    .end local v1  # "callingIdent":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "activityToken":Landroid/os/IBinder;
    .end local p2  # "intent":Landroid/content/Intent;
    .end local p3  # "description":Landroid/app/ActivityManager$TaskDescription;
    .end local p4  # "thumbnail":Landroid/graphics/Bitmap;
    throw v5

    .line 2940
    .end local v4  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v0  # "callingUid":I
    .restart local v1  # "callingIdent":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "activityToken":Landroid/os/IBinder;
    .restart local p2  # "intent":Landroid/content/Intent;
    .restart local p3  # "description":Landroid/app/ActivityManager$TaskDescription;
    .restart local p4  # "thumbnail":Landroid/graphics/Bitmap;
    :catchall_170
    move-exception v4

    monitor-exit v3
    :try_end_172
    .catchall {:try_start_f3 .. :try_end_172} :catchall_170

    :try_start_172
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "callingUid":I
    .end local v1  # "callingIdent":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "activityToken":Landroid/os/IBinder;
    .end local p2  # "intent":Landroid/content/Intent;
    .end local p3  # "description":Landroid/app/ActivityManager$TaskDescription;
    .end local p4  # "thumbnail":Landroid/graphics/Bitmap;
    throw v4
    :try_end_176
    .catchall {:try_start_172 .. :try_end_176} :catchall_176

    .line 2942
    .restart local v0  # "callingUid":I
    .restart local v1  # "callingIdent":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "activityToken":Landroid/os/IBinder;
    .restart local p2  # "intent":Landroid/content/Intent;
    .restart local p3  # "description":Landroid/app/ActivityManager$TaskDescription;
    .restart local p4  # "thumbnail":Landroid/graphics/Bitmap;
    :catchall_176
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2943
    throw v3
.end method

.method addWindowLayoutReasons(I)V
    .registers 3
    .param p1, "reasons"  # I

    .line 4674
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLayoutReasons:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLayoutReasons:I

    .line 4675
    return-void
.end method

.method public alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    .registers 6
    .param p1, "activity"  # Landroid/content/ComponentName;

    .line 3971
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3972
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1e

    .line 3974
    .local v1, "origId":J
    :try_start_a
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/AppWarnings;->alwaysShowUnsupportedCompileSdkWarning(Landroid/content/ComponentName;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_18

    .line 3976
    :try_start_f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3977
    nop

    .line 3978
    .end local v1  # "origId":J
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3979
    return-void

    .line 3976
    .restart local v1  # "origId":J
    :catchall_18
    move-exception v3

    :try_start_19
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3977
    nop

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "activity":Landroid/content/ComponentName;
    throw v3

    .line 3978
    .end local v1  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "activity":Landroid/content/ComponentName;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method applyUpdateLockStateLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 1946
    if-eqz p1, :cond_8

    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    .line 1947
    .local v0, "nextState":Z
    :goto_9
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;

    invoke-direct {v2, p0, v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ZLcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 1958
    return-void
.end method

.method applyUpdateVrModeLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 4042
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->requestedVrComponent:Landroid/content/ComponentName;

    if-eqz v0, :cond_43

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v0

    if-eqz v0, :cond_43

    .line 4043
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Moving "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from display "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to main display for VR"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4045
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4046
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTaskId()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4045
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->moveRootTaskToDisplay(IIZ)V

    .line 4048
    :cond_43
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda9;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda9;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 4062
    return-void
.end method

.method assertPackageMatchesCallingUid(Ljava/lang/String;)V
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;

    .line 2378
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2379
    .local v0, "callingUid":I
    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->isSameApp(ILjava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 2380
    return-void

    .line 2382
    :cond_b
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: package="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " does not belong to uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 2384
    .local v1, "msg":Ljava/lang/String;
    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2385
    new-instance v2, Ljava/lang/SecurityException;

    invoke-direct {v2, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method canLaunchDreamActivity(Ljava/lang/String;)Z
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;

    .line 1475
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDreaming:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_34

    if-nez p1, :cond_8

    goto :goto_34

    .line 1478
    :cond_8
    const-class v0, Landroid/service/dreams/DreamManagerInternal;

    .line 1479
    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/dreams/DreamManagerInternal;

    .line 1483
    .local v0, "dreamManager":Landroid/service/dreams/DreamManagerInternal;
    invoke-virtual {v0, v1}, Landroid/service/dreams/DreamManagerInternal;->getActiveDreamComponent(Z)Landroid/content/ComponentName;

    move-result-object v2

    .line 1484
    .local v2, "activeDream":Landroid/content/ComponentName;
    const/4 v3, 0x1

    if-eqz v2, :cond_22

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1485
    return v3

    .line 1487
    :cond_22
    invoke-virtual {v0, v3}, Landroid/service/dreams/DreamManagerInternal;->getActiveDreamComponent(Z)Landroid/content/ComponentName;

    move-result-object v4

    .line 1488
    .local v4, "activeDoze":Landroid/content/ComponentName;
    if-eqz v4, :cond_33

    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_33

    .line 1489
    return v3

    .line 1491
    :cond_33
    return v1

    .line 1476
    .end local v0  # "dreamManager":Landroid/service/dreams/DreamManagerInternal;
    .end local v2  # "activeDream":Landroid/content/ComponentName;
    .end local v4  # "activeDoze":Landroid/content/ComponentName;
    :cond_34
    :goto_34
    return v1
.end method

.method public cancelRecentsAnimation(Z)V
    .registers 11
    .param p1, "restoreHomeRootTaskPosition"  # Z

    .line 2636
    const-string v0, "cancelRecentsAnimation()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2637
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    int-to-long v0, v0

    .line 2638
    .local v0, "callingUid":J
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 2640
    .local v2, "origId":J
    :try_start_e
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_40

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2642
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    if-eqz p1, :cond_1a

    .line 2643
    const/4 v6, 0x2

    goto :goto_1b

    .line 2644
    :cond_1a
    const/4 v6, 0x0

    :goto_1b
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "cancelRecentsAnimation/uid="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 2642
    invoke-virtual {v5, v6, v7}, Lcom/android/server/wm/WindowManagerService;->cancelRecentsAnimation(ILjava/lang/String;)V

    .line 2645
    monitor-exit v4
    :try_end_32
    .catchall {:try_start_11 .. :try_end_32} :catchall_3a

    :try_start_32
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_35
    .catchall {:try_start_32 .. :try_end_35} :catchall_40

    .line 2647
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2648
    nop

    .line 2649
    return-void

    .line 2645
    :catchall_3a
    move-exception v5

    :try_start_3b
    monitor-exit v4
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    :try_start_3c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "callingUid":J
    .end local v2  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "restoreHomeRootTaskPosition":Z
    throw v5
    :try_end_40
    .catchall {:try_start_3c .. :try_end_40} :catchall_40

    .line 2647
    .restart local v0  # "callingUid":J
    .restart local v2  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "restoreHomeRootTaskPosition":Z
    :catchall_40
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2648
    throw v4
.end method

.method public cancelTaskWindowTransition(I)V
    .registers 9
    .param p1, "taskId"  # I

    .line 3842
    const-string v0, "cancelTaskWindowTransition()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 3843
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3845
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_50

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3846
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3848
    .local v3, "task":Lcom/android/server/wm/Task;
    if-nez v3, :cond_3e

    .line 3849
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "cancelTaskWindowTransition: taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3850
    monitor-exit v2
    :try_end_37
    .catchall {:try_start_c .. :try_end_37} :catchall_4a

    .line 3855
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3850
    return-void

    .line 3852
    :cond_3e
    :try_start_3e
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->cancelTaskWindowTransition()V

    .line 3853
    .end local v3  # "task":Lcom/android/server/wm/Task;
    monitor-exit v2
    :try_end_42
    .catchall {:try_start_3e .. :try_end_42} :catchall_4a

    :try_start_42
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_45
    .catchall {:try_start_42 .. :try_end_45} :catchall_50

    .line 3855
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3856
    nop

    .line 3857
    return-void

    .line 3853
    :catchall_4a
    move-exception v3

    :try_start_4b
    monitor-exit v2
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    :try_start_4c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    throw v3
    :try_end_50
    .catchall {:try_start_4c .. :try_end_50} :catchall_50

    .line 3855
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    :catchall_50
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3856
    throw v2
.end method

.method public castRotationChanged(Z)V
    .registers 2
    .param p1, "changed"  # Z

    .line 7192
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastRotationChanged:Z

    .line 7193
    return-void
.end method

.method checkCanCloseSystemDialogs(IILjava/lang/String;)Z
    .registers 10
    .param p1, "pid"  # I
    .param p2, "uid"  # I
    .param p3, "packageName"  # Ljava/lang/String;

    .line 3269
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3270
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 3271
    .local v1, "process":Lcom/android/server/wm/WindowProcessController;
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_f0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3272
    if-nez p3, :cond_18

    if-eqz v1, :cond_18

    .line 3280
    iget-object v0, v1, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object p3, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 3282
    :cond_18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(pid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", uid="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3283
    .local v0, "caller":Ljava/lang/String;
    if-eqz p3, :cond_54

    .line 3284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3286
    :cond_54
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->canCloseSystemDialogs(II)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_ef

    .line 3288
    const-wide/32 v4, 0xa692aad

    invoke-static {v4, v5, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v2

    if-nez v2, :cond_c4

    .line 3293
    const-wide/32 v4, 0xa6929b8

    invoke-static {v4, v5, p2}, Landroid/app/compat/CompatChanges;->isChangeEnabled(JI)Z

    move-result v2

    if-eqz v2, :cond_99

    .line 3294
    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: android.intent.action.CLOSE_SYSTEM_DIALOGS broadcast from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.permission.BROADCAST_CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", dropping broadcast."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3299
    const/4 v2, 0x0

    return v2

    .line 3301
    :cond_99
    const-string v2, "ActivityTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android.intent.action.CLOSE_SYSTEM_DIALOGS broadcast from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " will require "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "android.permission.BROADCAST_CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " in future builds."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3305
    return v3

    .line 3289
    :cond_c4
    new-instance v2, Ljava/lang/SecurityException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: android.intent.action.CLOSE_SYSTEM_DIALOGS broadcast from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " requires "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "android.permission.BROADCAST_CLOSE_SYSTEM_DIALOGS"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3308
    :cond_ef
    return v3

    .line 3271
    .end local v0  # "caller":Ljava/lang/String;
    .end local v1  # "process":Lcom/android/server/wm/WindowProcessController;
    :catchall_f0
    move-exception v1

    :try_start_f1
    monitor-exit v0
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method clearHeavyWeightProcessIfEquals(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4
    .param p1, "proc"  # Lcom/android/server/wm/WindowProcessController;

    .line 5066
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, p1, :cond_9

    goto :goto_21

    .line 5070
    :cond_9
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 5071
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda10;-><init>()V

    iget v1, p1, Lcom/android/server/wm/WindowProcessController;->mUserId:I

    .line 5073
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 5071
    invoke-static {v0, p0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5074
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5075
    return-void

    .line 5067
    .end local v0  # "m":Landroid/os/Message;
    :cond_21
    :goto_21
    return-void
.end method

.method public clearLaunchParamsForPackages(Ljava/util/List;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 4129
    .local p1, "packageNames":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v0, "clearLaunchParamsForPackages"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 4130
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4131
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_c
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_22

    .line 4132
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/LaunchParamsPersister;->removeRecordForPackage(Ljava/lang/String;)V

    .line 4131
    add-int/lit8 v1, v1, 0x1

    goto :goto_c

    .line 4134
    .end local v1  # "i":I
    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_8 .. :try_end_23} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4135
    return-void

    .line 4134
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public clearSplitTask(Landroid/os/IBinder;)V
    .registers 9
    .param p1, "token"  # Landroid/os/IBinder;

    .line 7385
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7386
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 7387
    .local v1, "record":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_3f

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isSecondStateActivity()Z

    move-result v2

    if-eqz v2, :cond_3f

    .line 7388
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_3f

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-boolean v2, v2, Lcom/android/server/wm/Task;->mIsSplitMode:Z

    if-eqz v2, :cond_3f

    .line 7389
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/android/server/wm/Task;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 7390
    .local v2, "below":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_3f

    iget-boolean v3, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v3, :cond_3f

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v3

    if-nez v3, :cond_3f

    .line 7391
    invoke-static {}, Landroid/app/ActivityClient;->getInstance()Landroid/app/ActivityClient;

    move-result-object v3

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual {v3, v4, v6, v5, v6}, Landroid/app/ActivityClient;->finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;I)Z

    .line 7394
    .end local v1  # "record":Lcom/android/server/wm/ActivityRecord;
    .end local v2  # "below":Lcom/android/server/wm/ActivityRecord;
    :cond_3f
    monitor-exit v0
    :try_end_40
    .catchall {:try_start_3 .. :try_end_40} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7395
    return-void

    .line 7394
    :catchall_44
    move-exception v1

    :try_start_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_45 .. :try_end_46} :catchall_44

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method collectGrants(Landroid/content/Intent;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/uri/NeededUriGrants;
    .registers 7
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "target"  # Lcom/android/server/wm/ActivityRecord;

    .line 2266
    if-eqz p2, :cond_11

    .line 2267
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 2268
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    iget-object v2, p2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v3, p2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 2267
    invoke-interface {v0, p1, v1, v2, v3}, Lcom/android/server/uri/UriGrantsManagerInternal;->checkGrantUriPermissionFromIntent(Landroid/content/Intent;ILjava/lang/String;I)Lcom/android/server/uri/NeededUriGrants;

    move-result-object v0

    return-object v0

    .line 2270
    :cond_11
    const/4 v0, 0x0

    return-object v0
.end method

.method compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;
    .registers 3
    .param p1, "ai"  # Landroid/content/pm/ApplicationInfo;

    .line 5226
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/CompatModePackages;->compatibilityInfoForPackageLocked(Landroid/content/pm/ApplicationInfo;)Landroid/content/res/CompatibilityInfo;

    move-result-object v0

    return-object v0
.end method

.method continueWindowLayout()V
    .registers 3

    .line 4662
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    iget v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLayoutReasons:I

    if-eqz v1, :cond_a

    const/4 v1, 0x1

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowSurfacePlacer;->continueLayout(Z)V

    .line 4666
    return-void
.end method

.method protected createAppWarnings(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/io/File;)Lcom/android/server/wm/AppWarnings;
    .registers 12
    .param p1, "uiContext"  # Landroid/content/Context;
    .param p2, "handler"  # Landroid/os/Handler;
    .param p3, "uiHandler"  # Landroid/os/Handler;
    .param p4, "systemDir"  # Ljava/io/File;

    .line 1061
    new-instance v6, Lcom/android/server/wm/AppWarnings;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wm/AppWarnings;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/io/File;)V

    return-object v6
.end method

.method protected createTaskSupervisor()Lcom/android/server/wm/ActivityTaskSupervisor;
    .registers 3

    .line 1053
    new-instance v0, Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 1054
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V

    .line 1055
    .local v0, "supervisor":Lcom/android/server/wm/ActivityTaskSupervisor;
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->initialize()V

    .line 1056
    return-object v0
.end method

.method deferWindowLayout()V
    .registers 2

    .line 4651
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->isLayoutDeferred()Z

    move-result v0

    if-nez v0, :cond_d

    .line 4654
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLayoutReasons:I

    .line 4657
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->deferLayout()V

    .line 4658
    return-void
.end method

.method public detachNavigationBarFromApp(Landroid/os/IBinder;)V
    .registers 6
    .param p1, "transition"  # Landroid/os/IBinder;

    .line 4150
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string v2, "detachNavigationBarFromApp"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4152
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4154
    .local v0, "token":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_29

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4155
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v3

    invoke-virtual {v3, p1}, Lcom/android/server/wm/TransitionController;->legacyDetachNavigationBarFromApp(Landroid/os/IBinder;)V

    .line 4156
    monitor-exit v2
    :try_end_1b
    .catchall {:try_start_10 .. :try_end_1b} :catchall_23

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1e
    .catchall {:try_start_1b .. :try_end_1e} :catchall_29

    .line 4158
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4159
    nop

    .line 4160
    return-void

    .line 4156
    :catchall_23
    move-exception v3

    :try_start_24
    monitor-exit v2
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "transition":Landroid/os/IBinder;
    throw v3
    :try_end_29
    .catchall {:try_start_25 .. :try_end_29} :catchall_29

    .line 4158
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "transition":Landroid/os/IBinder;
    :catchall_29
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4159
    throw v2
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;)V
    .registers 17
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;
    .param p4, "opti"  # I
    .param p5, "dumpAll"  # Z
    .param p6, "dumpClient"  # Z
    .param p7, "dumpPackage"  # Ljava/lang/String;

    .line 4211
    const-string v8, "ACTIVITY MANAGER ACTIVITIES (dumpsys activity activities)"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object/from16 v7, p7

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    .line 4213
    return-void
.end method

.method dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V
    .registers 16
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;
    .param p4, "opti"  # I
    .param p5, "dumpAll"  # Z
    .param p6, "dumpClient"  # Z
    .param p7, "dumpPackage"  # Ljava/lang/String;
    .param p8, "header"  # Ljava/lang/String;

    .line 4217
    invoke-virtual {p2, p8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4219
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move-object v1, p1

    move-object v2, p2

    move v3, p5

    move v4, p6

    move-object v5, p7

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RootWindowContainer;->dumpActivities(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;)Z

    move-result v0

    .line 4221
    .local v0, "printedAnything":Z
    move v4, v0

    .line 4223
    .local v4, "needSep":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4224
    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 4223
    const-string v5, "  ResumedActivity: "

    const/4 v6, 0x0

    move-object v1, p2

    move-object v3, p7

    invoke-static/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    move-result v1

    .line 4226
    .local v1, "printed":Z
    if-eqz v1, :cond_23

    .line 4227
    const/4 v0, 0x1

    .line 4228
    const/4 v2, 0x0

    .end local v4  # "needSep":Z
    .local v2, "needSep":Z
    goto :goto_24

    .line 4226
    .end local v2  # "needSep":Z
    .restart local v4  # "needSep":Z
    :cond_23
    move v2, v4

    .line 4231
    .end local v4  # "needSep":Z
    .restart local v2  # "needSep":Z
    :goto_24
    if-nez p7, :cond_42

    .line 4232
    if-eqz v2, :cond_2b

    .line 4233
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 4235
    :cond_2b
    const/4 v0, 0x1

    .line 4236
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string v4, "  "

    invoke-virtual {v3, p2, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4237
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v3, p2, v4}, Lcom/android/server/wm/TaskOrganizerController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4238
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {v3, p2, v4}, Lcom/android/server/wm/VisibleActivityProcessTracker;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4239
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {v3, p2, v4}, Lcom/android/server/wm/MirrorActiveUids;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4242
    :cond_42
    invoke-static {}, Lcom/android/server/wm/PreloadStateManagerStub;->get()Lcom/android/server/wm/PreloadStateManagerStub;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/android/server/wm/PreloadStateManagerStub;->dump(Ljava/io/PrintWriter;)V

    .line 4244
    if-nez v0, :cond_50

    .line 4245
    const-string v3, "  (nothing)"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4247
    :cond_50
    return-void
.end method

.method protected dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Ljava/lang/String;[Ljava/lang/String;IZZZI)Z
    .registers 34
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "name"  # Ljava/lang/String;
    .param p4, "args"  # [Ljava/lang/String;
    .param p5, "opti"  # I
    .param p6, "dumpAll"  # Z
    .param p7, "dumpVisibleRootTasksOnly"  # Z
    .param p8, "dumpFocusedRootTaskOnly"  # Z
    .param p9, "userId"  # I

    .line 4285
    move-object/from16 v8, p0

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move/from16 v11, p5

    iget-object v1, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4286
    iget-object v0, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;
    :try_end_10
    .catchall {:try_start_b .. :try_end_10} :catchall_d2

    move-object/from16 v12, p3

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    :try_start_18
    invoke-virtual {v0, v12, v13, v14, v15}, Lcom/android/server/wm/RootWindowContainer;->getDumpActivities(Ljava/lang/String;ZZI)Ljava/util/ArrayList;

    move-result-object v0

    move-object v7, v0

    .line 4288
    .local v7, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    monitor-exit v1
    :try_end_1e
    .catchall {:try_start_18 .. :try_end_1e} :catchall_e0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4290
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    if-gtz v0, :cond_29

    .line 4291
    return v1

    .line 4294
    :cond_29
    array-length v0, v10

    sub-int/2addr v0, v11

    new-array v6, v0, [Ljava/lang/String;

    .line 4295
    .local v6, "newArgs":[Ljava/lang/String;
    array-length v0, v10

    sub-int/2addr v0, v11

    invoke-static {v10, v11, v6, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 4297
    const/4 v0, 0x0

    .line 4298
    .local v0, "lastTask":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    .line 4299
    .local v1, "needSep":Z
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/16 v16, 0x1

    add-int/lit8 v2, v2, -0x1

    move v5, v2

    move/from16 v23, v1

    move-object v1, v0

    move/from16 v0, v23

    .local v0, "needSep":Z
    .local v1, "lastTask":Lcom/android/server/wm/Task;
    .local v5, "i":I
    :goto_42
    if-ltz v5, :cond_d1

    .line 4300
    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v17, v2

    check-cast v17, Lcom/android/server/wm/ActivityRecord;

    .line 4301
    .local v17, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_51

    .line 4302
    invoke-virtual/range {p2 .. p2}, Ljava/io/PrintWriter;->println()V

    .line 4304
    :cond_51
    const/16 v18, 0x1

    .line 4305
    .end local v0  # "needSep":Z
    .local v18, "needSep":Z
    iget-object v2, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_56
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4306
    invoke-virtual/range {v17 .. v17}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0
    :try_end_5d
    .catchall {:try_start_56 .. :try_end_5d} :catchall_c3

    .line 4307
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eq v1, v0, :cond_90

    .line 4308
    move-object v1, v0

    .line 4309
    :try_start_60
    const-string v3, "TASK "

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4310
    iget-object v3, v1, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4311
    const-string v3, " id="

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4312
    iget v3, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(I)V

    .line 4313
    const-string v3, " userId="

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4314
    iget v3, v1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v9, v3}, Ljava/io/PrintWriter;->println(I)V

    .line 4315
    if-eqz p6, :cond_85

    .line 4316
    const-string v3, "  "

    invoke-virtual {v1, v9, v3}, Lcom/android/server/wm/Task;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_60 .. :try_end_85} :catchall_88

    .line 4319
    .end local v0  # "task":Lcom/android/server/wm/Task;
    :cond_85
    move-object/from16 v19, v1

    goto :goto_92

    :catchall_88
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    goto :goto_ca

    .line 4307
    .restart local v0  # "task":Lcom/android/server/wm/Task;
    :cond_90
    move-object/from16 v19, v1

    .line 4319
    .end local v0  # "task":Lcom/android/server/wm/Task;
    .end local v1  # "lastTask":Lcom/android/server/wm/Task;
    .local v19, "lastTask":Lcom/android/server/wm/Task;
    :goto_92
    :try_start_92
    monitor-exit v2
    :try_end_93
    .catchall {:try_start_92 .. :try_end_93} :catchall_b9

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4320
    const-string v2, "  "

    invoke-virtual {v7, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    move-object/from16 v1, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    move/from16 v20, v5

    .end local v5  # "i":I
    .local v20, "i":I
    move-object v5, v0

    move-object/from16 v21, v6

    .end local v6  # "newArgs":[Ljava/lang/String;
    .local v21, "newArgs":[Ljava/lang/String;
    move-object/from16 v22, v7

    .end local v7  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .local v22, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    move/from16 v7, p6

    invoke-direct/range {v1 .. v7}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpActivity(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;[Ljava/lang/String;Z)V

    .line 4299
    .end local v17  # "r":Lcom/android/server/wm/ActivityRecord;
    add-int/lit8 v5, v20, -0x1

    move/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v7, v22

    .end local v20  # "i":I
    .restart local v5  # "i":I
    goto :goto_42

    .line 4319
    .end local v21  # "newArgs":[Ljava/lang/String;
    .end local v22  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v6  # "newArgs":[Ljava/lang/String;
    .restart local v7  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v17  # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_b9
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v1, v19

    .end local v5  # "i":I
    .end local v6  # "newArgs":[Ljava/lang/String;
    .end local v7  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v20  # "i":I
    .restart local v21  # "newArgs":[Ljava/lang/String;
    .restart local v22  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    goto :goto_ca

    .end local v19  # "lastTask":Lcom/android/server/wm/Task;
    .end local v20  # "i":I
    .end local v21  # "newArgs":[Ljava/lang/String;
    .end local v22  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v1  # "lastTask":Lcom/android/server/wm/Task;
    .restart local v5  # "i":I
    .restart local v6  # "newArgs":[Ljava/lang/String;
    .restart local v7  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    :catchall_c3
    move-exception v0

    move/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    .end local v5  # "i":I
    .end local v6  # "newArgs":[Ljava/lang/String;
    .end local v7  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .restart local v20  # "i":I
    .restart local v21  # "newArgs":[Ljava/lang/String;
    .restart local v22  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    :goto_ca
    :try_start_ca
    monitor-exit v2
    :try_end_cb
    .catchall {:try_start_ca .. :try_end_cb} :catchall_cf

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_cf
    move-exception v0

    goto :goto_ca

    .line 4322
    .end local v17  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v18  # "needSep":Z
    .end local v20  # "i":I
    .end local v21  # "newArgs":[Ljava/lang/String;
    .end local v22  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    .local v0, "needSep":Z
    .restart local v6  # "newArgs":[Ljava/lang/String;
    .restart local v7  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    :cond_d1
    return v16

    .line 4288
    .end local v0  # "needSep":Z
    .end local v1  # "lastTask":Lcom/android/server/wm/Task;
    .end local v6  # "newArgs":[Ljava/lang/String;
    .end local v7  # "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    :catchall_d2
    move-exception v0

    move-object/from16 v12, p3

    move/from16 v13, p7

    move/from16 v14, p8

    move/from16 v15, p9

    :goto_db
    :try_start_db
    monitor-exit v1
    :try_end_dc
    .catchall {:try_start_db .. :try_end_dc} :catchall_e0

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_e0
    move-exception v0

    goto :goto_db
.end method

.method dumpActivityContainersLocked(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 4250
    const-string v0, "ACTIVITY MANAGER CONTAINERS (dumpsys activity containers)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4251
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const-string v1, " "

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/RootWindowContainer;->dumpChildrenNames(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 4252
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4253
    return-void
.end method

.method dumpActivityStarterLocked(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "dumpPackage"  # Ljava/lang/String;

    .line 4256
    const-string v0, "ACTIVITY MANAGER STARTER (dumpsys activity starter)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4257
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/ActivityStartController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 4258
    return-void
.end method

.method dumpInstalledPackagesConfig(Ljava/io/PrintWriter;)V
    .registers 4
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 4262
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/PackageConfigPersister;->dump(Ljava/io/PrintWriter;I)V

    .line 4263
    return-void
.end method

.method dumpLastANRLocked(Ljava/io/PrintWriter;)V
    .registers 3
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 4163
    const-string v0, "ACTIVITY MANAGER LAST ANR (dumpsys activity lastanr)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4164
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastANRState:Ljava/lang/String;

    if-nez v0, :cond_f

    .line 4165
    const-string v0, "  <no ANR has occurred since boot>"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    goto :goto_12

    .line 4167
    :cond_f
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4169
    :goto_12
    return-void
.end method

.method dumpLastANRTracesLocked(Ljava/io/PrintWriter;)V
    .registers 11
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 4172
    const-string v0, "ACTIVITY MANAGER LAST ANR TRACES (dumpsys activity lastanr-traces)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4174
    new-instance v0, Ljava/io/File;

    const-string v1, "/data/anr"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 4175
    .local v0, "files":[Ljava/io/File;
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 4176
    const-string v1, "  <no ANR has occurred since boot>"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4177
    return-void

    .line 4180
    :cond_1c
    const/4 v1, 0x0

    .line 4181
    .local v1, "latest":Ljava/io/File;
    array-length v2, v0

    const/4 v3, 0x0

    :goto_1f
    if-ge v3, v2, :cond_35

    aget-object v4, v0, v3

    .line 4182
    .local v4, "f":Ljava/io/File;
    if-eqz v1, :cond_31

    invoke-virtual {v1}, Ljava/io/File;->lastModified()J

    move-result-wide v5

    invoke-virtual {v4}, Ljava/io/File;->lastModified()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-gez v5, :cond_32

    .line 4183
    :cond_31
    move-object v1, v4

    .line 4181
    .end local v4  # "f":Ljava/io/File;
    :cond_32
    add-int/lit8 v3, v3, 0x1

    goto :goto_1f

    .line 4186
    :cond_35
    const-string v2, "File: "

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4187
    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4188
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4189
    :try_start_44
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/FileReader;

    invoke-direct {v3, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_4e
    .catch Ljava/io/IOException; {:try_start_44 .. :try_end_4e} :catch_67

    .line 4191
    .local v2, "in":Ljava/io/BufferedReader;
    :goto_4e
    :try_start_4e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    move-object v4, v3

    .local v4, "line":Ljava/lang/String;
    if-eqz v3, :cond_59

    .line 4192
    invoke-virtual {p1, v4}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_58
    .catchall {:try_start_4e .. :try_end_58} :catchall_5d

    goto :goto_4e

    .line 4194
    .end local v4  # "line":Ljava/lang/String;
    :cond_59
    :try_start_59
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5c
    .catch Ljava/io/IOException; {:try_start_59 .. :try_end_5c} :catch_67

    .line 4198
    .end local v2  # "in":Ljava/io/BufferedReader;
    goto :goto_73

    .line 4189
    .restart local v2  # "in":Ljava/io/BufferedReader;
    :catchall_5d
    move-exception v3

    :try_start_5e
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_61
    .catchall {:try_start_5e .. :try_end_61} :catchall_62

    goto :goto_66

    :catchall_62
    move-exception v4

    :try_start_63
    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local v0  # "files":[Ljava/io/File;
    .end local v1  # "latest":Ljava/io/File;
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "pw":Ljava/io/PrintWriter;
    :goto_66
    throw v3
    :try_end_67
    .catch Ljava/io/IOException; {:try_start_63 .. :try_end_67} :catch_67

    .line 4194
    .end local v2  # "in":Ljava/io/BufferedReader;
    .restart local v0  # "files":[Ljava/io/File;
    .restart local v1  # "latest":Ljava/io/File;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "pw":Ljava/io/PrintWriter;
    :catch_67
    move-exception v2

    .line 4195
    .local v2, "e":Ljava/io/IOException;
    const-string v3, "Unable to read: "

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4196
    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 4197
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 4199
    .end local v2  # "e":Ljava/io/IOException;
    :goto_73
    return-void
.end method

.method dumpTopResumedActivityLocked(Ljava/io/PrintWriter;)V
    .registers 5
    .param p1, "pw"  # Ljava/io/PrintWriter;

    .line 4202
    const-string v0, "ACTIVITY MANAGER TOP-RESUMED (dumpsys activity top-resumed)"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4203
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 4204
    .local v0, "topRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_13

    .line 4205
    const/4 v1, 0x1

    const-string v2, ""

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/server/wm/ActivityRecord;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 4207
    :cond_13
    return-void
.end method

.method endLaunchPowerMode(I)V
    .registers 6
    .param p1, "reason"  # I

    .line 4628
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLaunchPowerModeReasons:I

    if-nez v0, :cond_5

    return-void

    .line 4629
    :cond_5
    not-int v1, p1

    and-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLaunchPowerModeReasons:I

    .line 4631
    and-int/lit8 v0, v0, 0x4

    const/4 v1, 0x0

    if-eqz v0, :cond_3b

    .line 4632
    const/4 v0, 0x1

    .line 4633
    .local v0, "allResolved":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getChildCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_17
    if-ltz v2, :cond_2b

    .line 4634
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/RootWindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/DisplayContent;

    iget-object v3, v3, Lcom/android/server/wm/DisplayContent;->mUnknownAppVisibilityController:Lcom/android/server/wm/UnknownAppVisibilityController;

    .line 4635
    invoke-virtual {v3}, Lcom/android/server/wm/UnknownAppVisibilityController;->allResolved()Z

    move-result v3

    and-int/2addr v0, v3

    .line 4633
    add-int/lit8 v2, v2, -0x1

    goto :goto_17

    .line 4637
    .end local v2  # "i":I
    :cond_2b
    if-eqz v0, :cond_3b

    .line 4638
    iget v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLaunchPowerModeReasons:I

    and-int/lit8 v2, v2, -0x5

    iput v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLaunchPowerModeReasons:I

    .line 4639
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRetainPowerModeAndTopProcessState:Z

    .line 4640
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    const/4 v3, 0x3

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeMessages(I)V

    .line 4644
    .end local v0  # "allResolved":Z
    :cond_3b
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLaunchPowerModeReasons:I

    if-nez v0, :cond_47

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    if-eqz v0, :cond_47

    .line 4645
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 4647
    :cond_47
    return-void
.end method

.method public enforceSystemHasVrFeature()V
    .registers 3

    .line 3794
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "android.hardware.vr.high_performance"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3798
    return-void

    .line 3796
    :cond_f
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "VR mode not supported on this device!"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method ensureConfigAndVisibilityAfterUpdate(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 7
    .param p1, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "changes"  # I

    .line 5197
    const/4 v0, 0x1

    .line 5198
    .local v0, "kept":Z
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 5200
    .local v1, "mainRootTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_1d

    .line 5201
    if-eqz p2, :cond_11

    if-nez p1, :cond_11

    .line 5205
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object p1

    .line 5208
    :cond_11
    if-eqz p1, :cond_1d

    .line 5209
    const/4 v2, 0x0

    invoke-virtual {p1, p2, v2}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v0

    .line 5213
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1, p2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 5218
    :cond_1d
    return v0
.end method

.method enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)Z
    .registers 9
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "params"  # Landroid/app/PictureInPictureParams;

    .line 3725
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 3726
    return v1

    .line 3731
    :cond_8
    const-string v0, "enterPictureInPictureMode"

    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_12

    .line 3733
    return v2

    .line 3736
    :cond_12
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda3;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)V

    .line 3754
    .local v0, "enterPipRunnable":Ljava/lang/Runnable;
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isKeyguardLocked()Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 3758
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    new-instance v4, Lcom/android/server/wm/ActivityTaskManagerService$2;

    invoke-direct {v4, p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService$2;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/Runnable;)V

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/ActivityClientController;->dismissKeyguard(Landroid/os/IBinder;Lcom/android/internal/policy/IKeyguardDismissCallback;Ljava/lang/CharSequence;)V

    goto :goto_2e

    .line 3766
    :cond_2b
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 3768
    :goto_2e
    return v1
.end method

.method public enterSplitScreen(IZ)V
    .registers 9
    .param p1, "taskId"  # I
    .param p2, "leftOrTop"  # Z

    .line 7349
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 7350
    .local v0, "caller":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 7352
    .local v1, "ident":J
    :try_start_8
    const-string v3, "ActivityTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "enterSplitScreen from caller "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " taskId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " leftOrTop:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7354
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/TaskOrganizerController;->enterSplitScreen(IZ)V
    :try_end_39
    .catchall {:try_start_8 .. :try_end_39} :catchall_3e

    .line 7356
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7357
    nop

    .line 7358
    return-void

    .line 7356
    :catchall_3e
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7357
    throw v3
.end method

.method public enterSplitScreenMode()V
    .registers 2

    .line 7378
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/statusbar/StatusBarManagerInternal;->toggleSplitScreen()V

    .line 7379
    return-void
.end method

.method public exitCastMode()V
    .registers 5

    .line 7160
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7161
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_1c

    .line 7162
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 7163
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_1c

    .line 7164
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    const-string v3, "exitCastMode"

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 7165
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->resumeCastActivity()V

    .line 7168
    .end local v1  # "task":Lcom/android/server/wm/Task;
    :cond_1c
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_3 .. :try_end_1d} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7169
    return-void

    .line 7168
    :catchall_21
    move-exception v1

    :try_start_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_22 .. :try_end_23} :catchall_21

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public exitProjectionMode()V
    .registers 5

    .line 7172
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_2e

    .line 7173
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 7174
    .local v0, "packageName":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7175
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v3, 0x0

    if-eqz v2, :cond_1c

    .line 7176
    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->setCastMode(Z)V

    .line 7177
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v2, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setCurrentCastModeState(Lcom/android/server/wm/ActivityRecord;I)V

    .line 7178
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    .line 7180
    :cond_1c
    monitor-exit v1
    :try_end_1d
    .catchall {:try_start_9 .. :try_end_1d} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7186
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "exitProjectionMode"

    invoke-virtual {v1, v0, v3, v2}, Landroid/app/ActivityManagerInternal;->forceStopPackage(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_2e

    .line 7180
    :catchall_28
    move-exception v2

    :try_start_29
    monitor-exit v1
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 7188
    .end local v0  # "packageName":Ljava/lang/String;
    :cond_2e
    :goto_2e
    return-void
.end method

.method public exitSplitScreen(I)V
    .registers 8
    .param p1, "toTopTaskId"  # I

    .line 7364
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 7365
    .local v0, "caller":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 7367
    .local v1, "ident":J
    :try_start_8
    const-string v3, "ActivityTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "exitSplitScreen from caller "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " toTopTaskId:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 7368
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/TaskOrganizerController;->exitSplitScreen(I)V
    :try_end_2f
    .catchall {:try_start_8 .. :try_end_2f} :catchall_34

    .line 7370
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7371
    nop

    .line 7372
    return-void

    .line 7370
    :catchall_34
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7371
    throw v3
.end method

.method finishRunningVoiceLocked()V
    .registers 2

    .line 3626
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_f

    .line 3627
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    .line 3628
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3629
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateSleepIfNeededLocked()V

    .line 3631
    :cond_f
    return-void
.end method

.method public finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 6
    .param p1, "session"  # Landroid/service/voice/IVoiceInteractionSession;

    .line 2780
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2781
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_1e

    .line 2785
    .local v1, "origId":J
    :try_start_a
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    :try_end_f
    .catchall {:try_start_a .. :try_end_f} :catchall_18

    .line 2787
    :try_start_f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2788
    nop

    .line 2789
    .end local v1  # "origId":J
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_f .. :try_end_14} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2791
    return-void

    .line 2787
    .restart local v1  # "origId":J
    :catchall_18
    move-exception v3

    :try_start_19
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2788
    nop

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "session":Landroid/service/voice/IVoiceInteractionSession;
    throw v3

    .line 2789
    .end local v1  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "session":Landroid/service/voice/IVoiceInteractionSession;
    :catchall_1e
    move-exception v1

    monitor-exit v0
    :try_end_20
    .catchall {:try_start_19 .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getActivityClientController()Landroid/app/IActivityClientController;
    .registers 2

    .line 1938
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    return-object v0
.end method

.method getActivityInterceptorCallbacks()Landroid/util/SparseArray;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/SparseArray<",
            "Lcom/android/server/wm/ActivityInterceptorCallback;",
            ">;"
        }
    .end annotation

    .line 1210
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityInterceptorCallbacks:Landroid/util/SparseArray;

    return-object v0
.end method

.method getActivityStartController()Lcom/android/server/wm/ActivityStartController;
    .registers 2

    .line 1133
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    return-object v0
.end method

.method public getAllRootTaskInfos()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroid/app/ActivityTaskManager$RootTaskInfo;",
            ">;"
        }
    .end annotation

    .line 2583
    const-string v0, "getAllRootTaskInfos()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2584
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2586
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_24

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2587
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, -0x1

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->getAllRootTaskInfos(I)Ljava/util/ArrayList;

    move-result-object v3

    monitor-exit v2
    :try_end_17
    .catchall {:try_start_c .. :try_end_17} :catchall_1e

    .line 2590
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2587
    return-object v3

    .line 2588
    :catchall_1e
    move-exception v3

    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    throw v3
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_24

    .line 2590
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2591
    throw v2
.end method

.method public getAllRootTaskInfosOnDisplay(I)Ljava/util/List;
    .registers 6
    .param p1, "displayId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityTaskManager$RootTaskInfo;",
            ">;"
        }
    .end annotation

    .line 2609
    const-string v0, "getAllRootTaskInfosOnDisplay()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2610
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2612
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_23

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2613
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getAllRootTaskInfos(I)Ljava/util/ArrayList;

    move-result-object v3

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1d

    .line 2616
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2613
    return-object v3

    .line 2614
    :catchall_1d
    move-exception v3

    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "displayId":I
    throw v3
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_23

    .line 2616
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "displayId":I
    :catchall_23
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2617
    throw v2
.end method

.method public getAnrController(Landroid/content/pm/ApplicationInfo;)Landroid/app/AnrController;
    .registers 14
    .param p1, "info"  # Landroid/content/pm/ApplicationInfo;

    .line 2415
    if-eqz p1, :cond_47

    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    if-nez v0, :cond_7

    goto :goto_47

    .line 2420
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2421
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAnrController:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 2422
    .local v1, "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AnrController;>;"
    monitor-exit v0
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2424
    iget-object v0, p1, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 2425
    .local v0, "packageName":Ljava/lang/String;
    iget v2, p1, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 2426
    .local v2, "uid":I
    const-wide/16 v3, 0x0

    .line 2427
    .local v3, "maxDelayMs":J
    const/4 v5, 0x0

    .line 2429
    .local v5, "controllerWithMaxDelay":Landroid/app/AnrController;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_23
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_40

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/app/AnrController;

    .line 2430
    .local v7, "controller":Landroid/app/AnrController;
    invoke-interface {v7, v0, v2}, Landroid/app/AnrController;->getAnrDelayMillis(Ljava/lang/String;I)J

    move-result-wide v8

    .line 2431
    .local v8, "delayMs":J
    const-wide/16 v10, 0x0

    cmp-long v10, v8, v10

    if-lez v10, :cond_3f

    cmp-long v10, v8, v3

    if-lez v10, :cond_3f

    .line 2432
    move-object v5, v7

    .line 2433
    move-wide v3, v8

    .line 2435
    .end local v7  # "controller":Landroid/app/AnrController;
    .end local v8  # "delayMs":J
    :cond_3f
    goto :goto_23

    .line 2437
    :cond_40
    return-object v5

    .line 2422
    .end local v0  # "packageName":Ljava/lang/String;
    .end local v1  # "controllers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/AnrController;>;"
    .end local v2  # "uid":I
    .end local v3  # "maxDelayMs":J
    .end local v5  # "controllerWithMaxDelay":Landroid/app/AnrController;
    :catchall_41
    move-exception v1

    :try_start_42
    monitor-exit v0
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 2416
    :cond_47
    :goto_47
    const/4 v0, 0x0

    return-object v0
.end method

.method getAppInfoForUser(Landroid/content/pm/ApplicationInfo;I)Landroid/content/pm/ApplicationInfo;
    .registers 4
    .param p1, "info"  # Landroid/content/pm/ApplicationInfo;
    .param p2, "userId"  # I

    .line 5309
    if-nez p1, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 5310
    :cond_4
    new-instance v0, Landroid/content/pm/ApplicationInfo;

    invoke-direct {v0, p1}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    .line 5311
    .local v0, "newInfo":Landroid/content/pm/ApplicationInfo;
    invoke-virtual {v0, p2}, Landroid/content/pm/ApplicationInfo;->initForUser(I)V

    .line 5312
    return-object v0
.end method

.method getAppOpsManager()Landroid/app/AppOpsManager;
    .registers 3

    .line 1097
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    if-nez v0, :cond_10

    .line 1098
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-class v1, Landroid/app/AppOpsManager;

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1100
    :cond_10
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method public getAppTaskThumbnailSize()Landroid/graphics/Point;
    .registers 5

    .line 2948
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2949
    new-instance v1, Landroid/graphics/Point;

    iget v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    iget v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    invoke-direct {v1, v2, v3}, Landroid/graphics/Point;-><init>(II)V

    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 2950
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getAppTasks(Ljava/lang/String;)Ljava/util/List;
    .registers 3
    .param p1, "callingPackage"  # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation

    .line 2763
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 2764
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppTasks(Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;
    .registers 2

    .line 5268
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    return-object v0
.end method

.method public getAssistContextExtras(I)Landroid/os/Bundle;
    .registers 16
    .param p1, "requestType"  # I

    .line 3231
    nop

    .line 3233
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 3231
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    const-wide/16 v11, 0x1f4

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    invoke-direct/range {v0 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->enqueueAssistContext(ILandroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZILandroid/os/Bundle;JI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    move-result-object v0

    .line 3234
    .local v0, "pae":Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    if-nez v0, :cond_1a

    .line 3235
    const/4 v1, 0x0

    return-object v1

    .line 3237
    :cond_1a
    monitor-enter v0

    .line 3238
    :goto_1b
    :try_start_1b
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->haveResult:Z
    :try_end_1d
    .catchall {:try_start_1b .. :try_end_1d} :catchall_48

    if-nez v1, :cond_25

    .line 3240
    :try_start_1f
    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_22
    .catch Ljava/lang/InterruptedException; {:try_start_1f .. :try_end_22} :catch_23
    .catchall {:try_start_1f .. :try_end_22} :catchall_48

    .line 3242
    :goto_22
    goto :goto_1b

    .line 3241
    :catch_23
    move-exception v1

    goto :goto_22

    .line 3244
    :cond_25
    :try_start_25
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_48

    .line 3245
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_29
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3246
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->result:Landroid/os/Bundle;

    invoke-direct {p0, v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->buildAssistBundleLocked(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;Landroid/os/Bundle;)V

    .line 3247
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 3248
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3249
    monitor-exit v1
    :try_end_3c
    .catchall {:try_start_29 .. :try_end_3c} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3250
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    return-object v1

    .line 3249
    :catchall_42
    move-exception v2

    :try_start_43
    monitor-exit v1
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_42

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2

    .line 3244
    :catchall_48
    move-exception v1

    :try_start_49
    monitor-exit v0
    :try_end_4a
    .catchall {:try_start_49 .. :try_end_4a} :catchall_48

    throw v1
.end method

.method public getAtmInternal()Lcom/android/server/wm/ActivityTaskManagerInternal;
    .registers 2

    .line 1014
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    return-object v0
.end method

.method public getBackgroundActivityStartCallback()Lcom/android/server/wm/BackgroundActivityStartCallback;
    .registers 2

    .line 1206
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackgroundActivityStartCallback:Lcom/android/server/wm/BackgroundActivityStartCallback;

    return-object v0
.end method

.method getBalAppSwitchesState()I
    .registers 2

    .line 2392
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    return v0
.end method

.method public getCastModeStackId()I
    .registers 2

    .line 7244
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 7245
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getRootTaskId()I

    move-result v0

    return v0

    .line 7247
    :cond_11
    const/4 v0, -0x1

    return v0
.end method

.method public getCastPackageName()Ljava/lang/String;
    .registers 2

    .line 7273
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    goto :goto_8

    :cond_6
    iget-object v0, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    :goto_8
    return-object v0
.end method

.method public getCastRotationChanged()Z
    .registers 2

    .line 7196
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastRotationChanged:Z

    return v0
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .registers 4

    .line 4397
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4398
    new-instance v1, Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForCallingPid()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 4399
    .local v1, "ci":Landroid/content/res/Configuration;
    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    .line 4400
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_3 .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4401
    return-object v1

    .line 4400
    .end local v1  # "ci":Landroid/content/res/Configuration;
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getCurrentUserId()I
    .registers 2

    .line 4386
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v0

    return v0
.end method

.method public getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .registers 7

    .line 1185
    new-instance v0, Landroid/content/pm/ConfigurationInfo;

    invoke-direct {v0}, Landroid/content/pm/ConfigurationInfo;-><init>()V

    .line 1186
    .local v0, "config":Landroid/content/pm/ConfigurationInfo;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1187
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForCallingPid()Landroid/content/res/Configuration;

    move-result-object v2

    .line 1188
    .local v2, "globalConfig":Landroid/content/res/Configuration;
    iget v3, v2, Landroid/content/res/Configuration;->touchscreen:I

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqTouchScreen:I

    .line 1189
    iget v3, v2, Landroid/content/res/Configuration;->keyboard:I

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqKeyboardType:I

    .line 1190
    iget v3, v2, Landroid/content/res/Configuration;->navigation:I

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqNavigation:I

    .line 1191
    iget v3, v2, Landroid/content/res/Configuration;->navigation:I

    const/4 v4, 0x2

    if-eq v3, v4, :cond_25

    iget v3, v2, Landroid/content/res/Configuration;->navigation:I

    const/4 v5, 0x3

    if-ne v3, v5, :cond_2a

    .line 1193
    :cond_25
    iget v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v3, v4

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1195
    :cond_2a
    iget v3, v2, Landroid/content/res/Configuration;->keyboard:I

    if-eqz v3, :cond_38

    iget v3, v2, Landroid/content/res/Configuration;->keyboard:I

    const/4 v4, 0x1

    if-eq v3, v4, :cond_38

    .line 1197
    iget v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    or-int/2addr v3, v4

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqInputFeatures:I

    .line 1199
    :cond_38
    iget v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->GL_ES_VERSION:I

    iput v3, v0, Landroid/content/pm/ConfigurationInfo;->reqGlEsVersion:I

    .line 1200
    .end local v2  # "globalConfig":Landroid/content/res/Configuration;
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_8 .. :try_end_3d} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1201
    return-object v0

    .line 1200
    :catchall_41
    move-exception v2

    :try_start_42
    monitor-exit v1
    :try_end_43
    .catchall {:try_start_42 .. :try_end_43} :catchall_41

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public getFocusedRootTaskInfo()Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2007
    const-string v0, "getFocusedRootTaskInfo()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2008
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2010
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_34

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2011
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2012
    .local v3, "focusedRootTask":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_25

    .line 2013
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v5, v3, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(I)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v4

    monitor-exit v2
    :try_end_1e
    .catchall {:try_start_c .. :try_end_1e} :catchall_2e

    .line 2018
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2013
    return-object v4

    .line 2015
    :cond_25
    const/4 v4, 0x0

    :try_start_26
    monitor-exit v2
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_2e

    .line 2018
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2015
    return-object v4

    .line 2016
    .end local v3  # "focusedRootTask":Lcom/android/server/wm/Task;
    :catchall_2e
    move-exception v3

    :try_start_2f
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    :try_start_30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    throw v3
    :try_end_34
    .catchall {:try_start_30 .. :try_end_34} :catchall_34

    .line 2018
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    :catchall_34
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2019
    throw v2
.end method

.method public getFrontActivityScreenCompatMode()I
    .registers 6

    .line 1976
    const-string v0, "getFrontActivityScreenCompatMode"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1977
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1978
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1979
    .local v1, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_17

    :cond_16
    const/4 v2, 0x0

    .line 1980
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    :goto_17
    if-nez v2, :cond_1f

    .line 1981
    const/4 v3, -0x3

    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_8 .. :try_end_1b} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 1983
    :cond_1f
    :try_start_1f
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    iget-object v4, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/CompatModePackages;->computeCompatModeLocked(Landroid/content/pm/ApplicationInfo;)I

    move-result v3

    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 1984
    .end local v1  # "rootTask":Lcom/android/server/wm/Task;
    .end local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_2e
    move-exception v1

    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getGlobalConfiguration()Landroid/content/res/Configuration;
    .registers 2

    .line 4412
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    goto :goto_e

    .line 4413
    :cond_9
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    .line 4412
    :goto_e
    return-object v0
.end method

.method getGlobalConfigurationForCallingPid()Landroid/content/res/Configuration;
    .registers 3

    .line 1153
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1154
    .local v0, "pid":I
    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfigurationForPid(I)Landroid/content/res/Configuration;

    move-result-object v1

    return-object v1
.end method

.method getGlobalConfigurationForPid(I)Landroid/content/res/Configuration;
    .registers 6
    .param p1, "pid"  # I

    .line 1161
    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    if-eq p1, v0, :cond_38

    if-gez p1, :cond_7

    goto :goto_38

    .line 1164
    :cond_7
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1165
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 1168
    .local v1, "app":Lcom/android/server/wm/WindowProcessController;
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v2

    .line 1169
    invoke-virtual {v2, p0, v1}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->getGlobalConfigurationForMiui(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/WindowProcessController;)Landroid/content/res/Configuration;

    move-result-object v2

    .line 1170
    .local v2, "config":Landroid/content/res/Configuration;
    if-eqz v2, :cond_22

    .line 1171
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_a .. :try_end_1e} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 1175
    :cond_22
    if-eqz v1, :cond_29

    :try_start_24
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    goto :goto_2d

    :cond_29
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    :goto_2d
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_24 .. :try_end_2e} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v3

    .line 1176
    .end local v1  # "app":Lcom/android/server/wm/WindowProcessController;
    .end local v2  # "config":Landroid/content/res/Configuration;
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 1162
    :cond_38
    :goto_38
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    return-object v0
.end method

.method public getGlobalLock()Lcom/android/server/wm/WindowManagerGlobalLock;
    .registers 2

    .line 1008
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    return-object v0
.end method

.method getHomeIntent()Landroid/content/Intent;
    .registers 4

    .line 5272
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopData:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5273
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 5274
    const/16 v1, 0x100

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5275
    iget v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_25

    .line 5276
    const-string v1, "android.intent.category.HOME"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5278
    :cond_25
    return-object v0
.end method

.method getIntentSenderLocked(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Landroid/content/IIntentSender;
    .registers 30
    .param p1, "type"  # I
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "featureId"  # Ljava/lang/String;
    .param p4, "callingUid"  # I
    .param p5, "userId"  # I
    .param p6, "token"  # Landroid/os/IBinder;
    .param p7, "resultWho"  # Ljava/lang/String;
    .param p8, "requestCode"  # I
    .param p9, "intents"  # [Landroid/content/Intent;
    .param p10, "resolvedTypes"  # [Ljava/lang/String;
    .param p11, "flags"  # I
    .param p12, "bOptions"  # Landroid/os/Bundle;

    .line 5141
    move/from16 v13, p1

    const/4 v0, 0x0

    .line 5142
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    const/4 v14, 0x3

    if-ne v13, v14, :cond_51

    .line 5143
    invoke-static/range {p6 .. p6}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 5144
    const/4 v1, 0x0

    const-string v2, "Failed createPendingResult: activity "

    const-string v3, "ActivityTaskManager"

    if-nez v0, :cond_2e

    .line 5145
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v15, p6

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " not in any root task"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5147
    return-object v1

    .line 5149
    :cond_2e
    move-object/from16 v15, p6

    iget-boolean v4, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v4, :cond_4f

    .line 5150
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, " is finishing"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5151
    return-object v1

    .line 5149
    :cond_4f
    move-object v12, v0

    goto :goto_54

    .line 5142
    :cond_51
    move-object/from16 v15, p6

    move-object v12, v0

    .line 5155
    .end local v0  # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v12, "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_54
    move-object/from16 v11, p0

    iget-object v0, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    move/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object/from16 v9, p9

    move-object/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v16, v12

    .end local v12  # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v16, "activity":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v12, p12

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/am/PendingIntentController;->getIntentSender(ILjava/lang/String;Ljava/lang/String;IILandroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;)Lcom/android/server/am/PendingIntentRecord;

    move-result-object v0

    .line 5158
    .local v0, "rec":Lcom/android/server/am/PendingIntentRecord;
    const/high16 v1, 0x20000000

    and-int v1, p11, v1

    if-eqz v1, :cond_7e

    const/4 v1, 0x1

    goto :goto_7f

    :cond_7e
    const/4 v1, 0x0

    .line 5159
    .local v1, "noCreate":Z
    :goto_7f
    if-eqz v1, :cond_82

    .line 5160
    return-object v0

    .line 5162
    :cond_82
    if-ne v13, v14, :cond_99

    .line 5163
    move-object/from16 v2, v16

    .end local v16  # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v2, "activity":Lcom/android/server/wm/ActivityRecord;
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    if-nez v3, :cond_91

    .line 5164
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    iput-object v3, v2, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    .line 5166
    :cond_91
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->pendingResults:Ljava/util/HashSet;

    iget-object v4, v0, Lcom/android/server/am/PendingIntentRecord;->ref:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_9b

    .line 5162
    .end local v2  # "activity":Lcom/android/server/wm/ActivityRecord;
    .restart local v16  # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_99
    move-object/from16 v2, v16

    .line 5168
    .end local v16  # "activity":Lcom/android/server/wm/ActivityRecord;
    .restart local v2  # "activity":Lcom/android/server/wm/ActivityRecord;
    :goto_9b
    return-object v0
.end method

.method public getLastResumedActivityUserId()I
    .registers 4

    .line 3905
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.INTERACT_ACROSS_USERS_FULL"

    const-string v2, "getLastResumedActivityUserId()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3907
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3908
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v1, :cond_1c

    .line 3909
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCurrentUserId()I

    move-result v1

    monitor-exit v0
    :try_end_18
    .catchall {:try_start_c .. :try_end_18} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3911
    :cond_1c
    :try_start_1c
    iget v1, v1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1c .. :try_end_1f} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 3912
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getLastStopAppSwitchesTime()J
    .registers 3

    .line 4031
    iget-wide v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastStopAppSwitchesTime:J

    return-wide v0
.end method

.method getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;
    .registers 2

    .line 1129
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLifecycleManager:Lcom/android/server/wm/ClientLifecycleManager;

    return-object v0
.end method

.method getLockTaskController()Lcom/android/server/wm/LockTaskController;
    .registers 2

    .line 1141
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    return-object v0
.end method

.method public getLockTaskModeState()I
    .registers 2

    .line 2758
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/LockTaskController;->getLockTaskModeState()I

    move-result v0

    return v0
.end method

.method public getMiuiFreeFormManagerService()Landroid/os/IBinder;
    .registers 2

    .line 904
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    check-cast v0, Landroid/os/IBinder;

    return-object v0
.end method

.method public getNavBarPosition()I
    .registers 3

    .line 7400
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 7401
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_11

    .line 7402
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getNavBarPosition()I

    move-result v1

    return v1

    .line 7404
    :cond_11
    const/4 v1, 0x4

    return v1
.end method

.method public getPackageAskScreenCompat(Ljava/lang/String;)Z
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;

    .line 4083
    const-string v0, "getPackageAskScreenCompat"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 4084
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4085
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageAskCompatModeLocked(Ljava/lang/String;)Z

    move-result v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 4086
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getPackageManager()Landroid/content/pm/IPackageManager;
    .registers 2

    .line 5235
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    return-object v0
.end method

.method getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;
    .registers 2

    .line 5239
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    if-nez v0, :cond_e

    .line 5240
    const-class v0, Landroid/content/pm/PackageManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    .line 5242
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPmInternal:Landroid/content/pm/PackageManagerInternal;

    return-object v0
.end method

.method public getPackageScreenCompatMode(Ljava/lang/String;)I
    .registers 4
    .param p1, "packageName"  # Ljava/lang/String;

    .line 4066
    const-string v0, "getPackageScreenCompatMode"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 4067
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4068
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/CompatModePackages;->getPackageScreenCompatModeLocked(Ljava/lang/String;)I

    move-result v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_8 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 4069
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method getPermissionPolicyInternal()Lcom/android/server/policy/PermissionPolicyInternal;
    .registers 2

    .line 5254
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    if-nez v0, :cond_e

    .line 5255
    const-class v0, Lcom/android/server/policy/PermissionPolicyInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/policy/PermissionPolicyInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    .line 5257
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPermissionPolicyInternal:Lcom/android/server/policy/PermissionPolicyInternal;

    return-object v0
.end method

.method getProcessController(II)Lcom/android/server/wm/WindowProcessController;
    .registers 6
    .param p1, "pid"  # I
    .param p2, "uid"  # I

    .line 5357
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 5358
    .local v0, "proc":Lcom/android/server/wm/WindowProcessController;
    const/4 v1, 0x0

    if-nez v0, :cond_a

    return-object v1

    .line 5359
    :cond_a
    invoke-static {p2}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v2

    if-eqz v2, :cond_15

    iget v2, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    if-ne v2, p2, :cond_15

    .line 5360
    return-object v0

    .line 5362
    :cond_15
    return-object v1
.end method

.method getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;
    .registers 10
    .param p1, "thread"  # Landroid/app/IApplicationThread;

    .line 5337
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 5338
    return-object v0

    .line 5341
    :cond_4
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    .line 5342
    .local v1, "threadBinder":Landroid/os/IBinder;
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v2}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v2

    .line 5343
    .local v2, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;>;"
    invoke-virtual {v2}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .local v3, "i":I
    :goto_14
    if-ltz v3, :cond_41

    .line 5344
    invoke-virtual {v2, v3}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/util/SparseArray;

    .line 5345
    .local v4, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    .local v5, "j":I
    :goto_22
    if-ltz v5, :cond_3e

    .line 5346
    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/server/wm/WindowProcessController;

    .line 5347
    .local v6, "proc":Lcom/android/server/wm/WindowProcessController;
    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->hasThread()Z

    move-result v7

    if-eqz v7, :cond_3b

    invoke-virtual {v6}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    invoke-interface {v7}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v7

    if-ne v7, v1, :cond_3b

    .line 5348
    return-object v6

    .line 5345
    .end local v6  # "proc":Lcom/android/server/wm/WindowProcessController;
    :cond_3b
    add-int/lit8 v5, v5, -0x1

    goto :goto_22

    .line 5343
    .end local v4  # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    .end local v5  # "j":I
    :cond_3e
    add-int/lit8 v3, v3, -0x1

    goto :goto_14

    .line 5353
    .end local v3  # "i":I
    :cond_41
    return-object v0
.end method

.method getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;
    .registers 8
    .param p1, "processName"  # Ljava/lang/String;
    .param p2, "uid"  # I

    .line 5316
    const/16 v0, 0x3e8

    if-ne p2, v0, :cond_36

    .line 5319
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    .line 5320
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    .line 5321
    .local v0, "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    if-nez v0, :cond_14

    const/4 v1, 0x0

    return-object v1

    .line 5322
    :cond_14
    invoke-virtual {v0}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 5323
    .local v1, "procCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_19
    if-ge v2, v1, :cond_36

    .line 5324
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v3

    .line 5325
    .local v3, "procUid":I
    invoke-static {v3}, Landroid/os/UserHandle;->isApp(I)Z

    move-result v4

    if-nez v4, :cond_33

    invoke-static {v3, p2}, Landroid/os/UserHandle;->isSameUser(II)Z

    move-result v4

    if-nez v4, :cond_2c

    .line 5327
    goto :goto_33

    .line 5329
    :cond_2c
    invoke-virtual {v0, v2}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowProcessController;

    return-object v4

    .line 5323
    .end local v3  # "procUid":I
    :cond_33
    :goto_33
    add-int/lit8 v2, v2, 0x1

    goto :goto_19

    .line 5333
    .end local v0  # "procs":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    .end local v1  # "procCount":I
    .end local v2  # "i":I
    :cond_36
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessNames:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowProcessController;

    return-object v0
.end method

.method public getRecentTasks(III)Landroid/content/pm/ParceledListSlice;
    .registers 13
    .param p1, "maxNum"  # I
    .param p2, "flags"  # I
    .param p3, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Landroid/content/pm/ParceledListSlice<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .line 2572
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 2573
    .local v6, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    const-string v1, "getRecentTasks"

    invoke-virtual {p0, v0, v6, p3, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p3

    .line 2574
    const-string v0, "getRecentTasks"

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {p0, v0, v1, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->isGetTasksAllowed(Ljava/lang/String;II)Z

    move-result v7

    .line 2576
    .local v7, "allowed":Z
    iget-object v8, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v8

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2577
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    move v1, p1

    move v2, p2

    move v3, v7

    move v4, p3

    move v5, v6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/RecentTasks;->getRecentTasks(IIZII)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    monitor-exit v8
    :try_end_2a
    .catchall {:try_start_1b .. :try_end_2a} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v0

    .line 2578
    :catchall_2e
    move-exception v0

    :try_start_2f
    monitor-exit v8
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_2e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method getRecentTasks()Lcom/android/server/wm/RecentTasks;
    .registers 2

    .line 1125
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    return-object v0
.end method

.method public getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 7
    .param p1, "windowingMode"  # I
    .param p2, "activityType"  # I

    .line 2596
    const-string v0, "getRootTaskInfo()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2597
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2599
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_23

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2600
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(II)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v3

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1d

    .line 2603
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2600
    return-object v3

    .line 2601
    :catchall_1d
    move-exception v3

    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "windowingMode":I
    .end local p2  # "activityType":I
    throw v3
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_23

    .line 2603
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "windowingMode":I
    .restart local p2  # "activityType":I
    :catchall_23
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2604
    throw v2
.end method

.method public getRootTaskInfoOnDisplay(III)Landroid/app/ActivityTaskManager$RootTaskInfo;
    .registers 8
    .param p1, "windowingMode"  # I
    .param p2, "activityType"  # I
    .param p3, "displayId"  # I

    .line 2623
    const-string v0, "getRootTaskInfoOnDisplay()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2624
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2626
    .local v0, "ident":J
    :try_start_9
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_c
    .catchall {:try_start_9 .. :try_end_c} :catchall_23

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2627
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/wm/RootWindowContainer;->getRootTaskInfo(III)Landroid/app/ActivityTaskManager$RootTaskInfo;

    move-result-object v3

    monitor-exit v2
    :try_end_16
    .catchall {:try_start_c .. :try_end_16} :catchall_1d

    .line 2630
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2627
    return-object v3

    .line 2628
    :catchall_1d
    move-exception v3

    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "windowingMode":I
    .end local p2  # "activityType":I
    .end local p3  # "displayId":I
    throw v3
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_23

    .line 2630
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "windowingMode":I
    .restart local p2  # "activityType":I
    .restart local p3  # "displayId":I
    :catchall_23
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2631
    throw v2
.end method

.method getSecondaryHomeIntent(Ljava/lang/String;)Landroid/content/Intent;
    .registers 6
    .param p1, "preferredPackage"  # Ljava/lang/String;

    .line 5290
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopAction:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopData:Ljava/lang/String;

    if-eqz v2, :cond_d

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_e

    :cond_d
    const/4 v2, 0x0

    :goto_e
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 5291
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x11101ed

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    .line 5293
    .local v1, "useSystemProvidedLauncher":Z
    if-eqz p1, :cond_27

    if-eqz v1, :cond_23

    goto :goto_27

    .line 5299
    :cond_23
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_38

    .line 5295
    :cond_27
    :goto_27
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x10402bb

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 5297
    .local v2, "secondaryHomePackage":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 5298
    .end local v2  # "secondaryHomePackage":Ljava/lang/String;
    nop

    .line 5301
    :goto_38
    const/16 v2, 0x100

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 5302
    iget v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFactoryTest:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_47

    .line 5303
    const-string v2, "android.intent.category.SECONDARY_HOME"

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 5305
    :cond_47
    return-object v0
.end method

.method getStatusBarManagerInternal()Lcom/android/server/statusbar/StatusBarManagerInternal;
    .registers 2

    .line 5261
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    if-nez v0, :cond_e

    .line 5262
    const-class v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/statusbar/StatusBarManagerInternal;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    .line 5264
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mStatusBarManagerInternal:Lcom/android/server/statusbar/StatusBarManagerInternal;

    return-object v0
.end method

.method getSysUiServiceComponentLocked()Landroid/content/ComponentName;
    .registers 3

    .line 5246
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSysUiServiceComponent:Landroid/content/ComponentName;

    if-nez v0, :cond_e

    .line 5247
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v0

    .line 5248
    .local v0, "pm":Landroid/content/pm/PackageManagerInternal;
    invoke-virtual {v0}, Landroid/content/pm/PackageManagerInternal;->getSystemUiServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSysUiServiceComponent:Landroid/content/ComponentName;

    .line 5250
    .end local v0  # "pm":Landroid/content/pm/PackageManagerInternal;
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSysUiServiceComponent:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getTaskBounds(I)Landroid/graphics/Rect;
    .registers 10
    .param p1, "taskId"  # I

    .line 2123
    const-string v0, "getTaskBounds()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2124
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2125
    .local v0, "ident":J
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 2127
    .local v2, "rect":Landroid/graphics/Rect;
    :try_start_e
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_69

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2128
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v5, 0x1

    invoke-virtual {v4, p1, v5}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v4

    .line 2130
    .local v4, "task":Lcom/android/server/wm/Task;
    if-nez v4, :cond_43

    .line 2131
    const-string v5, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTaskBounds: taskId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2132
    monitor-exit v3
    :try_end_3c
    .catchall {:try_start_11 .. :try_end_3c} :catchall_63

    .line 2141
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2132
    return-object v2

    .line 2134
    :cond_43
    :try_start_43
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-eqz v5, :cond_51

    .line 2135
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_5a

    .line 2136
    :cond_51
    iget-object v5, v4, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v5, :cond_5a

    .line 2137
    iget-object v5, v4, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v5}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2139
    .end local v4  # "task":Lcom/android/server/wm/Task;
    :cond_5a
    :goto_5a
    monitor-exit v3
    :try_end_5b
    .catchall {:try_start_43 .. :try_end_5b} :catchall_63

    :try_start_5b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_5e
    .catchall {:try_start_5b .. :try_end_5e} :catchall_69

    .line 2141
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2142
    nop

    .line 2143
    return-object v2

    .line 2139
    :catchall_63
    move-exception v4

    :try_start_64
    monitor-exit v3
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    :try_start_65
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local v2  # "rect":Landroid/graphics/Rect;
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    throw v4
    :try_end_69
    .catchall {:try_start_65 .. :try_end_69} :catchall_69

    .line 2141
    .restart local v0  # "ident":J
    .restart local v2  # "rect":Landroid/graphics/Rect;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    :catchall_69
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2142
    throw v3
.end method

.method getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;
    .registers 2

    .line 1137
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    return-object v0
.end method

.method public getTaskDescription(I)Landroid/app/ActivityManager$TaskDescription;
    .registers 5
    .param p1, "id"  # I

    .line 2148
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2149
    const-string v1, "getTaskDescription()"

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2150
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2152
    .local v1, "tr":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_1d

    .line 2153
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v2

    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v2

    .line 2155
    .end local v1  # "tr":Lcom/android/server/wm/Task;
    :cond_1d
    :try_start_1d
    monitor-exit v0
    :try_end_1e
    .catchall {:try_start_1d .. :try_end_1e} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2156
    const/4 v0, 0x0

    return-object v0

    .line 2155
    :catchall_23
    move-exception v1

    :try_start_24
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_24 .. :try_end_25} :catchall_23

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getTaskDescriptionIcon(Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 8
    .param p1, "filePath"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 3124
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    const-string v2, "getTaskDescriptionIcon"

    invoke-virtual {p0, v0, v1, p2, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p2

    .line 3127
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3128
    .local v0, "passedIconFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    invoke-static {p2}, Lcom/android/server/wm/TaskPersister;->getUserImagesDir(I)Ljava/io/File;

    move-result-object v2

    .line 3129
    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3130
    .local v1, "legitIconFile":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3131
    const-string v2, "_activity_icon_"

    invoke-virtual {p1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_39

    .line 3135
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2, p1}, Lcom/android/server/wm/RecentTasks;->getTaskDescriptionIcon(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    return-object v2

    .line 3132
    :cond_39
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Bad file path: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " passed for userId "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getTaskResizeableForFreeform(I)Z
    .registers 11
    .param p1, "taskId"  # I

    .line 2969
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2970
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2972
    .local v1, "task":Lcom/android/server/wm/Task;
    const/4 v3, 0x0

    if-nez v1, :cond_33

    .line 2973
    const-string v2, "ActivityTaskManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "getTaskResizeableForFreeform: taskId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not found"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2974
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_125

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 2976
    :cond_33
    :try_start_33
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_5a

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    if-eqz v4, :cond_5a

    .line 2977
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getApplicationLockActivityList()Ljava/util/List;

    move-result-object v4

    .line 2978
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    .line 2977
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5a

    .line 2979
    monitor-exit v0
    :try_end_56
    .catchall {:try_start_33 .. :try_end_56} :catchall_125

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 2982
    :cond_5a
    :try_start_5a
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-static {v4, v5, v3}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getFreeformBlackList(Landroid/content/Context;Ljava/util/HashMap;Z)Ljava/util/List;

    move-result-object v4

    .line 2984
    .local v4, "freeformBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iget-object v5, v1, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_6c

    iget-object v5, v1, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_87

    .line 2985
    :cond_6c
    iget-object v5, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v5, :cond_77

    iget-object v5, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v5}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    goto :goto_87

    .line 2986
    :cond_77
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_84

    .line 2987
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    iget-object v5, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_87

    :cond_84
    const-string/jumbo v5, "unknown"

    :goto_87
    nop

    .line 2988
    .local v5, "packageName":Ljava/lang/String;
    const-string/jumbo v6, "unknown"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_af

    .line 2989
    const-string v6, "ActivityTaskManager"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "getTaskResizeableForFreeform: task="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " packageName: unknown"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2991
    :cond_af
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getFreeformResizeableWhiteList()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_107

    iget-object v6, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v6, :cond_ce

    .line 2993
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getFreeformResizeableWhiteList()Ljava/util/List;

    move-result-object v6

    iget-object v7, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_ce

    goto :goto_107

    .line 3000
    :cond_ce
    invoke-interface {v4, v5}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_f7

    .line 3001
    const-string v2, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getTaskResizeableForFreeform: package="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " is in freeform blackList"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v2, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3002
    monitor-exit v0
    :try_end_f3
    .catchall {:try_start_5a .. :try_end_f3} :catchall_125

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 3004
    :cond_f7
    :try_start_f7
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isForceResizeable()Z

    move-result v3

    if-eqz v3, :cond_fe

    goto :goto_102

    :cond_fe
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v2

    :goto_102
    monitor-exit v0
    :try_end_103
    .catchall {:try_start_f7 .. :try_end_103} :catchall_125

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 2994
    :cond_107
    :goto_107
    :try_start_107
    const-string v6, "com.miui.securitycenter/com.miui.applicationlock.ConfirmAccessControl"

    iget-object v7, v1, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 2995
    invoke-virtual {v7}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v7

    .line 2994
    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_120

    .line 2995
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v6

    if-nez v6, :cond_120

    .line 2996
    monitor-exit v0
    :try_end_11c
    .catchall {:try_start_107 .. :try_end_11c} :catchall_125

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v3

    .line 2998
    :cond_120
    :try_start_120
    monitor-exit v0
    :try_end_121
    .catchall {:try_start_120 .. :try_end_121} :catchall_125

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3005
    .end local v1  # "task":Lcom/android/server/wm/Task;
    .end local v4  # "freeformBlackList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v5  # "packageName":Ljava/lang/String;
    :catchall_125
    move-exception v1

    :try_start_126
    monitor-exit v0
    :try_end_127
    .catchall {:try_start_126 .. :try_end_127} :catchall_125

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getTaskSnapshot(IZ)Landroid/window/TaskSnapshot;
    .registers 10
    .param p1, "taskId"  # I
    .param p2, "isLowResolution"  # Z

    .line 3861
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.READ_FRAME_BUFFER"

    const-string v2, "getTaskSnapshot()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3862
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3865
    .local v0, "ident":J
    :try_start_d
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_10
    .catchall {:try_start_d .. :try_end_10} :catchall_5b

    :try_start_10
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3866
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3868
    .local v3, "task":Lcom/android/server/wm/Task;
    if-nez v3, :cond_43

    .line 3869
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getTaskSnapshot: taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3870
    const/4 v4, 0x0

    monitor-exit v2
    :try_end_3c
    .catchall {:try_start_10 .. :try_end_3c} :catchall_55

    .line 3877
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3870
    return-object v4

    .line 3872
    :cond_43
    :try_start_43
    monitor-exit v2
    :try_end_44
    .catchall {:try_start_43 .. :try_end_44} :catchall_55

    :try_start_44
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3874
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v5, v3, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v2, p1, v5, v4, p2}, Lcom/android/server/wm/TaskSnapshotController;->getSnapshot(IIZZ)Landroid/window/TaskSnapshot;

    move-result-object v2
    :try_end_51
    .catchall {:try_start_44 .. :try_end_51} :catchall_5b

    .line 3877
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3874
    return-object v2

    .line 3872
    .end local v3  # "task":Lcom/android/server/wm/Task;
    :catchall_55
    move-exception v3

    :try_start_56
    monitor-exit v2
    :try_end_57
    .catchall {:try_start_56 .. :try_end_57} :catchall_55

    :try_start_57
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    .end local p2  # "isLowResolution":Z
    throw v3
    :try_end_5b
    .catchall {:try_start_57 .. :try_end_5b} :catchall_5b

    .line 3877
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    .restart local p2  # "isLowResolution":Z
    :catchall_5b
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3878
    throw v2
.end method

.method public getTasks(I)Ljava/util/List;
    .registers 3
    .param p1, "maxNum"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 2468
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTasks(IZZ)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getTasks(IZZ)Ljava/util/List;
    .registers 20
    .param p1, "maxNum"  # I
    .param p2, "filterOnlyVisibleRecents"  # Z
    .param p3, "keepIntentExtra"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/List<",
            "Landroid/app/ActivityManager$RunningTaskInfo;",
            ">;"
        }
    .end annotation

    .line 2478
    move-object/from16 v1, p0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v8

    .line 2479
    .local v8, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v9

    .line 2481
    .local v9, "callingPid":I
    move/from16 v0, p2

    .line 2482
    .local v0, "flags":I
    const/4 v2, 0x0

    if-eqz p3, :cond_12

    const/16 v3, 0x8

    goto :goto_13

    :cond_12
    move v3, v2

    :goto_13
    or-int/2addr v0, v3

    .line 2483
    invoke-virtual {v1, v9, v8}, Lcom/android/server/wm/ActivityTaskManagerService;->isCrossUserAllowed(II)Z

    move-result v10

    .line 2484
    .local v10, "crossUser":Z
    if-eqz v10, :cond_1c

    const/4 v3, 0x4

    goto :goto_1d

    :cond_1c
    move v3, v2

    :goto_1d
    or-int/2addr v3, v0

    .line 2485
    .end local v0  # "flags":I
    .local v3, "flags":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    .line 2486
    invoke-static {v8}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v4

    .line 2485
    const/4 v5, 0x1

    invoke-virtual {v0, v4, v5}, Lcom/android/server/pm/UserManagerService;->getProfileIds(IZ)[I

    move-result-object v11

    .line 2487
    .local v11, "profileIds":[I
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    move-object v12, v0

    .line 2488
    .local v12, "callingProfileIds":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_32
    array-length v4, v11

    if-ge v0, v4, :cond_41

    .line 2489
    aget v4, v11, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2488
    add-int/lit8 v0, v0, 0x1

    goto :goto_32

    .line 2491
    .end local v0  # "i":I
    :cond_41
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object v13, v0

    .line 2493
    .local v13, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningTaskInfo;>;"
    iget-object v14, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v14

    :try_start_4a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2496
    const-string v0, "getTasks"

    invoke-virtual {v1, v0, v9, v8}, Lcom/android/server/wm/ActivityTaskManagerService;->isGetTasksAllowed(Ljava/lang/String;II)Z

    move-result v0
    :try_end_53
    .catchall {:try_start_4a .. :try_end_53} :catchall_6b

    .line 2497
    .local v0, "allowed":Z
    if-eqz v0, :cond_56

    const/4 v2, 0x2

    :cond_56
    or-int v15, v3, v2

    .line 2498
    .end local v3  # "flags":I
    .local v15, "flags":I
    :try_start_58
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move/from16 v3, p1

    move-object v4, v13

    move v5, v15

    move v6, v8

    move-object v7, v12

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/RootWindowContainer;->getRunningTasks(ILjava/util/List;IILandroid/util/ArraySet;)V

    .line 2500
    .end local v0  # "allowed":Z
    monitor-exit v14
    :try_end_64
    .catchall {:try_start_58 .. :try_end_64} :catchall_68

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2502
    return-object v13

    .line 2500
    :catchall_68
    move-exception v0

    move v3, v15

    goto :goto_6c

    .end local v15  # "flags":I
    .restart local v3  # "flags":I
    :catchall_6b
    move-exception v0

    :goto_6c
    :try_start_6c
    monitor-exit v14
    :try_end_6d
    .catchall {:try_start_6c .. :try_end_6d} :catchall_6b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 4110
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method public getTopSplitPackageNames()Ljava/util/List;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 7429
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7430
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getSplitPackageNames()Ljava/util/List;

    move-result-object v1

    monitor-exit v0
    :try_end_11
    .catchall {:try_start_3 .. :try_end_11} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-object v1

    .line 7431
    :catchall_15
    move-exception v1

    :try_start_16
    monitor-exit v0
    :try_end_17
    .catchall {:try_start_16 .. :try_end_17} :catchall_15

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public getTopVisibleActivity()Landroid/content/Intent;
    .registers 5

    .line 7103
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_STACKS"

    const-string v2, "getTopVisibleActivity()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 7105
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 7106
    .local v0, "activity":Landroid/content/Intent;
    monitor-enter p0

    .line 7107
    :try_start_f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 7108
    .local v1, "mainStack":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_28

    .line 7109
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 7110
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_28

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v3

    if-eqz v3, :cond_28

    .line 7111
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 7114
    .end local v1  # "mainStack":Lcom/android/server/wm/Task;
    .end local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_28
    monitor-exit p0

    .line 7115
    return-object v0

    .line 7114
    :catchall_2a
    move-exception v1

    monitor-exit p0
    :try_end_2c
    .catchall {:try_start_f .. :try_end_2c} :catchall_2a

    throw v1
.end method

.method getTransitionController()Lcom/android/server/wm/TransitionController;
    .registers 2

    .line 1145
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowOrganizerController;->getTransitionController()Lcom/android/server/wm/TransitionController;

    move-result-object v0

    return-object v0
.end method

.method getUserManager()Lcom/android/server/pm/UserManagerService;
    .registers 3

    .line 1089
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    if-nez v0, :cond_13

    .line 1090
    const-string/jumbo v0, "user"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 1091
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IUserManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IUserManager;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/UserManagerService;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    .line 1093
    .end local v0  # "b":Landroid/os/IBinder;
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUserManager:Lcom/android/server/pm/UserManagerService;

    return-object v0
.end method

.method public getVoiceInteractorPackageName(Landroid/os/IBinder;)Ljava/lang/String;
    .registers 3
    .param p1, "callingVoiceInteractor"  # Landroid/os/IBinder;

    .line 1756
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 1757
    invoke-virtual {v0, p1}, Landroid/service/voice/VoiceInteractionManagerInternal;->getVoiceInteractorPackageName(Landroid/os/IBinder;)Ljava/lang/String;

    move-result-object v0

    .line 1756
    return-object v0
.end method

.method public getWindowOrganizerController()Landroid/window/IWindowOrganizerController;
    .registers 2

    .line 3786
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    return-object v0
.end method

.method public handleFreeformModeRequst(Landroid/os/IBinder;I)I
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "cmd"  # I

    .line 7297
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7298
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {p1, p2, v1}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->handleFreeformModeRequst(Landroid/os/IBinder;ILandroid/content/Context;)I

    move-result v1

    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 7299
    :catchall_11
    move-exception v1

    :try_start_12
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_12 .. :try_end_13} :catchall_11

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method handleIncomingUser(IIILjava/lang/String;)I
    .registers 13
    .param p1, "callingPid"  # I
    .param p2, "callingUid"  # I
    .param p3, "userId"  # I
    .param p4, "name"  # Ljava/lang/String;

    .line 1723
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v7, 0x0

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p4

    invoke-virtual/range {v0 .. v7}, Landroid/app/ActivityManagerInternal;->handleIncomingUser(IIIZILjava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method hasActiveVisibleWindow(I)Z
    .registers 3
    .param p1, "uid"  # I

    .line 5368
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/VisibleActivityProcessTracker;->hasVisibleActivity(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5369
    const/4 v0, 0x1

    return v0

    .line 5371
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MirrorActiveUids;->hasNonAppVisibleWindow(I)Z

    move-result v0

    return v0
.end method

.method hasSystemAlertWindowPermission(IILjava/lang/String;)Z
    .registers 10
    .param p1, "callingUid"  # I
    .param p2, "callingPid"  # I
    .param p3, "callingPackage"  # Ljava/lang/String;

    .line 1109
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v0

    const/16 v1, 0x18

    const/4 v4, 0x0

    const-string v5, ""

    move v2, p1

    move-object v3, p3

    invoke-virtual/range {v0 .. v5}, Landroid/app/AppOpsManager;->noteOpNoThrow(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 1111
    .local v0, "mode":I
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, 0x3

    if-ne v0, v3, :cond_1f

    .line 1112
    const-string v3, "android.permission.SYSTEM_ALERT_WINDOW"

    invoke-static {v3, p2, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_1d

    goto :goto_1e

    :cond_1d
    move v1, v2

    :goto_1e
    return v1

    .line 1115
    :cond_1f
    if-nez v0, :cond_22

    goto :goto_23

    :cond_22
    move v1, v2

    :goto_23
    return v1
.end method

.method hasUserRestriction(Ljava/lang/String;I)Z
    .registers 4
    .param p1, "restriction"  # Ljava/lang/String;
    .param p2, "userId"  # I

    .line 1104
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getUserManager()Lcom/android/server/pm/UserManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/pm/UserManagerService;->hasUserRestriction(Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method hasUserVisibleWindow(I)Z
    .registers 3
    .param p1, "uid"  # I

    .line 5376
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVisibleActivityProcessTracker:Lcom/android/server/wm/VisibleActivityProcessTracker;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/VisibleActivityProcessTracker;->hasVisibleActivity(I)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 5377
    const/4 v0, 0x1

    return v0

    .line 5379
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActiveUids:Lcom/android/server/wm/MirrorActiveUids;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/MirrorActiveUids;->hasVisibleWindowForUser(I)Z

    move-result v0

    return v0
.end method

.method increaseConfigurationSeqLocked()I
    .registers 3

    .line 1048
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    const/4 v1, 0x1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    .line 1049
    return v0
.end method

.method public initialize(Lcom/android/server/firewall/IntentFirewall;Lcom/android/server/am/PendingIntentController;Landroid/os/Looper;)V
    .registers 10
    .param p1, "intentFirewall"  # Lcom/android/server/firewall/IntentFirewall;
    .param p2, "intentController"  # Lcom/android/server/am/PendingIntentController;
    .param p3, "looper"  # Landroid/os/Looper;

    .line 1019
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {v0, p0, p3}, Lcom/android/server/wm/ActivityTaskManagerService$H;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    .line 1020
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    .line 1021
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mIntentFirewall:Lcom/android/server/firewall/IntentFirewall;

    .line 1022
    invoke-static {}, Lcom/android/server/SystemServiceManager;->ensureSystemDir()Ljava/io/File;

    move-result-object v0

    .line 1023
    .local v0, "systemDir":Ljava/io/File;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {p0, v1, v2, v3, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->createAppWarnings(Landroid/content/Context;Landroid/os/Handler;Landroid/os/Handler;Ljava/io/File;)Lcom/android/server/wm/AppWarnings;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppWarnings:Lcom/android/server/wm/AppWarnings;

    .line 1024
    new-instance v1, Lcom/android/server/wm/CompatModePackages;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {v1, p0, v0, v2}, Lcom/android/server/wm/CompatModePackages;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/io/File;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    .line 1025
    iput-object p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingIntentController:Lcom/android/server/am/PendingIntentController;

    .line 1026
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->createTaskSupervisor()Lcom/android/server/wm/ActivityTaskSupervisor;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1027
    new-instance v1, Lcom/android/server/wm/ActivityClientController;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityClientController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    .line 1029
    new-instance v1, Lcom/android/server/wm/TaskChangeNotificationController;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-direct {v1, v2, v3}, Lcom/android/server/wm/TaskChangeNotificationController;-><init>(Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    .line 1031
    new-instance v1, Lcom/android/server/wm/LockTaskController;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/android/server/wm/LockTaskController;-><init>(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskSupervisor;Landroid/os/Handler;Lcom/android/server/wm/TaskChangeNotificationController;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    .line 1033
    new-instance v1, Lcom/android/server/wm/ActivityStartController;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityStartController;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityStartController:Lcom/android/server/wm/ActivityStartController;

    .line 1034
    new-instance v1, Lcom/android/server/wm/RecentTasks;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-direct {v1, p0, v2}, Lcom/android/server/wm/RecentTasks;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->setRecentTasks(Lcom/android/server/wm/RecentTasks;)V

    .line 1035
    new-instance v1, Lcom/android/server/wm/VrController;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    invoke-direct {v1, v2}, Lcom/android/server/wm/VrController;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    .line 1036
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    .line 1037
    new-instance v1, Lcom/android/server/wm/PackageConfigPersister;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mPersisterQueue:Lcom/android/server/wm/PersisterQueue;

    invoke-direct {v1, v2, p0}, Lcom/android/server/wm/PackageConfigPersister;-><init>(Lcom/android/server/wm/PersisterQueue;Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPackageConfigPersister:Lcom/android/server/wm/PackageConfigPersister;

    .line 1038
    return-void
.end method

.method public installSystemProviders()V
    .registers 2

    .line 919
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;

    invoke-direct {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSettingsObserver:Lcom/android/server/wm/ActivityTaskManagerService$SettingObserver;

    .line 920
    return-void
.end method

.method instrumentationSourceHasPermission(ILjava/lang/String;)Z
    .registers 7
    .param p1, "pid"  # I
    .param p2, "permission"  # Ljava/lang/String;

    .line 5562
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5563
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v1

    .line 5564
    .local v1, "process":Lcom/android/server/wm/WindowProcessController;
    monitor-exit v0
    :try_end_d
    .catchall {:try_start_3 .. :try_end_d} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5565
    const/4 v0, 0x0

    if-eqz v1, :cond_27

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->isInstrumenting()Z

    move-result v2

    if-nez v2, :cond_1a

    goto :goto_27

    .line 5568
    :cond_1a
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getInstrumentationSourceUid()I

    move-result v2

    .line 5569
    .local v2, "sourceUid":I
    const/4 v3, -0x1

    invoke-static {p2, v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v3

    if-nez v3, :cond_26

    const/4 v0, 0x1

    :cond_26
    return v0

    .line 5566
    .end local v2  # "sourceUid":I
    :cond_27
    :goto_27
    return v0

    .line 5564
    .end local v1  # "process":Lcom/android/server/wm/WindowProcessController;
    :catchall_28
    move-exception v1

    :try_start_29
    monitor-exit v0
    :try_end_2a
    .catchall {:try_start_29 .. :try_end_2a} :catchall_28

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public final isActivityStartAllowedOnDisplay(ILandroid/content/Intent;Ljava/lang/String;I)Z
    .registers 12
    .param p1, "displayId"  # I
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "resolvedType"  # Ljava/lang/String;
    .param p4, "userId"  # I

    .line 1909
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 1910
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 1911
    .local v1, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1915
    .local v2, "origId":J
    :try_start_c
    invoke-virtual {p0, p2, p3, p4, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->resolveActivityInfoForIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ActivityInfo;

    move-result-object v4

    .line 1918
    .local v4, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v5
    :try_end_13
    .catchall {:try_start_c .. :try_end_13} :catchall_2a

    :try_start_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1919
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v6, p1, v1, v0, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->canPlaceEntityOnDisplay(IIILandroid/content/pm/ActivityInfo;)Z

    move-result v6

    monitor-exit v5
    :try_end_1d
    .catchall {:try_start_13 .. :try_end_1d} :catchall_24

    .line 1923
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1919
    return v6

    .line 1921
    :catchall_24
    move-exception v6

    :try_start_25
    monitor-exit v5
    :try_end_26
    .catchall {:try_start_25 .. :try_end_26} :catchall_24

    :try_start_26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "callingUid":I
    .end local v1  # "callingPid":I
    .end local v2  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "displayId":I
    .end local p2  # "intent":Landroid/content/Intent;
    .end local p3  # "resolvedType":Ljava/lang/String;
    .end local p4  # "userId":I
    throw v6
    :try_end_2a
    .catchall {:try_start_26 .. :try_end_2a} :catchall_2a

    .line 1923
    .end local v4  # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v0  # "callingUid":I
    .restart local v1  # "callingPid":I
    .restart local v2  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "displayId":I
    .restart local p2  # "intent":Landroid/content/Intent;
    .restart local p3  # "resolvedType":Ljava/lang/String;
    .restart local p4  # "userId":I
    :catchall_2a
    move-exception v4

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1924
    throw v4
.end method

.method isActivityStartsLoggingEnabled()Z
    .registers 2

    .line 4687
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isActivityStartsLoggingEnabled()Z

    move-result v0

    return v0
.end method

.method public isAssistDataAllowedOnCurrentActivity()Z
    .registers 5

    .line 3573
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3574
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3575
    .local v1, "focusedRootTask":Lcom/android/server/wm/Task;
    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result v3

    if-eqz v3, :cond_14

    goto :goto_2f

    .line 3579
    :cond_14
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 3580
    .local v3, "activity":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_1f

    .line 3581
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3583
    :cond_1f
    :try_start_1f
    iget v2, v3, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    move v1, v2

    .line 3584
    .end local v3  # "activity":Lcom/android/server/wm/ActivityRecord;
    .local v1, "userId":I
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3585
    invoke-static {}, Landroid/app/admin/DevicePolicyCache;->getInstance()Landroid/app/admin/DevicePolicyCache;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/admin/DevicePolicyCache;->isScreenCaptureAllowed(I)Z

    move-result v0

    return v0

    .line 3576
    .local v1, "focusedRootTask":Lcom/android/server/wm/Task;
    :cond_2f
    :goto_2f
    :try_start_2f
    monitor-exit v0
    :try_end_30
    .catchall {:try_start_2f .. :try_end_30} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3584
    .end local v1  # "focusedRootTask":Lcom/android/server/wm/Task;
    :catchall_34
    move-exception v1

    :try_start_35
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_35 .. :try_end_36} :catchall_34

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isAssociatedCompanionApp(II)Z
    .registers 5
    .param p1, "userId"  # I
    .param p2, "uid"  # I

    .line 5476
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompanionAppUidsMap:Ljava/util/Map;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    .line 5477
    .local v0, "allUids":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Integer;>;"
    if-nez v0, :cond_10

    .line 5478
    const/4 v1, 0x0

    return v1

    .line 5480
    :cond_10
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method isBackgroundActivityStartsEnabled()Z
    .registers 2

    .line 4691
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBackgroundActivityStartsEnabled()Z

    move-result v0

    return v0
.end method

.method isBooted()Z
    .registers 2

    .line 5043
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBooted()Z

    move-result v0

    return v0
.end method

.method isBooting()Z
    .registers 2

    .line 5035
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->isBooting()Z

    move-result v0

    return v0
.end method

.method isCallerRecents(I)Z
    .registers 3
    .param p1, "callingUid"  # I

    .line 3396
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/RecentTasks;->isCallerRecents(I)Z

    move-result v0

    return v0
.end method

.method public isControllerAMonkey()Z
    .registers 3

    .line 2454
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2455
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v1, :cond_10

    iget-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerIsAMonkey:Z

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 2456
    :catchall_16
    move-exception v1

    :try_start_17
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_17 .. :try_end_18} :catchall_16

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method isCrossUserAllowed(II)Z
    .registers 4
    .param p1, "pid"  # I
    .param p2, "uid"  # I

    .line 3432
    const-string v0, "android.permission.INTERACT_ACROSS_USERS"

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-eqz v0, :cond_13

    .line 3433
    const-string v0, "android.permission.INTERACT_ACROSS_USERS_FULL"

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    if-nez v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    .line 3432
    :goto_14
    return v0
.end method

.method isDeviceOwner(I)Z
    .registers 3
    .param p1, "uid"  # I

    .line 5384
    if-ltz p1, :cond_8

    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDeviceOwnerUid:I

    if-ne v0, p1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isDreaming()Z
    .registers 2

    .line 1471
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDreaming:Z

    return v0
.end method

.method isGetTasksAllowed(Ljava/lang/String;II)Z
    .registers 20
    .param p1, "caller"  # Ljava/lang/String;
    .param p2, "callingPid"  # I
    .param p3, "callingUid"  # I

    .line 3400
    move/from16 v1, p2

    move/from16 v2, p3

    move-object/from16 v3, p0

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isCallerRecents(I)Z

    move-result v0

    const/4 v4, 0x1

    if-eqz v0, :cond_e

    .line 3402
    return v4

    .line 3405
    :cond_e
    const-string v0, "android.permission.REAL_GET_TASKS"

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v5, 0x0

    if-nez v0, :cond_19

    move v0, v4

    goto :goto_1a

    :cond_19
    move v0, v5

    :goto_1a
    move v6, v0

    .line 3407
    .local v6, "allowed":Z
    if-nez v6, :cond_6b

    .line 3408
    const-string v0, "android.permission.GET_TASKS"

    invoke-static {v0, v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->checkPermission(Ljava/lang/String;II)I

    move-result v0

    const/4 v7, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x4

    if-nez v0, :cond_50

    .line 3415
    :try_start_28
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    invoke-interface {v0, v2}, Landroid/content/pm/IPackageManager;->isUidPrivileged(I)Z

    move-result v0

    if-eqz v0, :cond_4e

    .line 3416
    const/4 v6, 0x1

    .line 3417
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_4e

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    int-to-long v10, v2

    .local v10, "protoLogParam1":J
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, -0x36ab9724  # -870029.75f

    new-array v14, v7, [Ljava/lang/Object;

    aput-object v0, v14, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v15

    aput-object v15, v14, v4

    invoke-static {v12, v13, v9, v8, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_28 .. :try_end_4e} :catch_4f

    .line 3422
    .end local v0  # "protoLogParam0":Ljava/lang/String;
    .end local v10  # "protoLogParam1":J
    :cond_4e
    goto :goto_50

    .line 3421
    :catch_4f
    move-exception v0

    .line 3424
    :cond_50
    :goto_50
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_6b

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0  # "protoLogParam0":Ljava/lang/String;
    int-to-long v10, v2

    .restart local v10  # "protoLogParam1":J
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v13, -0x17e73996

    new-array v7, v7, [Ljava/lang/Object;

    aput-object v0, v7, v5

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v7, v4

    invoke-static {v12, v13, v9, v8, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3428
    .end local v0  # "protoLogParam0":Ljava/lang/String;
    .end local v10  # "protoLogParam1":J
    :cond_6b
    return v6
.end method

.method public isInFreeFormControlRegon(FF)Z
    .registers 4
    .param p1, "x"  # F
    .param p2, "y"  # F

    .line 880
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/MiuiFreeformGestureControllerStub;->isInFreeFormControlRegon(FF)Z

    move-result v0

    return v0
.end method

.method public isInLockTaskMode()Z
    .registers 2

    .line 2753
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskModeState()I

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method public isInSplitScreenWindowingMode()Z
    .registers 12

    .line 7306
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7308
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_d5

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7309
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    const/4 v4, 0x0

    if-nez v3, :cond_17

    monitor-exit v2
    :try_end_10
    .catchall {:try_start_7 .. :try_end_10} :catchall_cf

    .line 7341
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7309
    return v4

    .line 7310
    :cond_17
    :try_start_17
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 7311
    const/4 v5, 0x1

    invoke-virtual {v3, v5}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTaskInWindowingMode(I)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 7312
    .local v3, "wc":Lcom/android/server/wm/WindowContainer;
    if-nez v3, :cond_2c

    monitor-exit v2
    :try_end_25
    .catchall {:try_start_17 .. :try_end_25} :catchall_cf

    .line 7341
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7312
    return v4

    .line 7313
    :cond_2c
    const/4 v6, 0x0

    .line 7314
    .local v6, "task":Lcom/android/server/wm/Task;
    :try_start_2d
    instance-of v7, v3, Lcom/android/server/wm/Task;

    if-eqz v7, :cond_36

    .line 7315
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v7

    move-object v6, v7

    .line 7317
    :cond_36
    instance-of v7, v3, Lcom/android/server/wm/WindowState;

    if-eqz v7, :cond_42

    .line 7318
    move-object v7, v3

    check-cast v7, Lcom/android/server/wm/WindowState;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowState;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    move-object v6, v7

    .line 7320
    :cond_42
    instance-of v7, v3, Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_4e

    .line 7321
    move-object v7, v3

    check-cast v7, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    move-object v6, v7

    .line 7323
    :cond_4e
    if-nez v6, :cond_58

    monitor-exit v2
    :try_end_51
    .catchall {:try_start_2d .. :try_end_51} :catchall_cf

    .line 7341
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7323
    return v4

    .line 7324
    :cond_58
    :try_start_58
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v7

    .line 7325
    .local v7, "isRoot":Z
    const/4 v8, 0x6

    if-eqz v7, :cond_94

    .line 7326
    iget-boolean v9, v6, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v9, :cond_8b

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v9

    if-eqz v9, :cond_8b

    .line 7327
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v9

    if-ne v9, v5, :cond_8b

    .line 7328
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    if-eqz v9, :cond_8b

    .line 7329
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v9

    if-eqz v9, :cond_8b

    .line 7330
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v9

    if-ne v9, v8, :cond_8b

    move v4, v5

    goto :goto_8c

    :cond_8b
    nop

    :goto_8c
    monitor-exit v2
    :try_end_8d
    .catchall {:try_start_58 .. :try_end_8d} :catchall_cf

    .line 7341
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7326
    return v4

    .line 7332
    :cond_94
    :try_start_94
    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v9

    .line 7333
    .local v9, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v9, :cond_c6

    iget-boolean v10, v9, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v10, :cond_c6

    invoke-virtual {v9}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v10

    if-eqz v10, :cond_c6

    .line 7334
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v10

    if-ne v10, v5, :cond_c6

    .line 7335
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    if-eqz v10, :cond_c6

    .line 7336
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v10

    if-eqz v10, :cond_c6

    .line 7337
    invoke-virtual {v9}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v10

    if-ne v10, v8, :cond_c6

    move v4, v5

    goto :goto_c7

    :cond_c6
    nop

    :goto_c7
    monitor-exit v2
    :try_end_c8
    .catchall {:try_start_94 .. :try_end_c8} :catchall_cf

    .line 7341
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7333
    return v4

    .line 7339
    .end local v3  # "wc":Lcom/android/server/wm/WindowContainer;
    .end local v6  # "task":Lcom/android/server/wm/Task;
    .end local v7  # "isRoot":Z
    .end local v9  # "rootTask":Lcom/android/server/wm/Task;
    :catchall_cf
    move-exception v3

    :try_start_d0
    monitor-exit v2
    :try_end_d1
    .catchall {:try_start_d0 .. :try_end_d1} :catchall_cf

    :try_start_d1
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    throw v3
    :try_end_d5
    .catchall {:try_start_d1 .. :try_end_d5} :catchall_d5

    .line 7341
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    :catchall_d5
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7342
    throw v2
.end method

.method isKeyguardLocked(I)Z
    .registers 3
    .param p1, "displayId"  # I

    .line 4119
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/KeyguardController;->isKeyguardLocked(I)Z

    move-result v0

    return v0
.end method

.method public isPairRootTask(I)Z
    .registers 8
    .param p1, "taskId"  # I

    .line 7410
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 7412
    .local v0, "ident":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_3f

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7413
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 7414
    .local v3, "task":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_30

    iget-boolean v4, v3, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v4, :cond_30

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v4

    if-eqz v4, :cond_30

    .line 7415
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x6

    if-ne v4, v5, :cond_30

    .line 7416
    const/4 v4, 0x1

    monitor-exit v2
    :try_end_29
    .catchall {:try_start_7 .. :try_end_29} :catchall_39

    .line 7421
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7416
    return v4

    .line 7418
    :cond_30
    const/4 v4, 0x0

    :try_start_31
    monitor-exit v2
    :try_end_32
    .catchall {:try_start_31 .. :try_end_32} :catchall_39

    .line 7421
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7418
    return v4

    .line 7419
    .end local v3  # "task":Lcom/android/server/wm/Task;
    :catchall_39
    move-exception v3

    :try_start_3a
    monitor-exit v2
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    :try_start_3b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    throw v3
    :try_end_3f
    .catchall {:try_start_3b .. :try_end_3f} :catchall_3f

    .line 7421
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    :catchall_3f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7422
    throw v2
.end method

.method isSleepingLocked()Z
    .registers 2

    .line 4784
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    return v0
.end method

.method isSleepingOrShuttingDownLocked()Z
    .registers 3

    .line 4776
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->getPackageHoldOn()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_10

    .line 4777
    return v1

    .line 4780
    :cond_10
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result v0

    if-nez v0, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-eqz v0, :cond_1b

    :cond_1a
    const/4 v1, 0x1

    :cond_1b
    return v1
.end method

.method public isTopActivityImmersive()Z
    .registers 6

    .line 1962
    const-string v0, "isTopActivityImmersive"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1963
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_8
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1964
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1965
    .local v1, "topFocusedRootTask":Lcom/android/server/wm/Task;
    const/4 v2, 0x0

    if-nez v1, :cond_17

    .line 1966
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_8 .. :try_end_13} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1969
    :cond_17
    :try_start_17
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 1970
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_22

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->immersive:Z

    if-eqz v4, :cond_22

    const/4 v2, 0x1

    :cond_22
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_17 .. :try_end_23} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 1971
    .end local v1  # "topFocusedRootTask":Lcom/android/server/wm/Task;
    .end local v3  # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public isTopActivityInFreeform(Ljava/lang/String;)Z
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;

    .line 7281
    monitor-enter p0

    .line 7282
    :try_start_1
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 7283
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_2b

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_2b

    .line 7284
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 7285
    .local v1, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_2b

    .line 7286
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getWindowingMode()I

    move-result v2

    const/4 v3, 0x5

    if-ne v2, v3, :cond_2b

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 7287
    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2b

    .line 7288
    const/4 v2, 0x1

    monitor-exit p0

    return v2

    .line 7291
    .end local v0  # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v1  # "activityRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_2b
    monitor-exit p0

    .line 7292
    const/4 v0, 0x0

    return v0

    .line 7291
    :catchall_2e
    move-exception v0

    monitor-exit p0
    :try_end_30
    .catchall {:try_start_1 .. :try_end_30} :catchall_2e

    throw v0
.end method

.method public keyguardGoingAway(I)V
    .registers 7
    .param p1, "flags"  # I

    .line 3648
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_KEYGUARD"

    const-string/jumbo v2, "unlock keyguard"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3649
    const-string v0, "keyguardGoingAway"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 3650
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3652
    .local v0, "token":J
    :try_start_13
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_16
    .catchall {:try_start_13 .. :try_end_16} :catchall_3c

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3654
    and-int/lit8 v3, p1, 0x16

    if-eqz v3, :cond_23

    .line 3655
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityClientController;->invalidateHomeTaskSnapshot(Landroid/os/IBinder;)V

    .line 3658
    :cond_23
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v4, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda5;

    invoke-direct {v4, p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda5;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;I)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V

    .line 3661
    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_16 .. :try_end_2e} :catchall_36

    :try_start_2e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_31
    .catchall {:try_start_2e .. :try_end_31} :catchall_3c

    .line 3663
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3664
    nop

    .line 3665
    return-void

    .line 3661
    :catchall_36
    move-exception v3

    :try_start_37
    monitor-exit v2
    :try_end_38
    .catchall {:try_start_37 .. :try_end_38} :catchall_36

    :try_start_38
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "token":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "flags":I
    throw v3
    :try_end_3c
    .catchall {:try_start_38 .. :try_end_3c} :catchall_3c

    .line 3663
    .restart local v0  # "token":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "flags":I
    :catchall_3c
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3664
    throw v2
.end method

.method synthetic lambda$applyUpdateLockStateLocked$0$com-android-server-wm-ActivityTaskManagerService(ZLcom/android/server/wm/ActivityRecord;)V
    .registers 11
    .param p1, "nextState"  # Z
    .param p2, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 1948
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->isHeld()Z

    move-result v0

    if-eq v0, p1, :cond_33

    .line 1949
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_IMMERSIVE_enabled:Z

    if-eqz v0, :cond_26

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam1":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_IMMERSIVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x212f7446

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v1, v5, v7

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1951
    .end local v0  # "protoLogParam0":Ljava/lang/String;
    .end local v1  # "protoLogParam1":Ljava/lang/String;
    :cond_26
    if-eqz p1, :cond_2e

    .line 1952
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->acquire()V

    goto :goto_33

    .line 1954
    :cond_2e
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateLock:Landroid/os/UpdateLock;

    invoke-virtual {v0}, Landroid/os/UpdateLock;->release()V

    .line 1957
    :cond_33
    :goto_33
    return-void
.end method

.method synthetic lambda$applyUpdateVrModeLocked$6$com-android-server-wm-ActivityTaskManagerService(Lcom/android/server/wm/ActivityRecord;)V
    .registers 8
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 4049
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/VrController;->onVrModeChanged(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 4050
    return-void

    .line 4052
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4053
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v1}, Lcom/android/server/wm/VrController;->shouldDisableNonVrUiLocked()Z

    move-result v1

    .line 4054
    .local v1, "disableNonVrUi":Z
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowManagerService;->disableNonVrUi(Z)V

    .line 4055
    if-eqz v1, :cond_28

    .line 4058
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v3, 0x1

    new-array v3, v3, [I

    const/4 v4, 0x0

    const/4 v5, 0x2

    aput v5, v3, v4

    invoke-virtual {v2, v3}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksInWindowingModes([I)V

    .line 4060
    .end local v1  # "disableNonVrUi":Z
    :cond_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_c .. :try_end_29} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4061
    return-void

    .line 4060
    :catchall_2d
    move-exception v1

    :try_start_2e
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_2e .. :try_end_2f} :catchall_2d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method synthetic lambda$enterPictureInPictureMode$5$com-android-server-wm-ActivityTaskManagerService(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)V
    .registers 11
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "params"  # Landroid/app/PictureInPictureParams;

    .line 3737
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3738
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-nez v1, :cond_29

    .line 3739
    const-string v1, "ActivityTaskManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Skip enterPictureInPictureMode, destroyed "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3740
    monitor-exit v0
    :try_end_25
    .catchall {:try_start_3 .. :try_end_25} :catchall_5e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3743
    :cond_29
    :try_start_29
    iget-boolean v1, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v1, :cond_59

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_34

    goto :goto_59

    .line 3744
    :cond_34
    invoke-virtual {p1, p2}, Lcom/android/server/wm/ActivityRecord;->setPictureInPictureParams(Landroid/app/PictureInPictureParams;)V

    .line 3745
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    const-string v3, "enterPictureInPictureMode"

    invoke-virtual {v1, p1, v2, v3}, Lcom/android/server/wm/RootWindowContainer;->moveActivityToPinnedRootTask(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 3748
    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p1, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-eqz v1, :cond_54

    .line 3749
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    const-string v7, "auto-pip"

    move-object v3, p1

    invoke-virtual/range {v2 .. v7}, Lcom/android/server/wm/Task;->schedulePauseActivity(Lcom/android/server/wm/ActivityRecord;ZZZLjava/lang/String;)V

    .line 3751
    :cond_54
    monitor-exit v0
    :try_end_55
    .catchall {:try_start_29 .. :try_end_55} :catchall_5e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3752
    return-void

    .line 3743
    :cond_59
    :goto_59
    :try_start_59
    monitor-exit v0
    :try_end_5a
    .catchall {:try_start_59 .. :try_end_5a} :catchall_5e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3751
    :catchall_5e
    move-exception v1

    :try_start_5f
    monitor-exit v0
    :try_end_60
    .catchall {:try_start_5f .. :try_end_60} :catchall_5e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method synthetic lambda$keyguardGoingAway$4$com-android-server-wm-ActivityTaskManagerService(ILcom/android/server/wm/DisplayContent;)V
    .registers 5
    .param p1, "flags"  # I
    .param p2, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 3659
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {p2}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/KeyguardController;->keyguardGoingAway(II)V

    .line 3660
    return-void
.end method

.method synthetic lambda$onScreenAwakeChanged$3$com-android-server-wm-ActivityTaskManagerService(Z)V
    .registers 4
    .param p1, "isAwake"  # Z

    .line 3094
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 3095
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    invoke-interface {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;->onAwakeStateChanged(Z)V

    .line 3094
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3097
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method synthetic lambda$postFinishBooting$7$com-android-server-wm-ActivityTaskManagerService(ZZ)V
    .registers 5
    .param p1, "finishBooting"  # Z
    .param p2, "enableScreen"  # Z

    .line 5048
    if-eqz p1, :cond_7

    .line 5049
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->finishBooting()V

    .line 5051
    :cond_7
    if-eqz p2, :cond_12

    .line 5052
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerInternal;->enableScreenAfterBoot(Z)V

    .line 5054
    :cond_12
    return-void
.end method

.method synthetic lambda$scheduleAppGcsLocked$8$com-android-server-wm-ActivityTaskManagerService()V
    .registers 2

    .line 5222
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0}, Landroid/app/ActivityManagerInternal;->scheduleAppGcs()V

    return-void
.end method

.method synthetic lambda$setLockScreenShown$1$com-android-server-wm-ActivityTaskManagerService(ZZLcom/android/server/wm/DisplayContent;)V
    .registers 6
    .param p1, "keyguardShowing"  # Z
    .param p2, "aodShowing"  # Z
    .param p3, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 3076
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    invoke-virtual {p3}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    invoke-virtual {v0, v1, p1, p2}, Lcom/android/server/wm/KeyguardController;->setKeyguardShown(IZZ)V

    .line 3078
    return-void
.end method

.method synthetic lambda$setLockScreenShown$2$com-android-server-wm-ActivityTaskManagerService(Z)V
    .registers 4
    .param p1, "keyguardShowing"  # Z

    .line 3085
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 3086
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mScreenObservers:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;

    invoke-interface {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerInternal$ScreenObserver;->onKeyguardStateChanged(Z)V

    .line 3085
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3088
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method public launchFlashBackFromBackGround(Landroid/app/ActivityManager$RunningTaskInfo;Landroid/graphics/Rect;I)V
    .registers 12
    .param p1, "taskInfo"  # Landroid/app/ActivityManager$RunningTaskInfo;
    .param p2, "rect"  # Landroid/graphics/Rect;
    .param p3, "cornerPosition"  # I

    .line 2243
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2245
    .local v0, "callingId":J
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiBuild()Z

    move-result v2

    if-nez v2, :cond_15

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v2, :cond_f

    goto :goto_15

    .line 2257
    :cond_f
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v2}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->showOpenMiuiOptimizationToast()V

    goto :goto_4a

    .line 2246
    :cond_15
    :goto_15
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_55

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2247
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v4, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2248
    .local v3, "task":Lcom/android/server/wm/Task;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v4, v3}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->addFreeFormActivityStackFromStartSmallFreeform(Lcom/android/server/wm/Task;)V

    .line 2249
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    iget v5, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    invoke-interface {v4, v5}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v4

    .line 2250
    .local v4, "mffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    invoke-virtual {v4, p3}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->setCornerPosition(I)V

    .line 2251
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->setIsFlashBackMode(Z)V

    .line 2252
    invoke-virtual {v4, v5}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->setIsLaunchFlashBackFromBackGround(Z)V

    .line 2253
    iget v6, p1, Landroid/app/ActivityManager$RunningTaskInfo;->taskId:I

    const/4 v7, 0x5

    invoke-virtual {p0, v6, v7, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->setTaskWindowingMode(IIZ)Z

    .line 2254
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v6, 0x0

    invoke-virtual {v5, v4, v6}, Lcom/android/server/wm/WindowManagerService;->launchSmallFreeFormWindow(Lcom/android/server/wm/MiuiFreeFormActivityStackStub;Z)V

    .line 2255
    .end local v3  # "task":Lcom/android/server/wm/Task;
    .end local v4  # "mffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    monitor-exit v2
    :try_end_47
    .catchall {:try_start_18 .. :try_end_47} :catchall_4f

    :try_start_47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_4a
    .catchall {:try_start_47 .. :try_end_4a} :catchall_55

    .line 2260
    :goto_4a
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2261
    nop

    .line 2262
    return-void

    .line 2255
    :catchall_4f
    move-exception v3

    :try_start_50
    monitor-exit v2
    :try_end_51
    .catchall {:try_start_50 .. :try_end_51} :catchall_4f

    :try_start_51
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "callingId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .end local p2  # "rect":Landroid/graphics/Rect;
    .end local p3  # "cornerPosition":I
    throw v3
    :try_end_55
    .catchall {:try_start_51 .. :try_end_55} :catchall_55

    .line 2260
    .restart local v0  # "callingId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskInfo":Landroid/app/ActivityManager$RunningTaskInfo;
    .restart local p2  # "rect":Landroid/graphics/Rect;
    .restart local p3  # "cornerPosition":I
    :catchall_55
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2261
    throw v2
.end method

.method public launchSmallFreeFormWindow(Landroid/app/ActivityTaskManager$RootTaskInfo;Landroid/graphics/Rect;I)V
    .registers 14
    .param p1, "rootTaskInfo"  # Landroid/app/ActivityTaskManager$RootTaskInfo;
    .param p2, "rect"  # Landroid/graphics/Rect;
    .param p3, "cornerPosition"  # I

    .line 2177
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2179
    .local v0, "callingId":J
    :try_start_4
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMiuiBuild()Z

    move-result v2

    if-nez v2, :cond_15

    iget-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v2, :cond_f

    goto :goto_15

    .line 2201
    :cond_f
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v2}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->showOpenMiuiOptimizationToast()V

    goto :goto_72

    .line 2180
    :cond_15
    :goto_15
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_18
    .catchall {:try_start_4 .. :try_end_18} :catchall_7d

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2181
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget v4, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2182
    .local v3, "task":Lcom/android/server/wm/Task;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v4, v3}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->addFreeFormActivityStackFromStartSmallFreeform(Lcom/android/server/wm/Task;)V

    .line 2183
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    iget v5, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    invoke-interface {v4, v5}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v4

    .line 2184
    .local v4, "mffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    invoke-virtual {v4, p3}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->setCornerPosition(I)V

    .line 2185
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v5, :cond_5d

    .line 2186
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    invoke-interface {v5, p2, v4}, Lcom/android/server/wm/MiuiFreeformGestureControllerStub;->setOriginalBounds(Landroid/graphics/Rect;Lcom/android/server/wm/MiuiFreeFormActivityStackStub;)V
    :try_end_42
    .catchall {:try_start_18 .. :try_end_42} :catchall_77

    .line 2188
    if-eqz v3, :cond_5d

    .line 2189
    :try_start_44
    new-array v5, v7, [Lcom/android/server/wm/Task;

    aput-object v3, v5, v6

    invoke-static {v5}, Lcom/google/android/collect/Sets;->newArraySet([Ljava/lang/Object;)Landroid/util/ArraySet;

    move-result-object v5

    .line 2190
    .local v5, "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    iget-object v8, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v8, v8, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v8, v5}, Lcom/android/server/wm/TaskSnapshotController;->snapshotTasks(Landroid/util/ArraySet;)V
    :try_end_53
    .catch Ljava/lang/Exception; {:try_start_44 .. :try_end_53} :catch_54
    .catchall {:try_start_44 .. :try_end_53} :catchall_77

    goto :goto_5d

    .line 2192
    .end local v5  # "tasks":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/wm/Task;>;"
    :catch_54
    move-exception v5

    .line 2193
    .local v5, "e":Ljava/lang/Exception;
    :try_start_55
    const-string v8, "ActivityTaskManager"

    const-string v9, "launchSmallFreeFormWindow: Failed to get snapshotTasks"

    invoke-static {v8, v9, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    nop

    .line 2196
    .end local v5  # "e":Ljava/lang/Exception;
    :cond_5d
    :goto_5d
    iget v5, p1, Landroid/app/ActivityTaskManager$RootTaskInfo;->taskId:I

    const/4 v8, 0x5

    invoke-virtual {p0, v5, v8, v7}, Lcom/android/server/wm/ActivityTaskManagerService;->setTaskWindowingMode(IIZ)Z

    .line 2197
    iget v5, p2, Landroid/graphics/Rect;->left:I

    if-nez v5, :cond_68

    move v6, v7

    :cond_68
    move v5, v6

    .line 2198
    .local v5, "launchFromControlCenter":Z
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v4, v5}, Lcom/android/server/wm/WindowManagerService;->launchSmallFreeFormWindow(Lcom/android/server/wm/MiuiFreeFormActivityStackStub;Z)V

    .line 2199
    .end local v3  # "task":Lcom/android/server/wm/Task;
    .end local v4  # "mffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    .end local v5  # "launchFromControlCenter":Z
    monitor-exit v2
    :try_end_6f
    .catchall {:try_start_55 .. :try_end_6f} :catchall_77

    :try_start_6f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_72
    .catchall {:try_start_6f .. :try_end_72} :catchall_7d

    .line 2204
    :goto_72
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2205
    nop

    .line 2206
    return-void

    .line 2199
    :catchall_77
    move-exception v3

    :try_start_78
    monitor-exit v2
    :try_end_79
    .catchall {:try_start_78 .. :try_end_79} :catchall_77

    :try_start_79
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "callingId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "rootTaskInfo":Landroid/app/ActivityTaskManager$RootTaskInfo;
    .end local p2  # "rect":Landroid/graphics/Rect;
    .end local p3  # "cornerPosition":I
    throw v3
    :try_end_7d
    .catchall {:try_start_79 .. :try_end_7d} :catchall_7d

    .line 2204
    .restart local v0  # "callingId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "rootTaskInfo":Landroid/app/ActivityTaskManager$RootTaskInfo;
    .restart local p2  # "rect":Landroid/graphics/Rect;
    .restart local p3  # "cornerPosition":I
    :catchall_7d
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2205
    throw v2
.end method

.method logAppTooSlow(Lcom/android/server/wm/WindowProcessController;JLjava/lang/String;)V
    .registers 5
    .param p1, "app"  # Lcom/android/server/wm/WindowProcessController;
    .param p2, "startTime"  # J
    .param p4, "msg"  # Ljava/lang/String;

    .line 5418
    return-void
.end method

.method public moveRootTaskToDisplay(II)V
    .registers 21
    .param p1, "taskId"  # I
    .param p2, "displayId"  # I

    .line 3140
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v4, "android.permission.INTERNAL_SYSTEM_WINDOW"

    const-string/jumbo v5, "moveRootTaskToDisplay()"

    invoke-virtual {v0, v4, v5}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3142
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_13
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3143
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_50

    .line 3145
    .local v5, "ident":J
    :try_start_1a
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    const/4 v7, 0x1

    if-eqz v0, :cond_3c

    int-to-long v8, v2

    .local v8, "protoLogParam0":J
    int-to-long v10, v3

    .local v10, "protoLogParam1":J
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v12, -0x549fd97e

    const/4 v13, 0x5

    const/4 v14, 0x0

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v15, v7

    invoke-static {v0, v12, v13, v14, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3147
    .end local v8  # "protoLogParam0":J
    .end local v10  # "protoLogParam1":J
    :cond_3c
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v2, v3, v7}, Lcom/android/server/wm/RootWindowContainer;->moveRootTaskToDisplay(IIZ)V
    :try_end_41
    .catchall {:try_start_1a .. :try_end_41} :catchall_4a

    .line 3149
    :try_start_41
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3150
    nop

    .line 3151
    .end local v5  # "ident":J
    monitor-exit v4
    :try_end_46
    .catchall {:try_start_41 .. :try_end_46} :catchall_50

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3152
    return-void

    .line 3149
    .restart local v5  # "ident":J
    :catchall_4a
    move-exception v0

    :try_start_4b
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3150
    nop

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    .end local p2  # "displayId":I
    throw v0

    .line 3151
    .end local v5  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    .restart local p2  # "displayId":I
    :catchall_50
    move-exception v0

    monitor-exit v4
    :try_end_52
    .catchall {:try_start_4b .. :try_end_52} :catchall_50

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public moveTaskToFront(Landroid/app/IApplicationThread;Ljava/lang/String;IILandroid/os/Bundle;)V
    .registers 15
    .param p1, "appThread"  # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "taskId"  # I
    .param p4, "flags"  # I
    .param p5, "bOptions"  # Landroid/os/Bundle;

    .line 2298
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.REORDER_TASKS"

    const-string/jumbo v2, "moveTaskToFront()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2301
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v0, :cond_22

    int-to-long v0, p3

    .local v0, "protoLogParam0":J
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x7e397b9d

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2302
    .end local v0  # "protoLogParam0":J
    :cond_22
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2303
    nop

    .line 2304
    invoke-static {p5}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v6

    .line 2303
    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityTaskManagerService;->moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;)V

    .line 2305
    monitor-exit v0
    :try_end_36
    .catchall {:try_start_25 .. :try_end_36} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2306
    return-void

    .line 2305
    :catchall_3a
    move-exception v1

    :try_start_3b
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_3b .. :try_end_3c} :catchall_3a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method moveTaskToFrontLocked(Landroid/app/IApplicationThread;Ljava/lang/String;IILcom/android/server/wm/SafeActivityOptions;)V
    .registers 29
    .param p1, "appThread"  # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "taskId"  # I
    .param p4, "flags"  # I
    .param p5, "options"  # Lcom/android/server/wm/SafeActivityOptions;

    .line 2310
    move-object/from16 v1, p0

    move-object/from16 v13, p2

    move/from16 v14, p3

    move-object/from16 v15, p5

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 2311
    .local v12, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v11

    .line 2312
    .local v11, "callingUid":I
    invoke-virtual {v1, v13}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 2314
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v16

    .line 2315
    .local v16, "origId":J
    const/4 v0, 0x0

    .line 2316
    .local v0, "callerApp":Lcom/android/server/wm/WindowProcessController;
    if-eqz p1, :cond_21

    .line 2317
    invoke-virtual/range {p0 .. p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    move-object/from16 v18, v0

    goto :goto_23

    .line 2316
    :cond_21
    move-object/from16 v18, v0

    .line 2319
    .end local v0  # "callerApp":Lcom/android/server/wm/WindowProcessController;
    .local v18, "callerApp":Lcom/android/server/wm/WindowProcessController;
    :goto_23
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    const/4 v10, 0x0

    const-string/jumbo v2, "moveTaskToFront"

    invoke-virtual {v0, v10, v2}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v19

    .line 2321
    .local v19, "starter":Lcom/android/server/wm/ActivityStarter;
    const/4 v6, -0x1

    const/4 v7, -0x1

    const/4 v9, 0x0

    const/4 v0, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move-object/from16 v2, v19

    move v3, v11

    move v4, v12

    move-object/from16 v5, p2

    move-object/from16 v8, v18

    move v10, v0

    move/from16 v22, v11

    .end local v11  # "callingUid":I
    .local v22, "callingUid":I
    move-object/from16 v11, v20

    move v15, v12

    .end local v12  # "callingPid":I
    .local v15, "callingPid":I
    move-object/from16 v12, v21

    invoke-virtual/range {v2 .. v12}, Lcom/android/server/wm/ActivityStarter;->shouldAbortBackgroundActivityStart(IILjava/lang/String;IILcom/android/server/wm/WindowProcessController;Lcom/android/server/am/PendingIntentRecord;ZLandroid/content/Intent;Landroid/app/ActivityOptions;)Z

    move-result v0

    if-eqz v0, :cond_57

    .line 2323
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBackgroundActivityStartsEnabled()Z

    move-result v0

    if-nez v0, :cond_54

    .line 2324
    return-void

    .line 2323
    :cond_54
    move/from16 v2, v22

    goto :goto_64

    .line 2328
    :cond_57
    invoke-static {}, Lcom/android/server/wm/ActivityStarterStub;->get()Lcom/android/server/wm/ActivityStarterStub;

    move-result-object v0

    move/from16 v2, v22

    .end local v22  # "callingUid":I
    .local v2, "callingUid":I
    invoke-virtual {v0, v2, v15, v13}, Lcom/android/server/wm/ActivityStarterStub;->isAllowedStartActivity(IILjava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_64

    .line 2330
    return-void

    .line 2334
    :cond_64
    :goto_64
    :try_start_64
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v14}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v0
    :try_end_6a
    .catchall {:try_start_64 .. :try_end_6a} :catchall_d5

    .line 2335
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v9, 0x1

    if-nez v0, :cond_90

    .line 2336
    :try_start_6d
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v3, :cond_84

    int-to-long v3, v14

    .local v3, "protoLogParam0":J
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x57dfeb84

    new-array v7, v9, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v7, v8

    const/4 v8, 0x0

    invoke-static {v5, v6, v9, v8, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2337
    .end local v3  # "protoLogParam0":J
    :cond_84
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V
    :try_end_87
    .catchall {:try_start_6d .. :try_end_87} :catchall_8b

    .line 2359
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2338
    return-void

    .line 2359
    .end local v0  # "task":Lcom/android/server/wm/Task;
    :catchall_8b
    move-exception v0

    move-object/from16 v10, p5

    move v11, v15

    goto :goto_d9

    .line 2340
    .restart local v0  # "task":Lcom/android/server/wm/Task;
    :cond_90
    const/4 v8, 0x0

    :try_start_91
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z

    move-result v3
    :try_end_99
    .catchall {:try_start_91 .. :try_end_99} :catchall_d5

    if-eqz v3, :cond_aa

    .line 2341
    :try_start_9b
    const-string v3, "ActivityTaskManager"

    const-string/jumbo v4, "moveTaskToFront: Attempt to violate Lock Task Mode"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 2342
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V
    :try_end_a6
    .catchall {:try_start_9b .. :try_end_a6} :catchall_8b

    .line 2359
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2343
    return-void

    .line 2345
    :cond_aa
    move-object/from16 v10, p5

    move v11, v15

    .end local v15  # "callingPid":I
    .local v11, "callingPid":I
    if-eqz v10, :cond_b9

    .line 2346
    :try_start_af
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v10, v3}, Lcom/android/server/wm/SafeActivityOptions;->getOptions(Lcom/android/server/wm/ActivityTaskSupervisor;)Landroid/app/ActivityOptions;

    move-result-object v3

    move-object v6, v3

    goto :goto_ba

    .line 2359
    .end local v0  # "task":Lcom/android/server/wm/Task;
    :catchall_b7
    move-exception v0

    goto :goto_d9

    .line 2347
    .restart local v0  # "task":Lcom/android/server/wm/Task;
    :cond_b9
    move-object v6, v8

    :goto_ba
    nop

    .line 2348
    .local v6, "realOptions":Landroid/app/ActivityOptions;
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string/jumbo v7, "moveTaskToFront"

    const/4 v8, 0x0

    move-object v4, v0

    move/from16 v5, p4

    invoke-virtual/range {v3 .. v8}, Lcom/android/server/wm/ActivityTaskSupervisor;->findTaskToMoveToFront(Lcom/android/server/wm/Task;ILandroid/app/ActivityOptions;Ljava/lang/String;Z)V

    .line 2351
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2352
    .local v3, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_d0

    .line 2356
    invoke-virtual {v3, v9}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V
    :try_end_d0
    .catchall {:try_start_af .. :try_end_d0} :catchall_b7

    .line 2359
    .end local v0  # "task":Lcom/android/server/wm/Task;
    .end local v3  # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v6  # "realOptions":Landroid/app/ActivityOptions;
    :cond_d0
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2360
    nop

    .line 2361
    return-void

    .line 2359
    .end local v11  # "callingPid":I
    .restart local v15  # "callingPid":I
    :catchall_d5
    move-exception v0

    move-object/from16 v10, p5

    move v11, v15

    .end local v15  # "callingPid":I
    .restart local v11  # "callingPid":I
    :goto_d9
    invoke-static/range {v16 .. v17}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2360
    throw v0
.end method

.method public moveTaskToRootTask(IIZ)V
    .registers 22
    .param p1, "taskId"  # I
    .param p2, "rootTaskId"  # I
    .param p3, "toTop"  # Z

    .line 2507
    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    const-string/jumbo v0, "moveTaskToRootTask()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2508
    iget-object v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2509
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v5
    :try_end_16
    .catchall {:try_start_f .. :try_end_16} :catchall_d8

    .line 2511
    .local v5, "ident":J
    :try_start_16
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(I)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2512
    .local v0, "task":Lcom/android/server/wm/Task;
    if-nez v0, :cond_3f

    .line 2513
    const-string v7, "ActivityTaskManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "moveTaskToRootTask: No task for id="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_37
    .catchall {:try_start_16 .. :try_end_37} :catchall_d2

    .line 2532
    :try_start_37
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v4
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_d8

    .line 2514
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2517
    :cond_3f
    :try_start_3f
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v7, :cond_6f

    int-to-long v7, v2

    .local v7, "protoLogParam0":J
    int-to-long v9, v3

    .local v9, "protoLogParam1":J
    move/from16 v11, p3

    .local v11, "protoLogParam2":Z
    sget-object v12, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const/16 v14, 0x35

    const/4 v15, 0x0

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    const/16 v16, 0x0

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v13, v16

    const/16 v16, 0x1

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v13, v16

    const/16 v16, 0x2

    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v17

    aput-object v17, v13, v16

    move-wide/from16 v16, v7

    const v7, -0x28610e9b

    .end local v7  # "protoLogParam0":J
    .local v16, "protoLogParam0":J
    invoke-static {v12, v7, v14, v15, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2520
    .end local v9  # "protoLogParam1":J
    .end local v11  # "protoLogParam2":Z
    .end local v16  # "protoLogParam0":J
    :cond_6f
    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v7, v3}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v7

    move-object v14, v7

    .line 2521
    .local v14, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v14, :cond_b8

    .line 2525
    invoke-virtual {v14}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v7

    if-eqz v7, :cond_94

    .line 2529
    const/4 v10, 0x1

    const/4 v11, 0x1

    const/4 v12, 0x0

    const-string/jumbo v13, "moveTaskToRootTask"

    move-object v7, v0

    move-object v8, v14

    move/from16 v9, p3

    invoke-virtual/range {v7 .. v13}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)Z
    :try_end_8b
    .catchall {:try_start_3f .. :try_end_8b} :catchall_d2

    .line 2532
    .end local v0  # "task":Lcom/android/server/wm/Task;
    .end local v14  # "rootTask":Lcom/android/server/wm/Task;
    :try_start_8b
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2533
    nop

    .line 2534
    .end local v5  # "ident":J
    monitor-exit v4
    :try_end_90
    .catchall {:try_start_8b .. :try_end_90} :catchall_d8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2535
    return-void

    .line 2526
    .restart local v0  # "task":Lcom/android/server/wm/Task;
    .restart local v5  # "ident":J
    .restart local v14  # "rootTask":Lcom/android/server/wm/Task;
    :cond_94
    :try_start_94
    new-instance v7, Ljava/lang/IllegalArgumentException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "moveTaskToRootTask: Attempt to move task "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " to rootTask "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v5  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    .end local p2  # "rootTaskId":I
    .end local p3  # "toTop":Z
    throw v7

    .line 2522
    .restart local v5  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    .restart local p2  # "rootTaskId":I
    .restart local p3  # "toTop":Z
    :cond_b8
    new-instance v7, Ljava/lang/IllegalStateException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "moveTaskToRootTask: No rootTask for rootTaskId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v5  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    .end local p2  # "rootTaskId":I
    .end local p3  # "toTop":Z
    throw v7
    :try_end_d2
    .catchall {:try_start_94 .. :try_end_d2} :catchall_d2

    .line 2532
    .end local v0  # "task":Lcom/android/server/wm/Task;
    .end local v14  # "rootTask":Lcom/android/server/wm/Task;
    .restart local v5  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    .restart local p2  # "rootTaskId":I
    .restart local p3  # "toTop":Z
    :catchall_d2
    move-exception v0

    :try_start_d3
    invoke-static {v5, v6}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2533
    nop

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    .end local p2  # "rootTaskId":I
    .end local p3  # "toTop":Z
    throw v0

    .line 2534
    .end local v5  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    .restart local p2  # "rootTaskId":I
    .restart local p3  # "toTop":Z
    :catchall_d8
    move-exception v0

    monitor-exit v4
    :try_end_da
    .catchall {:try_start_d3 .. :try_end_da} :catchall_d8

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0
.end method

.method public moveTopActivityToCastMode()V
    .registers 11

    .line 7120
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    const-wide/16 v2, 0x7d0

    add-long/2addr v0, v2

    .line 7121
    .local v0, "endTime":J
    const/4 v2, 0x0

    .line 7122
    .local v2, "topActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v3, 0x0

    .line 7123
    .local v3, "stack":Lcom/android/server/wm/Task;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v4

    .line 7124
    :goto_c
    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v3, :cond_5c

    if-eqz v2, :cond_5c

    :try_start_12
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v7

    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq v7, v8, :cond_1b

    goto :goto_5c

    .line 7137
    :cond_1b
    monitor-exit v4
    :try_end_1c
    .catchall {:try_start_12 .. :try_end_1c} :catchall_8a

    .line 7139
    iget-object v7, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v7

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 7140
    if-eqz v2, :cond_49

    .line 7141
    invoke-virtual {v2, v6}, Lcom/android/server/wm/ActivityRecord;->setCastMode(Z)V

    .line 7142
    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    .line 7143
    const-string/jumbo v4, "moveTopActivityToCastMode"

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v8

    invoke-virtual {v3, v4, v8}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 7145
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v5}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    .line 7147
    .local v4, "display":Lcom/android/server/wm/DisplayContent;
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const-string/jumbo v8, "moveTopActivityToCastMode"

    .line 7148
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v9

    .line 7147
    invoke-virtual {v5, v2, v8, v9}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    .line 7149
    invoke-virtual {p0, v2, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->setCurrentCastModeState(Lcom/android/server/wm/ActivityRecord;I)V

    .line 7150
    .end local v4  # "display":Lcom/android/server/wm/DisplayContent;
    goto :goto_51

    .line 7151
    :cond_49
    const-string v4, "ActivityTaskManager"

    const-string/jumbo v5, "moveTopActivityToCastMode top activity is null!"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7154
    :goto_51
    monitor-exit v7
    :try_end_52
    .catchall {:try_start_1f .. :try_end_52} :catchall_56

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 7155
    return-void

    .line 7154
    :catchall_56
    move-exception v4

    :try_start_57
    monitor-exit v7
    :try_end_58
    .catchall {:try_start_57 .. :try_end_58} :catchall_56

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 7125
    :cond_5c
    :goto_5c
    :try_start_5c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v7

    move-object v3, v7

    .line 7126
    invoke-virtual {v3, v5, v6}, Lcom/android/server/wm/Task;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    move-object v2, v5

    .line 7127
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    sub-long v5, v0, v5

    .line 7128
    .local v5, "delay":J
    const-wide/16 v7, 0x0

    cmp-long v7, v5, v7

    if-gtz v7, :cond_7c

    .line 7129
    const-string v7, "ActivityTaskManager"

    const-string/jumbo v8, "moveTopActivityToCastMode timeout!"

    invoke-static {v7, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 7130
    monitor-exit v4
    :try_end_7b
    .catchall {:try_start_5c .. :try_end_7b} :catchall_8a

    return-void

    .line 7133
    :cond_7c
    :try_start_7c
    iget-object v7, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActionDoneSync:Ljava/lang/Object;

    const-wide/16 v8, 0x64

    invoke-static {v5, v6, v8, v9}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/Object;->wait(J)V
    :try_end_87
    .catch Ljava/lang/InterruptedException; {:try_start_7c .. :try_end_87} :catch_88
    .catchall {:try_start_7c .. :try_end_87} :catchall_8a

    .line 7135
    goto :goto_89

    .line 7134
    :catch_88
    move-exception v7

    .line 7136
    .end local v5  # "delay":J
    :goto_89
    goto :goto_c

    .line 7137
    :catchall_8a
    move-exception v5

    :try_start_8b
    monitor-exit v4
    :try_end_8c
    .catchall {:try_start_8b .. :try_end_8c} :catchall_8a

    throw v5
.end method

.method notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V
    .registers 4
    .param p1, "task"  # Lcom/android/server/wm/Task;
    .param p2, "flush"  # Z

    .line 4115
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/RecentTasks;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 4116
    return-void
.end method

.method public onActivityManagerInternalAdded()V
    .registers 3

    .line 1041
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1042
    const-class v1, Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 1043
    const-class v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    invoke-static {v1}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/uri/UriGrantsManagerInternal;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUgmInternal:Lcom/android/server/uri/UriGrantsManagerInternal;

    .line 1044
    monitor-exit v0
    :try_end_1b
    .catchall {:try_start_3 .. :try_end_1b} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1045
    return-void

    .line 1044
    :catchall_1f
    move-exception v1

    :try_start_20
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_20 .. :try_end_21} :catchall_1f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method onImeWindowSetOnDisplayArea(ILcom/android/server/wm/DisplayArea;)V
    .registers 13
    .param p1, "pid"  # I
    .param p2, "imeContainer"  # Lcom/android/server/wm/DisplayArea;

    .line 5513
    sget v0, Lcom/android/server/am/ActivityManagerService;->MY_PID:I

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eq p1, v0, :cond_2c

    if-gez p1, :cond_9

    goto :goto_2c

    .line 5518
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    .line 5519
    .local v0, "process":Lcom/android/server/wm/WindowProcessController;
    if-nez v0, :cond_28

    .line 5520
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v3, :cond_27

    int-to-long v3, p1

    .local v3, "protoLogParam0":J
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x1ac5015f

    const/4 v7, 0x1

    new-array v8, v7, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v1

    invoke-static {v5, v6, v7, v2, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5522
    .end local v3  # "protoLogParam0":J
    :cond_27
    return-void

    .line 5524
    :cond_28
    invoke-virtual {v0, p2}, Lcom/android/server/wm/WindowProcessController;->registerDisplayAreaConfigurationListener(Lcom/android/server/wm/DisplayArea;)V

    .line 5525
    return-void

    .line 5514
    .end local v0  # "process":Lcom/android/server/wm/WindowProcessController;
    :cond_2c
    :goto_2c
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v0, :cond_3b

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x6be93a42

    move-object v4, v2

    check-cast v4, [Ljava/lang/Object;

    invoke-static {v0, v3, v1, v2, v2}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5516
    :cond_3b
    return-void
.end method

.method public onInitPowerManagement()V
    .registers 5

    .line 909
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 910
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->initPowerManagement()V

    .line 911
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 912
    .local v1, "pm":Landroid/os/PowerManager;
    const-class v2, Landroid/os/PowerManagerInternal;

    invoke-static {v2}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/PowerManagerInternal;

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    .line 913
    const/4 v2, 0x1

    const-string v3, "*voice*"

    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 914
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 915
    .end local v1  # "pm":Landroid/os/PowerManager;
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_3 .. :try_end_2e} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 916
    return-void

    .line 915
    :catchall_32
    move-exception v1

    :try_start_33
    monitor-exit v0
    :try_end_34
    .catchall {:try_start_33 .. :try_end_34} :catchall_32

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onPictureInPictureStateChanged(Landroid/app/PictureInPictureUiState;)V
    .registers 5
    .param p1, "pipState"  # Landroid/app/PictureInPictureUiState;

    .line 4139
    const-string/jumbo v0, "onPictureInPictureStateChanged"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 4140
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 4141
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 4142
    .local v0, "rootPinnedTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_25

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_25

    .line 4143
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    .line 4144
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 4143
    invoke-virtual {v1, v2, p1}, Lcom/android/server/wm/ActivityClientController;->onPictureInPictureStateChanged(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureUiState;)V

    .line 4146
    :cond_25
    return-void
.end method

.method public onScreenAwakeChanged(Z)V
    .registers 7
    .param p1, "isAwake"  # Z

    .line 3093
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda13;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 3099
    if-eqz p1, :cond_d

    .line 3100
    return-void

    .line 3105
    :cond_d
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLockWithoutBoost:Ljava/lang/Object;

    monitor-enter v0

    .line 3106
    :try_start_10
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3107
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayPolicy;->getNotificationShade()Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 3108
    .local v1, "notificationShade":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_2b

    .line 3109
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    iget-object v3, v1, Lcom/android/server/wm/WindowState;->mSession:Lcom/android/server/wm/Session;

    iget v3, v3, Lcom/android/server/wm/Session;->mPid:I

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    goto :goto_2c

    :cond_2b
    const/4 v2, 0x0

    :goto_2c
    move-object v1, v2

    .line 3110
    .local v1, "proc":Lcom/android/server/wm/WindowProcessController;
    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_10 .. :try_end_2e} :catchall_46

    .line 3111
    if-nez v1, :cond_31

    .line 3112
    return-void

    .line 3116
    :cond_31
    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->setRunningAnimationUnsafe()V

    .line 3117
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    const/4 v2, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeMessages(ILjava/lang/Object;)V

    .line 3118
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    const-wide/16 v3, 0x7d0

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3120
    return-void

    .line 3110
    .end local v1  # "proc":Lcom/android/server/wm/WindowProcessController;
    :catchall_46
    move-exception v1

    :try_start_47
    monitor-exit v0
    :try_end_48
    .catchall {:try_start_47 .. :try_end_48} :catchall_46

    throw v1
.end method

.method public onSplashScreenViewCopyFinished(ILandroid/window/SplashScreenView$SplashScreenViewParcelable;)V
    .registers 6
    .param p1, "taskId"  # I
    .param p2, "parcelable"  # Landroid/window/SplashScreenView$SplashScreenViewParcelable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3686
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_TASKS"

    const-string v2, "copySplashScreenViewFinish()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3688
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3689
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 3691
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_21

    .line 3692
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopWaitSplashScreenActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 3693
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_21

    .line 3694
    invoke-virtual {v2, p2}, Lcom/android/server/wm/ActivityRecord;->onCopySplashScreenFinish(Landroid/window/SplashScreenView$SplashScreenViewParcelable;)V

    .line 3697
    .end local v1  # "task":Lcom/android/server/wm/Task;
    .end local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_c .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3698
    return-void

    .line 3697
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onSystemReady()V
    .registers 5

    .line 885
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 886
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 887
    .local v1, "pm":Landroid/content/pm/PackageManager;
    const-string v2, "android.software.cant_save_state"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasHeavyWeightFeature:Z

    .line 888
    const-string v2, "android.software.leanback"

    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasLeanbackFeature:Z

    .line 889
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v2}, Lcom/android/server/wm/VrController;->onSystemReady()V

    .line 890
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v2}, Lcom/android/server/wm/RecentTasks;->onSystemReadyLocked()V

    .line 891
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->onSystemReady()V

    .line 892
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mActivityClientController:Lcom/android/server/wm/ActivityClientController;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityClientController;->onSystemReady()V

    .line 894
    invoke-static {}, Lcom/android/server/wm/MiuiScreenCompatStub;->get()Lcom/android/server/wm/MiuiScreenCompatStub;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-interface {v2, v3, p0}, Lcom/android/server/wm/MiuiScreenCompatStub;->initialize(Landroid/content/Context;Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 895
    .end local v1  # "pm":Landroid/content/pm/PackageManager;
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_3 .. :try_end_3a} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 897
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->onSystemReady()V

    .line 898
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformGestureControllerStub;->onATMSSystemReady()V

    .line 900
    return-void

    .line 895
    :catchall_4c
    move-exception v1

    :try_start_4d
    monitor-exit v0
    :try_end_4e
    .catchall {:try_start_4d .. :try_end_4e} :catchall_4c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 7
    .param p1, "code"  # I
    .param p2, "data"  # Landroid/os/Parcel;
    .param p3, "reply"  # Landroid/os/Parcel;
    .param p4, "flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 5487
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/app/IActivityTaskManager$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 5488
    :catch_5
    move-exception v0

    .line 5489
    .local v0, "e":Ljava/lang/RuntimeException;
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->logAndRethrowRuntimeExceptionOnTransact(Ljava/lang/String;Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method postFinishBooting(ZZ)V
    .registers 5
    .param p1, "finishBooting"  # Z
    .param p2, "enableScreen"  # Z

    .line 5047
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 5055
    return-void
.end method

.method public registerActivityObserver(Landroid/app/IMiuiActivityObserver;Landroid/content/Intent;)V
    .registers 6
    .param p1, "observer"  # Landroid/app/IMiuiActivityObserver;
    .param p2, "intent"  # Landroid/content/Intent;

    .line 3703
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "registerActivityObserver()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3706
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->getMiuiActivityController()Lcom/android/server/wm/MiuiActivityController;

    move-result-object v0

    .line 3707
    invoke-interface {v0, p1, p2}, Lcom/android/server/wm/MiuiActivityController;->registerActivityObserver(Landroid/app/IMiuiActivityObserver;Landroid/content/Intent;)V

    .line 3708
    return-void
.end method

.method public registerAnrController(Landroid/app/AnrController;)V
    .registers 4
    .param p1, "controller"  # Landroid/app/AnrController;

    .line 2397
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2398
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAnrController:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2399
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2400
    return-void

    .line 2399
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V
    .registers 8
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "adapter"  # Landroid/view/RemoteAnimationAdapter;
    .param p3, "launchCookie"  # Landroid/os/IBinder;

    .line 3933
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string/jumbo v2, "registerRemoteAnimationForNextActivityStart"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3935
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/RemoteAnimationAdapter;->setCallingPidUid(II)V

    .line 3936
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3937
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_1f
    .catchall {:try_start_18 .. :try_end_1f} :catchall_35

    .line 3939
    .local v1, "origId":J
    :try_start_1f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v3

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/wm/ActivityStartController;->registerRemoteAnimationForNextActivityStart(Ljava/lang/String;Landroid/view/RemoteAnimationAdapter;Landroid/os/IBinder;)V
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_2f

    .line 3942
    :try_start_26
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3943
    nop

    .line 3944
    .end local v1  # "origId":J
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_26 .. :try_end_2b} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3945
    return-void

    .line 3942
    .restart local v1  # "origId":J
    :catchall_2f
    move-exception v3

    :try_start_30
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3943
    nop

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "packageName":Ljava/lang/String;
    .end local p2  # "adapter":Landroid/view/RemoteAnimationAdapter;
    .end local p3  # "launchCookie":Landroid/os/IBinder;
    throw v3

    .line 3944
    .end local v1  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "packageName":Ljava/lang/String;
    .restart local p2  # "adapter":Landroid/view/RemoteAnimationAdapter;
    .restart local p3  # "launchCookie":Landroid/os/IBinder;
    :catchall_35
    move-exception v1

    monitor-exit v0
    :try_end_37
    .catchall {:try_start_30 .. :try_end_37} :catchall_35

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerRemoteAnimationsForDisplay(ILandroid/view/RemoteAnimationDefinition;)V
    .registers 8
    .param p1, "displayId"  # I
    .param p2, "definition"  # Landroid/view/RemoteAnimationDefinition;

    .line 3950
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string/jumbo v2, "registerRemoteAnimations"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3952
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {p2, v0, v1}, Landroid/view/RemoteAnimationDefinition;->setCallingPidUid(II)V

    .line 3953
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_18
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3954
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3955
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    if-nez v1, :cond_40

    .line 3956
    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t find display with id: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3957
    monitor-exit v0
    :try_end_3c
    .catchall {:try_start_18 .. :try_end_3c} :catchall_56

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 3959
    :cond_40
    :try_start_40
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2
    :try_end_44
    .catchall {:try_start_40 .. :try_end_44} :catchall_56

    .line 3961
    .local v2, "origId":J
    :try_start_44
    invoke-virtual {v1, p2}, Lcom/android/server/wm/DisplayContent;->registerRemoteAnimations(Landroid/view/RemoteAnimationDefinition;)V
    :try_end_47
    .catchall {:try_start_44 .. :try_end_47} :catchall_50

    .line 3963
    :try_start_47
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3964
    nop

    .line 3965
    .end local v1  # "display":Lcom/android/server/wm/DisplayContent;
    .end local v2  # "origId":J
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_56

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3966
    return-void

    .line 3963
    .restart local v1  # "display":Lcom/android/server/wm/DisplayContent;
    .restart local v2  # "origId":J
    :catchall_50
    move-exception v4

    :try_start_51
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3964
    nop

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "displayId":I
    .end local p2  # "definition":Landroid/view/RemoteAnimationDefinition;
    throw v4

    .line 3965
    .end local v1  # "display":Lcom/android/server/wm/DisplayContent;
    .end local v2  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "displayId":I
    .restart local p2  # "definition":Landroid/view/RemoteAnimationDefinition;
    :catchall_56
    move-exception v1

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_51 .. :try_end_58} :catchall_56

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public registerSecureChangedListener(Landroid/app/IWindowSecureChangeListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/app/IWindowSecureChangeListener;

    .line 3170
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wm/WindowManagerServiceStub;->addSecureChangedListener(Landroid/app/IWindowSecureChangeListener;)V

    .line 3171
    return-void
.end method

.method public registerTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/app/ITaskStackListener;

    .line 3157
    const-string/jumbo v0, "registerTaskStackListener()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 3158
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->registerTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 3159
    return-void
.end method

.method public releaseSomeActivities(Landroid/app/IApplicationThread;)V
    .registers 7
    .param p1, "appInt"  # Landroid/app/IApplicationThread;

    .line 3040
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3041
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_22

    .line 3043
    .local v1, "origId":J
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    .line 3044
    .local v3, "app":Lcom/android/server/wm/WindowProcessController;
    const-string v4, "low-mem"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowProcessController;->releaseSomeActivities(Ljava/lang/String;)V
    :try_end_13
    .catchall {:try_start_a .. :try_end_13} :catchall_1c

    .line 3046
    .end local v3  # "app":Lcom/android/server/wm/WindowProcessController;
    :try_start_13
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3047
    nop

    .line 3048
    .end local v1  # "origId":J
    monitor-exit v0
    :try_end_18
    .catchall {:try_start_13 .. :try_end_18} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3049
    return-void

    .line 3046
    .restart local v1  # "origId":J
    :catchall_1c
    move-exception v3

    :try_start_1d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3047
    nop

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "appInt":Landroid/app/IApplicationThread;
    throw v3

    .line 3048
    .end local v1  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "appInt":Landroid/app/IApplicationThread;
    :catchall_22
    move-exception v1

    monitor-exit v0
    :try_end_24
    .catchall {:try_start_1d .. :try_end_24} :catchall_22

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeAllVisibleRecentTasks()V
    .registers 6

    .line 2110
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.REMOVE_TASKS"

    const-string/jumbo v2, "removeAllVisibleRecentTasks()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2111
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2112
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_30

    .line 2114
    .local v1, "ident":J
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getRecentTasks()Lcom/android/server/wm/RecentTasks;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v4}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RecentTasks;->removeAllVisibleTasks(I)V
    :try_end_21
    .catchall {:try_start_14 .. :try_end_21} :catchall_2a

    .line 2116
    :try_start_21
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2117
    nop

    .line 2118
    .end local v1  # "ident":J
    monitor-exit v0
    :try_end_26
    .catchall {:try_start_21 .. :try_end_26} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2119
    return-void

    .line 2116
    .restart local v1  # "ident":J
    :catchall_2a
    move-exception v3

    :try_start_2b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2117
    nop

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    throw v3

    .line 2118
    .end local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    :catchall_30
    move-exception v1

    monitor-exit v0
    :try_end_32
    .catchall {:try_start_2b .. :try_end_32} :catchall_30

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeRootTasksInWindowingModes([I)V
    .registers 6
    .param p1, "windowingModes"  # [I

    .line 2543
    const-string/jumbo v0, "removeRootTasksInWindowingModes()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2545
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2546
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_24

    .line 2548
    .local v1, "ident":J
    :try_start_10
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksInWindowingModes([I)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1e

    .line 2550
    :try_start_15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2551
    nop

    .line 2552
    .end local v1  # "ident":J
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2553
    return-void

    .line 2550
    .restart local v1  # "ident":J
    :catchall_1e
    move-exception v3

    :try_start_1f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2551
    nop

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "windowingModes":[I
    throw v3

    .line 2552
    .end local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "windowingModes":[I
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeRootTasksWithActivityTypes([I)V
    .registers 6
    .param p1, "activityTypes"  # [I

    .line 2557
    const-string/jumbo v0, "removeRootTasksWithActivityTypes()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2559
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2560
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_10
    .catchall {:try_start_9 .. :try_end_10} :catchall_24

    .line 2562
    .local v1, "ident":J
    :try_start_10
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksWithActivityTypes([I)V
    :try_end_15
    .catchall {:try_start_10 .. :try_end_15} :catchall_1e

    .line 2564
    :try_start_15
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2565
    nop

    .line 2566
    .end local v1  # "ident":J
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_15 .. :try_end_1a} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2567
    return-void

    .line 2564
    .restart local v1  # "ident":J
    :catchall_1e
    move-exception v3

    :try_start_1f
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2565
    nop

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "activityTypes":[I
    throw v3

    .line 2566
    .end local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "activityTypes":[I
    :catchall_24
    move-exception v1

    monitor-exit v0
    :try_end_26
    .catchall {:try_start_1f .. :try_end_26} :catchall_24

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public removeTask(I)Z
    .registers 9
    .param p1, "taskId"  # I

    .line 2085
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.REMOVE_TASKS"

    const-string/jumbo v2, "removeTask()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2086
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2087
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_62

    .line 2089
    .local v1, "ident":J
    :try_start_14
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2091
    .local v3, "task":Lcom/android/server/wm/Task;
    if-nez v3, :cond_3f

    .line 2092
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "removeTask: No task remove with id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_36
    .catchall {:try_start_14 .. :try_end_36} :catchall_5c

    .line 2093
    const/4 v4, 0x0

    .line 2103
    :try_start_37
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_37 .. :try_end_3b} :catchall_62

    .line 2093
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 2096
    :cond_3f
    :try_start_3f
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v5

    if-eqz v5, :cond_4e

    .line 2097
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const-string/jumbo v6, "remove-task"

    invoke-virtual {v5, v3, v4, v4, v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    goto :goto_53

    .line 2099
    :cond_4e
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V
    :try_end_53
    .catchall {:try_start_3f .. :try_end_53} :catchall_5c

    .line 2101
    :goto_53
    nop

    .line 2103
    :try_start_54
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_58
    .catchall {:try_start_54 .. :try_end_58} :catchall_62

    .line 2101
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 2103
    .end local v3  # "task":Lcom/android/server/wm/Task;
    :catchall_5c
    move-exception v3

    :try_start_5d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2104
    nop

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    throw v3

    .line 2105
    .end local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    :catchall_62
    move-exception v1

    monitor-exit v0
    :try_end_64
    .catchall {:try_start_5d .. :try_end_64} :catchall_62

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistContent;Landroid/net/Uri;)V
    .registers 15
    .param p1, "assistToken"  # Landroid/os/IBinder;
    .param p2, "extras"  # Landroid/os/Bundle;
    .param p3, "structure"  # Landroid/app/assist/AssistStructure;
    .param p4, "content"  # Landroid/app/assist/AssistContent;
    .param p5, "referrer"  # Landroid/net/Uri;

    .line 2796
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    .line 2797
    .local v0, "pae":Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;
    monitor-enter v0

    .line 2798
    :try_start_4
    iput-object p2, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->result:Landroid/os/Bundle;

    .line 2799
    iput-object p3, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->structure:Landroid/app/assist/AssistStructure;

    .line 2800
    iput-object p4, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->content:Landroid/app/assist/AssistContent;

    .line 2801
    if-eqz p5, :cond_13

    .line 2802
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    const-string v2, "android.intent.extra.REFERRER"

    invoke-virtual {v1, v2, p5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2804
    :cond_13
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->isAttached()Z

    move-result v1

    if-nez v1, :cond_1d

    .line 2809
    monitor-exit v0

    return-void

    .line 2811
    :cond_1d
    if-eqz p3, :cond_36

    .line 2813
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p3, v1}, Landroid/app/assist/AssistStructure;->setTaskId(I)V

    .line 2814
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p3, v1}, Landroid/app/assist/AssistStructure;->setActivityComponent(Landroid/content/ComponentName;)V

    .line 2815
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->isHome:Z

    invoke-virtual {p3, v1}, Landroid/app/assist/AssistStructure;->setHomeActivity(Z)V

    .line 2817
    :cond_36
    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->haveResult:Z

    .line 2818
    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 2819
    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    if-nez v1, :cond_46

    iget-object v1, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    if-nez v1, :cond_46

    .line 2821
    monitor-exit v0

    return-void

    .line 2823
    :cond_46
    monitor-exit v0
    :try_end_47
    .catchall {:try_start_4 .. :try_end_47} :catchall_f0

    .line 2825
    const/4 v1, 0x0

    .line 2826
    .local v1, "sendReceiver":Landroid/app/IAssistDataReceiver;
    const/4 v2, 0x0

    .line 2827
    .local v2, "sendBundle":Landroid/os/Bundle;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_4c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2828
    invoke-direct {p0, v0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->buildAssistBundleLocked(Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;Landroid/os/Bundle;)V

    .line 2829
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPendingAssistExtras:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v4

    .line 2830
    .local v4, "exists":Z
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUiHandler:Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/ActivityTaskManagerService$UiHandler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2831
    if-nez v4, :cond_64

    .line 2833
    monitor-exit v3
    :try_end_60
    .catchall {:try_start_4c .. :try_end_60} :catchall_ea

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2836
    :cond_64
    :try_start_64
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiver:Landroid/app/IAssistDataReceiver;

    move-object v1, v5

    if-eqz v5, :cond_a4

    .line 2838
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    move-object v2, v5

    .line 2839
    const-string/jumbo v5, "taskId"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    .line 2840
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    iget v6, v6, Lcom/android/server/wm/Task;->mTaskId:I

    .line 2839
    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 2841
    const-string v5, "activityId"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->activity:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->assistToken:Landroid/os/Binder;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBinder(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 2843
    const-string v5, "data"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2844
    const-string/jumbo v5, "structure"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->structure:Landroid/app/assist/AssistStructure;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2845
    const-string v5, "content"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->content:Landroid/app/assist/AssistContent;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2846
    const-string/jumbo v5, "receiverExtras"

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->receiverExtras:Landroid/os/Bundle;

    invoke-virtual {v2, v5, v6}, Landroid/os/Bundle;->putBundle(Ljava/lang/String;Landroid/os/Bundle;)V

    .line 2848
    .end local v4  # "exists":Z
    :cond_a4
    monitor-exit v3
    :try_end_a5
    .catchall {:try_start_64 .. :try_end_a5} :catchall_ea

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2849
    if-eqz v1, :cond_b0

    .line 2851
    :try_start_aa
    invoke-interface {v1, v2}, Landroid/app/IAssistDataReceiver;->onHandleAssistData(Landroid/os/Bundle;)V
    :try_end_ad
    .catch Landroid/os/RemoteException; {:try_start_aa .. :try_end_ad} :catch_ae

    .line 2853
    goto :goto_af

    .line 2852
    :catch_ae
    move-exception v3

    .line 2854
    :goto_af
    return-void

    .line 2857
    :cond_b0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 2859
    .local v3, "ident":J
    :try_start_b4
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->extras:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Landroid/content/Intent;->replaceExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 2860
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    const/high16 v6, 0x34000000

    invoke-virtual {v5, v6}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 2863
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const-string v6, "assist"

    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->closeSystemDialogs(Ljava/lang/String;)V
    :try_end_c9
    .catchall {:try_start_b4 .. :try_end_c9} :catchall_e5

    .line 2866
    :try_start_c9
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->intent:Landroid/content/Intent;

    new-instance v7, Landroid/os/UserHandle;

    iget v8, v0, Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;->userHandle:I

    invoke-direct {v7, v8}, Landroid/os/UserHandle;-><init>(I)V

    invoke-virtual {v5, v6, v7}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V
    :try_end_d7
    .catch Landroid/content/ActivityNotFoundException; {:try_start_c9 .. :try_end_d7} :catch_d8
    .catchall {:try_start_c9 .. :try_end_d7} :catchall_e5

    .line 2869
    goto :goto_e0

    .line 2867
    :catch_d8
    move-exception v5

    .line 2868
    .local v5, "e":Landroid/content/ActivityNotFoundException;
    :try_start_d9
    const-string v6, "ActivityTaskManager"

    const-string v7, "No activity to handle assist action."

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_e0
    .catchall {:try_start_d9 .. :try_end_e0} :catchall_e5

    .line 2871
    .end local v5  # "e":Landroid/content/ActivityNotFoundException;
    :goto_e0
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2872
    nop

    .line 2873
    return-void

    .line 2871
    :catchall_e5
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2872
    throw v5

    .line 2848
    .end local v3  # "ident":J
    :catchall_ea
    move-exception v4

    :try_start_eb
    monitor-exit v3
    :try_end_ec
    .catchall {:try_start_eb .. :try_end_ec} :catchall_ea

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v4

    .line 2823
    .end local v1  # "sendReceiver":Landroid/app/IAssistDataReceiver;
    .end local v2  # "sendBundle":Landroid/os/Bundle;
    :catchall_f0
    move-exception v1

    :try_start_f1
    monitor-exit v0
    :try_end_f2
    .catchall {:try_start_f1 .. :try_end_f2} :catchall_f0

    throw v1
.end method

.method public requestAssistContextExtras(ILandroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZ)Z
    .registers 21
    .param p1, "requestType"  # I
    .param p2, "receiver"  # Landroid/app/IAssistDataReceiver;
    .param p3, "receiverExtras"  # Landroid/os/Bundle;
    .param p4, "activityToken"  # Landroid/os/IBinder;
    .param p5, "checkActivityIsTop"  # Z
    .param p6, "newSessionId"  # Z

    .line 3182
    nop

    .line 3183
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 3182
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const-wide/16 v11, 0x7d0

    const/4 v13, 0x0

    move-object v0, p0

    move v1, p1

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    invoke-direct/range {v0 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->enqueueAssistContext(ILandroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZILandroid/os/Bundle;JI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    move-result-object v0

    if-eqz v0, :cond_1f

    const/4 v0, 0x1

    goto :goto_20

    :cond_1f
    const/4 v0, 0x0

    :goto_20
    return v0
.end method

.method public requestAssistDataForTask(Landroid/app/IAssistDataReceiver;ILjava/lang/String;)Z
    .registers 29
    .param p1, "receiver"  # Landroid/app/IAssistDataReceiver;
    .param p2, "taskId"  # I
    .param p3, "callingPackageName"  # Ljava/lang/String;

    .line 3190
    move-object/from16 v1, p0

    move/from16 v2, p2

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v3, "android.permission.GET_TOP_ACTIVITY_INFO"

    const-string/jumbo v4, "requestAssistDataForTask()"

    invoke-virtual {v0, v3, v4}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3192
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 3193
    .local v3, "callingId":J
    const/4 v5, 0x0

    .line 3195
    .local v5, "tokens":Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;
    :try_start_13
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mInternal:Lcom/android/server/wm/ActivityTaskManagerInternal;

    const/4 v6, 0x0

    invoke-virtual {v0, v2, v6}, Lcom/android/server/wm/ActivityTaskManagerInternal;->getAttachedNonFinishingActivityForTask(ILandroid/os/IBinder;)Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;

    move-result-object v0
    :try_end_1a
    .catchall {:try_start_13 .. :try_end_1a} :catchall_7e

    .line 3197
    .end local v5  # "tokens":Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;
    .local v0, "tokens":Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3198
    nop

    .line 3199
    if-nez v0, :cond_3a

    .line 3200
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Could not find activity for task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "ActivityTaskManager"

    invoke-static {v6, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3201
    const/4 v5, 0x0

    return v5

    .line 3204
    :cond_3a
    new-instance v10, Lcom/android/server/wm/AssistDataReceiverProxy;

    move-object/from16 v14, p1

    move-object/from16 v5, p3

    invoke-direct {v10, v14, v5}, Lcom/android/server/wm/AssistDataReceiverProxy;-><init>(Landroid/app/IAssistDataReceiver;Ljava/lang/String;)V

    .line 3206
    .local v10, "proxy":Lcom/android/server/wm/AssistDataReceiverProxy;
    new-instance v11, Ljava/lang/Object;

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 3207
    .local v11, "lock":Ljava/lang/Object;
    new-instance v15, Lcom/android/server/am/AssistDataRequester;

    iget-object v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    iget-object v8, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 3208
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppOpsManager()Landroid/app/AppOpsManager;

    move-result-object v9

    const/16 v12, 0x31

    const/4 v13, -0x1

    move-object v6, v15

    invoke-direct/range {v6 .. v13}, Lcom/android/server/am/AssistDataRequester;-><init>(Landroid/content/Context;Landroid/view/IWindowManager;Landroid/app/AppOpsManager;Lcom/android/server/am/AssistDataRequester$AssistDataRequesterCallbacks;Ljava/lang/Object;II)V

    .line 3211
    .local v15, "requester":Lcom/android/server/am/AssistDataRequester;
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 3212
    .local v6, "topActivityToken":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;->getActivityToken()Landroid/os/IBinder;

    move-result-object v7

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3213
    const/16 v17, 0x1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x1

    const/16 v21, 0x0

    const/16 v22, 0x1

    .line 3216
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v23

    .line 3213
    move-object/from16 v16, v6

    move-object/from16 v24, p3

    invoke-virtual/range {v15 .. v24}, Lcom/android/server/am/AssistDataRequester;->requestAssistData(Ljava/util/List;ZZZZZZILjava/lang/String;)V

    .line 3218
    const/4 v7, 0x1

    return v7

    .line 3197
    .end local v0  # "tokens":Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;
    .end local v6  # "topActivityToken":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    .end local v10  # "proxy":Lcom/android/server/wm/AssistDataReceiverProxy;
    .end local v11  # "lock":Ljava/lang/Object;
    .end local v15  # "requester":Lcom/android/server/am/AssistDataRequester;
    .restart local v5  # "tokens":Lcom/android/server/wm/ActivityTaskManagerInternal$ActivityTokens;
    :catchall_7e
    move-exception v0

    move-object/from16 v14, p1

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3198
    throw v0
.end method

.method public requestAutofillData(Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;I)Z
    .registers 19
    .param p1, "receiver"  # Landroid/app/IAssistDataReceiver;
    .param p2, "receiverExtras"  # Landroid/os/Bundle;
    .param p3, "activityToken"  # Landroid/os/IBinder;
    .param p4, "flags"  # I

    .line 3224
    nop

    .line 3225
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v9

    .line 3224
    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x1

    const/4 v10, 0x0

    const-wide/16 v11, 0x7d0

    move-object v0, p0

    move-object v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v13, p4

    invoke-direct/range {v0 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->enqueueAssistContext(ILandroid/content/Intent;Ljava/lang/String;Landroid/app/IAssistDataReceiver;Landroid/os/Bundle;Landroid/os/IBinder;ZZILandroid/os/Bundle;JI)Lcom/android/server/wm/ActivityTaskManagerService$PendingAssistExtras;

    move-result-object v0

    if-eqz v0, :cond_1d

    const/4 v0, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v0, 0x0

    :goto_1e
    return v0
.end method

.method public resizeTask(ILandroid/graphics/Rect;I)Z
    .registers 12
    .param p1, "taskId"  # I
    .param p2, "bounds"  # Landroid/graphics/Rect;
    .param p3, "resizeMode"  # I

    .line 3011
    const-string/jumbo v0, "resizeTask()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 3012
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3014
    .local v0, "ident":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_82

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3015
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3017
    .local v3, "task":Lcom/android/server/wm/Task;
    if-nez v3, :cond_40

    .line 3018
    const-string v5, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resizeTask: taskId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " not found"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3019
    monitor-exit v2
    :try_end_39
    .catchall {:try_start_d .. :try_end_39} :catchall_7c

    .line 3034
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3019
    return v4

    .line 3021
    :cond_40
    :try_start_40
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v5

    if-nez v5, :cond_6b

    .line 3022
    const-string v5, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "resizeTask not allowed on task="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3023
    monitor-exit v2
    :try_end_64
    .catchall {:try_start_40 .. :try_end_64} :catchall_7c

    .line 3034
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3023
    return v4

    .line 3027
    :cond_6b
    and-int/lit8 v5, p3, 0x1

    if-eqz v5, :cond_70

    const/4 v4, 0x1

    .line 3031
    .local v4, "preserveWindow":Z
    :cond_70
    :try_start_70
    invoke-virtual {v3, p2, p3, v4}, Lcom/android/server/wm/Task;->resize(Landroid/graphics/Rect;IZ)Z

    move-result v5

    monitor-exit v2
    :try_end_75
    .catchall {:try_start_70 .. :try_end_75} :catchall_7c

    .line 3034
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3031
    return v5

    .line 3032
    .end local v3  # "task":Lcom/android/server/wm/Task;
    .end local v4  # "preserveWindow":Z
    :catchall_7c
    move-exception v3

    :try_start_7d
    monitor-exit v2
    :try_end_7e
    .catchall {:try_start_7d .. :try_end_7e} :catchall_7c

    :try_start_7e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    .end local p2  # "bounds":Landroid/graphics/Rect;
    .end local p3  # "resizeMode":I
    throw v3
    :try_end_82
    .catchall {:try_start_7e .. :try_end_82} :catchall_82

    .line 3034
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    .restart local p2  # "bounds":Landroid/graphics/Rect;
    .restart local p3  # "resizeMode":I
    :catchall_82
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3035
    throw v2
.end method

.method resolveActivityInfoForIntent(Landroid/content/Intent;Ljava/lang/String;II)Landroid/content/pm/ActivityInfo;
    .registers 12
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "resolvedType"  # Ljava/lang/String;
    .param p3, "userId"  # I
    .param p4, "callingUid"  # I

    .line 1929
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1931
    const/16 v1, -0x2710

    invoke-static {p4, p4, v1}, Lcom/android/server/wm/ActivityStarter;->computeResolveFilterUid(III)I

    move-result v6

    .line 1929
    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->resolveActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/app/ProfilerInfo;II)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 1933
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v1, v0, p3}, Landroid/app/ActivityManagerInternal;->getActivityInfoForUser(Landroid/content/pm/ActivityInfo;I)Landroid/content/pm/ActivityInfo;

    move-result-object v1

    return-object v1
.end method

.method public resumeAppSwitches()V
    .registers 4

    .line 4023
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.STOP_APP_SWITCHES"

    const-string/jumbo v2, "resumeAppSwitches"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4024
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4025
    const/4 v1, 0x2

    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    .line 4026
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeMessages(I)V

    .line 4027
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4028
    return-void

    .line 4027
    :catchall_1e
    move-exception v1

    :try_start_1f
    monitor-exit v0
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public resumeCastActivity()V
    .registers 7

    .line 7201
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_5

    return-void

    .line 7205
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 7206
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 7207
    .local v2, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v2, :cond_17

    .line 7208
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->pauseBackTasks(Lcom/android/server/wm/ActivityRecord;)Z

    .line 7211
    :cond_17
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mResumeCastActivity:Z

    .line 7212
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v5, v1, v3, v1}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 7214
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityRecord;->setCastMode(Z)V

    .line 7215
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->setCurrentCastModeState(Lcom/android/server/wm/ActivityRecord;I)V

    .line 7216
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v3}, Lcom/android/server/wm/MiuiScreenProjectionServicesUtils;->onCastActivityResumed(Lcom/android/server/wm/ActivityRecord;)V

    .line 7217
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mResumeCastActivity:Z

    .line 7218
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    .line 7219
    return-void
.end method

.method public retrieveSettings(Landroid/content/ContentResolver;)V
    .registers 27
    .param p1, "resolver"  # Landroid/content/ContentResolver;

    .line 923
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 924
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v3, "android.software.freeform_window_management"

    invoke-virtual {v0, v3}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    const/4 v4, 0x0

    if-nez v0, :cond_1e

    const-string v0, "enable_freeform_support"

    .line 925
    invoke-static {v2, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_1c

    goto :goto_1e

    :cond_1c
    move v0, v4

    goto :goto_1f

    :cond_1e
    :goto_1e
    const/4 v0, 0x1

    :goto_1f
    move v5, v0

    .line 928
    .local v5, "freeformWindowManagement":Z
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-static {v0}, Landroid/app/ActivityTaskManager;->supportsMultiWindow(Landroid/content/Context;)Z

    move-result v6

    .line 929
    .local v6, "supportsMultiWindow":Z
    if-eqz v6, :cond_38

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 930
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v7, "android.software.picture_in_picture"

    invoke-virtual {v0, v7}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_38

    const/4 v0, 0x1

    goto :goto_39

    :cond_38
    move v0, v4

    :goto_39
    move v7, v0

    .line 931
    .local v7, "supportsPictureInPicture":Z
    if-eqz v7, :cond_4c

    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 932
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v8, "android.software.expanded_picture_in_picture"

    invoke-virtual {v0, v8}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4c

    const/4 v0, 0x1

    goto :goto_4d

    :cond_4c
    move v0, v4

    :goto_4d
    move v8, v0

    .line 934
    .local v8, "supportsExpandedPictureInPicture":Z
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 935
    invoke-static {v0}, Landroid/app/ActivityTaskManager;->supportsSplitScreenMultiWindow(Landroid/content/Context;)Z

    move-result v9

    .line 936
    .local v9, "supportsSplitScreenMultiWindow":Z
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v10, "android.software.activities_on_secondary_displays"

    .line 937
    invoke-virtual {v0, v10}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v10

    .line 938
    .local v10, "supportsMultiDisplay":Z
    const-string v0, "debug.force_rtl"

    invoke-static {v2, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_6a

    const/4 v0, 0x1

    goto :goto_6b

    :cond_6a
    move v0, v4

    :goto_6b
    move v11, v0

    .line 939
    .local v11, "forceRtl":Z
    const-string v0, "force_resizable_activities"

    invoke-static {v2, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_76

    const/4 v0, 0x1

    goto :goto_77

    :cond_76
    move v0, v4

    :goto_77
    move v12, v0

    .line 941
    .local v12, "forceResizable":Z
    const-string v0, "enable_non_resizable_multi_window"

    invoke-static {v2, v0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_82

    const/4 v0, 0x1

    goto :goto_83

    :cond_82
    move v0, v4

    :goto_83
    move v13, v0

    .line 943
    .local v13, "devEnableNonResizableMultiWindow":Z
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v14, 0x10e00f2

    invoke-virtual {v0, v14}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v14

    .line 945
    .local v14, "supportsNonResizableMultiWindow":I
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v15, 0x10e00d3

    invoke-virtual {v0, v15}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v15

    .line 947
    .local v15, "respectsActivityMinWidthHeightMultiWindow":I
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x10500c5

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v4

    .line 949
    .local v4, "minPercentageMultiWindowSupportHeight":F
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x10500c6

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getFloat(I)F

    move-result v3

    .line 951
    .local v3, "minPercentageMultiWindowSupportWidth":F
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    move/from16 v18, v8

    .end local v8  # "supportsExpandedPictureInPicture":Z
    .local v18, "supportsExpandedPictureInPicture":Z
    const v8, 0x10e0084

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v8

    .line 955
    .local v8, "largeScreenSmallestScreenWidthDp":I
    invoke-static {v11}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v0}, Landroid/sysprop/DisplayProperties;->debug_force_rtl(Ljava/lang/Boolean;)V

    .line 957
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0}, Landroid/content/res/Configuration;-><init>()V

    move-object/from16 v19, v0

    .line 958
    .local v19, "configuration":Landroid/content/res/Configuration;
    move/from16 v20, v6

    move-object/from16 v6, v19

    .end local v19  # "configuration":Landroid/content/res/Configuration;
    .local v6, "configuration":Landroid/content/res/Configuration;
    .local v20, "supportsMultiWindow":Z
    invoke-static {v2, v6}, Landroid/provider/Settings$System;->getConfiguration(Landroid/content/ContentResolver;Landroid/content/res/Configuration;)V

    .line 959
    if-eqz v11, :cond_e3

    .line 961
    iget-object v0, v6, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-virtual {v6, v0}, Landroid/content/res/Configuration;->setLayoutDirection(Ljava/util/Locale;)V

    .line 964
    :cond_e3
    iget-object v2, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_e6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 965
    iput-boolean v12, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    .line 966
    iput-boolean v13, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mDevEnableNonResizableMultiWindow:Z

    .line 967
    iput v14, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsNonResizableMultiWindow:I

    .line 968
    iput v15, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mRespectsActivityMinWidthHeightMultiWindow:I

    .line 969
    iput v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMinPercentageMultiWindowSupportHeight:F

    .line 970
    iput v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mMinPercentageMultiWindowSupportWidth:F

    .line 971
    iput v8, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mLargeScreenSmallestScreenWidthDp:I
    :try_end_f7
    .catchall {:try_start_e6 .. :try_end_f7} :catchall_1bd

    .line 972
    if-nez v5, :cond_102

    if-nez v9, :cond_102

    if-nez v7, :cond_102

    if-eqz v10, :cond_100

    goto :goto_102

    :cond_100
    const/4 v0, 0x0

    goto :goto_103

    :cond_102
    :goto_102
    const/4 v0, 0x1

    .line 976
    .local v0, "multiWindowFormEnabled":Z
    :goto_103
    if-nez v20, :cond_10f

    if-eqz v12, :cond_108

    goto :goto_10f

    :cond_108
    move/from16 v19, v0

    move/from16 v21, v3

    move/from16 v3, v18

    goto :goto_141

    :cond_10f
    :goto_10f
    if-eqz v0, :cond_13b

    .line 977
    move/from16 v19, v0

    const/4 v0, 0x1

    .end local v0  # "multiWindowFormEnabled":Z
    .local v19, "multiWindowFormEnabled":Z
    :try_start_114
    iput-boolean v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 978
    iput-boolean v5, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 979
    iput-boolean v9, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    .line 980
    iput-boolean v7, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z
    :try_end_11c
    .catchall {:try_start_114 .. :try_end_11c} :catchall_130

    .line 981
    move/from16 v21, v3

    move/from16 v3, v18

    .end local v18  # "supportsExpandedPictureInPicture":Z
    .local v3, "supportsExpandedPictureInPicture":Z
    .local v21, "minPercentageMultiWindowSupportWidth":F
    :try_start_120
    iput-boolean v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsExpandedPictureInPicture:Z

    .line 982
    iput-boolean v10, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z
    :try_end_124
    .catchall {:try_start_120 .. :try_end_124} :catchall_125

    goto :goto_14e

    .line 1004
    .end local v19  # "multiWindowFormEnabled":Z
    :catchall_125
    move-exception v0

    move/from16 v18, v3

    move/from16 v17, v4

    move/from16 v16, v5

    move-object/from16 v23, v6

    goto/16 :goto_1c6

    .end local v21  # "minPercentageMultiWindowSupportWidth":F
    .local v3, "minPercentageMultiWindowSupportWidth":F
    .restart local v18  # "supportsExpandedPictureInPicture":Z
    :catchall_130
    move-exception v0

    move/from16 v21, v3

    move/from16 v17, v4

    move/from16 v16, v5

    move-object/from16 v23, v6

    .end local v18  # "supportsExpandedPictureInPicture":Z
    .local v3, "supportsExpandedPictureInPicture":Z
    .restart local v21  # "minPercentageMultiWindowSupportWidth":F
    goto/16 :goto_1c6

    .line 976
    .end local v21  # "minPercentageMultiWindowSupportWidth":F
    .restart local v0  # "multiWindowFormEnabled":Z
    .local v3, "minPercentageMultiWindowSupportWidth":F
    .restart local v18  # "supportsExpandedPictureInPicture":Z
    :cond_13b
    move/from16 v19, v0

    move/from16 v21, v3

    move/from16 v3, v18

    .line 984
    .end local v0  # "multiWindowFormEnabled":Z
    .end local v18  # "supportsExpandedPictureInPicture":Z
    .local v3, "supportsExpandedPictureInPicture":Z
    .restart local v19  # "multiWindowFormEnabled":Z
    .restart local v21  # "minPercentageMultiWindowSupportWidth":F
    :goto_141
    const/4 v0, 0x0

    :try_start_142
    iput-boolean v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    .line 985
    iput-boolean v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    .line 986
    iput-boolean v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    .line 987
    iput-boolean v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsPictureInPicture:Z

    .line 988
    iput-boolean v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsExpandedPictureInPicture:Z

    .line 989
    iput-boolean v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiDisplay:Z

    .line 991
    :goto_14e
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->onSettingsRetrieved()V
    :try_end_155
    .catchall {:try_start_142 .. :try_end_155} :catchall_1b3

    .line 994
    const/4 v0, 0x0

    move/from16 v18, v3

    const/4 v3, 0x1

    .end local v3  # "supportsExpandedPictureInPicture":Z
    .restart local v18  # "supportsExpandedPictureInPicture":Z
    :try_start_159
    invoke-virtual {v1, v6, v0, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z

    .line 995
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    .line 996
    .local v3, "globalConfig":Landroid/content/res/Configuration;
    sget-boolean v22, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v22, :cond_186

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v22

    .local v22, "protoLogParam0":Ljava/lang/String;
    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    move-object/from16 v24, v3

    .end local v3  # "globalConfig":Landroid/content/res/Configuration;
    .local v24, "globalConfig":Landroid/content/res/Configuration;
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;
    :try_end_16f
    .catchall {:try_start_159 .. :try_end_16f} :catchall_1ab

    move/from16 v17, v4

    const/4 v4, 0x0

    .end local v4  # "minPercentageMultiWindowSupportHeight":F
    .local v17, "minPercentageMultiWindowSupportHeight":F
    :try_start_172
    aput-object v22, v3, v4
    :try_end_174
    .catchall {:try_start_172 .. :try_end_174} :catchall_180

    move/from16 v16, v5

    move-object/from16 v23, v6

    const v5, -0x4dd440e8

    const/4 v6, 0x0

    .end local v5  # "freeformWindowManagement":Z
    .end local v6  # "configuration":Landroid/content/res/Configuration;
    .local v16, "freeformWindowManagement":Z
    .local v23, "configuration":Landroid/content/res/Configuration;
    :try_start_17c
    invoke-static {v0, v5, v4, v6, v3}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_18e

    .line 1004
    .end local v16  # "freeformWindowManagement":Z
    .end local v19  # "multiWindowFormEnabled":Z
    .end local v22  # "protoLogParam0":Ljava/lang/String;
    .end local v23  # "configuration":Landroid/content/res/Configuration;
    .end local v24  # "globalConfig":Landroid/content/res/Configuration;
    .restart local v5  # "freeformWindowManagement":Z
    .restart local v6  # "configuration":Landroid/content/res/Configuration;
    :catchall_180
    move-exception v0

    move/from16 v16, v5

    move-object/from16 v23, v6

    .end local v5  # "freeformWindowManagement":Z
    .end local v6  # "configuration":Landroid/content/res/Configuration;
    .restart local v16  # "freeformWindowManagement":Z
    .restart local v23  # "configuration":Landroid/content/res/Configuration;
    goto :goto_1c6

    .line 996
    .end local v16  # "freeformWindowManagement":Z
    .end local v17  # "minPercentageMultiWindowSupportHeight":F
    .end local v23  # "configuration":Landroid/content/res/Configuration;
    .restart local v3  # "globalConfig":Landroid/content/res/Configuration;
    .restart local v4  # "minPercentageMultiWindowSupportHeight":F
    .restart local v5  # "freeformWindowManagement":Z
    .restart local v6  # "configuration":Landroid/content/res/Configuration;
    .restart local v19  # "multiWindowFormEnabled":Z
    :cond_186
    move-object/from16 v24, v3

    move/from16 v17, v4

    move/from16 v16, v5

    move-object/from16 v23, v6

    .line 999
    .end local v3  # "globalConfig":Landroid/content/res/Configuration;
    .end local v4  # "minPercentageMultiWindowSupportHeight":F
    .end local v5  # "freeformWindowManagement":Z
    .end local v6  # "configuration":Landroid/content/res/Configuration;
    .restart local v16  # "freeformWindowManagement":Z
    .restart local v17  # "minPercentageMultiWindowSupportHeight":F
    .restart local v23  # "configuration":Landroid/content/res/Configuration;
    .restart local v24  # "globalConfig":Landroid/content/res/Configuration;
    :goto_18e
    iget-object v0, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 1000
    .local v0, "res":Landroid/content/res/Resources;
    const v3, 0x1050002

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailWidth:I

    .line 1002
    const v3, 0x1050001

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    iput v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mThumbnailHeight:I

    .line 1004
    .end local v0  # "res":Landroid/content/res/Resources;
    .end local v19  # "multiWindowFormEnabled":Z
    .end local v24  # "globalConfig":Landroid/content/res/Configuration;
    monitor-exit v2
    :try_end_1a7
    .catchall {:try_start_17c .. :try_end_1a7} :catchall_1cb

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1005
    return-void

    .line 1004
    .end local v16  # "freeformWindowManagement":Z
    .end local v17  # "minPercentageMultiWindowSupportHeight":F
    .end local v23  # "configuration":Landroid/content/res/Configuration;
    .restart local v4  # "minPercentageMultiWindowSupportHeight":F
    .restart local v5  # "freeformWindowManagement":Z
    .restart local v6  # "configuration":Landroid/content/res/Configuration;
    :catchall_1ab
    move-exception v0

    move/from16 v17, v4

    move/from16 v16, v5

    move-object/from16 v23, v6

    .end local v4  # "minPercentageMultiWindowSupportHeight":F
    .end local v5  # "freeformWindowManagement":Z
    .end local v6  # "configuration":Landroid/content/res/Configuration;
    .restart local v16  # "freeformWindowManagement":Z
    .restart local v17  # "minPercentageMultiWindowSupportHeight":F
    .restart local v23  # "configuration":Landroid/content/res/Configuration;
    goto :goto_1c6

    .end local v16  # "freeformWindowManagement":Z
    .end local v17  # "minPercentageMultiWindowSupportHeight":F
    .end local v18  # "supportsExpandedPictureInPicture":Z
    .end local v23  # "configuration":Landroid/content/res/Configuration;
    .local v3, "supportsExpandedPictureInPicture":Z
    .restart local v4  # "minPercentageMultiWindowSupportHeight":F
    .restart local v5  # "freeformWindowManagement":Z
    .restart local v6  # "configuration":Landroid/content/res/Configuration;
    :catchall_1b3
    move-exception v0

    move/from16 v18, v3

    move/from16 v17, v4

    move/from16 v16, v5

    move-object/from16 v23, v6

    .end local v3  # "supportsExpandedPictureInPicture":Z
    .end local v4  # "minPercentageMultiWindowSupportHeight":F
    .end local v5  # "freeformWindowManagement":Z
    .end local v6  # "configuration":Landroid/content/res/Configuration;
    .restart local v16  # "freeformWindowManagement":Z
    .restart local v17  # "minPercentageMultiWindowSupportHeight":F
    .restart local v18  # "supportsExpandedPictureInPicture":Z
    .restart local v23  # "configuration":Landroid/content/res/Configuration;
    goto :goto_1c6

    .end local v16  # "freeformWindowManagement":Z
    .end local v17  # "minPercentageMultiWindowSupportHeight":F
    .end local v21  # "minPercentageMultiWindowSupportWidth":F
    .end local v23  # "configuration":Landroid/content/res/Configuration;
    .local v3, "minPercentageMultiWindowSupportWidth":F
    .restart local v4  # "minPercentageMultiWindowSupportHeight":F
    .restart local v5  # "freeformWindowManagement":Z
    .restart local v6  # "configuration":Landroid/content/res/Configuration;
    :catchall_1bd
    move-exception v0

    move/from16 v21, v3

    move/from16 v17, v4

    move/from16 v16, v5

    move-object/from16 v23, v6

    .end local v3  # "minPercentageMultiWindowSupportWidth":F
    .end local v4  # "minPercentageMultiWindowSupportHeight":F
    .end local v5  # "freeformWindowManagement":Z
    .end local v6  # "configuration":Landroid/content/res/Configuration;
    .restart local v16  # "freeformWindowManagement":Z
    .restart local v17  # "minPercentageMultiWindowSupportHeight":F
    .restart local v21  # "minPercentageMultiWindowSupportWidth":F
    .restart local v23  # "configuration":Landroid/content/res/Configuration;
    :goto_1c6
    :try_start_1c6
    monitor-exit v2
    :try_end_1c7
    .catchall {:try_start_1c6 .. :try_end_1c7} :catchall_1cb

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1cb
    move-exception v0

    goto :goto_1c6
.end method

.method saveANRState(Ljava/lang/String;)V
    .registers 15
    .param p1, "reason"  # Ljava/lang/String;

    .line 5396
    new-instance v0, Ljava/io/StringWriter;

    invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V

    .line 5397
    .local v0, "sw":Ljava/io/StringWriter;
    new-instance v1, Lcom/android/internal/util/FastPrintWriter;

    const/4 v2, 0x0

    const/16 v3, 0x400

    invoke-direct {v1, v0, v2, v3}, Lcom/android/internal/util/FastPrintWriter;-><init>(Ljava/io/Writer;ZI)V

    .line 5398
    .local v1, "pw":Ljava/io/PrintWriter;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  ANR time: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;

    move-result-object v3

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v3, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5399
    if-eqz p1, :cond_48

    .line 5400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "  Reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5402
    :cond_48
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5403
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "  "

    invoke-virtual {v2, v1, v4, v3}, Lcom/android/server/wm/ActivityStartController;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 5404
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5405
    const-string v2, "-------------------------------------------------------------------------------"

    invoke-virtual {v1, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 5407
    const/4 v5, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    const/4 v10, 0x0

    const/4 v11, 0x0

    const-string v12, ""

    move-object v4, p0

    move-object v6, v1

    invoke-virtual/range {v4 .. v12}, Lcom/android/server/wm/ActivityTaskManagerService;->dumpActivitiesLocked(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;IZZLjava/lang/String;Ljava/lang/String;)V

    .line 5410
    invoke-virtual {v1}, Ljava/io/PrintWriter;->println()V

    .line 5411
    invoke-virtual {v1}, Ljava/io/PrintWriter;->close()V

    .line 5413
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastANRState:Ljava/lang/String;

    .line 5414
    return-void
.end method

.method scheduleAppGcsLocked()V
    .registers 3

    .line 5222
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 5223
    return-void
.end method

.method public setActivityController(Landroid/app/IActivityController;Z)V
    .registers 6
    .param p1, "controller"  # Landroid/app/IActivityController;
    .param p2, "imAMonkey"  # Z

    .line 2442
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_ACTIVITY_WATCHER"

    const-string/jumbo v2, "setActivityController()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2444
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2445
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 2446
    iput-boolean p2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mControllerIsAMonkey:Z

    .line 2448
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->setActivityController(Landroid/app/IActivityController;)V

    .line 2449
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .line 2450
    monitor-exit v0
    :try_end_23
    .catchall {:try_start_d .. :try_end_23} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2451
    return-void

    .line 2450
    :catchall_27
    move-exception v1

    :try_start_28
    monitor-exit v0
    :try_end_29
    .catchall {:try_start_28 .. :try_end_29} :catchall_27

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setBooted(Z)V
    .registers 3
    .param p1, "booted"  # Z

    .line 5039
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->setBooted(Z)V

    .line 5040
    return-void
.end method

.method setBooting(Z)V
    .registers 3
    .param p1, "booting"  # Z

    .line 5031
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManagerInternal;->setBooting(Z)V

    .line 5032
    return-void
.end method

.method public setCurrentCastModeState(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 8
    .param p1, "castActivity"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "enter"  # I

    .line 7252
    if-eqz p1, :cond_5

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_7

    :cond_5
    const-string v0, ""

    .line 7253
    .local v0, "packageName":Ljava/lang/String;
    :goto_7
    if-eqz p1, :cond_10

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getPid()I

    move-result v1

    goto :goto_11

    :cond_10
    const/4 v1, -0x1

    .line 7255
    .local v1, "pid":I
    :goto_11
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2, p2, v0, v1}, Landroid/app/ActivityManagerInternal;->setCastPid(ILjava/lang/String;I)V

    .line 7257
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 7258
    .local v2, "res":Landroid/content/ContentResolver;
    invoke-static {}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getInstance()Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    move-result-object v3

    .line 7259
    .local v3, "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    invoke-interface {v3}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getMiuiCastModeSettingsKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, p2}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 7260
    invoke-interface {v3}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getMiuiCastModePackageSettingsKey()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4, v0}, Landroid/provider/Settings$Secure;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 7261
    return-void
.end method

.method setDeviceOwnerUid(I)V
    .registers 2
    .param p1, "uid"  # I

    .line 5388
    iput p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mDeviceOwnerUid:I

    .line 5389
    return-void
.end method

.method public setFocusedRootTask(I)V
    .registers 11
    .param p1, "taskId"  # I

    .line 2024
    const-string/jumbo v0, "setFocusedRootTask()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2025
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_enabled:Z

    if-eqz v0, :cond_1e

    int-to-long v0, p1

    .local v0, "protoLogParam0":J
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0xf382dd5

    const/4 v4, 0x0

    const/4 v5, 0x1

    new-array v6, v5, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v2, v3, v5, v4, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2026
    .end local v0  # "protoLogParam0":J
    :cond_1e
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2028
    .local v0, "callingId":J
    :try_start_22
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_25
    .catchall {:try_start_22 .. :try_end_25} :catchall_74

    :try_start_25
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2029
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/RootWindowContainer;->getRootTask(I)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2030
    .local v3, "task":Lcom/android/server/wm/Task;
    if-nez v3, :cond_51

    .line 2031
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setFocusedRootTask: No task with id="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2032
    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_25 .. :try_end_4a} :catchall_6e

    .line 2040
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2032
    return-void

    .line 2034
    :cond_51
    :try_start_51
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 2035
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_65

    const-string/jumbo v5, "setFocusedRootTask"

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_65

    .line 2036
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v5}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 2038
    .end local v3  # "task":Lcom/android/server/wm/Task;
    .end local v4  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_65
    monitor-exit v2
    :try_end_66
    .catchall {:try_start_51 .. :try_end_66} :catchall_6e

    :try_start_66
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_69
    .catchall {:try_start_66 .. :try_end_69} :catchall_74

    .line 2040
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2041
    nop

    .line 2042
    return-void

    .line 2038
    :catchall_6e
    move-exception v3

    :try_start_6f
    monitor-exit v2
    :try_end_70
    .catchall {:try_start_6f .. :try_end_70} :catchall_6e

    :try_start_70
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "callingId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    throw v3
    :try_end_74
    .catchall {:try_start_70 .. :try_end_74} :catchall_74

    .line 2040
    .restart local v0  # "callingId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    :catchall_74
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2041
    throw v2
.end method

.method public setFocusedTask(I)V
    .registers 6
    .param p1, "taskId"  # I

    .line 2046
    const-string/jumbo v0, "setFocusedTask()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2047
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2049
    .local v0, "callingId":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_23

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2050
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->setFocusedTask(ILcom/android/server/wm/ActivityRecord;)V

    .line 2051
    monitor-exit v2
    :try_end_15
    .catchall {:try_start_d .. :try_end_15} :catchall_1d

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_18
    .catchall {:try_start_15 .. :try_end_18} :catchall_23

    .line 2053
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2054
    nop

    .line 2055
    return-void

    .line 2051
    :catchall_1d
    move-exception v3

    :try_start_1e
    monitor-exit v2
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    :try_start_1f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "callingId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    throw v3
    :try_end_23
    .catchall {:try_start_1f .. :try_end_23} :catchall_23

    .line 2053
    .restart local v0  # "callingId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    :catchall_23
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2054
    throw v2
.end method

.method setFocusedTask(ILcom/android/server/wm/ActivityRecord;)V
    .registers 13
    .param p1, "taskId"  # I
    .param p2, "touchedActivity"  # Lcom/android/server/wm/ActivityRecord;

    .line 2058
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_FOCUS_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1f

    int-to-long v3, p1

    .local v3, "protoLogParam0":J
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam1":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_FOCUS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0x34a1065

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v2

    aput-object v0, v8, v1

    invoke-static {v5, v6, v1, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2060
    .end local v0  # "protoLogParam1":Ljava/lang/String;
    .end local v3  # "protoLogParam0":J
    :cond_1f
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2061
    .local v0, "task":Lcom/android/server/wm/Task;
    if-nez v0, :cond_28

    .line 2062
    return-void

    .line 2064
    :cond_28
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2065
    .local v3, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v3, :cond_2f

    .line 2066
    return-void

    .line 2069
    :cond_2f
    const-string/jumbo v4, "setFocusedTask"

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3e

    .line 2070
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    goto :goto_5e

    .line 2071
    :cond_3e
    if-eqz p2, :cond_5e

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v4

    if-eqz v4, :cond_5e

    .line 2072
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    .line 2073
    .local v4, "parent":Lcom/android/server/wm/TaskFragment;
    if-eqz v4, :cond_5e

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v5

    if-eqz v5, :cond_5e

    .line 2075
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    .line 2076
    .local v5, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v5, p2}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 2077
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6, v2, v1}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 2081
    .end local v4  # "parent":Lcom/android/server/wm/TaskFragment;
    .end local v5  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_5e
    :goto_5e
    return-void
.end method

.method public setFrontActivityScreenCompatMode(I)V
    .registers 7
    .param p1, "mode"  # I

    .line 1989
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_SCREEN_COMPATIBILITY"

    const-string/jumbo v2, "setFrontActivityScreenCompatMode"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1992
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1993
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 1994
    .local v1, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_1b

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    goto :goto_1c

    :cond_1b
    const/4 v2, 0x0

    .line 1995
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    :goto_1c
    if-nez v2, :cond_2b

    .line 1996
    const-string v3, "ActivityTaskManager"

    const-string/jumbo v4, "setFrontActivityScreenCompatMode failed: no top activity"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1997
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 1999
    :cond_2b
    :try_start_2b
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 2000
    .local v3, "ai":Landroid/content/pm/ApplicationInfo;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v4, v3, p1}, Lcom/android/server/wm/CompatModePackages;->setPackageScreenCompatModeLocked(Landroid/content/pm/ApplicationInfo;I)V

    .line 2001
    .end local v1  # "rootTask":Lcom/android/server/wm/Task;
    .end local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    monitor-exit v0
    :try_end_35
    .catchall {:try_start_2b .. :try_end_35} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2002
    return-void

    .line 2001
    .end local v3  # "ai":Landroid/content/pm/ApplicationInfo;
    :catchall_39
    move-exception v1

    :try_start_3a
    monitor-exit v0
    :try_end_3b
    .catchall {:try_start_3a .. :try_end_3b} :catchall_39

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method setHeavyWeightProcess(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "root"  # Lcom/android/server/wm/ActivityRecord;

    .line 5058
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHeavyWeightProcess:Lcom/android/server/wm/WindowProcessController;

    .line 5059
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda2;-><init>()V

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget v3, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 5061
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 5059
    invoke-static {v0, p0, v1, v2, v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuadConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5062
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5063
    return-void
.end method

.method setLastResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 14
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"  # Ljava/lang/String;

    .line 4789
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 4790
    .local v0, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isActivityTypeStandard()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_3d

    .line 4791
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eq v1, v4, :cond_39

    .line 4793
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v1, :cond_2d

    .line 4794
    invoke-virtual {v1}, Lcom/android/server/am/AppTimeTracker;->stop()V

    .line 4795
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    invoke-virtual {v1, v2, v4}, Lcom/android/server/wm/ActivityTaskManagerService$H;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 4796
    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 4797
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    invoke-virtual {v1, v4}, Lcom/android/server/wm/RootWindowContainer;->clearOtherAppTimeTrackers(Lcom/android/server/am/AppTimeTracker;)V

    .line 4798
    iput-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 4800
    :cond_2d
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v1, :cond_3f

    .line 4801
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 4802
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->startTimeTrackingFocusedActivityLocked()V

    goto :goto_3f

    .line 4805
    :cond_39
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->startTimeTrackingFocusedActivityLocked()V

    goto :goto_3f

    .line 4808
    :cond_3d
    iput-object v3, p1, Lcom/android/server/wm/ActivityRecord;->appTimeTracker:Lcom/android/server/am/AppTimeTracker;

    .line 4813
    :cond_3f
    :goto_3f
    iget-object v1, v0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v1, :cond_4f

    .line 4814
    iget-object v1, v0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-direct {p0, v1, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->startRunningVoiceLocked(Landroid/service/voice/IVoiceInteractionSession;I)V

    goto :goto_6c

    .line 4816
    :cond_4f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->finishRunningVoiceLocked()V

    .line 4818
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_6c

    .line 4821
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 4822
    .local v1, "lastResumedActivityTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_63

    iget-object v4, v1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v4, :cond_63

    .line 4824
    iget-object v4, v1, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .local v4, "session":Landroid/service/voice/IVoiceInteractionSession;
    goto :goto_67

    .line 4826
    .end local v4  # "session":Landroid/service/voice/IVoiceInteractionSession;
    :cond_63
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 4829
    .restart local v4  # "session":Landroid/service/voice/IVoiceInteractionSession;
    :goto_67
    if-eqz v4, :cond_6c

    .line 4834
    invoke-virtual {p0, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V

    .line 4839
    .end local v1  # "lastResumedActivityTask":Lcom/android/server/wm/Task;
    .end local v4  # "session":Landroid/service/voice/IVoiceInteractionSession;
    :cond_6c
    :goto_6c
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_7f

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget v4, v4, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v1, v4, :cond_7f

    .line 4840
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v1, v4}, Landroid/app/ActivityManagerInternal;->sendForegroundProfileChanged(I)V

    .line 4842
    :cond_7f
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_88

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_89

    :cond_88
    move-object v1, v3

    .line 4844
    .local v1, "prevTask":Lcom/android/server/wm/Task;
    :goto_89
    invoke-direct {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateResumedAppTrace(Lcom/android/server/wm/ActivityRecord;)V

    .line 4845
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 4850
    iget-object v4, p1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 4851
    .local v4, "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v5, 0x0

    if-eqz v4, :cond_a1

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v6

    const/4 v7, 0x5

    invoke-virtual {v4, v6, v5, v2, v7}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;ZZI)Lcom/android/server/wm/Task;

    move-result-object v6

    goto :goto_a2

    .line 4852
    :cond_a1
    move-object v6, v3

    :goto_a2
    nop

    .line 4853
    .local v6, "nextFocusableRootTask":Lcom/android/server/wm/Task;
    if-eqz v6, :cond_a9

    invoke-virtual {v6}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 4854
    .local v3, "nextAr":Lcom/android/server/wm/ActivityRecord;
    :cond_a9
    iget-object v7, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getRootTaskId()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v7

    .line 4855
    .local v7, "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v7, :cond_cc

    invoke-virtual {v7}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->isInMiniFreeFormMode()Z

    move-result v8

    if-eqz v8, :cond_cc

    if-eqz v3, :cond_cc

    .line 4856
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    iget-object v9, p1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v8, v9, :cond_cc

    .line 4857
    iget-object v8, p1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8, v3}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    .local v8, "changed":Z
    goto :goto_d2

    .line 4859
    .end local v8  # "changed":Z
    :cond_cc
    iget-object v8, p1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v8, p1}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v8

    .line 4862
    .restart local v8  # "changed":Z
    :goto_d2
    if-eqz v8, :cond_d9

    .line 4863
    iget-object v9, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v9, v5, v2}, Lcom/android/server/wm/WindowManagerService;->updateFocusedWindowLocked(IZ)Z

    .line 4866
    :cond_d9
    if-eqz v1, :cond_dd

    if-eq v0, v1, :cond_ed

    .line 4867
    :cond_dd
    if-eqz v1, :cond_e6

    .line 4868
    iget-object v9, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget v10, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v9, v10, v5}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskFocusChanged(IZ)V

    .line 4870
    :cond_e6
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    iget v9, v0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v5, v9, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskFocusChanged(IZ)V

    .line 4873
    :cond_ed
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateLockStateLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4874
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->applyUpdateVrModeLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 4877
    if-nez p1, :cond_f7

    const/4 v2, -0x1

    goto :goto_f9

    :cond_f7
    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 4878
    :goto_f9
    if-nez p1, :cond_fe

    const-string v5, "NULL"

    goto :goto_100

    :cond_fe
    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 4876
    :goto_100
    invoke-static {v2, v5, p2}, Lcom/android/server/wm/EventLogTags;->writeWmSetResumedActivity(ILjava/lang/String;Ljava/lang/String;)V

    .line 4880
    return-void
.end method

.method public setLockScreenShown(ZZ)V
    .registers 9
    .param p1, "keyguardShowing"  # Z
    .param p2, "aodShowing"  # Z

    .line 3053
    const-string v0, "android.permission.DEVICE_POWER"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_66

    .line 3059
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3060
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 3061
    .local v1, "ident":J
    iget-boolean v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardShown:Z

    if-eq v3, p1, :cond_2c

    .line 3062
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardShown:Z

    .line 3063
    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda16;

    invoke-direct {v3}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda16;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 3065
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 3063
    invoke-static {v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 3066
    .local v3, "msg":Landroid/os/Message;
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_2c
    .catchall {:try_start_b .. :try_end_2c} :catchall_60

    .line 3070
    .end local v3  # "msg":Landroid/os/Message;
    :cond_2c
    if-nez p1, :cond_3d

    .line 3071
    :try_start_2e
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->setPackageHoldOn(Lcom/android/server/wm/ActivityTaskManagerService;Ljava/lang/String;)V

    .line 3072
    invoke-static {}, Lcom/android/server/wm/MiuiPaperContrastOverlayStub;->get()Lcom/android/server/wm/MiuiPaperContrastOverlayStub;

    move-result-object v3

    invoke-interface {v3, p2}, Lcom/android/server/wm/MiuiPaperContrastOverlayStub;->updateTextureEyeCareWhenAodShow(Z)V

    .line 3075
    :cond_3d
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-instance v4, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda17;

    invoke-direct {v4, p0, p1, p2}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda17;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ZZ)V

    invoke-virtual {v3, v4}, Lcom/android/server/wm/RootWindowContainer;->forAllDisplays(Ljava/util/function/Consumer;)V
    :try_end_47
    .catchall {:try_start_2e .. :try_end_47} :catchall_5a

    .line 3080
    :try_start_47
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3081
    nop

    .line 3082
    .end local v1  # "ident":J
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_47 .. :try_end_4c} :catchall_60

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3084
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v1, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda18;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 3089
    return-void

    .line 3080
    .restart local v1  # "ident":J
    :catchall_5a
    move-exception v3

    :try_start_5b
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3081
    nop

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "keyguardShowing":Z
    .end local p2  # "aodShowing":Z
    throw v3

    .line 3082
    .end local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "keyguardShowing":Z
    .restart local p2  # "aodShowing":Z
    :catchall_60
    move-exception v1

    monitor-exit v0
    :try_end_62
    .catchall {:try_start_5b .. :try_end_62} :catchall_60

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 3055
    :cond_66
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires permission android.permission.DEVICE_POWER"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setLocusId(Landroid/content/LocusId;Landroid/os/IBinder;)V
    .registers 5
    .param p1, "locusId"  # Landroid/content/LocusId;
    .param p2, "appToken"  # Landroid/os/IBinder;

    .line 2166
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2167
    invoke-static {p2}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2168
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_f

    .line 2169
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityRecord;->setLocusId(Landroid/content/LocusId;)V

    .line 2171
    .end local v1  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_f
    monitor-exit v0
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2172
    return-void

    .line 2171
    :catchall_14
    move-exception v1

    :try_start_15
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_15 .. :try_end_16} :catchall_14

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setPackageAskScreenCompat(Ljava/lang/String;Z)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "ask"  # Z

    .line 4091
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_SCREEN_COMPATIBILITY"

    const-string/jumbo v2, "setPackageAskScreenCompat"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4093
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4094
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageAskCompatModeLocked(Ljava/lang/String;Z)V

    .line 4095
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4096
    return-void

    .line 4095
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setPackageScreenCompatMode(Ljava/lang/String;I)V
    .registers 6
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "mode"  # I

    .line 4074
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.SET_SCREEN_COMPATIBILITY"

    const-string/jumbo v2, "setPackageScreenCompatMode"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4076
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4077
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCompatModePackages:Lcom/android/server/wm/CompatModePackages;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/CompatModePackages;->setPackageScreenCompatModeLocked(Ljava/lang/String;I)V

    .line 4078
    monitor-exit v0
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4079
    return-void

    .line 4078
    :catchall_1a
    move-exception v1

    :try_start_1b
    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_1b .. :try_end_1c} :catchall_1a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setPersistentVrThread(I)V
    .registers 6
    .param p1, "tid"  # I

    .line 3993
    const-string v0, "android.permission.RESTRICTED_VR_ACCESS"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-nez v0, :cond_2b

    .line 4002
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceSystemHasVrFeature()V

    .line 4003
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_e
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4004
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 4005
    .local v1, "pid":I
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 4006
    .local v2, "proc":Lcom/android/server/wm/WindowProcessController;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/server/wm/VrController;->setPersistentVrThreadLocked(IILcom/android/server/wm/WindowProcessController;)V

    .line 4007
    .end local v1  # "pid":I
    .end local v2  # "proc":Lcom/android/server/wm/WindowProcessController;
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_e .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4008
    return-void

    .line 4007
    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1

    .line 3995
    :cond_2b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Permission Denial: setPersistentVrThread() from pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3996
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", uid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3997
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " requires "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "android.permission.RESTRICTED_VR_ACCESS"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3999
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4000
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method protected setRecentTasks(Lcom/android/server/wm/RecentTasks;)V
    .registers 3
    .param p1, "recentTasks"  # Lcom/android/server/wm/RecentTasks;

    .line 1120
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    .line 1121
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->setRecentTasks(Lcom/android/server/wm/RecentTasks;)V

    .line 1122
    return-void
.end method

.method public setRunningRemoteTransitionDelegate(Landroid/app/IApplicationThread;)V
    .registers 10
    .param p1, "caller"  # Landroid/app/IApplicationThread;

    .line 5529
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CONTROL_REMOTE_APP_TRANSITION_ANIMATIONS"

    const-string/jumbo v2, "setRunningRemoteTransition"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 5531
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 5532
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 5533
    .local v1, "callingUid":I
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2

    :try_start_15
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 5536
    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v3

    .line 5538
    .local v3, "callingProc":Lcom/android/server/wm/WindowProcessController;
    if-eqz v3, :cond_53

    invoke-virtual {v3}, Lcom/android/server/wm/WindowProcessController;->isRunningRemoteTransition()Z

    move-result v4

    if-eqz v4, :cond_53

    .line 5545
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Landroid/app/IApplicationThread;)Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    .line 5546
    .local v4, "wpc":Lcom/android/server/wm/WindowProcessController;
    if-nez v4, :cond_47

    .line 5547
    const-string v5, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unable to find process for application "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5548
    monitor-exit v2
    :try_end_43
    .catchall {:try_start_15 .. :try_end_43} :catchall_81

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 5550
    :cond_47
    const/4 v5, 0x1

    :try_start_48
    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowProcessController;->setRunningRemoteAnimation(Z)V

    .line 5551
    invoke-virtual {v3, v4}, Lcom/android/server/wm/WindowProcessController;->addRemoteAnimationDelegate(Lcom/android/server/wm/WindowProcessController;)V

    .line 5552
    .end local v3  # "callingProc":Lcom/android/server/wm/WindowProcessController;
    .end local v4  # "wpc":Lcom/android/server/wm/WindowProcessController;
    monitor-exit v2
    :try_end_4f
    .catchall {:try_start_48 .. :try_end_4f} :catchall_81

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 5553
    return-void

    .line 5539
    .restart local v3  # "callingProc":Lcom/android/server/wm/WindowProcessController;
    :cond_53
    :try_start_53
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Can\'t call setRunningRemoteTransition from a process (pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") which isn\'t itself running a remote transition."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 5542
    .local v4, "msg":Ljava/lang/String;
    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 5543
    new-instance v5, Ljava/lang/SecurityException;

    invoke-direct {v5, v4}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local v0  # "callingPid":I
    .end local v1  # "callingUid":I
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "caller":Landroid/app/IApplicationThread;
    throw v5

    .line 5552
    .end local v3  # "callingProc":Lcom/android/server/wm/WindowProcessController;
    .end local v4  # "msg":Ljava/lang/String;
    .restart local v0  # "callingPid":I
    .restart local v1  # "callingUid":I
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "caller":Landroid/app/IApplicationThread;
    :catchall_81
    move-exception v3

    monitor-exit v2
    :try_end_83
    .catchall {:try_start_53 .. :try_end_83} :catchall_81

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v3
.end method

.method public setSplitScreenResizing(Z)V
    .registers 6
    .param p1, "resizing"  # Z

    .line 3773
    const-string/jumbo v0, "setSplitScreenResizing()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 3774
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3776
    .local v0, "ident":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_24

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3777
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->setSplitScreenResizing(Z)V

    .line 3778
    monitor-exit v2
    :try_end_16
    .catchall {:try_start_d .. :try_end_16} :catchall_1e

    :try_start_16
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_19
    .catchall {:try_start_16 .. :try_end_19} :catchall_24

    .line 3780
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3781
    nop

    .line 3782
    return-void

    .line 3778
    :catchall_1e
    move-exception v3

    :try_start_1f
    monitor-exit v2
    :try_end_20
    .catchall {:try_start_1f .. :try_end_20} :catchall_1e

    :try_start_20
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "resizing":Z
    throw v3
    :try_end_24
    .catchall {:try_start_20 .. :try_end_24} :catchall_24

    .line 3780
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "resizing":Z
    :catchall_24
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3781
    throw v2
.end method

.method public setTaskResizeable(II)V
    .registers 8
    .param p1, "taskId"  # I
    .param p2, "resizeableMode"  # I

    .line 2955
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2956
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2958
    .local v1, "task":Lcom/android/server/wm/Task;
    if-nez v1, :cond_33

    .line 2959
    const-string v2, "ActivityTaskManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setTaskResizeable: taskId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2960
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_3 .. :try_end_2f} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return-void

    .line 2962
    :cond_33
    :try_start_33
    invoke-virtual {v1, p2}, Lcom/android/server/wm/Task;->setResizeMode(I)V

    .line 2963
    .end local v1  # "task":Lcom/android/server/wm/Task;
    monitor-exit v0
    :try_end_37
    .catchall {:try_start_33 .. :try_end_37} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2964
    return-void

    .line 2963
    :catchall_3b
    move-exception v1

    :try_start_3c
    monitor-exit v0
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setTaskWindowingMode(IIZ)Z
    .registers 13
    .param p1, "taskId"  # I
    .param p2, "windowingMode"  # I
    .param p3, "toTop"  # Z

    .line 2209
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2210
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_a
    .catchall {:try_start_3 .. :try_end_a} :catchall_8b

    .line 2212
    .local v1, "ident":J
    :try_start_a
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2214
    .local v3, "task":Lcom/android/server/wm/Task;
    if-nez v3, :cond_35

    .line 2215
    const-string v5, "ActivityTaskManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setTaskWindowingMode: No task for id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2c
    .catchall {:try_start_a .. :try_end_2c} :catchall_85

    .line 2216
    nop

    .line 2236
    :try_start_2d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_31
    .catchall {:try_start_2d .. :try_end_31} :catchall_8b

    .line 2216
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v4

    .line 2219
    :cond_35
    :try_start_35
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v5

    if-eqz v5, :cond_61

    .line 2225
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 2226
    .local v5, "rootTask":Lcom/android/server/wm/Task;
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v6

    invoke-virtual {v6, v3, p3, p2}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->needSetWindowMode(Lcom/android/server/wm/Task;ZI)Z

    .line 2227
    if-eqz p3, :cond_4e

    .line 2228
    const-string/jumbo v6, "setTaskWindowingMode"

    invoke-virtual {v5, v6, v3}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 2231
    :cond_4e
    invoke-virtual {v5, p2}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 2232
    iget-object v6, v5, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v7, 0x0

    const/4 v8, 0x1

    invoke-virtual {v6, v7, v4, v8, v8}, Lcom/android/server/wm/DisplayContent;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    :try_end_58
    .catchall {:try_start_35 .. :try_end_58} :catchall_85

    .line 2234
    nop

    .line 2236
    :try_start_59
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_5d
    .catchall {:try_start_59 .. :try_end_5d} :catchall_8b

    .line 2234
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v8

    .line 2220
    .end local v5  # "rootTask":Lcom/android/server/wm/Task;
    :cond_61
    :try_start_61
    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setTaskWindowingMode: Attempt to move non-standard task "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to windowing mode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v1  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    .end local p2  # "windowingMode":I
    .end local p3  # "toTop":Z
    throw v4
    :try_end_85
    .catchall {:try_start_61 .. :try_end_85} :catchall_85

    .line 2236
    .end local v3  # "task":Lcom/android/server/wm/Task;
    .restart local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    .restart local p2  # "windowingMode":I
    .restart local p3  # "toTop":Z
    :catchall_85
    move-exception v3

    :try_start_86
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2237
    nop

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    .end local p2  # "windowingMode":I
    .end local p3  # "toTop":Z
    throw v3

    .line 2238
    .end local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    .restart local p2  # "windowingMode":I
    .restart local p3  # "toTop":Z
    :catchall_8b
    move-exception v1

    monitor-exit v0
    :try_end_8d
    .catchall {:try_start_86 .. :try_end_8d} :catchall_8b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V
    .registers 4
    .param p1, "usageStatsManager"  # Landroid/app/usage/UsageStatsManagerInternal;

    .line 1083
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1084
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    .line 1085
    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1086
    return-void

    .line 1085
    :catchall_d
    move-exception v1

    :try_start_e
    monitor-exit v0
    :try_end_f
    .catchall {:try_start_e .. :try_end_f} :catchall_d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setVoiceKeepAwake(Landroid/service/voice/IVoiceInteractionSession;Z)V
    .registers 6
    .param p1, "session"  # Landroid/service/voice/IVoiceInteractionSession;
    .param p2, "keepAwake"  # Z

    .line 3635
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3636
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRunningVoice:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v1, :cond_21

    invoke-interface {v1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    if-ne v1, v2, :cond_21

    .line 3637
    if-eqz p2, :cond_1c

    .line 3638
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    goto :goto_21

    .line 3640
    :cond_1c
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVoiceWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->release()V

    .line 3643
    :cond_21
    :goto_21
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_3 .. :try_end_22} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3644
    return-void

    .line 3643
    :catchall_26
    move-exception v1

    :try_start_27
    monitor-exit v0
    :try_end_28
    .catchall {:try_start_27 .. :try_end_28} :catchall_26

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setVrThread(I)V
    .registers 6
    .param p1, "tid"  # I

    .line 3983
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceSystemHasVrFeature()V

    .line 3984
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_6
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3985
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    .line 3986
    .local v1, "pid":I
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    .line 3987
    .local v2, "wpc":Lcom/android/server/wm/WindowProcessController;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v3, p1, v1, v2}, Lcom/android/server/wm/VrController;->setVrThreadLocked(IILcom/android/server/wm/WindowProcessController;)V

    .line 3988
    .end local v1  # "pid":I
    .end local v2  # "wpc":Lcom/android/server/wm/WindowProcessController;
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_6 .. :try_end_19} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3989
    return-void

    .line 3988
    :catchall_1d
    move-exception v1

    :try_start_1e
    monitor-exit v0
    :try_end_1f
    .catchall {:try_start_1e .. :try_end_1f} :catchall_1d

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public setWindowManager(Lcom/android/server/wm/WindowManagerService;)V
    .registers 5
    .param p1, "wm"  # Lcom/android/server/wm/WindowManagerService;

    .line 1065
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1066
    iput-object p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 1067
    iget-object v1, p1, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1068
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowOrganizerController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1069
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1}, Landroid/content/res/Configuration;->setToDefaults()V

    .line 1070
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setLocales(Landroid/os/LocaleList;)V

    .line 1071
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    const/4 v2, 0x1

    iput v2, v1, Landroid/content/res/Configuration;->seq:I

    iput v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mConfigurationSeq:I

    .line 1072
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 1073
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLockTaskController:Lcom/android/server/wm/LockTaskController;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/LockTaskController;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1074
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1075
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/RootWindowContainer;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 1076
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    if-eqz v1, :cond_45

    .line 1077
    iget-object v2, p1, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/BackNavigationController;->setTaskSnapshotController(Lcom/android/server/wm/TaskSnapshotController;)V

    .line 1079
    :cond_45
    monitor-exit v0
    :try_end_46
    .catchall {:try_start_3 .. :try_end_46} :catchall_4a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1080
    return-void

    .line 1079
    :catchall_4a
    move-exception v1

    :try_start_4b
    monitor-exit v0
    :try_end_4c
    .catchall {:try_start_4b .. :try_end_4c} :catchall_4a

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method shouldDisableNonVrUiLocked()Z
    .registers 2

    .line 4036
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mVrController:Lcom/android/server/wm/VrController;

    invoke-virtual {v0}, Lcom/android/server/wm/VrController;->shouldDisableNonVrUiLocked()Z

    move-result v0

    return v0
.end method

.method public final startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .registers 28
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "callingFeatureId"  # Ljava/lang/String;
    .param p4, "intents"  # [Landroid/content/Intent;
    .param p5, "resolvedTypes"  # [Ljava/lang/String;
    .param p6, "resultTo"  # Landroid/os/IBinder;
    .param p7, "bOptions"  # Landroid/os/Bundle;
    .param p8, "userId"  # I

    .line 1265
    move-object/from16 v0, p0

    move-object/from16 v15, p2

    invoke-virtual {v0, v15}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 1266
    const-string/jumbo v16, "startActivities"

    .line 1267
    .local v16, "reason":Ljava/lang/String;
    const-string/jumbo v1, "startActivities"

    invoke-static {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1268
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    move/from16 v4, p8

    invoke-virtual {v0, v2, v3, v4, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v17

    .line 1270
    .end local p8  # "userId":I
    .local v17, "userId":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    .line 1272
    invoke-static/range {p7 .. p7}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v11

    .line 1270
    const/4 v3, -0x1

    const/4 v4, 0x0

    const/4 v5, -0x1

    const-string/jumbo v13, "startActivities"

    const/4 v14, 0x0

    const/16 v18, 0x0

    move-object/from16 v2, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    move-object/from16 v10, p6

    move/from16 v12, v17

    move/from16 v15, v18

    invoke-virtual/range {v1 .. v15}, Lcom/android/server/wm/ActivityStartController;->startActivities(Landroid/app/IApplicationThread;IIILjava/lang/String;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Lcom/android/server/wm/SafeActivityOptions;ILjava/lang/String;Lcom/android/server/am/PendingIntentRecord;Z)I

    move-result v1

    return v1
.end method

.method public final startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;)I
    .registers 25
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "callingFeatureId"  # Ljava/lang/String;
    .param p4, "intent"  # Landroid/content/Intent;
    .param p5, "resolvedType"  # Ljava/lang/String;
    .param p6, "resultTo"  # Landroid/os/IBinder;
    .param p7, "resultWho"  # Ljava/lang/String;
    .param p8, "requestCode"  # I
    .param p9, "startFlags"  # I
    .param p10, "profilerInfo"  # Landroid/app/ProfilerInfo;
    .param p11, "bOptions"  # Landroid/os/Bundle;

    .line 1256
    nop

    .line 1258
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    .line 1256
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    invoke-virtual/range {v0 .. v12}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I

    move-result v0

    return v0
.end method

.method public final startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)Landroid/app/WaitResult;
    .registers 28
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "callingFeatureId"  # Ljava/lang/String;
    .param p4, "intent"  # Landroid/content/Intent;
    .param p5, "resolvedType"  # Ljava/lang/String;
    .param p6, "resultTo"  # Landroid/os/IBinder;
    .param p7, "resultWho"  # Ljava/lang/String;
    .param p8, "requestCode"  # I
    .param p9, "startFlags"  # I
    .param p10, "profilerInfo"  # Landroid/app/ProfilerInfo;
    .param p11, "bOptions"  # Landroid/os/Bundle;
    .param p12, "userId"  # I

    .line 1563
    move-object v0, p0

    move-object/from16 v1, p2

    invoke-virtual {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 1564
    new-instance v2, Landroid/app/WaitResult;

    invoke-direct {v2}, Landroid/app/WaitResult;-><init>()V

    .line 1565
    .local v2, "res":Landroid/app/WaitResult;
    const-string/jumbo v3, "startActivityAndWait"

    invoke-static {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1566
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    move/from16 v6, p12

    invoke-virtual {p0, v4, v5, v6, v3}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result v4

    .line 1569
    .end local p12  # "userId":I
    .local v4, "userId":I
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v5

    move-object/from16 v6, p4

    invoke-virtual {v5, v6, v3}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1570
    move-object/from16 v5, p1

    invoke-virtual {v3, v5}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1571
    invoke-virtual {v3, v1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1572
    move-object/from16 v7, p3

    invoke-virtual {v3, v7}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1573
    move-object/from16 v8, p5

    invoke-virtual {v3, v8}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1574
    move-object/from16 v9, p6

    invoke-virtual {v3, v9}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1575
    move-object/from16 v10, p7

    invoke-virtual {v3, v10}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1576
    move/from16 v11, p8

    invoke-virtual {v3, v11}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1577
    move/from16 v12, p9

    invoke-virtual {v3, v12}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1578
    move-object/from16 v13, p11

    invoke-virtual {v3, v13}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1579
    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1580
    move-object/from16 v14, p10

    invoke-virtual {v3, v14}, Lcom/android/server/wm/ActivityStarter;->setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1581
    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityStarter;->setWaitResult(Landroid/app/WaitResult;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v3

    .line 1582
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityStarter;->execute()I

    .line 1583
    return-object v2
.end method

.method public final startActivityAsCaller(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;ZI)I
    .registers 30
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "intent"  # Landroid/content/Intent;
    .param p4, "resolvedType"  # Ljava/lang/String;
    .param p5, "resultTo"  # Landroid/os/IBinder;
    .param p6, "resultWho"  # Ljava/lang/String;
    .param p7, "requestCode"  # I
    .param p8, "startFlags"  # I
    .param p9, "profilerInfo"  # Landroid/app/ProfilerInfo;
    .param p10, "bOptions"  # Landroid/os/Bundle;
    .param p11, "ignoreTargetSecurity"  # Z
    .param p12, "userId"  # I

    .line 1630
    move-object/from16 v1, p5

    move/from16 v2, p11

    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1631
    if-eqz v1, :cond_16e

    .line 1635
    invoke-static/range {p5 .. p5}, Lcom/android/server/wm/ActivityRecord;->isInAnyTask(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v5, v0

    .line 1636
    .local v5, "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_149

    .line 1639
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_135

    .line 1643
    const-string v0, "android.permission.START_ACTIVITY_AS_CALLER"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_82

    .line 1649
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const-string v6, "android"

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_44

    .line 1650
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v6, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1651
    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->ignoreSpecifiedSource(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3c

    goto :goto_44

    .line 1653
    :cond_3c
    new-instance v0, Ljava/lang/SecurityException;

    const-string v6, "Must be called from an activity that is declared in the android package"

    invoke-direct {v0, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "caller":Landroid/app/IApplicationThread;
    .end local p2  # "callingPackage":Ljava/lang/String;
    .end local p3  # "intent":Landroid/content/Intent;
    .end local p4  # "resolvedType":Ljava/lang/String;
    .end local p5  # "resultTo":Landroid/os/IBinder;
    .end local p6  # "resultWho":Ljava/lang/String;
    .end local p7  # "requestCode":I
    .end local p8  # "startFlags":I
    .end local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10  # "bOptions":Landroid/os/Bundle;
    .end local p11  # "ignoreTargetSecurity":Z
    .end local p12  # "userId":I
    throw v0

    .line 1656
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "caller":Landroid/app/IApplicationThread;
    .restart local p2  # "callingPackage":Ljava/lang/String;
    .restart local p3  # "intent":Landroid/content/Intent;
    .restart local p4  # "resolvedType":Ljava/lang/String;
    .restart local p5  # "resultTo":Landroid/os/IBinder;
    .restart local p6  # "resultWho":Ljava/lang/String;
    .restart local p7  # "requestCode":I
    .restart local p8  # "startFlags":I
    .restart local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10  # "bOptions":Landroid/os/Bundle;
    .restart local p11  # "ignoreTargetSecurity":Z
    .restart local p12  # "userId":I
    :cond_44
    :goto_44
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v6, 0x3e8

    if-eq v0, v6, :cond_82

    .line 1659
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    iget v6, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    if-ne v0, v6, :cond_59

    goto :goto_82

    .line 1660
    :cond_59
    new-instance v0, Ljava/lang/SecurityException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Calling activity in uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v7, v7, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " must be system uid or original calling uid "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget v7, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v0, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "caller":Landroid/app/IApplicationThread;
    .end local p2  # "callingPackage":Ljava/lang/String;
    .end local p3  # "intent":Landroid/content/Intent;
    .end local p4  # "resolvedType":Ljava/lang/String;
    .end local p5  # "resultTo":Landroid/os/IBinder;
    .end local p6  # "resultWho":Ljava/lang/String;
    .end local p7  # "requestCode":I
    .end local p8  # "startFlags":I
    .end local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10  # "bOptions":Landroid/os/Bundle;
    .end local p11  # "ignoreTargetSecurity":Z
    .end local p12  # "userId":I
    throw v0

    .line 1667
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "caller":Landroid/app/IApplicationThread;
    .restart local p2  # "callingPackage":Ljava/lang/String;
    .restart local p3  # "intent":Landroid/content/Intent;
    .restart local p4  # "resolvedType":Ljava/lang/String;
    .restart local p5  # "resultTo":Landroid/os/IBinder;
    .restart local p6  # "resultWho":Ljava/lang/String;
    .restart local p7  # "requestCode":I
    .restart local p8  # "startFlags":I
    .restart local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10  # "bOptions":Landroid/os/Bundle;
    .restart local p11  # "ignoreTargetSecurity":Z
    .restart local p12  # "userId":I
    :cond_82
    :goto_82
    if-eqz v2, :cond_a1

    .line 1668
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-eqz v0, :cond_99

    .line 1672
    invoke-virtual/range {p3 .. p3}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_91

    goto :goto_a1

    .line 1673
    :cond_91
    new-instance v0, Ljava/lang/SecurityException;

    const-string v6, "Selector not allowed with ignoreTargetSecurity"

    invoke-direct {v0, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "caller":Landroid/app/IApplicationThread;
    .end local p2  # "callingPackage":Ljava/lang/String;
    .end local p3  # "intent":Landroid/content/Intent;
    .end local p4  # "resolvedType":Ljava/lang/String;
    .end local p5  # "resultTo":Landroid/os/IBinder;
    .end local p6  # "resultWho":Ljava/lang/String;
    .end local p7  # "requestCode":I
    .end local p8  # "startFlags":I
    .end local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10  # "bOptions":Landroid/os/Bundle;
    .end local p11  # "ignoreTargetSecurity":Z
    .end local p12  # "userId":I
    throw v0

    .line 1669
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "caller":Landroid/app/IApplicationThread;
    .restart local p2  # "callingPackage":Ljava/lang/String;
    .restart local p3  # "intent":Landroid/content/Intent;
    .restart local p4  # "resolvedType":Ljava/lang/String;
    .restart local p5  # "resultTo":Landroid/os/IBinder;
    .restart local p6  # "resultWho":Ljava/lang/String;
    .restart local p7  # "requestCode":I
    .restart local p8  # "startFlags":I
    .restart local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10  # "bOptions":Landroid/os/Bundle;
    .restart local p11  # "ignoreTargetSecurity":Z
    .restart local p12  # "userId":I
    :cond_99
    new-instance v0, Ljava/lang/SecurityException;

    const-string v6, "Component must be specified with ignoreTargetSecurity"

    invoke-direct {v0, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "caller":Landroid/app/IApplicationThread;
    .end local p2  # "callingPackage":Ljava/lang/String;
    .end local p3  # "intent":Landroid/content/Intent;
    .end local p4  # "resolvedType":Ljava/lang/String;
    .end local p5  # "resultTo":Landroid/os/IBinder;
    .end local p6  # "resultWho":Ljava/lang/String;
    .end local p7  # "requestCode":I
    .end local p8  # "startFlags":I
    .end local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10  # "bOptions":Landroid/os/Bundle;
    .end local p11  # "ignoreTargetSecurity":Z
    .end local p12  # "userId":I
    throw v0

    .line 1677
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "caller":Landroid/app/IApplicationThread;
    .restart local p2  # "callingPackage":Ljava/lang/String;
    .restart local p3  # "intent":Landroid/content/Intent;
    .restart local p4  # "resolvedType":Ljava/lang/String;
    .restart local p5  # "resultTo":Landroid/os/IBinder;
    .restart local p6  # "resultWho":Ljava/lang/String;
    .restart local p7  # "requestCode":I
    .restart local p8  # "startFlags":I
    .restart local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10  # "bOptions":Landroid/os/Bundle;
    .restart local p11  # "ignoreTargetSecurity":Z
    .restart local p12  # "userId":I
    :cond_a1
    :goto_a1
    iget v0, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    move v6, v0

    .line 1678
    .local v6, "targetUid":I
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    move-object v7, v0

    .line 1679
    .local v7, "targetPackage":Ljava/lang/String;
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    move-object v8, v0

    .line 1680
    .local v8, "targetFeatureId":Ljava/lang/String;
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isResolverOrChildActivity()Z

    move-result v0

    move v9, v0

    .line 1681
    .local v9, "isResolver":Z
    monitor-exit v4
    :try_end_b0
    .catchall {:try_start_9 .. :try_end_b0} :catchall_182

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1683
    const/16 v0, -0x2710

    move/from16 v10, p12

    if-ne v10, v0, :cond_c2

    .line 1684
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v0, v0, Lcom/android/server/wm/WindowProcessController;->mUid:I

    invoke-static {v0}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v0

    move v10, v0

    .line 1689
    .end local p12  # "userId":I
    .local v10, "userId":I
    :cond_c2
    :try_start_c2
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v0

    const-string/jumbo v4, "startActivityAsCaller"
    :try_end_c9
    .catch Ljava/lang/SecurityException; {:try_start_c2 .. :try_end_c9} :catch_127

    move-object/from16 v11, p3

    :try_start_cb
    invoke-virtual {v0, v11, v4}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1690
    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1691
    invoke-virtual {v0, v7}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1692
    invoke-virtual {v0, v8}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_db
    .catch Ljava/lang/SecurityException; {:try_start_cb .. :try_end_db} :catch_125

    .line 1693
    move-object/from16 v12, p4

    :try_start_dd
    invoke-virtual {v0, v12}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1694
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_e5
    .catch Ljava/lang/SecurityException; {:try_start_dd .. :try_end_e5} :catch_123

    .line 1695
    move-object/from16 v13, p6

    :try_start_e7
    invoke-virtual {v0, v13}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_eb
    .catch Ljava/lang/SecurityException; {:try_start_e7 .. :try_end_eb} :catch_121

    .line 1696
    move/from16 v14, p7

    :try_start_ed
    invoke-virtual {v0, v14}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_f1
    .catch Ljava/lang/SecurityException; {:try_start_ed .. :try_end_f1} :catch_11f

    .line 1697
    move/from16 v15, p8

    :try_start_f3
    invoke-virtual {v0, v15}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0
    :try_end_f7
    .catch Ljava/lang/SecurityException; {:try_start_f3 .. :try_end_f7} :catch_11d

    .line 1698
    move-object/from16 v4, p10

    :try_start_f9
    invoke-virtual {v0, v4}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1699
    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1700
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setIgnoreTargetSecurity(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1701
    if-eqz v9, :cond_10c

    const/16 v16, 0x0

    move/from16 v2, v16

    goto :goto_10d

    :cond_10c
    move v2, v6

    :goto_10d
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setFilterCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    const/4 v2, 0x1

    .line 1704
    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1705
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0
    :try_end_11a
    .catch Ljava/lang/SecurityException; {:try_start_f9 .. :try_end_11a} :catch_11b

    .line 1689
    return v0

    .line 1706
    :catch_11b
    move-exception v0

    goto :goto_134

    :catch_11d
    move-exception v0

    goto :goto_132

    :catch_11f
    move-exception v0

    goto :goto_130

    :catch_121
    move-exception v0

    goto :goto_12e

    :catch_123
    move-exception v0

    goto :goto_12c

    :catch_125
    move-exception v0

    goto :goto_12a

    :catch_127
    move-exception v0

    move-object/from16 v11, p3

    :goto_12a
    move-object/from16 v12, p4

    :goto_12c
    move-object/from16 v13, p6

    :goto_12e
    move/from16 v14, p7

    :goto_130
    move/from16 v15, p8

    :goto_132
    move-object/from16 v4, p10

    .line 1718
    .local v0, "e":Ljava/lang/SecurityException;
    :goto_134
    throw v0

    .line 1640
    .end local v0  # "e":Ljava/lang/SecurityException;
    .end local v6  # "targetUid":I
    .end local v7  # "targetPackage":Ljava/lang/String;
    .end local v8  # "targetFeatureId":Ljava/lang/String;
    .end local v9  # "isResolver":Z
    .end local v10  # "userId":I
    .restart local p12  # "userId":I
    :cond_135
    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v10, p12

    :try_start_141
    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Called without a process attached to activity"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "caller":Landroid/app/IApplicationThread;
    .end local p2  # "callingPackage":Ljava/lang/String;
    .end local p3  # "intent":Landroid/content/Intent;
    .end local p4  # "resolvedType":Ljava/lang/String;
    .end local p5  # "resultTo":Landroid/os/IBinder;
    .end local p6  # "resultWho":Ljava/lang/String;
    .end local p7  # "requestCode":I
    .end local p8  # "startFlags":I
    .end local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10  # "bOptions":Landroid/os/Bundle;
    .end local p11  # "ignoreTargetSecurity":Z
    .end local p12  # "userId":I
    throw v0

    .line 1637
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "caller":Landroid/app/IApplicationThread;
    .restart local p2  # "callingPackage":Ljava/lang/String;
    .restart local p3  # "intent":Landroid/content/Intent;
    .restart local p4  # "resolvedType":Ljava/lang/String;
    .restart local p5  # "resultTo":Landroid/os/IBinder;
    .restart local p6  # "resultWho":Ljava/lang/String;
    .restart local p7  # "requestCode":I
    .restart local p8  # "startFlags":I
    .restart local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10  # "bOptions":Landroid/os/Bundle;
    .restart local p11  # "ignoreTargetSecurity":Z
    .restart local p12  # "userId":I
    :cond_149
    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v10, p12

    new-instance v0, Ljava/lang/SecurityException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Called with bad activity token: "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "caller":Landroid/app/IApplicationThread;
    .end local p2  # "callingPackage":Ljava/lang/String;
    .end local p3  # "intent":Landroid/content/Intent;
    .end local p4  # "resolvedType":Ljava/lang/String;
    .end local p5  # "resultTo":Landroid/os/IBinder;
    .end local p6  # "resultWho":Ljava/lang/String;
    .end local p7  # "requestCode":I
    .end local p8  # "startFlags":I
    .end local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10  # "bOptions":Landroid/os/Bundle;
    .end local p11  # "ignoreTargetSecurity":Z
    .end local p12  # "userId":I
    throw v0

    .line 1632
    .end local v5  # "sourceRecord":Lcom/android/server/wm/ActivityRecord;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "caller":Landroid/app/IApplicationThread;
    .restart local p2  # "callingPackage":Ljava/lang/String;
    .restart local p3  # "intent":Landroid/content/Intent;
    .restart local p4  # "resolvedType":Ljava/lang/String;
    .restart local p5  # "resultTo":Landroid/os/IBinder;
    .restart local p6  # "resultWho":Ljava/lang/String;
    .restart local p7  # "requestCode":I
    .restart local p8  # "startFlags":I
    .restart local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10  # "bOptions":Landroid/os/Bundle;
    .restart local p11  # "ignoreTargetSecurity":Z
    .restart local p12  # "userId":I
    :cond_16e
    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v10, p12

    new-instance v0, Ljava/lang/SecurityException;

    const-string v2, "Must be called from an activity"

    invoke-direct {v0, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "caller":Landroid/app/IApplicationThread;
    .end local p2  # "callingPackage":Ljava/lang/String;
    .end local p3  # "intent":Landroid/content/Intent;
    .end local p4  # "resolvedType":Ljava/lang/String;
    .end local p5  # "resultTo":Landroid/os/IBinder;
    .end local p6  # "resultWho":Ljava/lang/String;
    .end local p7  # "requestCode":I
    .end local p8  # "startFlags":I
    .end local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .end local p10  # "bOptions":Landroid/os/Bundle;
    .end local p11  # "ignoreTargetSecurity":Z
    .end local p12  # "userId":I
    throw v0

    .line 1681
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "caller":Landroid/app/IApplicationThread;
    .restart local p2  # "callingPackage":Ljava/lang/String;
    .restart local p3  # "intent":Landroid/content/Intent;
    .restart local p4  # "resolvedType":Ljava/lang/String;
    .restart local p5  # "resultTo":Landroid/os/IBinder;
    .restart local p6  # "resultWho":Ljava/lang/String;
    .restart local p7  # "requestCode":I
    .restart local p8  # "startFlags":I
    .restart local p9  # "profilerInfo":Landroid/app/ProfilerInfo;
    .restart local p10  # "bOptions":Landroid/os/Bundle;
    .restart local p11  # "ignoreTargetSecurity":Z
    .restart local p12  # "userId":I
    :catchall_182
    move-exception v0

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move-object/from16 v13, p6

    move/from16 v14, p7

    move/from16 v15, p8

    move/from16 v10, p12

    :goto_18f
    monitor-exit v4
    :try_end_190
    .catchall {:try_start_141 .. :try_end_190} :catchall_194

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_194
    move-exception v0

    goto :goto_18f
.end method

.method public startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .registers 27
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "callingFeatureId"  # Ljava/lang/String;
    .param p4, "intent"  # Landroid/content/Intent;
    .param p5, "resolvedType"  # Ljava/lang/String;
    .param p6, "resultTo"  # Landroid/os/IBinder;
    .param p7, "resultWho"  # Ljava/lang/String;
    .param p8, "requestCode"  # I
    .param p9, "startFlags"  # I
    .param p10, "profilerInfo"  # Landroid/app/ProfilerInfo;
    .param p11, "bOptions"  # Landroid/os/Bundle;
    .param p12, "userId"  # I

    .line 1281
    const/4 v13, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move/from16 v9, p9

    move-object/from16 v10, p10

    move-object/from16 v11, p11

    move/from16 v12, p12

    invoke-direct/range {v0 .. v13}, Lcom/android/server/wm/ActivityTaskManagerService;->startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/app/ProfilerInfo;Landroid/os/Bundle;IZ)I

    move-result v0

    return v0
.end method

.method public startActivityFromGameSession(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;II)I
    .registers 14
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "callingFeatureId"  # Ljava/lang/String;
    .param p4, "callingPid"  # I
    .param p5, "callingUid"  # I
    .param p6, "intent"  # Landroid/content/Intent;
    .param p7, "taskId"  # I
    .param p8, "userId"  # I

    .line 1851
    const-string v0, "android.permission.MANAGE_GAME_ACTIVITY"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->checkCallingPermission(Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_5e

    .line 1859
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 1861
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 1862
    .local v0, "activityOptions":Landroid/app/ActivityOptions;
    invoke-virtual {v0, p7}, Landroid/app/ActivityOptions;->setLaunchTaskId(I)V

    .line 1864
    const-string/jumbo v1, "startActivityFromGameSession"

    invoke-virtual {p0, p4, p5, p8, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p8

    .line 1866
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 1868
    .local v2, "origId":J
    :try_start_1d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v4

    .line 1869
    invoke-virtual {v4, p6, v1}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1870
    invoke-virtual {v1, p1}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1871
    invoke-virtual {v1, p5}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1872
    invoke-virtual {v1, p4}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1873
    invoke-virtual {p6}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1874
    invoke-virtual {v1, p3}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1875
    invoke-virtual {v1, p8}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1876
    invoke-virtual {v0}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1877
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v1, v4}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v1

    .line 1878
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v1
    :try_end_55
    .catchall {:try_start_1d .. :try_end_55} :catchall_59

    .line 1880
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1868
    return v1

    .line 1880
    :catchall_59
    move-exception v1

    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1881
    throw v1

    .line 1852
    .end local v0  # "activityOptions":Landroid/app/ActivityOptions;
    .end local v2  # "origId":J
    :cond_5e
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Permission Denial: startActivityFromGameSession() from pid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1853
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", uid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1854
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " requires "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1856
    .local v0, "msg":Ljava/lang/String;
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1857
    new-instance v1, Ljava/lang/SecurityException;

    invoke-direct {v1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final startActivityFromRecents(ILandroid/os/Bundle;)I
    .registers 9
    .param p1, "taskId"  # I
    .param p2, "bOptions"  # Landroid/os/Bundle;

    .line 1832
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.START_TASKS_FROM_RECENTS"

    const-string/jumbo v2, "startActivityFromRecents()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1835
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v0

    .line 1836
    .local v0, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    .line 1837
    .local v1, "callingUid":I
    invoke-static {p2}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v2

    .line 1838
    .local v2, "safeOptions":Lcom/android/server/wm/SafeActivityOptions;
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3

    .line 1840
    .local v3, "origId":J
    :try_start_1a
    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v5, v0, v1, p1, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->startActivityFromRecents(IIILcom/android/server/wm/SafeActivityOptions;)I

    move-result v5
    :try_end_20
    .catchall {:try_start_1a .. :try_end_20} :catchall_24

    .line 1843
    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1840
    return v5

    .line 1843
    :catchall_24
    move-exception v5

    invoke-static {v3, v4}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1844
    throw v5
.end method

.method public startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IIntentSender;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
    .registers 29
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "target"  # Landroid/content/IIntentSender;
    .param p3, "allowlistToken"  # Landroid/os/IBinder;
    .param p4, "fillInIntent"  # Landroid/content/Intent;
    .param p5, "resolvedType"  # Ljava/lang/String;
    .param p6, "resultTo"  # Landroid/os/IBinder;
    .param p7, "resultWho"  # Ljava/lang/String;
    .param p8, "requestCode"  # I
    .param p9, "flagsMask"  # I
    .param p10, "flagsValues"  # I
    .param p11, "bOptions"  # Landroid/os/Bundle;

    .line 1326
    move-object/from16 v1, p0

    move-object/from16 v2, p2

    const-string/jumbo v0, "startActivityIntentSender"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1328
    if-eqz p4, :cond_1b

    invoke-virtual/range {p4 .. p4}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_1b

    .line 1329
    :cond_13
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "File descriptors passed in Intent"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1332
    :cond_1b
    :goto_1b
    instance-of v0, v2, Lcom/android/server/am/PendingIntentRecord;

    if-eqz v0, :cond_6e

    .line 1336
    move-object/from16 v16, v2

    check-cast v16, Lcom/android/server/am/PendingIntentRecord;

    .line 1338
    .local v16, "pir":Lcom/android/server/am/PendingIntentRecord;
    iget-object v3, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_26
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1341
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1342
    .local v0, "topFocusedRootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_48

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_48

    .line 1343
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 1344
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    if-ne v4, v5, :cond_48

    .line 1345
    const/4 v4, 0x2

    iput v4, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    .line 1347
    .end local v0  # "topFocusedRootTask":Lcom/android/server/wm/Task;
    :cond_48
    monitor-exit v3
    :try_end_49
    .catchall {:try_start_26 .. :try_end_49} :catchall_68

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 1348
    const/4 v4, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v3, v16

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p3

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move/from16 v12, p8

    move/from16 v13, p9

    move/from16 v14, p10

    move-object/from16 v15, p11

    invoke-virtual/range {v3 .. v15}, Lcom/android/server/am/PendingIntentRecord;->sendInner(ILandroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Landroid/content/IIntentReceiver;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I

    move-result v0

    return v0

    .line 1347
    :catchall_68
    move-exception v0

    :try_start_69
    monitor-exit v3
    :try_end_6a
    .catchall {:try_start_69 .. :try_end_6a} :catchall_68

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    .line 1333
    .end local v16  # "pir":Lcom/android/server/am/PendingIntentRecord;
    :cond_6e
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v3, "Bad PendingIntent object"

    invoke-direct {v0, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I
    .registers 16
    .param p1, "caller"  # Landroid/app/IApplicationThread;
    .param p2, "callingPackage"  # Ljava/lang/String;
    .param p3, "callingFeatureId"  # Ljava/lang/String;
    .param p4, "intent"  # Landroid/content/Intent;
    .param p5, "resolvedType"  # Ljava/lang/String;
    .param p6, "resultTo"  # Landroid/os/IBinder;
    .param p7, "resultWho"  # Ljava/lang/String;
    .param p8, "requestCode"  # I
    .param p9, "startFlags"  # I
    .param p10, "config"  # Landroid/content/res/Configuration;
    .param p11, "bOptions"  # Landroid/os/Bundle;
    .param p12, "userId"  # I

    .line 1591
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 1592
    const-string/jumbo v0, "startActivityWithConfig"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceNotIsolatedCaller(Ljava/lang/String;)V

    .line 1593
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {p0, v1, v2, p12, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p12

    .line 1596
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    invoke-virtual {v1, p4, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1597
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1598
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1599
    invoke-virtual {v0, p3}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1600
    invoke-virtual {v0, p5}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1601
    invoke-virtual {v0, p6}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1602
    invoke-virtual {v0, p7}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1603
    invoke-virtual {v0, p8}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1604
    invoke-virtual {v0, p9}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1605
    invoke-virtual {v0, p10}, Lcom/android/server/wm/ActivityStarter;->setGlobalConfiguration(Landroid/content/res/Configuration;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1606
    invoke-virtual {v0, p11}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1607
    invoke-virtual {v0, p12}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1608
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0

    .line 1596
    return v0
.end method

.method public startAssistantActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/os/Bundle;I)I
    .registers 13
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "callingFeatureId"  # Ljava/lang/String;
    .param p3, "callingPid"  # I
    .param p4, "callingUid"  # I
    .param p5, "intent"  # Landroid/content/Intent;
    .param p6, "resolvedType"  # Ljava/lang/String;
    .param p7, "bOptions"  # Landroid/os/Bundle;
    .param p8, "userId"  # I

    .line 1764
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 1765
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.BIND_VOICE_INTERACTION"

    const-string/jumbo v2, "startAssistantActivity()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1766
    const-string/jumbo v0, "startAssistantActivity"

    invoke-virtual {p0, p3, p4, p8, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p8

    .line 1768
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1770
    .local v1, "origId":J
    :try_start_18
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v3

    invoke-virtual {v3, p5, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1771
    invoke-virtual {v0, p4}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1772
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1773
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1774
    invoke-virtual {v0, p6}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1775
    invoke-virtual {v0, p7}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1776
    invoke-virtual {v0, p8}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    const/4 v3, 0x1

    .line 1777
    invoke-virtual {v0, v3}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1778
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0
    :try_end_41
    .catchall {:try_start_18 .. :try_end_41} :catchall_45

    .line 1780
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1770
    return v0

    .line 1780
    :catchall_45
    move-exception v0

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1781
    throw v0
.end method

.method public startBackNavigation(Z)Landroid/window/BackNavigationInfo;
    .registers 5
    .param p1, "requestAnimation"  # Z

    .line 1886
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.START_TASKS_FROM_RECENTS"

    const-string/jumbo v2, "startBackNavigation()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1888
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mBackNavigationController:Lcom/android/server/wm/BackNavigationController;

    if-nez v0, :cond_10

    .line 1889
    const/4 v0, 0x0

    return-object v0

    .line 1891
    :cond_10
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/BackNavigationController;->startBackNavigation(Lcom/android/server/wm/WindowManagerService;Z)Landroid/window/BackNavigationInfo;

    move-result-object v0

    return-object v0
.end method

.method public startDreamActivity(Landroid/content/Intent;)Z
    .registers 13
    .param p1, "intent"  # Landroid/content/Intent;

    .line 1508
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 1509
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceCallerIsDream(Ljava/lang/String;)V

    .line 1511
    new-instance v0, Landroid/content/pm/ActivityInfo;

    invoke-direct {v0}, Landroid/content/pm/ActivityInfo;-><init>()V

    .line 1512
    .local v0, "a":Landroid/content/pm/ActivityInfo;
    const v1, 0x1030417

    iput v1, v0, Landroid/content/pm/ActivityInfo;->theme:I

    .line 1513
    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/content/pm/ActivityInfo;->exported:Z

    .line 1514
    const-class v2, Landroid/service/dreams/DreamActivity;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1515
    iput-boolean v1, v0, Landroid/content/pm/ActivityInfo;->enabled:Z

    .line 1516
    const/4 v2, 0x3

    iput v2, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 1517
    iput v1, v0, Landroid/content/pm/ActivityInfo;->persistableMode:I

    .line 1518
    const/4 v2, -0x1

    iput v2, v0, Landroid/content/pm/ActivityInfo;->screenOrientation:I

    .line 1519
    const/4 v2, 0x0

    iput v2, v0, Landroid/content/pm/ActivityInfo;->colorMode:I

    .line 1520
    iget v3, v0, Landroid/content/pm/ActivityInfo;->flags:I

    or-int/lit8 v3, v3, 0x20

    iput v3, v0, Landroid/content/pm/ActivityInfo;->flags:I

    .line 1521
    iput v2, v0, Landroid/content/pm/ActivityInfo;->resizeMode:I

    .line 1523
    invoke-static {}, Landroid/app/ActivityOptions;->makeBasic()Landroid/app/ActivityOptions;

    move-result-object v2

    .line 1524
    .local v2, "options":Landroid/app/ActivityOptions;
    const/4 v3, 0x5

    invoke-virtual {v2, v3}, Landroid/app/ActivityOptions;->setLaunchActivityType(I)V

    .line 1526
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3

    :try_start_43
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1527
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowProcessControllerMap;->getProcess(I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v4

    .line 1529
    .local v4, "process":Lcom/android/server/wm/WindowProcessController;
    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iput-object v5, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 1530
    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v5, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1531
    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    iput-object v5, v0, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 1532
    iget-object v5, v4, Lcom/android/server/wm/WindowProcessController;->mInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->uiOptions:I

    iput v5, v0, Landroid/content/pm/ActivityInfo;->uiOptions:I

    .line 1533
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "android:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/dream"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    iput-object v5, v0, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 1535
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 1536
    .local v5, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v6

    .line 1538
    .local v6, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v7
    :try_end_8d
    .catchall {:try_start_43 .. :try_end_8d} :catchall_d1

    .line 1540
    .local v7, "origId":J
    :try_start_8d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v9

    const-string v10, "dream"

    invoke-virtual {v9, p1, v10}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v9

    .line 1541
    invoke-virtual {v9, v5}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v9

    .line 1542
    invoke-virtual {v9, v6}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v9

    .line 1543
    invoke-virtual {p1}, Landroid/content/Intent;->getPackage()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v9

    .line 1544
    invoke-virtual {v9, v0}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v9

    .line 1545
    invoke-virtual {v2}, Landroid/app/ActivityOptions;->toBundle()Landroid/os/Bundle;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v9

    .line 1548
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v10

    invoke-virtual {v9, v10}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v9

    .line 1549
    invoke-virtual {v9, v1}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v9

    .line 1550
    invoke-virtual {v9}, Lcom/android/server/wm/ActivityStarter;->execute()I
    :try_end_c2
    .catchall {:try_start_8d .. :try_end_c2} :catchall_cb

    .line 1551
    nop

    .line 1553
    :try_start_c3
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v3
    :try_end_c7
    .catchall {:try_start_c3 .. :try_end_c7} :catchall_d1

    .line 1551
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v1

    .line 1553
    :catchall_cb
    move-exception v1

    :try_start_cc
    invoke-static {v7, v8}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1554
    nop

    .end local v0  # "a":Landroid/content/pm/ActivityInfo;
    .end local v2  # "options":Landroid/app/ActivityOptions;
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "intent":Landroid/content/Intent;
    throw v1

    .line 1555
    .end local v4  # "process":Lcom/android/server/wm/WindowProcessController;
    .end local v5  # "callingUid":I
    .end local v6  # "callingPid":I
    .end local v7  # "origId":J
    .restart local v0  # "a":Landroid/content/pm/ActivityInfo;
    .restart local v2  # "options":Landroid/app/ActivityOptions;
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "intent":Landroid/content/Intent;
    :catchall_d1
    move-exception v1

    monitor-exit v3
    :try_end_d3
    .catchall {:try_start_cc .. :try_end_d3} :catchall_d1

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method startLaunchPowerMode(I)V
    .registers 7
    .param p1, "reason"  # I

    .line 4612
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPowerManagerInternal:Landroid/os/PowerManagerInternal;

    const/4 v1, 0x1

    if-eqz v0, :cond_9

    .line 4613
    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManagerInternal;->setPowerMode(IZ)V

    .line 4615
    :cond_9
    iget v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLaunchPowerModeReasons:I

    or-int/2addr v0, p1

    iput v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLaunchPowerModeReasons:I

    .line 4616
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_2c

    .line 4617
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRetainPowerModeAndTopProcessState:Z

    const/4 v2, 0x3

    if-eqz v0, :cond_1c

    .line 4618
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeMessages(I)V

    .line 4620
    :cond_1c
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRetainPowerModeAndTopProcessState:Z

    .line 4621
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    const-wide/16 v3, 0x3e8

    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 4623
    const-string v0, "ActivityTaskManager"

    const-string v1, "Temporarily retain top process state for launching app"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4625
    :cond_2c
    return-void
.end method

.method startLockTaskMode(Lcom/android/server/wm/Task;Z)V
    .registers 11
    .param p1, "task"  # Lcom/android/server/wm/Task;
    .param p2, "isSystemCaller"  # Z

    .line 2684
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_17

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x11a27eaf

    const/4 v5, 0x0

    new-array v6, v1, [Ljava/lang/Object;

    aput-object v0, v6, v2

    invoke-static {v3, v4, v2, v5, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2685
    .end local v0  # "protoLogParam0":Ljava/lang/String;
    :cond_17
    if-eqz p1, :cond_57

    iget v0, p1, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-nez v0, :cond_1e

    goto :goto_57

    .line 2689
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2690
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_4f

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v3

    if-ne p1, v3, :cond_4f

    .line 2700
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 2701
    .local v3, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v4

    .line 2704
    .local v4, "ident":J
    :try_start_34
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    new-array v1, v1, [I

    const/4 v7, 0x2

    aput v7, v1, v2

    invoke-virtual {v6, v1}, Lcom/android/server/wm/RootWindowContainer;->removeRootTasksInWindowingModes([I)V

    .line 2706
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v1

    invoke-virtual {v1, p1, p2, v3}, Lcom/android/server/wm/LockTaskController;->startLockTaskMode(Lcom/android/server/wm/Task;ZI)V
    :try_end_45
    .catchall {:try_start_34 .. :try_end_45} :catchall_4a

    .line 2708
    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2709
    nop

    .line 2710
    return-void

    .line 2708
    :catchall_4a
    move-exception v1

    invoke-static {v4, v5}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2709
    throw v1

    .line 2691
    .end local v3  # "callingUid":I
    .end local v4  # "ident":J
    :cond_4f
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Invalid task, not in foreground"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2686
    .end local v0  # "rootTask":Lcom/android/server/wm/Task;
    :cond_57
    :goto_57
    return-void
.end method

.method public startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .registers 21
    .param p1, "callingActivity"  # Landroid/os/IBinder;
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "bOptions"  # Landroid/os/Bundle;

    .line 1356
    move-object/from16 v1, p2

    if-eqz v1, :cond_13

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->hasFileDescriptors()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_13

    .line 1357
    :cond_b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v2, "File descriptors passed in Intent"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1359
    :cond_13
    :goto_13
    invoke-static/range {p3 .. p3}, Lcom/android/server/wm/SafeActivityOptions;->fromBundle(Landroid/os/Bundle;)Lcom/android/server/wm/SafeActivityOptions;

    move-result-object v2

    .line 1361
    .local v2, "options":Lcom/android/server/wm/SafeActivityOptions;
    move-object/from16 v3, p0

    iget-object v4, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v4

    :try_start_1c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1362
    invoke-static/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isInRootTaskLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    move-object v5, v0

    .line 1363
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v6, 0x0

    if-nez v5, :cond_2f

    .line 1364
    invoke-static {v2}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1365
    monitor-exit v4
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_1dd

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 1367
    :cond_2f
    :try_start_2f
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-nez v0, :cond_3d

    .line 1369
    invoke-static {v2}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1370
    monitor-exit v4
    :try_end_39
    .catchall {:try_start_2f .. :try_end_39} :catchall_1dd

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 1372
    :cond_3d
    :try_start_3d
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V
    :try_end_42
    .catchall {:try_start_3d .. :try_end_42} :catchall_1dd

    move-object v1, v0

    .line 1374
    .end local p2  # "intent":Landroid/content/Intent;
    .local v1, "intent":Landroid/content/Intent;
    :try_start_43
    iget-object v0, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v0

    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v7}, Landroid/content/Intent;->getType()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v0, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 1376
    const/4 v13, 0x0

    invoke-virtual {v1, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1378
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v0
    :try_end_5a
    .catchall {:try_start_43 .. :try_end_5a} :catchall_1e3

    and-int/lit8 v0, v0, 0x8

    const/4 v14, 0x1

    if-eqz v0, :cond_61

    move v0, v14

    goto :goto_62

    :cond_61
    move v0, v6

    :goto_62
    move v15, v0

    .line 1380
    .local v15, "debug":Z
    const/16 v16, 0x0

    .line 1383
    .local v16, "aInfo":Landroid/content/pm/ActivityInfo;
    :try_start_65
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v7

    iget-object v9, v5, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    const-wide/32 v10, 0x10400

    .line 1386
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v12

    .line 1383
    move-object v8, v1

    invoke-interface/range {v7 .. v12}, Landroid/content/pm/IPackageManager;->queryIntentActivities(Landroid/content/Intent;Ljava/lang/String;JI)Landroid/content/pm/ParceledListSlice;

    move-result-object v0

    .line 1386
    invoke-virtual {v0}, Landroid/content/pm/ParceledListSlice;->getList()Ljava/util/List;

    move-result-object v0

    .line 1389
    .local v0, "resolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v0, :cond_82

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    goto :goto_83

    :cond_82
    move v7, v6

    .line 1390
    .local v7, "N":I
    :goto_83
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_84
    if-ge v8, v7, :cond_127

    .line 1391
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/content/pm/ResolveInfo;

    .line 1392
    .local v9, "rInfo":Landroid/content/pm/ResolveInfo;
    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v11, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_121

    iget-object v10, v9, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v11, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v11, v11, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 1393
    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_121

    .line 1396
    add-int/2addr v8, v14

    .line 1397
    if-ge v8, v7, :cond_b4

    .line 1398
    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    iget-object v10, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;
    :try_end_b1
    .catch Landroid/os/RemoteException; {:try_start_65 .. :try_end_b1} :catch_12a
    .catchall {:try_start_65 .. :try_end_b1} :catchall_1e3

    move-object/from16 v16, v10

    goto :goto_b6

    .line 1397
    :cond_b4
    move-object/from16 v10, v16

    .line 1400
    .end local v16  # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v10, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_b6
    if-eqz v15, :cond_11e

    .line 1401
    :try_start_b8
    const-string v11, "ActivityTaskManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Next matching activity: found current "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "/"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v5, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1403
    const-string v11, "ActivityTaskManager"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Next matching activity: next is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    if-nez v10, :cond_f3

    .line 1404
    const-string/jumbo v13, "null"

    goto :goto_10e

    :cond_f3
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v14, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, "/"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    iget-object v14, v10, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    :goto_10e
    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 1403
    invoke-static {v11, v12}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_119
    .catch Landroid/os/RemoteException; {:try_start_b8 .. :try_end_119} :catch_11a
    .catchall {:try_start_b8 .. :try_end_119} :catchall_1e3

    goto :goto_11e

    .line 1409
    .end local v0  # "resolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7  # "N":I
    .end local v8  # "i":I
    .end local v9  # "rInfo":Landroid/content/pm/ResolveInfo;
    :catch_11a
    move-exception v0

    move-object/from16 v16, v10

    goto :goto_12b

    .line 1410
    :cond_11e
    :goto_11e
    move-object/from16 v16, v10

    goto :goto_127

    .line 1390
    .end local v10  # "aInfo":Landroid/content/pm/ActivityInfo;
    .restart local v0  # "resolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v7  # "N":I
    .restart local v8  # "i":I
    .restart local v16  # "aInfo":Landroid/content/pm/ActivityInfo;
    :cond_121
    add-int/lit8 v8, v8, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x1

    goto/16 :goto_84

    .line 1410
    .end local v0  # "resolves":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v7  # "N":I
    .end local v8  # "i":I
    :cond_127
    :goto_127
    move-object/from16 v0, v16

    goto :goto_12d

    .line 1409
    :catch_12a
    move-exception v0

    :goto_12b
    move-object/from16 v0, v16

    .line 1412
    .end local v16  # "aInfo":Landroid/content/pm/ActivityInfo;
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    :goto_12d
    if-nez v0, :cond_140

    .line 1414
    :try_start_12f
    invoke-static {v2}, Lcom/android/server/wm/SafeActivityOptions;->abort(Lcom/android/server/wm/SafeActivityOptions;)V

    .line 1415
    if-eqz v15, :cond_13b

    const-string v7, "ActivityTaskManager"

    const-string v8, "Next matching activity: nothing found"

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    :cond_13b
    monitor-exit v4
    :try_end_13c
    .catchall {:try_start_12f .. :try_end_13c} :catchall_1e3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v6

    .line 1419
    :cond_140
    :try_start_140
    new-instance v7, Landroid/content/ComponentName;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v9, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v7, v8, v9}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1421
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v7

    const v8, -0x1e000001

    and-int/2addr v7, v8

    invoke-virtual {v1, v7}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 1430
    iget-boolean v7, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1431
    .local v7, "wasFinishing":Z
    const/4 v8, 0x1

    iput-boolean v8, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1434
    iget-object v8, v5, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1435
    .local v8, "resultTo":Lcom/android/server/wm/ActivityRecord;
    iget-object v9, v5, Lcom/android/server/wm/ActivityRecord;->resultWho:Ljava/lang/String;

    .line 1436
    .local v9, "resultWho":Ljava/lang/String;
    iget v10, v5, Lcom/android/server/wm/ActivityRecord;->requestCode:I

    .line 1437
    .local v10, "requestCode":I
    const/4 v11, 0x0

    iput-object v11, v5, Lcom/android/server/wm/ActivityRecord;->resultTo:Lcom/android/server/wm/ActivityRecord;

    .line 1438
    if-eqz v8, :cond_16c

    .line 1439
    invoke-virtual {v8, v5, v9, v10}, Lcom/android/server/wm/ActivityRecord;->removeResultsLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;I)V

    .line 1442
    :cond_16c
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 1444
    .local v12, "origId":J
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v14

    const-string/jumbo v11, "startNextMatchingActivity"

    .line 1445
    invoke-virtual {v14, v1, v11}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v11

    iget-object v14, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1446
    invoke-virtual {v14}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v14

    invoke-virtual {v11, v14}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v11

    iget-object v14, v5, Lcom/android/server/wm/ActivityRecord;->resolvedType:Ljava/lang/String;

    .line 1447
    invoke-virtual {v11, v14}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v11

    .line 1448
    invoke-virtual {v11, v0}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v11

    .line 1449
    if-eqz v8, :cond_194

    iget-object v14, v8, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    goto :goto_195

    :cond_194
    const/4 v14, 0x0

    :goto_195
    invoke-virtual {v11, v14}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v11

    .line 1450
    invoke-virtual {v11, v9}, Lcom/android/server/wm/ActivityStarter;->setResultWho(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v11

    .line 1451
    invoke-virtual {v11, v10}, Lcom/android/server/wm/ActivityStarter;->setRequestCode(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v11

    .line 1452
    const/4 v14, -0x1

    invoke-virtual {v11, v14}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v11

    iget v6, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 1453
    invoke-virtual {v11, v6}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v6

    iget-object v11, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 1454
    invoke-virtual {v6, v11}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v6

    iget-object v11, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    .line 1455
    invoke-virtual {v6, v11}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v6

    .line 1456
    invoke-virtual {v6, v14}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v6

    iget v11, v5, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    .line 1457
    invoke-virtual {v6, v11}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v6

    .line 1458
    invoke-virtual {v6, v2}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Lcom/android/server/wm/SafeActivityOptions;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v6

    .line 1459
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v6

    .line 1460
    .local v6, "res":I
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1462
    iput-boolean v7, v5, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    .line 1463
    if-eqz v6, :cond_1d7

    .line 1464
    monitor-exit v4
    :try_end_1d2
    .catchall {:try_start_140 .. :try_end_1d2} :catchall_1e3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v4, 0x0

    return v4

    .line 1466
    :cond_1d7
    :try_start_1d7
    monitor-exit v4
    :try_end_1d8
    .catchall {:try_start_1d7 .. :try_end_1d8} :catchall_1e3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    const/4 v4, 0x1

    return v4

    .line 1467
    .end local v0  # "aInfo":Landroid/content/pm/ActivityInfo;
    .end local v1  # "intent":Landroid/content/Intent;
    .end local v5  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v6  # "res":I
    .end local v7  # "wasFinishing":Z
    .end local v8  # "resultTo":Lcom/android/server/wm/ActivityRecord;
    .end local v9  # "resultWho":Ljava/lang/String;
    .end local v10  # "requestCode":I
    .end local v12  # "origId":J
    .end local v15  # "debug":Z
    .restart local p2  # "intent":Landroid/content/Intent;
    :catchall_1dd
    move-exception v0

    .end local p2  # "intent":Landroid/content/Intent;
    .restart local v1  # "intent":Landroid/content/Intent;
    :goto_1de
    :try_start_1de
    monitor-exit v4
    :try_end_1df
    .catchall {:try_start_1de .. :try_end_1df} :catchall_1e3

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v0

    :catchall_1e3
    move-exception v0

    goto :goto_1de
.end method

.method startProcessAsync(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V
    .registers 19
    .param p1, "activity"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "knownToBeDead"  # Z
    .param p3, "isTop"  # Z
    .param p4, "hostingType"  # Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    .line 5013
    const-wide/16 v3, 0x20

    :try_start_4
    invoke-static {v3, v4}, Landroid/os/Trace;->isTagEnabled(J)Z

    move-result v0

    if-eqz v0, :cond_22

    .line 5014
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "dispatchingStartProcess:"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v4, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 5019
    :cond_22
    new-instance v5, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda0;

    invoke-direct {v5}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda0;-><init>()V

    iget-object v6, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v8, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 5020
    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 5023
    invoke-static/range {p3 .. p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    .line 5019
    move-object/from16 v11, p4

    invoke-static/range {v5 .. v13}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/OctConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 5024
    .local v0, "m":Landroid/os/Message;
    iget-object v5, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v5, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z
    :try_end_4a
    .catchall {:try_start_4 .. :try_end_4a} :catchall_50

    .line 5026
    nop

    .end local v0  # "m":Landroid/os/Message;
    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 5027
    nop

    .line 5028
    return-void

    .line 5026
    :catchall_50
    move-exception v0

    invoke-static {v3, v4}, Landroid/os/Trace;->traceEnd(J)V

    .line 5027
    throw v0
.end method

.method public startRecentsActivity(Landroid/content/Intent;JLandroid/view/IRecentsAnimationRunner;)V
    .registers 28
    .param p1, "intent"  # Landroid/content/Intent;
    .param p2, "eventTime"  # J
    .param p4, "recentsAnimationRunner"  # Landroid/view/IRecentsAnimationRunner;

    .line 1794
    move-object/from16 v11, p0

    move-object/from16 v12, p1

    move-object/from16 v15, p4

    const-string/jumbo v0, "startRecentsActivity()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 1795
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v14

    .line 1796
    .local v14, "callingPid":I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v13

    .line 1797
    .local v13, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v20

    .line 1799
    .local v20, "origId":J
    :try_start_18
    iget-object v6, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v6
    :try_end_1b
    .catchall {:try_start_18 .. :try_end_1b} :catchall_b5

    :try_start_1b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 1800
    iget-object v0, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRecentsComponent()Landroid/content/ComponentName;

    move-result-object v7

    .line 1801
    .local v7, "recentsComponent":Landroid/content/ComponentName;
    iget-object v0, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRecentsComponentFeatureId()Ljava/lang/String;

    move-result-object v8

    .line 1802
    .local v8, "recentsFeatureId":Ljava/lang/String;
    iget-object v0, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0}, Lcom/android/server/wm/RecentTasks;->getRecentsComponentUid()I

    move-result v9

    .line 1803
    .local v9, "recentsUid":I
    invoke-virtual {v11, v14, v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(II)Lcom/android/server/wm/WindowProcessController;

    move-result-object v10

    .line 1806
    .local v10, "caller":Lcom/android/server/wm/WindowProcessController;
    new-instance v0, Lcom/android/server/wm/RecentsAnimation;

    iget-object v3, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 1807
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v4

    iget-object v5, v11, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;
    :try_end_3e
    .catchall {:try_start_1b .. :try_end_3e} :catchall_a4

    move-object v1, v0

    move-object/from16 v2, p0

    move-object/from16 v22, v6

    move-object/from16 v6, p1

    :try_start_45
    invoke-direct/range {v1 .. v10}, Lcom/android/server/wm/RecentsAnimation;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Lcom/android/server/wm/ActivityTaskSupervisor;Lcom/android/server/wm/ActivityStartController;Lcom/android/server/wm/WindowManagerService;Landroid/content/Intent;Landroid/content/ComponentName;Ljava/lang/String;ILcom/android/server/wm/WindowProcessController;)V
    :try_end_48
    .catchall {:try_start_45 .. :try_end_48} :catchall_a0

    .line 1809
    .local v0, "anim":Lcom/android/server/wm/RecentsAnimation;
    if-nez v15, :cond_5b

    .line 1810
    :try_start_4a
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimation;->preloadRecentsActivity()V
    :try_end_4d
    .catchall {:try_start_4a .. :try_end_4d} :catchall_53

    move-wide/from16 v4, p2

    move v1, v13

    move v2, v14

    move-object v3, v15

    goto :goto_97

    .line 1824
    .end local v0  # "anim":Lcom/android/server/wm/RecentsAnimation;
    .end local v7  # "recentsComponent":Landroid/content/ComponentName;
    .end local v8  # "recentsFeatureId":Ljava/lang/String;
    .end local v9  # "recentsUid":I
    .end local v10  # "caller":Lcom/android/server/wm/WindowProcessController;
    :catchall_53
    move-exception v0

    move-wide/from16 v4, p2

    move v1, v13

    move v2, v14

    move-object v3, v15

    goto/16 :goto_ac

    .line 1814
    .restart local v0  # "anim":Lcom/android/server/wm/RecentsAnimation;
    .restart local v7  # "recentsComponent":Landroid/content/ComponentName;
    .restart local v8  # "recentsFeatureId":Ljava/lang/String;
    .restart local v9  # "recentsUid":I
    .restart local v10  # "caller":Lcom/android/server/wm/WindowProcessController;
    :cond_5b
    :try_start_5b
    const-string v1, "KEY_RECENTSANIMATION_MATRIX"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1
    :try_end_61
    .catchall {:try_start_5b .. :try_end_61} :catchall_a0

    if-eqz v1, :cond_8f

    .line 1815
    :try_start_63
    const-string v1, "KEY_RECENTSANIMATION_MATRIX"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->getFloatArrayExtra(Ljava/lang/String;)[F

    move-result-object v17

    .line 1816
    .local v17, "matrix":[F
    const-string v1, "KEY_RECENTSANIMATION_CROP"

    invoke-virtual {v12, v1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object v18

    .line 1817
    .local v18, "crop":[I
    const-string v1, "KEY_RECENTSANIMATION_RADIUS"

    const/4 v2, 0x0

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v19
    :try_end_76
    .catchall {:try_start_63 .. :try_end_76} :catchall_88

    .line 1818
    .local v19, "radius":F
    move v1, v13

    .end local v13  # "callingUid":I
    .local v1, "callingUid":I
    move-object v13, v0

    move v2, v14

    .end local v14  # "callingPid":I
    .local v2, "callingPid":I
    move-object/from16 v14, p4

    move-object v3, v15

    move-wide/from16 v15, p2

    :try_start_7e
    invoke-virtual/range {v13 .. v19}, Lcom/android/server/wm/RecentsAnimation;->startRecentsActivity(Landroid/view/IRecentsAnimationRunner;J[F[IF)V
    :try_end_81
    .catchall {:try_start_7e .. :try_end_81} :catchall_84

    .line 1819
    .end local v17  # "matrix":[F
    .end local v18  # "crop":[I
    .end local v19  # "radius":F
    move-wide/from16 v4, p2

    goto :goto_97

    .line 1824
    .end local v0  # "anim":Lcom/android/server/wm/RecentsAnimation;
    .end local v7  # "recentsComponent":Landroid/content/ComponentName;
    .end local v8  # "recentsFeatureId":Ljava/lang/String;
    .end local v9  # "recentsUid":I
    .end local v10  # "caller":Lcom/android/server/wm/WindowProcessController;
    :catchall_84
    move-exception v0

    move-wide/from16 v4, p2

    goto :goto_ac

    .end local v1  # "callingUid":I
    .end local v2  # "callingPid":I
    .restart local v13  # "callingUid":I
    .restart local v14  # "callingPid":I
    :catchall_88
    move-exception v0

    move v1, v13

    move v2, v14

    move-object v3, v15

    move-wide/from16 v4, p2

    goto :goto_ac

    .line 1820
    .restart local v0  # "anim":Lcom/android/server/wm/RecentsAnimation;
    .restart local v7  # "recentsComponent":Landroid/content/ComponentName;
    .restart local v8  # "recentsFeatureId":Ljava/lang/String;
    .restart local v9  # "recentsUid":I
    .restart local v10  # "caller":Lcom/android/server/wm/WindowProcessController;
    :cond_8f
    move v1, v13

    move v2, v14

    move-object v3, v15

    .end local v13  # "callingUid":I
    .end local v14  # "callingPid":I
    .restart local v1  # "callingUid":I
    .restart local v2  # "callingPid":I
    move-wide/from16 v4, p2

    :try_start_94
    invoke-virtual {v0, v3, v4, v5}, Lcom/android/server/wm/RecentsAnimation;->startRecentsActivity(Landroid/view/IRecentsAnimationRunner;J)V

    .line 1824
    .end local v0  # "anim":Lcom/android/server/wm/RecentsAnimation;
    .end local v7  # "recentsComponent":Landroid/content/ComponentName;
    .end local v8  # "recentsFeatureId":Ljava/lang/String;
    .end local v9  # "recentsUid":I
    .end local v10  # "caller":Lcom/android/server/wm/WindowProcessController;
    :goto_97
    monitor-exit v22
    :try_end_98
    .catchall {:try_start_94 .. :try_end_98} :catchall_b3

    :try_start_98
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_9b
    .catchall {:try_start_98 .. :try_end_9b} :catchall_b1

    .line 1826
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1827
    nop

    .line 1828
    return-void

    .line 1824
    .end local v1  # "callingUid":I
    .end local v2  # "callingPid":I
    .restart local v13  # "callingUid":I
    .restart local v14  # "callingPid":I
    :catchall_a0
    move-exception v0

    move-wide/from16 v4, p2

    goto :goto_a9

    :catchall_a4
    move-exception v0

    move-wide/from16 v4, p2

    move-object/from16 v22, v6

    :goto_a9
    move v1, v13

    move v2, v14

    move-object v3, v15

    .end local v13  # "callingUid":I
    .end local v14  # "callingPid":I
    .restart local v1  # "callingUid":I
    .restart local v2  # "callingPid":I
    :goto_ac
    :try_start_ac
    monitor-exit v22
    :try_end_ad
    .catchall {:try_start_ac .. :try_end_ad} :catchall_b3

    :try_start_ad
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v1  # "callingUid":I
    .end local v2  # "callingPid":I
    .end local v20  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "intent":Landroid/content/Intent;
    .end local p2  # "eventTime":J
    .end local p4  # "recentsAnimationRunner":Landroid/view/IRecentsAnimationRunner;
    throw v0
    :try_end_b1
    .catchall {:try_start_ad .. :try_end_b1} :catchall_b1

    .line 1826
    .restart local v1  # "callingUid":I
    .restart local v2  # "callingPid":I
    .restart local v20  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "intent":Landroid/content/Intent;
    .restart local p2  # "eventTime":J
    .restart local p4  # "recentsAnimationRunner":Landroid/view/IRecentsAnimationRunner;
    :catchall_b1
    move-exception v0

    goto :goto_bb

    .line 1824
    :catchall_b3
    move-exception v0

    goto :goto_ac

    .line 1826
    .end local v1  # "callingUid":I
    .end local v2  # "callingPid":I
    .restart local v13  # "callingUid":I
    .restart local v14  # "callingPid":I
    :catchall_b5
    move-exception v0

    move-wide/from16 v4, p2

    move v1, v13

    move v2, v14

    move-object v3, v15

    .end local v13  # "callingUid":I
    .end local v14  # "callingPid":I
    .restart local v1  # "callingUid":I
    .restart local v2  # "callingPid":I
    :goto_bb
    invoke-static/range {v20 .. v21}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1827
    throw v0
.end method

.method public startSystemLockTaskMode(I)V
    .registers 8
    .param p1, "taskId"  # I

    .line 2653
    const-string/jumbo v0, "startSystemLockTaskMode"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2655
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 2657
    .local v0, "ident":J
    :try_start_a
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_d
    .catchall {:try_start_a .. :try_end_d} :catchall_3e

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2658
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x0

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2660
    .local v3, "task":Lcom/android/server/wm/Task;
    if-nez v3, :cond_21

    .line 2661
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_d .. :try_end_1a} :catchall_38

    .line 2669
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2661
    return-void

    .line 2665
    :cond_21
    :try_start_21
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v4

    const-string/jumbo v5, "startSystemLockTaskMode"

    invoke-virtual {v4, v5}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 2666
    const/4 v4, 0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->startLockTaskMode(Lcom/android/server/wm/Task;Z)V

    .line 2667
    .end local v3  # "task":Lcom/android/server/wm/Task;
    monitor-exit v2
    :try_end_30
    .catchall {:try_start_21 .. :try_end_30} :catchall_38

    :try_start_30
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_33
    .catchall {:try_start_30 .. :try_end_33} :catchall_3e

    .line 2669
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2670
    nop

    .line 2671
    return-void

    .line 2667
    :catchall_38
    move-exception v3

    :try_start_39
    monitor-exit v2
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    :try_start_3a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    throw v3
    :try_end_3e
    .catchall {:try_start_3a .. :try_end_3e} :catchall_3e

    .line 2669
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    :catchall_3e
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2670
    throw v2
.end method

.method public startVoiceActivity(Ljava/lang/String;Ljava/lang/String;IILandroid/content/Intent;Ljava/lang/String;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ILandroid/app/ProfilerInfo;Landroid/os/Bundle;I)I
    .registers 16
    .param p1, "callingPackage"  # Ljava/lang/String;
    .param p2, "callingFeatureId"  # Ljava/lang/String;
    .param p3, "callingPid"  # I
    .param p4, "callingUid"  # I
    .param p5, "intent"  # Landroid/content/Intent;
    .param p6, "resolvedType"  # Ljava/lang/String;
    .param p7, "session"  # Landroid/service/voice/IVoiceInteractionSession;
    .param p8, "interactor"  # Lcom/android/internal/app/IVoiceInteractor;
    .param p9, "startFlags"  # I
    .param p10, "profilerInfo"  # Landroid/app/ProfilerInfo;
    .param p11, "bOptions"  # Landroid/os/Bundle;
    .param p12, "userId"  # I

    .line 1732
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityTaskManagerService;->assertPackageMatchesCallingUid(Ljava/lang/String;)V

    .line 1733
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.BIND_VOICE_INTERACTION"

    const-string/jumbo v2, "startVoiceActivity()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1734
    if-eqz p7, :cond_52

    if-eqz p8, :cond_52

    .line 1737
    const-string/jumbo v0, "startVoiceActivity"

    invoke-virtual {p0, p3, p4, p12, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->handleIncomingUser(IIILjava/lang/String;)I

    move-result p12

    .line 1739
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v1

    invoke-virtual {v1, p5, v0}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1740
    invoke-virtual {v0, p4}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1741
    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1742
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1743
    invoke-virtual {v0, p6}, Lcom/android/server/wm/ActivityStarter;->setResolvedType(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1744
    invoke-virtual {v0, p7}, Lcom/android/server/wm/ActivityStarter;->setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1745
    invoke-virtual {v0, p8}, Lcom/android/server/wm/ActivityStarter;->setVoiceInteractor(Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1746
    invoke-virtual {v0, p9}, Lcom/android/server/wm/ActivityStarter;->setStartFlags(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1747
    invoke-virtual {v0, p10}, Lcom/android/server/wm/ActivityStarter;->setProfilerInfo(Landroid/app/ProfilerInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1748
    invoke-virtual {v0, p11}, Lcom/android/server/wm/ActivityStarter;->setActivityOptions(Landroid/os/Bundle;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1749
    invoke-virtual {v0, p12}, Lcom/android/server/wm/ActivityStarter;->setUserId(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    const/4 v1, 0x1

    .line 1750
    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityStarter;->setAllowBackgroundActivityStart(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v0

    .line 1751
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v0

    .line 1739
    return v0

    .line 1735
    :cond_52
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "null session or interactor"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public stopAppSwitches()V
    .registers 6

    .line 4012
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.STOP_APP_SWITCHES"

    const-string/jumbo v2, "stopAppSwitches"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 4013
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4014
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAppSwitchesState:I

    .line 4015
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLastStopAppSwitchesTime:J

    .line 4016
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeMessages(I)V

    .line 4017
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    const-wide/16 v3, 0x1f4

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendEmptyMessageDelayed(IJ)Z

    .line 4018
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_d .. :try_end_27} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4019
    return-void

    .line 4018
    :catchall_2b
    move-exception v1

    :try_start_2c
    monitor-exit v0
    :try_end_2d
    .catchall {:try_start_2c .. :try_end_2d} :catchall_2b

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method stopLockTaskModeInternal(Landroid/os/IBinder;Z)V
    .registers 10
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "isSystemCaller"  # Z

    .line 2713
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2714
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 2716
    .local v1, "ident":J
    :try_start_8
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v3
    :try_end_b
    .catchall {:try_start_8 .. :try_end_b} :catchall_4b

    :try_start_b
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2717
    const/4 v4, 0x0

    .line 2718
    .local v4, "task":Lcom/android/server/wm/Task;
    if-eqz p1, :cond_24

    .line 2719
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 2720
    .local v5, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v5, :cond_1f

    .line 2721
    monitor-exit v3
    :try_end_18
    .catchall {:try_start_b .. :try_end_18} :catchall_45

    .line 2734
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2721
    return-void

    .line 2723
    :cond_1f
    :try_start_1f
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v6

    move-object v4, v6

    .line 2725
    .end local v5  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_24
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v5

    invoke-virtual {v5, v4, p2, v0}, Lcom/android/server/wm/LockTaskController;->stopLockTaskMode(Lcom/android/server/wm/Task;ZI)V

    .line 2726
    .end local v4  # "task":Lcom/android/server/wm/Task;
    monitor-exit v3
    :try_end_2c
    .catchall {:try_start_1f .. :try_end_2c} :catchall_45

    :try_start_2c
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2729
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "telecom"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/telecom/TelecomManager;

    .line 2730
    .local v3, "tm":Landroid/telecom/TelecomManager;
    if-eqz v3, :cond_40

    .line 2731
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/telecom/TelecomManager;->showInCallScreen(Z)V
    :try_end_40
    .catchall {:try_start_2c .. :try_end_40} :catchall_4b

    .line 2734
    .end local v3  # "tm":Landroid/telecom/TelecomManager;
    :cond_40
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2735
    nop

    .line 2736
    return-void

    .line 2726
    :catchall_45
    move-exception v4

    :try_start_46
    monitor-exit v3
    :try_end_47
    .catchall {:try_start_46 .. :try_end_47} :catchall_45

    :try_start_47
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "callingUid":I
    .end local v1  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "token":Landroid/os/IBinder;
    .end local p2  # "isSystemCaller":Z
    throw v4
    :try_end_4b
    .catchall {:try_start_47 .. :try_end_4b} :catchall_4b

    .line 2734
    .restart local v0  # "callingUid":I
    .restart local v1  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "token":Landroid/os/IBinder;
    .restart local p2  # "isSystemCaller":Z
    :catchall_4b
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2735
    throw v3
.end method

.method public stopSystemLockTaskMode()V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 2679
    const-string/jumbo v0, "stopSystemLockTaskMode"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 2680
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->stopLockTaskModeInternal(Landroid/os/IBinder;Z)V

    .line 2681
    return-void
.end method

.method public supportsLocalVoiceInteraction()Z
    .registers 2

    .line 3802
    const-class v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/service/voice/VoiceInteractionManagerInternal;

    .line 3803
    invoke-virtual {v0}, Landroid/service/voice/VoiceInteractionManagerInternal;->supportsLocalVoiceInteraction()Z

    move-result v0

    .line 3802
    return v0
.end method

.method public supportsSplitScreen(Landroid/content/ComponentName;)Z
    .registers 10
    .param p1, "componentName"  # Landroid/content/ComponentName;

    .line 7438
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 7439
    .local v0, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 7441
    .local v1, "ident":J
    const/4 v3, 0x0

    :try_start_9
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v4

    .line 7442
    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->inResizeBlackList(Ljava/lang/String;)Z

    move-result v4
    :try_end_15
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_15} :catch_46
    .catchall {:try_start_9 .. :try_end_15} :catchall_41

    .line 7444
    .local v4, "inBlackList":Z
    if-eqz v4, :cond_1b

    .line 7455
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7444
    return v3

    .line 7445
    :cond_1b
    :try_start_1b
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget v5, v5, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mLargeScreenSmallestScreenWidthDp:I
    :try_end_23
    .catch Landroid/os/RemoteException; {:try_start_1b .. :try_end_23} :catch_46
    .catchall {:try_start_1b .. :try_end_23} :catchall_41

    if-lt v5, v6, :cond_2a

    .line 7446
    const/4 v3, 0x1

    .line 7455
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7446
    return v3

    .line 7448
    :cond_2a
    :try_start_2a
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v5

    const-wide/16 v6, 0x400

    invoke-interface {v5, p1, v6, v7, v0}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v5

    .line 7450
    .local v5, "info":Landroid/content/pm/ActivityInfo;
    if-eqz v5, :cond_40

    .line 7451
    iget v6, v5, Landroid/content/pm/ActivityInfo;->resizeMode:I

    invoke-static {v6}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v3
    :try_end_3c
    .catch Landroid/os/RemoteException; {:try_start_2a .. :try_end_3c} :catch_46
    .catchall {:try_start_2a .. :try_end_3c} :catchall_41

    .line 7455
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7451
    return v3

    .line 7450
    .end local v4  # "inBlackList":Z
    .end local v5  # "info":Landroid/content/pm/ActivityInfo;
    :cond_40
    goto :goto_47

    .line 7455
    :catchall_41
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7456
    throw v3

    .line 7453
    :catch_46
    move-exception v4

    .line 7455
    :goto_47
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 7456
    nop

    .line 7457
    return v3
.end method

.method public suppressResizeConfigChanges(Z)V
    .registers 5
    .param p1, "suppress"  # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 3669
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.MANAGE_ACTIVITY_TASKS"

    const-string/jumbo v2, "suppressResizeConfigChanges()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3671
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3672
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSuppressResizeConfigChanges:Z

    .line 3673
    monitor-exit v0
    :try_end_13
    .catchall {:try_start_d .. :try_end_13} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3674
    return-void

    .line 3673
    :catchall_17
    move-exception v1

    :try_start_18
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_18 .. :try_end_19} :catchall_17

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public takeTaskSnapshot(I)Landroid/window/TaskSnapshot;
    .registers 9
    .param p1, "taskId"  # I

    .line 3883
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.READ_FRAME_BUFFER"

    const-string/jumbo v2, "takeTaskSnapshot()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3884
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3886
    .local v0, "ident":J
    :try_start_e
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_11
    .catchall {:try_start_e .. :try_end_11} :catchall_63

    :try_start_11
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3887
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v4, 0x1

    invoke-virtual {v3, p1, v4}, Lcom/android/server/wm/RootWindowContainer;->anyTaskForId(II)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3889
    .local v3, "task":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_35

    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v4

    if-nez v4, :cond_24

    goto :goto_35

    .line 3893
    :cond_24
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    const/4 v5, 0x0

    invoke-virtual {v4, v3, v5}, Lcom/android/server/wm/TaskSnapshotController;->captureTaskSnapshot(Lcom/android/server/wm/Task;Z)Landroid/window/TaskSnapshot;

    move-result-object v4

    monitor-exit v2
    :try_end_2e
    .catchall {:try_start_11 .. :try_end_2e} :catchall_5d

    .line 3897
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3893
    return-object v4

    .line 3890
    :cond_35
    :goto_35
    :try_start_35
    const-string v4, "ActivityTaskManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "takeTaskSnapshot: taskId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not found or not visible"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3891
    const/4 v4, 0x0

    monitor-exit v2
    :try_end_56
    .catchall {:try_start_35 .. :try_end_56} :catchall_5d

    .line 3897
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3891
    return-object v4

    .line 3895
    .end local v3  # "task":Lcom/android/server/wm/Task;
    :catchall_5d
    move-exception v3

    :try_start_5e
    monitor-exit v2
    :try_end_5f
    .catchall {:try_start_5e .. :try_end_5f} :catchall_5d

    :try_start_5f
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "ident":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "taskId":I
    throw v3
    :try_end_63
    .catchall {:try_start_5f .. :try_end_63} :catchall_63

    .line 3897
    .restart local v0  # "ident":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "taskId":I
    :catchall_63
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3898
    throw v2
.end method

.method public unRegisterSecureChangedListener(Landroid/app/IWindowSecureChangeListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/app/IWindowSecureChangeListener;

    .line 3175
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wm/WindowManagerServiceStub;->removeSecureChangedListener(Landroid/app/IWindowSecureChangeListener;)V

    .line 3176
    return-void
.end method

.method public unhandledBack()V
    .registers 5

    .line 2276
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.FORCE_BACK"

    const-string/jumbo v2, "unhandledBack()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2279
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2280
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1
    :try_end_14
    .catchall {:try_start_d .. :try_end_14} :catchall_2c

    .line 2282
    .local v1, "origId":J
    :try_start_14
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 2283
    .local v3, "topFocusedRootTask":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_1d

    .line 2284
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->unhandledBackLocked()V
    :try_end_1d
    .catchall {:try_start_14 .. :try_end_1d} :catchall_26

    .line 2287
    .end local v3  # "topFocusedRootTask":Lcom/android/server/wm/Task;
    :cond_1d
    :try_start_1d
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2288
    nop

    .line 2289
    .end local v1  # "origId":J
    monitor-exit v0
    :try_end_22
    .catchall {:try_start_1d .. :try_end_22} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2290
    return-void

    .line 2287
    .restart local v1  # "origId":J
    :catchall_26
    move-exception v3

    :try_start_27
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 2288
    nop

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    throw v3

    .line 2289
    .end local v1  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    :catchall_2c
    move-exception v1

    monitor-exit v0
    :try_end_2e
    .catchall {:try_start_27 .. :try_end_2e} :catchall_2c

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public unregisterActivityObserver(Landroid/app/IMiuiActivityObserver;)V
    .registers 3
    .param p1, "observer"  # Landroid/app/IMiuiActivityObserver;

    .line 3712
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->getMiuiActivityController()Lcom/android/server/wm/MiuiActivityController;

    move-result-object v0

    .line 3713
    invoke-interface {v0, p1}, Lcom/android/server/wm/MiuiActivityController;->unregisterActivityObserver(Landroid/app/IMiuiActivityObserver;)V

    .line 3714
    return-void
.end method

.method public unregisterAnrController(Landroid/app/AnrController;)V
    .registers 4
    .param p1, "controller"  # Landroid/app/AnrController;

    .line 2404
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2405
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAnrController:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 2406
    monitor-exit v0
    :try_end_c
    .catchall {:try_start_3 .. :try_end_c} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2407
    return-void

    .line 2406
    :catchall_10
    move-exception v1

    :try_start_11
    monitor-exit v0
    :try_end_12
    .catchall {:try_start_11 .. :try_end_12} :catchall_10

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method public unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V
    .registers 3
    .param p1, "listener"  # Landroid/app/ITaskStackListener;

    .line 3164
    const-string/jumbo v0, "unregisterTaskStackListener()"

    invoke-static {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->enforceTaskPermission(Ljava/lang/String;)V

    .line 3165
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskChangeNotificationController:Lcom/android/server/wm/TaskChangeNotificationController;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->unregisterTaskStackListener(Landroid/app/ITaskStackListener;)V

    .line 3166
    return-void
.end method

.method updateActivityUsageStats(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 13
    .param p1, "activity"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "event"  # I

    .line 4995
    const/4 v0, 0x0

    .line 4996
    .local v0, "taskRoot":Landroid/content/ComponentName;
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 4997
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_f

    .line 4998
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 4999
    .local v2, "rootActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_f

    .line 5000
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 5004
    .end local v2  # "rootActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_f
    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda15;

    invoke-direct {v3}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda15;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v5, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget v2, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 5006
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    iget-object v8, p1, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    .line 5004
    move-object v9, v0

    invoke-static/range {v3 .. v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/HexConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 5007
    .local v2, "m":Landroid/os/Message;
    iget-object v3, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 5008
    return-void
.end method

.method public updateAssetConfiguration(Ljava/util/List;Z)V
    .registers 7
    .param p2, "updateFrameworkRes"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/android/server/wm/WindowProcessController;",
            ">;Z)V"
        }
    .end annotation

    .line 4593
    .local p1, "processes":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/WindowProcessController;>;"
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_3
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4594
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->increaseAssetConfigurationSeq()I

    move-result v1

    .line 4596
    .local v1, "assetSeq":I
    if-eqz p2, :cond_16

    .line 4597
    new-instance v2, Landroid/content/res/Configuration;

    invoke-direct {v2}, Landroid/content/res/Configuration;-><init>()V

    .line 4598
    .local v2, "newConfig":Landroid/content/res/Configuration;
    iput v1, v2, Landroid/content/res/Configuration;->assetsSeq:I

    .line 4599
    invoke-virtual {p0, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfiguration(Landroid/content/res/Configuration;)Z

    .line 4604
    .end local v2  # "newConfig":Landroid/content/res/Configuration;
    :cond_16
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_1c
    if-ltz v2, :cond_2a

    .line 4605
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowProcessController;

    .line 4606
    .local v3, "wpc":Lcom/android/server/wm/WindowProcessController;
    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowProcessController;->updateAssetConfiguration(I)V

    .line 4604
    .end local v3  # "wpc":Lcom/android/server/wm/WindowProcessController;
    add-int/lit8 v2, v2, -0x1

    goto :goto_1c

    .line 4608
    .end local v1  # "assetSeq":I
    .end local v2  # "i":I
    :cond_2a
    monitor-exit v0
    :try_end_2b
    .catchall {:try_start_3 .. :try_end_2b} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 4609
    return-void

    .line 4608
    :catchall_2f
    move-exception v1

    :try_start_30
    monitor-exit v0
    :try_end_31
    .catchall {:try_start_30 .. :try_end_31} :catchall_2f

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method updateBatteryStats(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 9
    .param p1, "component"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "resumed"  # Z

    .line 4964
    new-instance v0, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda4;-><init>()V

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget v3, v3, Lcom/android/server/wm/WindowProcessController;->mUid:I

    .line 4965
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 4966
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    .line 4964
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/QuintConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 4967
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4968
    return-void
.end method

.method public updateCastActivityConfig(Z)V
    .registers 9
    .param p1, "finishCastActivity"  # Z

    .line 7223
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_5

    return-void

    .line 7224
    :cond_5
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 7225
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getCastRotationMode()Z

    move-result v1

    if-eqz v1, :cond_1c

    .line 7226
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    const-string v2, "exitCastMode"

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 7229
    :cond_1c
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 7230
    .local v1, "display":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    .line 7231
    .local v3, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v3, :cond_2e

    .line 7232
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->pauseBackTasks(Lcom/android/server/wm/ActivityRecord;)Z

    .line 7235
    :cond_2e
    iput-boolean p1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mFinishCastActivity:Z

    .line 7236
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v6, 0x1

    invoke-virtual {v4, v5, v2, v6, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 7238
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v4, v2}, Lcom/android/server/wm/ActivityRecord;->setCastMode(Z)V

    .line 7239
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {p0, v4, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->setCurrentCastModeState(Lcom/android/server/wm/ActivityRecord;I)V

    .line 7240
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCastActivity:Lcom/android/server/wm/ActivityRecord;

    .line 7241
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)Z
    .registers 15
    .param p1, "values"  # Landroid/content/res/Configuration;

    .line 3808
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v1, "android.permission.CHANGE_CONFIGURATION"

    const-string/jumbo v2, "updateConfiguration()"

    invoke-virtual {v0, v1, v2}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3810
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v0

    :try_start_d
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3811
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x0

    if-nez v1, :cond_21

    .line 3812
    const-string v1, "ActivityTaskManager"

    const-string v3, "Skip updateConfiguration because mWindowManager isn\'t set"

    invoke-static {v1, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3813
    monitor-exit v0
    :try_end_1d
    .catchall {:try_start_d .. :try_end_1d} :catchall_68

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3816
    :cond_21
    if-nez p1, :cond_28

    .line 3818
    :try_start_23
    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration(I)Landroid/content/res/Configuration;

    move-result-object v1

    move-object p1, v1

    .line 3821
    :cond_28
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda14;

    invoke-direct {v3}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda14;-><init>()V

    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 3823
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 3821
    invoke-static {v3, v4, v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Ljava/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 3825
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v3
    :try_end_40
    .catchall {:try_start_23 .. :try_end_40} :catchall_68

    move-wide v11, v3

    .line 3827
    .local v11, "origId":J
    if-eqz p1, :cond_46

    .line 3828
    :try_start_43
    invoke-static {p1}, Landroid/provider/Settings$System;->clearConfiguration(Landroid/content/res/Configuration;)V

    .line 3830
    :cond_46
    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, -0x2710

    const/4 v9, 0x0

    iget-object v10, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    move-object v3, p0

    move-object v4, p1

    invoke-virtual/range {v3 .. v10}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z

    .line 3833
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTmpUpdateConfigurationResult:Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    iget v1, v1, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I
    :try_end_57
    .catchall {:try_start_43 .. :try_end_57} :catchall_62

    if-eqz v1, :cond_5a

    const/4 v2, 0x1

    .line 3835
    :cond_5a
    :try_start_5a
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    monitor-exit v0
    :try_end_5e
    .catchall {:try_start_5a .. :try_end_5e} :catchall_68

    .line 3833
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    return v2

    .line 3835
    :catchall_62
    move-exception v1

    :try_start_63
    invoke-static {v11, v12}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3836
    nop

    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "values":Landroid/content/res/Configuration;
    throw v1

    .line 3837
    .end local v11  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "values":Landroid/content/res/Configuration;
    :catchall_68
    move-exception v1

    monitor-exit v0
    :try_end_6a
    .catchall {:try_start_63 .. :try_end_6a} :catchall_68

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v1
.end method

.method updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;Z)Z
    .registers 5
    .param p1, "values"  # Landroid/content/res/Configuration;
    .param p2, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "initLocale"  # Z

    .line 4418
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZ)Z

    move-result v0

    return v0
.end method

.method updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZ)Z
    .registers 12
    .param p1, "values"  # Landroid/content/res/Configuration;
    .param p2, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "initLocale"  # Z
    .param p4, "deferResume"  # Z

    .line 4424
    const/4 v4, 0x0

    const/16 v5, -0x2710

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z

    move-result v0

    return v0
.end method

.method updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZLcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;)Z
    .registers 11
    .param p1, "values"  # Landroid/content/res/Configuration;
    .param p2, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "initLocale"  # Z
    .param p4, "persistent"  # Z
    .param p5, "userId"  # I
    .param p6, "deferResume"  # Z
    .param p7, "result"  # Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;

    .line 4462
    const/4 v0, 0x0

    .line 4463
    .local v0, "changes":I
    const/4 v1, 0x1

    .line 4465
    .local v1, "kept":Z
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 4467
    if-eqz p1, :cond_f

    .line 4468
    :try_start_7
    invoke-virtual {p0, p1, p3, p4, p5}, Lcom/android/server/wm/ActivityTaskManagerService;->updateGlobalConfigurationLocked(Landroid/content/res/Configuration;ZZI)I

    move-result v2

    move v0, v2

    goto :goto_f

    .line 4475
    :catchall_d
    move-exception v2

    goto :goto_17

    .line 4471
    :cond_f
    :goto_f
    if-nez p6, :cond_1b

    .line 4472
    invoke-virtual {p0, p2, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->ensureConfigAndVisibilityAfterUpdate(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v2
    :try_end_15
    .catchall {:try_start_7 .. :try_end_15} :catchall_d

    move v1, v2

    goto :goto_1b

    .line 4475
    :goto_17
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 4476
    throw v2

    .line 4475
    :cond_1b
    :goto_1b
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 4476
    nop

    .line 4478
    if-eqz p7, :cond_2a

    .line 4479
    iput v0, p7, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->changes:I

    .line 4480
    if-nez v1, :cond_27

    const/4 v2, 0x1

    goto :goto_28

    :cond_27
    const/4 v2, 0x0

    :goto_28
    iput-boolean v2, p7, Lcom/android/server/wm/ActivityTaskManagerService$UpdateConfigurationResult;->activityRelaunched:Z

    .line 4482
    :cond_2a
    return v1
.end method

.method updateCpuStats()V
    .registers 4

    .line 4960
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda11;

    invoke-direct {v2, v1}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda11;-><init>(Landroid/app/ActivityManagerInternal;)V

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 4961
    return-void
.end method

.method updateGlobalConfigurationLocked(Landroid/content/res/Configuration;ZZI)I
    .registers 33
    .param p1, "values"  # Landroid/content/res/Configuration;
    .param p2, "initLocale"  # Z
    .param p3, "persistent"  # Z
    .param p4, "userId"  # I

    .line 4489
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 4490
    iget-object v2, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v2, v1}, Landroid/content/res/Configuration;->updateFrom(Landroid/content/res/Configuration;)I

    move-result v2

    .line 4491
    .local v2, "changes":I
    const/4 v3, 0x0

    if-nez v2, :cond_17

    .line 4492
    return v3

    .line 4495
    :cond_17
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v4, :cond_2d

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x3743f29c

    new-array v9, v6, [Ljava/lang/Object;

    aput-object v4, v9, v3

    invoke-static {v7, v8, v3, v5, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4497
    .end local v4  # "protoLogParam0":Ljava/lang/String;
    :cond_2d
    invoke-static {v2}, Lcom/android/server/am/EventLogTags;->writeConfigurationChanged(I)V

    .line 4498
    const/16 v10, 0x42

    iget v11, v1, Landroid/content/res/Configuration;->colorMode:I

    iget v12, v1, Landroid/content/res/Configuration;->densityDpi:I

    iget v13, v1, Landroid/content/res/Configuration;->fontScale:F

    iget v14, v1, Landroid/content/res/Configuration;->hardKeyboardHidden:I

    iget v15, v1, Landroid/content/res/Configuration;->keyboard:I

    iget v4, v1, Landroid/content/res/Configuration;->keyboardHidden:I

    move/from16 v16, v4

    iget v4, v1, Landroid/content/res/Configuration;->mcc:I

    move/from16 v17, v4

    iget v4, v1, Landroid/content/res/Configuration;->mnc:I

    move/from16 v18, v4

    iget v4, v1, Landroid/content/res/Configuration;->navigation:I

    move/from16 v19, v4

    iget v4, v1, Landroid/content/res/Configuration;->navigationHidden:I

    move/from16 v20, v4

    iget v4, v1, Landroid/content/res/Configuration;->orientation:I

    move/from16 v21, v4

    iget v4, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    move/from16 v22, v4

    iget v4, v1, Landroid/content/res/Configuration;->screenLayout:I

    move/from16 v23, v4

    iget v4, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    move/from16 v24, v4

    iget v4, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    move/from16 v25, v4

    iget v4, v1, Landroid/content/res/Configuration;->touchscreen:I

    move/from16 v26, v4

    iget v4, v1, Landroid/content/res/Configuration;->uiMode:I

    move/from16 v27, v4

    invoke-static/range {v10 .. v27}, Lcom/android/internal/util/FrameworkStatsLog;->write(IIIFIIIIIIIIIIIIII)V

    .line 4518
    if-nez p2, :cond_b8

    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/LocaleList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_b8

    iget-boolean v4, v1, Landroid/content/res/Configuration;->userSetLocale:Z

    if-eqz v4, :cond_b8

    .line 4519
    invoke-virtual/range {p1 .. p1}, Landroid/content/res/Configuration;->getLocales()Landroid/os/LocaleList;

    move-result-object v4

    .line 4520
    .local v4, "locales":Landroid/os/LocaleList;
    const/4 v7, 0x0

    .line 4521
    .local v7, "bestLocaleIndex":I
    invoke-virtual {v4}, Landroid/os/LocaleList;->size()I

    move-result v8

    if-le v8, v6, :cond_a6

    .line 4522
    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    if-nez v8, :cond_9c

    .line 4523
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/res/AssetManager;->getLocales()[Ljava/lang/String;

    move-result-object v8

    iput-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    .line 4525
    :cond_9c
    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportedSystemLocales:[Ljava/lang/String;

    invoke-virtual {v4, v8}, Landroid/os/LocaleList;->getFirstMatchIndex([Ljava/lang/String;)I

    move-result v8

    invoke-static {v3, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    .line 4527
    :cond_a6
    nop

    .line 4528
    invoke-virtual {v4, v7}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    .line 4527
    const-string/jumbo v9, "persist.sys.locale"

    invoke-static {v9, v8}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4529
    invoke-static {v4, v7}, Landroid/os/LocaleList;->setDefault(Landroid/os/LocaleList;I)V

    .line 4532
    .end local v4  # "locales":Landroid/os/LocaleList;
    .end local v7  # "bestLocaleIndex":I
    :cond_b8
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/ActivityTaskManagerService;->increaseConfigurationSeqLocked()I

    move-result v7

    iput v7, v4, Landroid/content/res/Configuration;->seq:I

    .line 4534
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Config changes="

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v7, " "

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v7, "ActivityTaskManager"

    invoke-static {v7, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4536
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mUsageStatsInternal:Landroid/app/usage/UsageStatsManagerInternal;

    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v8}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v8

    invoke-virtual {v4, v7, v8}, Landroid/app/usage/UsageStatsManagerInternal;->reportConfigurationChange(Landroid/content/res/Configuration;I)V

    .line 4539
    iget-object v4, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-direct {v0, v4}, Lcom/android/server/wm/ActivityTaskManagerService;->updateShouldShowDialogsLocked(Landroid/content/res/Configuration;)V

    .line 4541
    invoke-static {}, Lcom/android/internal/policy/AttributeCache;->instance()Lcom/android/internal/policy/AttributeCache;

    move-result-object v4

    .line 4542
    .local v4, "ac":Lcom/android/internal/policy/AttributeCache;
    if-eqz v4, :cond_105

    .line 4543
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v4, v7}, Lcom/android/internal/policy/AttributeCache;->updateConfiguration(Landroid/content/res/Configuration;)V

    .line 4550
    :cond_105
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSystemThread:Landroid/app/ActivityThread;

    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v7, v8}, Landroid/app/ActivityThread;->applyConfigurationToResources(Landroid/content/res/Configuration;)V

    .line 4552
    if-eqz p3, :cond_12d

    invoke-static {v2}, Landroid/provider/Settings$System;->hasInterestingConfigurationChanges(I)Z

    move-result v7

    if-eqz v7, :cond_12d

    .line 4553
    new-instance v7, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda7;

    invoke-direct {v7}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda7;-><init>()V

    .line 4555
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    new-instance v9, Landroid/content/res/Configuration;

    iget-object v10, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-direct {v9, v10}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 4553
    invoke-static {v7, v0, v8, v9}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    .line 4556
    .local v7, "msg":Landroid/os/Message;
    iget-object v8, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v8, v7}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4559
    .end local v7  # "msg":Landroid/os/Message;
    :cond_12d
    iget-object v7, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mProcessMap:Lcom/android/server/wm/WindowProcessControllerMap;

    invoke-virtual {v7}, Lcom/android/server/wm/WindowProcessControllerMap;->getPidMap()Landroid/util/SparseArray;

    move-result-object v7

    .line 4560
    .local v7, "pidMap":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/server/wm/WindowProcessController;>;"
    invoke-virtual {v7}, Landroid/util/SparseArray;->size()I

    move-result v8

    sub-int/2addr v8, v6

    .local v8, "i":I
    :goto_138
    if-ltz v8, :cond_16b

    .line 4561
    invoke-virtual {v7, v8}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v9

    .line 4562
    .local v9, "pid":I
    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/server/wm/WindowProcessController;

    .line 4563
    .local v10, "app":Lcom/android/server/wm/WindowProcessController;
    sget-boolean v11, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_CONFIGURATION_enabled:Z

    if-eqz v11, :cond_163

    iget-object v11, v10, Lcom/android/server/wm/WindowProcessController;->mName:Ljava/lang/String;

    invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    .local v11, "protoLogParam0":Ljava/lang/String;
    iget-object v12, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    .local v12, "protoLogParam1":Ljava/lang/String;
    sget-object v13, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_CONFIGURATION:Lcom/android/internal/protolog/ProtoLogGroup;

    const v14, -0x1e052edc

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v11, v15, v3

    aput-object v12, v15, v6

    invoke-static {v13, v14, v3, v5, v15}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 4565
    .end local v11  # "protoLogParam0":Ljava/lang/String;
    .end local v12  # "protoLogParam1":Ljava/lang/String;
    :cond_163
    iget-object v11, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v10, v11}, Lcom/android/server/wm/WindowProcessController;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4560
    .end local v9  # "pid":I
    .end local v10  # "app":Lcom/android/server/wm/WindowProcessController;
    add-int/lit8 v8, v8, -0x1

    goto :goto_138

    .line 4569
    .end local v8  # "i":I
    :cond_16b
    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-static {v2, v3}, Landroid/content/res/ThemeManagerStub;->handleExtraConfigurationChangesForSystem(ILandroid/content/res/Configuration;)V

    .line 4571
    new-instance v3, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda8;

    invoke-direct {v3}, Lcom/android/server/wm/ActivityTaskManagerService$$ExternalSyntheticLambda8;-><init>()V

    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    .line 4573
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static/range {p2 .. p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 4571
    invoke-static {v3, v5, v6, v8}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    .line 4574
    .local v3, "msg":Landroid/os/Message;
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 4577
    iget-object v5, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v6, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTempConfig:Landroid/content/res/Configuration;

    invoke-virtual {v5, v6}, Lcom/android/server/wm/RootWindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 4579
    return v2
.end method

.method public updateLockTaskFeatures(II)V
    .registers 14
    .param p1, "userId"  # I
    .param p2, "flags"  # I

    .line 3917
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3918
    .local v0, "callingUid":I
    if-eqz v0, :cond_14

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_14

    .line 3919
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.UPDATE_LOCK_TASK_PACKAGES"

    const-string/jumbo v3, "updateLockTaskFeatures()"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3923
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 3924
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    if-eqz v2, :cond_3d

    int-to-long v2, p1

    .local v2, "protoLogParam0":J
    invoke-static {p2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam1":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, -0xa0facdd

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-static {v5, v6, v9, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3926
    .end local v2  # "protoLogParam0":J
    .end local v4  # "protoLogParam1":Ljava/lang/String;
    :cond_3d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/LockTaskController;->updateLockTaskFeatures(II)V

    .line 3927
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_17 .. :try_end_45} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 3928
    return-void

    .line 3927
    :catchall_49
    move-exception v2

    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method public updateLockTaskPackages(I[Ljava/lang/String;)V
    .registers 14
    .param p1, "userId"  # I
    .param p2, "packages"  # [Ljava/lang/String;

    .line 2740
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 2741
    .local v0, "callingUid":I
    if-eqz v0, :cond_14

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_14

    .line 2742
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    const-string v2, "android.permission.UPDATE_LOCK_TASK_PACKAGES"

    const-string/jumbo v3, "updateLockTaskPackages()"

    invoke-virtual {v1, v2, v3}, Landroid/app/ActivityManagerInternal;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 2745
    :cond_14
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v1

    :try_start_17
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 2746
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    if-eqz v2, :cond_3d

    int-to-long v2, p1

    .local v2, "protoLogParam0":J
    invoke-static {p2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam1":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x2aa97a22

    const/4 v7, 0x0

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    aput-object v10, v8, v9

    const/4 v9, 0x1

    aput-object v4, v8, v9

    invoke-static {v5, v6, v9, v7, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->w(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 2747
    .end local v2  # "protoLogParam0":J
    .end local v4  # "protoLogParam1":Ljava/lang/String;
    :cond_3d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v2

    invoke-virtual {v2, p1, p2}, Lcom/android/server/wm/LockTaskController;->updateLockTaskPackages(I[Ljava/lang/String;)V

    .line 2748
    monitor-exit v1
    :try_end_45
    .catchall {:try_start_17 .. :try_end_45} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .line 2749
    return-void

    .line 2748
    :catchall_49
    move-exception v2

    :try_start_4a
    monitor-exit v1
    :try_end_4b
    .catchall {:try_start_4a .. :try_end_4b} :catchall_49

    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    throw v2
.end method

.method updateMiuiRoundedViewAnimationInfo(Lcom/android/server/wm/ActivityRecord;)V
    .registers 16
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 7086
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    .line 7087
    .local v0, "orientation":I
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchedOrientation:I

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eq v1, v0, :cond_14

    move v1, v2

    goto :goto_15

    :cond_14
    move v1, v3

    .line 7088
    .local v1, "scaleBackToScreenCenter":Z
    :goto_15
    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mAnimationType:I

    const/16 v5, 0x66

    if-ne v4, v5, :cond_25

    .line 7089
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v2, v3, v1, v5}, Lcom/android/server/wm/WindowManagerService;->setLoadRoundedViewAnimation(ZZZI)V

    goto :goto_34

    .line 7090
    :cond_25
    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mAnimationType:I

    const/16 v5, 0x67

    if-ne v4, v5, :cond_34

    .line 7091
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v5

    invoke-virtual {v4, v3, v2, v1, v5}, Lcom/android/server/wm/WindowManagerService;->setLoadRoundedViewAnimation(ZZZI)V

    .line 7093
    :cond_34
    :goto_34
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mThumbnailGraphicBuffer:Landroid/hardware/HardwareBuffer;

    .line 7094
    .local v2, "iconGraphicBuffer":Landroid/hardware/HardwareBuffer;
    new-instance v8, Landroid/graphics/Rect;

    iget v3, p1, Lcom/android/server/wm/ActivityRecord;->mStartX:I

    iget v4, p1, Lcom/android/server/wm/ActivityRecord;->mStartY:I

    iget v5, p1, Lcom/android/server/wm/ActivityRecord;->mStartX:I

    iget v6, p1, Lcom/android/server/wm/ActivityRecord;->mWidth:I

    add-int/2addr v5, v6

    iget v6, p1, Lcom/android/server/wm/ActivityRecord;->mStartY:I

    iget v7, p1, Lcom/android/server/wm/ActivityRecord;->mHeight:I

    add-int/2addr v6, v7

    invoke-direct {v8, v3, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V

    .line 7095
    .local v8, "mRect":Landroid/graphics/Rect;
    iget-object v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget v9, p1, Lcom/android/server/wm/ActivityRecord;->mRadius:I

    iget v10, p1, Lcom/android/server/wm/ActivityRecord;->mForeGroundColor:I

    iget-object v11, p1, Lcom/android/server/wm/ActivityRecord;->mAnimationReenterStartedCallback:Landroid/os/IRemoteCallback;

    iget-object v12, p1, Lcom/android/server/wm/ActivityRecord;->mAnimationReenterFinishedCallback:Landroid/os/IRemoteCallback;

    .line 7097
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getDisplayId()I

    move-result v13

    .line 7095
    move-object v7, v2

    invoke-virtual/range {v6 .. v13}, Lcom/android/server/wm/WindowManagerService;->overrideMiuiRoundedViewAnimationInfo(Landroid/hardware/HardwareBuffer;Landroid/graphics/Rect;IILandroid/os/IRemoteCallback;Landroid/os/IRemoteCallback;I)V

    .line 7098
    return-void
.end method

.method updateOomAdj()V
    .registers 3

    .line 4955
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateOomAdjRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4956
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mUpdateOomAdjRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService$H;->post(Ljava/lang/Runnable;)Z

    .line 4957
    return-void
.end method

.method public updatePersistentConfiguration(Landroid/content/res/Configuration;I)V
    .registers 14
    .param p1, "values"  # Landroid/content/res/Configuration;
    .param p2, "userId"  # I

    .line 4429
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 4431
    .local v0, "origId":J
    :try_start_4
    iget-object v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mGlobalLock:Lcom/android/server/wm/WindowManagerGlobalLock;

    monitor-enter v2
    :try_end_7
    .catchall {:try_start_4 .. :try_end_7} :catchall_28

    :try_start_7
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->boostPriorityForLockedSection()V

    .line 4434
    iget-object v3, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v3}, Landroid/app/WindowConfiguration;->setToDefaults()V

    .line 4435
    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x1

    const/4 v10, 0x0

    move-object v4, p0

    move-object v5, p1

    move v9, p2

    invoke-direct/range {v4 .. v10}, Lcom/android/server/wm/ActivityTaskManagerService;->updateConfigurationLocked(Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord;ZZIZ)Z

    .line 4437
    monitor-exit v2
    :try_end_1a
    .catchall {:try_start_7 .. :try_end_1a} :catchall_22

    :try_start_1a
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V
    :try_end_1d
    .catchall {:try_start_1a .. :try_end_1d} :catchall_28

    .line 4439
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4440
    nop

    .line 4441
    return-void

    .line 4437
    :catchall_22
    move-exception v3

    :try_start_23
    monitor-exit v2
    :try_end_24
    .catchall {:try_start_23 .. :try_end_24} :catchall_22

    :try_start_24
    invoke-static {}, Lcom/android/server/wm/WindowManagerService;->resetPriorityAfterLockedSection()V

    .end local v0  # "origId":J
    .end local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .end local p1  # "values":Landroid/content/res/Configuration;
    .end local p2  # "userId":I
    throw v3
    :try_end_28
    .catchall {:try_start_24 .. :try_end_28} :catchall_28

    .line 4439
    .restart local v0  # "origId":J
    .restart local p0  # "this":Lcom/android/server/wm/ActivityTaskManagerService;
    .restart local p1  # "values":Landroid/content/res/Configuration;
    .restart local p2  # "userId":I
    :catchall_28
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 4440
    throw v2
.end method

.method updatePreviousProcess(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "stoppedActivity"  # Lcom/android/server/wm/ActivityRecord;

    .line 4982
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_24

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, v1, :cond_24

    iget-wide v0, p1, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    iget-wide v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcessVisibleTime:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_24

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-eq v0, v1, :cond_24

    .line 4989
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iput-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcess:Lcom/android/server/wm/WindowProcessController;

    .line 4990
    iget-wide v0, p1, Lcom/android/server/wm/ActivityRecord;->lastVisibleTime:J

    iput-wide v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mPreviousProcessVisibleTime:J

    .line 4992
    :cond_24
    return-void
.end method

.method updateSleepIfNeededLocked()V
    .registers 8

    .line 4915
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->hasAwakeDisplay()Z

    move-result v0

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    .line 4916
    .local v0, "shouldSleep":Z
    iget-boolean v2, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 4917
    .local v2, "wasSleeping":Z
    const/4 v3, 0x0

    .line 4919
    .local v3, "updateOomAdj":Z
    const-string v4, "ActivityTaskManager"

    const/16 v5, 0xe

    if-nez v0, :cond_32

    .line 4923
    if-eqz v2, :cond_29

    .line 4924
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 4925
    const/4 v6, 0x2

    invoke-static {v5, v6}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 4927
    invoke-direct {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->startTimeTrackingFocusedActivityLocked()V

    .line 4928
    iput v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    .line 4929
    const-string v5, "Top Process State changed to PROCESS_STATE_TOP"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4930
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->comeOutOfSleepIfNeededLocked()V

    .line 4932
    :cond_29
    iget-object v4, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4, v1}, Lcom/android/server/wm/RootWindowContainer;->applySleepTokens(Z)V

    .line 4933
    if-eqz v2, :cond_57

    .line 4934
    const/4 v3, 0x1

    goto :goto_57

    .line 4936
    :cond_32
    iget-boolean v6, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    if-nez v6, :cond_57

    if-eqz v0, :cond_57

    .line 4937
    iput-boolean v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mSleeping:Z

    .line 4938
    invoke-static {v5, v1}, Lcom/android/internal/util/FrameworkStatsLog;->write(II)V

    .line 4940
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mCurAppTimeTracker:Lcom/android/server/am/AppTimeTracker;

    if-eqz v1, :cond_44

    .line 4941
    invoke-virtual {v1}, Lcom/android/server/am/AppTimeTracker;->stop()V

    .line 4943
    :cond_44
    const/16 v1, 0xc

    iput v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    .line 4944
    const-string v1, "Top Process State changed to PROCESS_STATE_TOP_SLEEPING"

    invoke-static {v4, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4945
    iget-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->goingToSleepLocked()V

    .line 4946
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->updateResumedAppTrace(Lcom/android/server/wm/ActivityRecord;)V

    .line 4947
    const/4 v3, 0x1

    .line 4949
    :cond_57
    :goto_57
    if-eqz v3, :cond_5c

    .line 4950
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 4952
    :cond_5c
    return-void
.end method

.method updateTopApp(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "topResumedActivity"  # Lcom/android/server/wm/ActivityRecord;

    .line 4971
    if-eqz p1, :cond_4

    move-object v0, p1

    goto :goto_a

    .line 4973
    :cond_4
    iget-object v0, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_a
    nop

    .line 4974
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_10

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    iput-object v1, p0, Lcom/android/server/wm/ActivityTaskManagerService;->mTopApp:Lcom/android/server/wm/WindowProcessController;

    .line 4975
    return-void
.end method
