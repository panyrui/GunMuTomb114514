# classes2.dex

.class Lcom/android/server/wm/Task;
.super Lcom/android/server/wm/TaskFragment;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/Task$Builder;,
        Lcom/android/server/wm/Task$TaskActivitiesReport;,
        Lcom/android/server/wm/Task$FindRootHelper;,
        Lcom/android/server/wm/Task$ActivityTaskHandler;,
        Lcom/android/server/wm/Task$ReparentMoveRootTaskMode;
    }
.end annotation


# static fields
.field private static final ATTR_AFFINITY:Ljava/lang/String; = "affinity"

.field private static final ATTR_ASKEDCOMPATMODE:Ljava/lang/String; = "asked_compat_mode"

.field private static final ATTR_AUTOREMOVERECENTS:Ljava/lang/String; = "auto_remove_recents"

.field private static final ATTR_CALLING_FEATURE_ID:Ljava/lang/String; = "calling_feature_id"

.field private static final ATTR_CALLING_PACKAGE:Ljava/lang/String; = "calling_package"

.field private static final ATTR_CALLING_UID:Ljava/lang/String; = "calling_uid"

.field private static final ATTR_EFFECTIVE_UID:Ljava/lang/String; = "effective_uid"

.field private static final ATTR_LASTDESCRIPTION:Ljava/lang/String; = "last_description"

.field private static final ATTR_LASTTIMEMOVED:Ljava/lang/String; = "last_time_moved"

.field private static final ATTR_LAST_SNAPSHOT_BUFFER_SIZE:Ljava/lang/String; = "last_snapshot_buffer_size"

.field private static final ATTR_LAST_SNAPSHOT_CONTENT_INSETS:Ljava/lang/String; = "last_snapshot_content_insets"

.field private static final ATTR_LAST_SNAPSHOT_TASK_SIZE:Ljava/lang/String; = "last_snapshot_task_size"

.field private static final ATTR_MIN_HEIGHT:Ljava/lang/String; = "min_height"

.field private static final ATTR_MIN_WIDTH:Ljava/lang/String; = "min_width"

.field private static final ATTR_NEVERRELINQUISH:Ljava/lang/String; = "never_relinquish_identity"

.field private static final ATTR_NEXT_AFFILIATION:Ljava/lang/String; = "next_affiliation"

.field private static final ATTR_NON_FULLSCREEN_BOUNDS:Ljava/lang/String; = "non_fullscreen_bounds"

.field private static final ATTR_ORIGACTIVITY:Ljava/lang/String; = "orig_activity"

.field private static final ATTR_PERSIST_TASK_VERSION:Ljava/lang/String; = "persist_task_version"

.field private static final ATTR_PREV_AFFILIATION:Ljava/lang/String; = "prev_affiliation"

.field private static final ATTR_REALACTIVITY:Ljava/lang/String; = "real_activity"

.field private static final ATTR_REALACTIVITY_SUSPENDED:Ljava/lang/String; = "real_activity_suspended"

.field private static final ATTR_RESIZE_MODE:Ljava/lang/String; = "resize_mode"

.field private static final ATTR_ROOTHASRESET:Ljava/lang/String; = "root_has_reset"

.field private static final ATTR_ROOT_AFFINITY:Ljava/lang/String; = "root_affinity"

.field private static final ATTR_SUPPORTS_PICTURE_IN_PICTURE:Ljava/lang/String; = "supports_picture_in_picture"

.field private static final ATTR_TASKID:Ljava/lang/String; = "task_id"

.field private static final ATTR_TASKTYPE:Ljava/lang/String; = "task_type"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private static final ATTR_TASK_AFFILIATION:Ljava/lang/String; = "task_affiliation"

.field private static final ATTR_USERID:Ljava/lang/String; = "user_id"

.field private static final ATTR_USER_SETUP_COMPLETE:Ljava/lang/String; = "user_setup_complete"

.field private static final ATTR_WINDOW_LAYOUT_AFFINITY:Ljava/lang/String; = "window_layout_affinity"

.field private static final DEFAULT_MIN_TASK_SIZE_DP:I = 0xdc

.field static final FLAG_FORCE_HIDDEN_FOR_PINNED_TASK:I = 0x1

.field static final FLAG_FORCE_HIDDEN_FOR_TASK_ORG:I = 0x2

.field static final LAYER_RANK_INVISIBLE:I = -0x1

.field static final PERSIST_TASK_VERSION:I = 0x1

.field static final REPARENT_KEEP_ROOT_TASK_AT_FRONT:I = 0x1

.field static final REPARENT_LEAVE_ROOT_TASK_IN_PLACE:I = 0x2

.field static final REPARENT_MOVE_ROOT_TASK_TO_FRONT:I = 0x0

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_ACTIVITY:Ljava/lang/String; = "activity"

.field private static final TAG_AFFINITYINTENT:Ljava/lang/String; = "affinity_intent"

.field static final TAG_CLEANUP:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_INTENT:Ljava/lang/String; = "intent"

.field private static final TAG_RECENTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_TASKS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_TRANSITION:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_USER_LEAVING:Ljava/lang/String; = "ActivityTaskManager"

.field static final TAG_VISIBILITY:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TRANSLUCENT_CONVERSION_TIMEOUT:J = 0x7d0L

.field private static final TRANSLUCENT_TIMEOUT_MSG:I = 0x65

.field private static final mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

.field private static final sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

.field private static final sTmpBounds:Landroid/graphics/Rect;

.field private static sTmpException:Ljava/lang/Exception;


# instance fields
.field affinity:Ljava/lang/String;

.field affinityIntent:Landroid/content/Intent;

.field alreadySetFreeformBounds:Z

.field askedCompatMode:Z

.field autoRemoveRecents:Z

.field effectiveUid:I

.field inRecents:Z

.field intent:Landroid/content/Intent;

.field isAvailable:Z

.field isPersistable:Z

.field lastActiveTime:J

.field lastDescription:Ljava/lang/CharSequence;

.field private mAdjustedFreeFromBounds:Landroid/graphics/Rect;

.field mAffiliatedTaskId:I

.field private final mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

.field mAppCompatTaskCreator:Lcom/android/server/wm/AppCompatTask$Creator;

.field mBackGestureStarted:Z

.field mCallingFeatureId:Ljava/lang/String;

.field mCallingPackage:Ljava/lang/String;

.field mCallingUid:I

.field private mCanAffectSystemUiFlags:Z

.field mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

.field mConfigWillChange:Z

.field mCurrentUser:I

.field private mDeferTaskAppear:Z

.field mDisplayCompatAvailable:Z

.field mDisplayCompatPolicy:I

.field private mDragResizeMode:I

.field private mDragResizing:Z

.field private final mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

.field private mForceHiddenFlags:I

.field private mForceShowForAllUsers:Z

.field mFreeFormLaunchBoundsFromOptions:Landroid/graphics/Rect;

.field mFreeFormShadowShow:Z

.field mFreeFormShouldBeAvoided:Z

.field public mFreeform2Full:Z

.field private final mHandler:Landroid/os/Handler;

.field private mHasBeenVisible:Z

.field mInRemoveTask:Z

.field mInResumeTopActivity:Z

.field public mIsBack:Z

.field mIsEffectivelySystemApp:Z

.field mIsSplitMode:Z

.field private mLastFreeFromBounds:Landroid/graphics/Rect;

.field mLastNonFullscreenBounds:Landroid/graphics/Rect;

.field mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

.field mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

.field mLastReportedRequestedOrientation:I

.field private mLastRotationDisplayId:I

.field mLastSurfaceShowing:Z

.field final mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

.field mLastTimeMoved:J

.field mLaunchCookie:Landroid/os/IBinder;

.field mLaunchMiniFreeformFromFull:Z

.field mLayerRank:I

.field mLockTaskAuth:I

.field mLockTaskUid:I

.field private mMiuiIsImeTarget:Z

.field private mNeverRelinquishIdentity:Z

.field mNextAffiliate:Lcom/android/server/wm/Task;

.field mNextAffiliateTaskId:I

.field mPrevAffiliate:Lcom/android/server/wm/Task;

.field mPrevAffiliateTaskId:I

.field mPrevDisplayId:I

.field mRemoveWithTaskOrganizer:Z

.field private mRemoving:Z

.field mResizeMode:I

.field final mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

.field private mReuseTask:Z

.field private mRootProcess:Lcom/android/server/wm/WindowProcessController;

.field private mRotation:I

.field private mShadowRadius:F

.field mSupportsPictureInPicture:Z

.field mTaskAppearedSent:Z

.field private mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field final mTaskId:I

.field mTaskOrganizer:Landroid/window/ITaskOrganizer;

.field private mTmpConfig:Landroid/content/res/Configuration;

.field private final mTmpDimBoundsRect:Landroid/graphics/Rect;

.field private mTmpRect:Landroid/graphics/Rect;

.field private mTmpRect2:Landroid/graphics/Rect;

.field mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

.field mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation
.end field

.field mUserId:I

.field mUserSetupComplete:Z

.field mWindowLayoutAffinity:Ljava/lang/String;

.field maxRecents:I

.field origActivity:Landroid/content/ComponentName;

.field realActivity:Landroid/content/ComponentName;

.field realActivitySuspended:Z

.field rootAffinity:Ljava/lang/String;

.field rootWasReset:Z

.field stringName:Ljava/lang/String;

.field voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

.field voiceSession:Landroid/service/voice/IVoiceInteractionSession;


# direct methods
.method public static synthetic $r8$lambda$-nHv3hp3munhu4Gy96iX2y0sRuI(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->isTopRunningNonDelayed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$4uoiBIGNMTDRqeJdiWkAelWVBX8(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->processTaskResizeBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V

    return-void
.end method

.method public static synthetic $r8$lambda$7nTho283cVKQ1bb86OUzh4bK9Cc(Lcom/android/server/wm/Task;Landroid/os/IBinder;)V
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->finishIfVoiceTask(Lcom/android/server/wm/Task;Landroid/os/IBinder;)V

    return-void
.end method

.method public static synthetic $r8$lambda$CjYN3ut3_eNan1AWUCfq2whHyXw(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/util/TypedXmlSerializer;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->saveActivityToXml(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/util/TypedXmlSerializer;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$I3V5t7ZX1Ip_YH884BnxvjqYRZw(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->isTopRunning(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$IOkAHw--PQwJ3Vo9393SXFTSSsc(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->finishActivityAbove(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$PRiyfFwy4dog-mhOrPI0NF2Vdhc(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->matchesActivityInHistory(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$TwcYFtyP_7sSBwZAOJGxcsSiZJc(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/Task;->finishIfVoiceActivity(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UqOZnD1FgFOGmAuBU4uaaelTkDg(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->restartPackage(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    return-void
.end method

.method public static synthetic $r8$lambda$qjBpDLSo_osTHUebmVR0R-BqIrQ(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;[Z)V
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->getMaxVisibleBounds(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;[Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$uPzn7AyFC3Orcy8ROEU4TPRxugk(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z
    .registers 3

    invoke-static {p0, p1, p2}, Lcom/android/server/wm/Task;->setTaskDescriptionFromActivityAboveRoot(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z

    move-result p0

    return p0
.end method

.method static bridge synthetic -$$Nest$fputmHasBeenVisible(Lcom/android/server/wm/Task;Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    return-void
.end method

.method static bridge synthetic -$$Nest$maddChild(Lcom/android/server/wm/Task;Lcom/android/server/wm/WindowContainer;IZ)V
    .registers 4

    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;IZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 446
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    sput-object v0, Lcom/android/server/wm/Task;->sTmpBounds:Landroid/graphics/Rect;

    .line 561
    new-instance v0, Lcom/android/server/wm/ActivityPluginDelegate;

    invoke-direct {v0}, Lcom/android/server/wm/ActivityPluginDelegate;-><init>()V

    sput-object v0, Lcom/android/server/wm/Task;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    .line 595
    new-instance v0, Lcom/android/server/wm/ResetTargetTaskHelper;

    invoke-direct {v0}, Lcom/android/server/wm/ResetTargetTaskHelper;-><init>()V

    sput-object v0, Lcom/android/server/wm/Task;->sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

    return-void
.end method

.method private constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;IIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLandroid/os/IBinder;ZZ)V
    .registers 57
    .param p1, "atmService"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "_taskId"  # I
    .param p3, "_intent"  # Landroid/content/Intent;
    .param p4, "_affinityIntent"  # Landroid/content/Intent;
    .param p5, "_affinity"  # Ljava/lang/String;
    .param p6, "_rootAffinity"  # Ljava/lang/String;
    .param p7, "_realActivity"  # Landroid/content/ComponentName;
    .param p8, "_origActivity"  # Landroid/content/ComponentName;
    .param p9, "_rootWasReset"  # Z
    .param p10, "_autoRemoveRecents"  # Z
    .param p11, "_askedCompatMode"  # Z
    .param p12, "_userId"  # I
    .param p13, "_effectiveUid"  # I
    .param p14, "_lastDescription"  # Ljava/lang/String;
    .param p15, "lastTimeMoved"  # J
    .param p17, "neverRelinquishIdentity"  # Z
    .param p18, "_lastTaskDescription"  # Landroid/app/ActivityManager$TaskDescription;
    .param p19, "_lastSnapshotData"  # Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .param p20, "taskAffiliation"  # I
    .param p21, "prevTaskId"  # I
    .param p22, "nextTaskId"  # I
    .param p23, "callingUid"  # I
    .param p24, "callingPackage"  # Ljava/lang/String;
    .param p25, "callingFeatureId"  # Ljava/lang/String;
    .param p26, "resizeMode"  # I
    .param p27, "supportsPictureInPicture"  # Z
    .param p28, "_realActivitySuspended"  # Z
    .param p29, "userSetupComplete"  # Z
    .param p30, "minWidth"  # I
    .param p31, "minHeight"  # I
    .param p32, "info"  # Landroid/content/pm/ActivityInfo;
    .param p33, "_voiceSession"  # Landroid/service/voice/IVoiceInteractionSession;
    .param p34, "_voiceInteractor"  # Lcom/android/internal/app/IVoiceInteractor;
    .param p35, "_createdByOrganizer"  # Z
    .param p36, "_launchCookie"  # Landroid/os/IBinder;
    .param p37, "_deferTaskAppear"  # Z
    .param p38, "_removeWithTaskOrganizer"  # Z

    .line 694
    move-object/from16 v0, p0

    move/from16 v1, p2

    move-object/from16 v2, p3

    move/from16 v3, p26

    move-object/from16 v4, p32

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v7, p1

    move/from16 v8, p35

    invoke-direct {v0, v7, v5, v8, v6}, Lcom/android/server/wm/TaskFragment;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;ZZ)V

    .line 316
    const/4 v9, 0x0

    iput v9, v0, Lcom/android/server/wm/Task;->mShadowRadius:F

    .line 320
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mFreeFormShadowShow:Z

    .line 321
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mMiuiIsImeTarget:Z

    .line 322
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v0, Lcom/android/server/wm/Task;->mAdjustedFreeFromBounds:Landroid/graphics/Rect;

    .line 323
    new-instance v9, Landroid/graphics/Rect;

    invoke-direct {v9}, Landroid/graphics/Rect;-><init>()V

    iput-object v9, v0, Lcom/android/server/wm/Task;->mLastFreeFromBounds:Landroid/graphics/Rect;

    .line 324
    iput-object v5, v0, Lcom/android/server/wm/Task;->mFreeFormLaunchBoundsFromOptions:Landroid/graphics/Rect;

    .line 325
    const/4 v9, 0x1

    iput-boolean v9, v0, Lcom/android/server/wm/Task;->mFreeFormShouldBeAvoided:Z

    .line 355
    iput-object v5, v0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 356
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    iput-object v10, v0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 367
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 406
    iput v9, v0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 408
    const/4 v10, -0x1

    iput v10, v0, Lcom/android/server/wm/Task;->mLockTaskUid:I

    .line 416
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 424
    iput-boolean v9, v0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    .line 431
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 437
    iput v10, v0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    .line 439
    iput v10, v0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 451
    iput-object v5, v0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 468
    iput v10, v0, Lcom/android/server/wm/Task;->mLayerRank:I

    .line 471
    new-instance v11, Landroid/content/res/Configuration;

    invoke-direct {v11}, Landroid/content/res/Configuration;-><init>()V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    .line 474
    new-instance v11, Lcom/android/server/wm/Task$TaskActivitiesReport;

    invoke-direct {v11}, Lcom/android/server/wm/Task$TaskActivitiesReport;-><init>()V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    .line 483
    iput v10, v0, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    .line 486
    iput v10, v0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    .line 506
    iput v10, v0, Lcom/android/server/wm/Task;->mLastReportedRequestedOrientation:I

    .line 509
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 511
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    .line 533
    new-instance v11, Landroid/graphics/Rect;

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    .line 536
    iput-boolean v9, v0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 545
    iput v6, v0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    .line 554
    new-instance v11, Lcom/android/server/wm/AnimatingActivityRegistry;

    invoke-direct {v11}, Lcom/android/server/wm/AnimatingActivityRegistry;-><init>()V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    .line 564
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mIsBack:Z

    .line 567
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mFreeform2Full:Z

    .line 597
    new-instance v11, Lcom/android/server/wm/Task$FindRootHelper;

    invoke-direct {v11, v0, v5}, Lcom/android/server/wm/Task$FindRootHelper;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task$FindRootHelper-IA;)V

    iput-object v11, v0, Lcom/android/server/wm/Task;->mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

    .line 673
    iput-boolean v9, v0, Lcom/android/server/wm/Task;->mLastSurfaceShowing:Z

    .line 679
    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mBackGestureStarted:Z

    .line 696
    iput v1, v0, Lcom/android/server/wm/Task;->mTaskId:I

    .line 697
    move/from16 v5, p12

    iput v5, v0, Lcom/android/server/wm/Task;->mUserId:I

    .line 698
    iput v3, v0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 699
    move/from16 v6, p27

    iput-boolean v6, v0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    .line 700
    if-eqz p18, :cond_9f

    .line 701
    move-object/from16 v11, p18

    goto :goto_a4

    .line 702
    :cond_9f
    new-instance v11, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v11}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    :goto_a4
    iput-object v11, v0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 703
    if-eqz p19, :cond_ab

    .line 704
    move-object/from16 v11, p19

    goto :goto_b0

    .line 705
    :cond_ab
    new-instance v11, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    invoke-direct {v11}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;-><init>()V

    :goto_b0
    iput-object v11, v0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    .line 707
    const/4 v11, -0x2

    invoke-virtual {v0, v11}, Lcom/android/server/wm/Task;->setOrientation(I)V

    .line 708
    move-object/from16 v11, p4

    iput-object v11, v0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    .line 709
    move-object/from16 v12, p5

    iput-object v12, v0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 710
    move-object/from16 v13, p6

    iput-object v13, v0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    .line 711
    move-object/from16 v14, p33

    iput-object v14, v0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 712
    move-object/from16 v15, p34

    iput-object v15, v0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 713
    move-object/from16 v10, p7

    iput-object v10, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 714
    move/from16 v9, p28

    iput-boolean v9, v0, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    .line 715
    move-object/from16 v5, p8

    iput-object v5, v0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 716
    move/from16 v5, p9

    iput-boolean v5, v0, Lcom/android/server/wm/Task;->rootWasReset:Z

    .line 717
    const/4 v5, 0x1

    iput-boolean v5, v0, Lcom/android/server/wm/Task;->isAvailable:Z

    .line 718
    move/from16 v5, p10

    iput-boolean v5, v0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    .line 719
    move/from16 v5, p11

    iput-boolean v5, v0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    .line 720
    move/from16 v5, p29

    iput-boolean v5, v0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    .line 721
    move/from16 v5, p13

    iput v5, v0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 722
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->touchActiveTime()V

    .line 723
    move-object/from16 v5, p14

    iput-object v5, v0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    .line 724
    move-wide/from16 v5, p15

    iput-wide v5, v0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    .line 725
    move/from16 v5, p17

    iput-boolean v5, v0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    .line 726
    move/from16 v6, p20

    iput v6, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 727
    move/from16 v5, p21

    iput v5, v0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    .line 728
    move/from16 v5, p22

    iput v5, v0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 729
    move/from16 v5, p23

    iput v5, v0, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 730
    move-object/from16 v5, p24

    iput-object v5, v0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 731
    move-object/from16 v5, p25

    iput-object v5, v0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 732
    iput v3, v0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 733
    if-eqz v4, :cond_121

    .line 734
    invoke-direct {v0, v2, v4}, Lcom/android/server/wm/Task;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 735
    invoke-virtual {v0, v4}, Lcom/android/server/wm/Task;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    move/from16 v2, p31

    goto :goto_12b

    .line 737
    :cond_121
    iput-object v2, v0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 738
    move/from16 v2, p30

    iput v2, v0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 739
    move/from16 v2, p31

    iput v2, v0, Lcom/android/server/wm/Task;->mMinHeight:I

    .line 741
    :goto_12b
    iget-object v2, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    iget-object v3, v0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 742
    new-instance v2, Lcom/android/server/wm/Task$ActivityTaskHandler;

    iget-object v3, v0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mLooper:Landroid/os/Looper;

    invoke-direct {v2, v0, v3}, Lcom/android/server/wm/Task$ActivityTaskHandler;-><init>(Lcom/android/server/wm/Task;Landroid/os/Looper;)V

    iput-object v2, v0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    .line 743
    iget-object v2, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    invoke-virtual {v2}, Landroid/app/ActivityManagerInternal;->getCurrentUserId()I

    move-result v2

    iput v2, v0, Lcom/android/server/wm/Task;->mCurrentUser:I

    .line 745
    move-object/from16 v2, p36

    iput-object v2, v0, Lcom/android/server/wm/Task;->mLaunchCookie:Landroid/os/IBinder;

    .line 746
    move/from16 v3, p37

    iput-boolean v3, v0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    .line 747
    move/from16 v2, p38

    iput-boolean v2, v0, Lcom/android/server/wm/Task;->mRemoveWithTaskOrganizer:Z

    .line 748
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v17

    if-eqz v17, :cond_15f

    const/4 v2, -0x1

    goto :goto_165

    :cond_15f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v16

    move/from16 v2, v16

    :goto_165
    invoke-static {v1, v2}, Lcom/android/server/wm/EventLogTags;->writeWmTaskCreated(II)V

    .line 750
    invoke-static {}, Landroid/appcompat/ApplicationCompatUtilsStub;->get()Landroid/appcompat/ApplicationCompatUtilsStub;

    move-result-object v2

    invoke-interface {v2}, Landroid/appcompat/ApplicationCompatUtilsStub;->isContinuityEnabled()Z

    move-result v2

    if-eqz v2, :cond_181

    .line 751
    new-instance v2, Lcom/android/server/wm/AppCompatTask$Creator;

    invoke-static {}, Lcom/android/server/wm/ApplicationCompatRouterStub;->get()Lcom/android/server/wm/ApplicationCompatRouterStub;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/ApplicationCompatRouterStub;->getConfigDisplayID()I

    move-result v1

    invoke-direct {v2, v0, v1}, Lcom/android/server/wm/AppCompatTask$Creator;-><init>(Lcom/android/server/wm/Task;I)V

    iput-object v2, v0, Lcom/android/server/wm/Task;->mAppCompatTaskCreator:Lcom/android/server/wm/AppCompatTask$Creator;

    .line 754
    :cond_181
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;IIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLandroid/os/IBinder;ZZLcom/android/server/wm/Task-IA;)V
    .registers 40

    invoke-direct/range {p0 .. p38}, Lcom/android/server/wm/Task;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;ILandroid/content/Intent;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/content/ComponentName;Landroid/content/ComponentName;ZZZIILjava/lang/String;JZLandroid/app/ActivityManager$TaskDescription;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;IIIILjava/lang/String;Ljava/lang/String;IZZZIILandroid/content/pm/ActivityInfo;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLandroid/os/IBinder;ZZ)V

    return-void
.end method

.method private addChild(Lcom/android/server/wm/WindowContainer;IZ)V
    .registers 5
    .param p1, "child"  # Lcom/android/server/wm/WindowContainer;
    .param p2, "position"  # I
    .param p3, "moveParents"  # Z

    .line 6649
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;Ljava/util/Comparator;)V

    .line 6652
    invoke-virtual {p0, p2, p1, p3}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 6653
    return-void
.end method

.method private autoRemoveFromRecents(Lcom/android/server/wm/TaskFragment;)Z
    .registers 3
    .param p1, "oldParentFragment"  # Lcom/android/server/wm/TaskFragment;

    .line 1681
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-eqz v0, :cond_1b

    :cond_10
    if-eqz p1, :cond_19

    .line 1682
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 1681
    :goto_1c
    return v0
.end method

.method private canBeOrganized()Z
    .registers 5

    .line 4696
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 4697
    return v1

    .line 4701
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_24

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_14

    goto :goto_24

    .line 4706
    :cond_14
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 4707
    .local v0, "parentTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_23

    iget-boolean v3, v0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v3, :cond_23

    move v1, v2

    :cond_23
    return v1

    .line 4702
    .end local v0  # "parentTask":Lcom/android/server/wm/Task;
    :cond_24
    :goto_24
    return v2
.end method

.method private canResizeToBounds(Landroid/graphics/Rect;)Z
    .registers 8
    .param p1, "bounds"  # Landroid/graphics/Rect;

    .line 1965
    const/4 v0, 0x1

    if-eqz p1, :cond_50

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_50

    .line 1969
    :cond_a
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    const/4 v3, 0x0

    if-le v1, v2, :cond_17

    move v1, v0

    goto :goto_18

    :cond_17
    move v1, v3

    .line 1970
    .local v1, "landscape":Z
    :goto_18
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 1971
    .local v2, "configBounds":Landroid/graphics/Rect;
    iget v4, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_3b

    .line 1972
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_39

    .line 1973
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v4, v5, :cond_33

    move v4, v0

    goto :goto_34

    :cond_33
    move v4, v3

    :goto_34
    if-ne v1, v4, :cond_37

    goto :goto_39

    :cond_37
    move v0, v3

    goto :goto_3a

    :cond_39
    :goto_39
    nop

    .line 1972
    :goto_3a
    return v0

    .line 1975
    :cond_3b
    const/4 v5, 0x6

    if-ne v4, v5, :cond_40

    if-nez v1, :cond_45

    :cond_40
    const/4 v5, 0x5

    if-ne v4, v5, :cond_4e

    if-nez v1, :cond_4e

    .line 1978
    :cond_45
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->supportsFreeform()Z

    move-result v4

    if-eqz v4, :cond_4c

    goto :goto_4e

    :cond_4c
    move v0, v3

    goto :goto_4f

    :cond_4e
    :goto_4e
    nop

    .line 1975
    :goto_4f
    return v0

    .line 1967
    .end local v1  # "landscape":Z
    .end local v2  # "configBounds":Landroid/graphics/Rect;
    :cond_50
    :goto_50
    return v0
.end method

.method private canReuseAsLeafTask()Z
    .registers 5

    .line 6551
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    const/4 v1, 0x0

    if-nez v0, :cond_1f

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_1f

    .line 6557
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 6558
    .local v0, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v2

    .line 6559
    .local v2, "activityType":I
    invoke-static {v0, v2}, Lcom/android/server/wm/DisplayContent;->alwaysCreateRootTask(II)Z

    move-result v3

    if-nez v3, :cond_1d

    const/4 v3, 0x5

    if-ne v2, v3, :cond_1e

    :cond_1d
    const/4 v1, 0x1

    :cond_1e
    return v1

    .line 6552
    .end local v0  # "windowingMode":I
    .end local v2  # "activityType":I
    :cond_1f
    :goto_1f
    return v1
.end method

.method private canSpecifyOrientation()Z
    .registers 5

    .line 3547
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 3548
    .local v0, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v1

    .line 3549
    .local v1, "activityType":I
    const/4 v2, 0x1

    if-eq v0, v2, :cond_16

    const/4 v3, 0x2

    if-eq v1, v3, :cond_16

    const/4 v3, 0x3

    if-eq v1, v3, :cond_16

    const/4 v3, 0x4

    if-ne v1, v3, :cond_15

    goto :goto_16

    :cond_15
    const/4 v2, 0x0

    :cond_16
    :goto_16
    return v2
.end method

.method private cleanUpResourcesForDestroy(Lcom/android/server/wm/WindowContainer;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/server/wm/WindowContainer<",
            "*>;)V"
        }
    .end annotation

    .line 779
    .local p1, "oldParent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 780
    return-void

    .line 784
    :cond_7
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 787
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    const/4 v2, 0x1

    goto :goto_16

    :cond_15
    move v2, v1

    .line 788
    .local v2, "isVoiceSession":Z
    :goto_16
    if-eqz v2, :cond_21

    .line 790
    :try_start_18
    iget-object v3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v0, v3, v4}, Landroid/service/voice/IVoiceInteractionSession;->taskFinished(Landroid/content/Intent;I)V
    :try_end_1f
    .catch Landroid/os/RemoteException; {:try_start_18 .. :try_end_1f} :catch_20

    .line 792
    goto :goto_21

    .line 791
    :catch_20
    move-exception v0

    .line 794
    :cond_21
    :goto_21
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->autoRemoveFromRecents(Lcom/android/server/wm/TaskFragment;)Z

    move-result v0

    if-nez v0, :cond_2d

    if-eqz v2, :cond_34

    .line 797
    :cond_2d
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 805
    :cond_34
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->autoRemoveFromRecents(Lcom/android/server/wm/TaskFragment;)Z

    move-result v0

    if-nez v0, :cond_61

    .line 806
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_61

    .line 807
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 808
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_61

    .line 809
    new-instance v3, Landroid/content/res/Configuration;

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    .line 810
    .local v3, "c":Landroid/content/res/Configuration;
    iget-object v4, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4, v1}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 811
    iget-object v1, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 812
    invoke-virtual {v0, v3}, Lcom/android/server/wm/Task;->onRequestedOverrideConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 817
    .end local v0  # "rootTask":Lcom/android/server/wm/Task;
    .end local v3  # "c":Landroid/content/res/Configuration;
    :cond_61
    const-string v0, "cleanUpResourcesForDestroy"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 818
    return-void
.end method

.method private clearPinnedTaskIfNeed()V
    .registers 3

    .line 1687
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_15

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_15

    .line 1688
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    .line 1690
    :cond_15
    return-void
.end method

.method private clearTopActivities(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;
    .registers 7
    .param p1, "newR"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchFlags"  # I

    .line 1764
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->findActivityInHistory(Landroid/content/ComponentName;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1765
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_a

    const/4 v1, 0x0

    return-object v1

    .line 1767
    :cond_a
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda7;-><init>()V

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 1768
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 1767
    invoke-static {v1, v2, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v1

    .line 1769
    .local v1, "f":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 1770
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 1774
    iget v2, v0, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    if-nez v2, :cond_38

    const/high16 v2, 0x20000000

    and-int/2addr v2, p2

    if-nez v2, :cond_38

    .line 1776
    invoke-static {p2}, Lcom/android/server/wm/ActivityStarter;->isDocumentLaunchesIntoExisting(I)Z

    move-result v2

    if-nez v2, :cond_38

    .line 1777
    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v2, :cond_38

    .line 1778
    const/4 v2, 0x0

    const-string v3, "clear-task-top"

    invoke-virtual {v0, v3, v2}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 1782
    :cond_38
    return-object v0
.end method

.method private closeRecentsChain()V
    .registers 3

    .line 1409
    iget-object v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_9

    .line 1410
    iget-object v1, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1412
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_12

    .line 1413
    iget-object v1, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1415
    :cond_12
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1416
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1417
    return-void
.end method

.method private computeFreeformBounds(Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .registers 8
    .param p1, "outBounds"  # Landroid/graphics/Rect;
    .param p2, "newParentConfig"  # Landroid/content/res/Configuration;

    .line 2406
    iget v0, p2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v0, v0

    const/high16 v1, 0x43200000  # 160.0f

    div-float/2addr v0, v1

    .line 2408
    .local v0, "density":F
    new-instance v1, Landroid/graphics/Rect;

    iget-object v2, p2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 2409
    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    .line 2410
    .local v1, "parentBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    .line 2411
    .local v2, "display":Lcom/android/server/wm/DisplayContent;
    nop

    .line 2421
    const/high16 v3, 0x42400000  # 48.0f

    mul-float/2addr v3, v0

    float-to-int v3, v3

    const/high16 v4, 0x42000000  # 32.0f

    mul-float/2addr v4, v0

    float-to-int v4, v4

    invoke-static {p1, v1, v3, v4}, Lcom/android/server/wm/Task;->fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V

    .line 2426
    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    .line 2427
    .local v3, "offsetTop":I
    if-lez v3, :cond_2c

    .line 2428
    const/4 v4, 0x0

    invoke-virtual {p1, v4, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2430
    :cond_2c
    return-void
.end method

.method private computeMaxUserPosition(I)I
    .registers 4
    .param p1, "maxPosition"  # I

    .line 2888
    :goto_0
    if-lez p1, :cond_15

    .line 2889
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 2890
    .local v0, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v1

    .line 2891
    .local v1, "canShow":Z
    if-nez v1, :cond_11

    .line 2892
    goto :goto_15

    .line 2894
    :cond_11
    nop

    .end local v0  # "child":Lcom/android/server/wm/WindowContainer;
    .end local v1  # "canShow":Z
    add-int/lit8 p1, p1, -0x1

    .line 2895
    goto :goto_0

    .line 2896
    :cond_15
    :goto_15
    return p1
.end method

.method private computeMinUserPosition(II)I
    .registers 5
    .param p1, "minPosition"  # I
    .param p2, "size"  # I

    .line 2870
    :goto_0
    if-ge p1, p2, :cond_15

    .line 2871
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 2872
    .local v0, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v1

    .line 2873
    .local v1, "canShow":Z
    if-eqz v1, :cond_11

    .line 2874
    goto :goto_15

    .line 2876
    :cond_11
    nop

    .end local v0  # "child":Lcom/android/server/wm/WindowContainer;
    .end local v1  # "canShow":Z
    add-int/lit8 p1, p1, 0x1

    .line 2877
    goto :goto_0

    .line 2878
    :cond_15
    :goto_15
    return p1
.end method

.method private static enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V
    .registers 8
    .param p0, "pipCandidate"  # Lcom/android/server/wm/ActivityRecord;
    .param p1, "toFrontTask"  # Lcom/android/server/wm/Task;
    .param p2, "toFrontActivity"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "opts"  # Landroid/app/ActivityOptions;

    .line 5841
    if-nez p0, :cond_3

    .line 5842
    return-void

    .line 5844
    :cond_3
    if-eqz p3, :cond_c

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->disallowEnterPictureInPictureWhileLaunching()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 5846
    return-void

    .line 5848
    :cond_c
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5850
    return-void

    .line 5852
    :cond_13
    const/4 v0, 0x1

    if-eqz p3, :cond_1e

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getTransientLaunch()Z

    move-result v1

    if-eqz v1, :cond_1e

    move v1, v0

    goto :goto_1f

    :cond_1e
    const/4 v1, 0x0

    .line 5853
    .local v1, "isTransient":Z
    :goto_1f
    if-eqz p1, :cond_26

    .line 5854
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_2a

    :cond_26
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 5855
    .local v2, "targetRootTask":Lcom/android/server/wm/Task;
    :goto_2a
    if-eqz v2, :cond_35

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isActivityTypeAssistant()Z

    move-result v3

    if-nez v3, :cond_34

    if-eqz v1, :cond_35

    .line 5859
    :cond_34
    return-void

    .line 5861
    :cond_35
    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->supportsEnterPipOnTaskSwitch:Z

    .line 5863
    return-void
.end method

.method static findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;
    .registers 3
    .param p0, "topTask"  # Lcom/android/server/wm/Task;

    .line 5816
    if-nez p0, :cond_4

    .line 5817
    const/4 v0, 0x0

    return-object v0

    .line 5819
    :cond_4
    const/4 v0, 0x1

    new-array v0, v0, [Lcom/android/server/wm/ActivityRecord;

    .line 5820
    .local v0, "candidate":[Lcom/android/server/wm/ActivityRecord;
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;

    invoke-direct {v1, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda18;-><init>([Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    .line 5830
    const/4 v1, 0x0

    aget-object v1, v0, v1

    return-object v1
.end method

.method private static finishActivityAbove(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5
    .param p0, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p1, "boundaryActivity"  # Lcom/android/server/wm/ActivityRecord;

    .line 1787
    if-ne p0, p1, :cond_4

    const/4 v0, 0x1

    return v0

    .line 1789
    :cond_4
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-nez v0, :cond_20

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-nez v0, :cond_20

    .line 1790
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getOptions()Landroid/app/ActivityOptions;

    move-result-object v0

    .line 1791
    .local v0, "opts":Landroid/app/ActivityOptions;
    if-eqz v0, :cond_1b

    .line 1792
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearOptionsAnimation()V

    .line 1794
    invoke-virtual {p1, v0}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 1796
    :cond_1b
    const-string v2, "clear-task-stack"

    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 1799
    .end local v0  # "opts":Landroid/app/ActivityOptions;
    :cond_20
    return v1
.end method

.method private static finishIfVoiceActivity(Lcom/android/server/wm/ActivityRecord;Landroid/os/IBinder;)Z
    .registers 5
    .param p0, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p1, "binder"  # Landroid/os/IBinder;

    .line 5967
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-eq v0, p1, :cond_d

    goto :goto_25

    .line 5969
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearVoiceSessionLocked()V

    .line 5971
    :try_start_10
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/app/IApplicationThread;->scheduleLocalVoiceInteractionStarted(Landroid/os/IBinder;Lcom/android/internal/app/IVoiceInteractor;)V
    :try_end_1c
    .catch Landroid/os/RemoteException; {:try_start_10 .. :try_end_1c} :catch_1d

    .line 5974
    goto :goto_1e

    .line 5972
    :catch_1d
    move-exception v0

    .line 5975
    :goto_1e
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->finishRunningVoiceLocked()V

    .line 5976
    const/4 v0, 0x1

    return v0

    .line 5967
    :cond_25
    :goto_25
    const/4 v0, 0x0

    return v0
.end method

.method private static finishIfVoiceTask(Lcom/android/server/wm/Task;Landroid/os/IBinder;)V
    .registers 4
    .param p0, "tr"  # Lcom/android/server/wm/Task;
    .param p1, "binder"  # Landroid/os/IBinder;

    .line 5950
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    if-ne v0, p1, :cond_13

    .line 5951
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda16;

    invoke-direct {v0, p0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda16;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_28

    .line 5958
    :cond_13
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda17;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda17;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 5959
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 5958
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 5961
    .local v0, "f":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 5962
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 5964
    .end local v0  # "f":Lcom/android/internal/util/function/pooled/PooledPredicate;
    :goto_28
    return-void
.end method

.method private static fitWithinBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;II)V
    .registers 10
    .param p0, "bounds"  # Landroid/graphics/Rect;
    .param p1, "rootTaskBounds"  # Landroid/graphics/Rect;
    .param p2, "overlapPxX"  # I
    .param p3, "overlapPxY"  # I

    .line 2445
    if-eqz p1, :cond_61

    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_61

    invoke-virtual {p1, p0}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_61

    .line 2451
    :cond_f
    const/4 v0, 0x0

    .line 2453
    .local v0, "horizontalDiff":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-static {p2, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2454
    .local v1, "overlapLR":I
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v3, v1

    if-ge v2, v3, :cond_27

    .line 2455
    iget v2, p0, Landroid/graphics/Rect;->right:I

    iget v3, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int v0, v1, v2

    goto :goto_36

    .line 2456
    :cond_27
    iget v2, p0, Landroid/graphics/Rect;->left:I

    iget v3, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v3, v1

    if-le v2, v3, :cond_36

    .line 2457
    iget v2, p1, Landroid/graphics/Rect;->right:I

    iget v3, p0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    sub-int v2, v1, v2

    neg-int v0, v2

    .line 2459
    :cond_36
    :goto_36
    const/4 v2, 0x0

    .line 2460
    .local v2, "verticalDiff":I
    invoke-virtual {p0}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 2461
    .local v3, "overlapTB":I
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v5, v3

    if-ge v4, v5, :cond_4e

    .line 2462
    iget v4, p0, Landroid/graphics/Rect;->bottom:I

    iget v5, p1, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v2, v3, v4

    goto :goto_5d

    .line 2463
    :cond_4e
    iget v4, p0, Landroid/graphics/Rect;->top:I

    iget v5, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v5, v3

    if-le v4, v5, :cond_5d

    .line 2464
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v4, v5

    sub-int v4, v3, v4

    neg-int v2, v4

    .line 2466
    :cond_5d
    :goto_5d
    invoke-virtual {p0, v0, v2}, Landroid/graphics/Rect;->offset(II)V

    .line 2467
    return-void

    .line 2446
    .end local v0  # "horizontalDiff":I
    .end local v1  # "overlapLR":I
    .end local v2  # "verticalDiff":I
    .end local v3  # "overlapTB":I
    :cond_61
    :goto_61
    return-void
.end method

.method static fromWindowContainerToken(Landroid/window/WindowContainerToken;)Lcom/android/server/wm/Task;
    .registers 2
    .param p0, "token"  # Landroid/window/WindowContainerToken;

    .line 757
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 758
    :cond_4
    invoke-virtual {p0}, Landroid/window/WindowContainerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/server/wm/Task;->fromBinder(Landroid/os/IBinder;)Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method private getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I
    .registers 9
    .param p1, "wc"  # Lcom/android/server/wm/WindowContainer;
    .param p2, "suggestedPosition"  # I

    .line 2900
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->showToCurrentUser()Z

    move-result v0

    .line 2902
    .local v0, "canShowChild":Z
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    .line 2905
    .local v1, "size":I
    const/4 v2, 0x0

    if-eqz v0, :cond_11

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/Task;->computeMinUserPosition(II)I

    move-result v2

    .line 2906
    .local v2, "minPosition":I
    :cond_11
    move v3, v2

    .line 2907
    .local v3, "maxPosition":I
    if-lez v1, :cond_1e

    .line 2908
    add-int/lit8 v4, v1, -0x1

    if-eqz v0, :cond_19

    goto :goto_1d

    :cond_19
    invoke-direct {p0, v4}, Lcom/android/server/wm/Task;->computeMaxUserPosition(I)I

    move-result v4

    :goto_1d
    move v3, v4

    .line 2916
    :cond_1e
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->isAlwaysOnTop()Z

    move-result v4

    if-nez v4, :cond_48

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v4

    if-eqz v4, :cond_34

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_34

    instance-of v4, p1, Lcom/android/server/wm/ActivityRecord;

    if-nez v4, :cond_48

    .line 2918
    :cond_34
    :goto_34
    if-le v3, v2, :cond_48

    .line 2919
    iget-object v4, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v4, v3}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->isAlwaysOnTop()Z

    move-result v4

    if-nez v4, :cond_45

    goto :goto_48

    .line 2920
    :cond_45
    add-int/lit8 v3, v3, -0x1

    goto :goto_34

    .line 2925
    :cond_48
    :goto_48
    const/high16 v4, -0x80000000

    if-ne p2, v4, :cond_4f

    if-nez v2, :cond_4f

    .line 2926
    return v4

    .line 2927
    :cond_4f
    const v4, 0x7fffffff

    if-ne p2, v4, :cond_59

    add-int/lit8 v5, v1, -0x1

    if-lt v3, v5, :cond_59

    .line 2928
    return v4

    .line 2932
    :cond_59
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-nez v4, :cond_61

    .line 2933
    add-int/lit8 v3, v3, 0x1

    .line 2937
    :cond_61
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v4

    return v4
.end method

.method private static getMaxVisibleBounds(Lcom/android/server/wm/ActivityRecord;Landroid/graphics/Rect;[Z)V
    .registers 12
    .param p0, "token"  # Lcom/android/server/wm/ActivityRecord;
    .param p1, "out"  # Landroid/graphics/Rect;
    .param p2, "foundTop"  # [Z

    .line 3176
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-nez v0, :cond_46

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v0

    if-eqz v0, :cond_46

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v0, :cond_f

    goto :goto_46

    .line 3179
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3180
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_16

    .line 3181
    return-void

    .line 3183
    :cond_16
    const/4 v1, 0x0

    aget-boolean v2, p2, v1

    if-nez v2, :cond_21

    .line 3184
    const/4 v2, 0x1

    aput-boolean v2, p2, v1

    .line 3185
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 3188
    :cond_21
    sget-object v1, Lcom/android/server/wm/Task;->sTmpBounds:Landroid/graphics/Rect;

    .line 3189
    .local v1, "visibleFrame":Landroid/graphics/Rect;
    iget-object v2, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    .line 3190
    .local v2, "attrs":Landroid/view/WindowManager$LayoutParams;
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getFrame()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3191
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v3

    iget v5, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 3192
    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getWindowingMode()I

    move-result v6

    iget v7, v2, Landroid/view/WindowManager$LayoutParams;->softInputMode:I

    iget v8, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 3191
    move-object v4, v1

    invoke-virtual/range {v3 .. v8}, Landroid/view/InsetsState;->calculateVisibleInsets(Landroid/graphics/Rect;IIII)Landroid/graphics/Insets;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 3194
    invoke-virtual {p1, v1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    .line 3195
    return-void

    .line 3177
    .end local v0  # "win":Lcom/android/server/wm/WindowState;
    .end local v1  # "visibleFrame":Landroid/graphics/Rect;
    .end local v2  # "attrs":Landroid/view/WindowManager$LayoutParams;
    :cond_46
    :goto_46
    return-void
.end method

.method private getNextFocusableTask(Z)Lcom/android/server/wm/Task;
    .registers 5
    .param p1, "allowFocusSelf"  # Z

    .line 2783
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 2784
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-nez v0, :cond_8

    .line 2785
    const/4 v1, 0x0

    return-object v1

    .line 2791
    :cond_8
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda51;

    invoke-direct {v1, p0, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda51;-><init>(Lcom/android/server/wm/Task;Z)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowContainer;->getTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2799
    .local v1, "focusableTask":Lcom/android/server/wm/Task;
    if-nez v1, :cond_22

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_22

    .line 2800
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-direct {v2, p1}, Lcom/android/server/wm/Task;->getNextFocusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object v2

    return-object v2

    .line 2802
    :cond_22
    return-object v1
.end method

.method private getNumRunningActivities(Lcom/android/server/wm/Task$TaskActivitiesReport;)V
    .registers 2
    .param p1, "reportOut"  # Lcom/android/server/wm/Task$TaskActivitiesReport;

    .line 1508
    invoke-virtual {p1}, Lcom/android/server/wm/Task$TaskActivitiesReport;->reset()V

    .line 1509
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1510
    return-void
.end method

.method private getPictureInPictureParams(Lcom/android/server/wm/Task;)Landroid/app/PictureInPictureParams;
    .registers 5
    .param p1, "top"  # Lcom/android/server/wm/Task;

    .line 4026
    const/4 v0, 0x0

    if-nez p1, :cond_4

    return-object v0

    .line 4027
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4028
    .local v1, "topMostActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_1b

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v2}, Landroid/app/PictureInPictureParams;->empty()Z

    move-result v2

    if-eqz v2, :cond_13

    goto :goto_1b

    .line 4029
    :cond_13
    new-instance v0, Landroid/app/PictureInPictureParams;

    iget-object v2, v1, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-direct {v0, v2}, Landroid/app/PictureInPictureParams;-><init>(Landroid/app/PictureInPictureParams;)V

    goto :goto_1c

    :cond_1b
    :goto_1b
    nop

    .line 4028
    :goto_1c
    return-object v0
.end method

.method private getRawBounds()Landroid/graphics/Rect;
    .registers 2

    .line 6839
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    return-object v0
.end method

.method private getRelativePosition()Landroid/graphics/Point;
    .registers 2

    .line 6773
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 6774
    .local v0, "position":Landroid/graphics/Point;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getRelativePosition(Landroid/graphics/Point;)V

    .line 6775
    return-object v0
.end method

.method private getShadowRadius(Z)F
    .registers 6
    .param p1, "taskIsFocused"  # Z

    .line 4901
    const/4 v0, 0x0

    .line 4904
    .local v0, "elevation":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    .line 4906
    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v1, v1, Lcom/android/server/wm/WindowManagerService;->mIsFreeformShadowMode:Z

    if-eqz v1, :cond_1f

    .line 4907
    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    const/4 v3, 0x0

    iput-boolean v3, v1, Lcom/android/server/wm/WindowManagerService;->mIsFreeformShadowMode:Z

    .line 4908
    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->setGlobalShadowSettings()V

    .line 4909
    const-string v1, "ActivityTaskManager"

    const-string v3, "inPinnedWindowingMode setGlobalShadowSettings"

    invoke-static {v1, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4912
    :cond_1f
    const/4 v0, 0x5

    .line 4924
    invoke-direct {p0}, Lcom/android/server/wm/Task;->hasVisibleChildren()Z

    move-result v1

    if-nez v1, :cond_27

    .line 4925
    return v2

    .line 4928
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v1

    int-to-float v1, v1

    return v1

    .line 4920
    :cond_35
    return v2
.end method

.method private hasVisibleChildren()Z
    .registers 3

    .line 4890
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_1b

    .line 4894
    :cond_e
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda36;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_1a

    const/4 v1, 0x1

    :cond_1a
    return v1

    .line 4891
    :cond_1b
    :goto_1b
    return v1
.end method

.method private inFrontOfStandardRootTask()Z
    .registers 7

    .line 5981
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 5982
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 5983
    return v1

    .line 5985
    :cond_8
    const/4 v2, 0x1

    new-array v3, v2, [Z

    .line 5986
    .local v3, "hasFound":[Z
    new-instance v4, Lcom/android/server/wm/Task$$ExternalSyntheticLambda15;

    invoke-direct {v4, p0, v3}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda15;-><init>(Lcom/android/server/wm/Task;[Z)V

    invoke-virtual {v0, v4}, Lcom/android/server/wm/TaskDisplayArea;->getRootTask(Ljava/util/function/Predicate;)Lcom/android/server/wm/Task;

    move-result-object v4

    .line 5998
    .local v4, "rootTaskBehind":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_1d

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->isActivityTypeStandard()Z

    move-result v5

    if-eqz v5, :cond_1d

    move v1, v2

    :cond_1d
    return v1
.end method

.method private isSelfOrNonEmbeddedTask(Lcom/android/server/wm/Task;)Z
    .registers 4
    .param p1, "task"  # Lcom/android/server/wm/Task;

    .line 3403
    const/4 v0, 0x1

    if-ne p1, p0, :cond_4

    .line 3404
    return v0

    .line 3406
    :cond_4
    if-eqz p1, :cond_d

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->isEmbedded()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method private static isTopRunning(Lcom/android/server/wm/ActivityRecord;ILandroid/os/IBinder;)Z
    .registers 4
    .param p0, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p1, "taskId"  # I
    .param p2, "notTop"  # Landroid/os/IBinder;

    .line 3478
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    if-eq v0, p1, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    if-eq v0, p2, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    :goto_15
    return v0
.end method

.method private static isTopRunningNonDelayed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p0, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p1, "notTop"  # Lcom/android/server/wm/ActivityRecord;

    .line 3457
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    if-nez v0, :cond_e

    if-eq p0, p1, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method static synthetic lambda$applyAnimationUnchecked$14(Ljava/util/ArrayList;ILcom/android/server/wm/AnimationAdapter;)V
    .registers 5
    .param p0, "sources"  # Ljava/util/ArrayList;
    .param p1, "type"  # I
    .param p2, "anim"  # Lcom/android/server/wm/AnimationAdapter;

    .line 3828
    if-nez p0, :cond_3

    return-void

    .line 3829
    :cond_3
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_4
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_16

    .line 3830
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationFinished(ILcom/android/server/wm/AnimationAdapter;)V

    .line 3829
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 3832
    .end local v0  # "i":I
    :cond_16
    return-void
.end method

.method static synthetic lambda$ensureActivitiesVisible$21(Lcom/android/server/wm/ActivityRecord;IZZLcom/android/server/wm/Task;)V
    .registers 5
    .param p0, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .param p1, "configChanges"  # I
    .param p2, "preserveWindows"  # Z
    .param p3, "notifyClients"  # Z
    .param p4, "task"  # Lcom/android/server/wm/Task;

    .line 5456
    invoke-virtual {p4, p0, p1, p2, p3}, Lcom/android/server/wm/Task;->updateActivityVisibilities(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 5458
    return-void
.end method

.method static synthetic lambda$fillTaskInfo$15(Landroid/app/TaskInfo;Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p0, "info"  # Landroid/app/TaskInfo;
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 3957
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {p0, v0}, Landroid/app/TaskInfo;->addLaunchCookie(Landroid/os/IBinder;)V

    .line 3958
    return-void
.end method

.method static synthetic lambda$findEnterPipOnTaskSwitchCandidate$24([Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/TaskFragment;)Z
    .registers 6
    .param p0, "candidate"  # [Lcom/android/server/wm/ActivityRecord;
    .param p1, "tf"  # Lcom/android/server/wm/TaskFragment;

    .line 5822
    invoke-virtual {p1}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 5823
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v2, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 5824
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->supportsPictureInPicture()Z

    move-result v2

    if-eqz v2, :cond_1b

    .line 5825
    aput-object v0, p0, v1

    .line 5826
    const/4 v1, 0x1

    return v1

    .line 5828
    :cond_1b
    return v1
.end method

.method static synthetic lambda$finishIfVoiceTask$25(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p0, "tr"  # Lcom/android/server/wm/Task;
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 5952
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_5

    return-void

    .line 5953
    :cond_5
    const/4 v0, 0x0

    const-string v1, "finish-voice"

    invoke-virtual {p1, v1, v0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 5954
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateOomAdj()V

    .line 5955
    return-void
.end method

.method static synthetic lambda$forAllLeafTasksAndLeafTaskFragments$13(Ljava/util/function/Consumer;ZLcom/android/server/wm/Task;)V
    .registers 7
    .param p0, "callback"  # Ljava/util/function/Consumer;
    .param p1, "traverseTopToBottom"  # Z
    .param p2, "task"  # Lcom/android/server/wm/Task;

    .line 3620
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->isLeafTaskFragment()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3621
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3622
    return-void

    .line 3626
    :cond_a
    const/4 v0, 0x0

    .line 3627
    .local v0, "consumed":Z
    if-eqz p1, :cond_39

    .line 3628
    iget-object v1, p2, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_15
    if-ltz v1, :cond_38

    .line 3629
    iget-object v2, p2, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 3630
    .local v2, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eqz v3, :cond_29

    .line 3631
    invoke-virtual {v2, p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    goto :goto_35

    .line 3632
    :cond_29
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_35

    if-nez v0, :cond_35

    .line 3633
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3634
    const/4 v0, 0x1

    .line 3628
    .end local v2  # "child":Lcom/android/server/wm/WindowContainer;
    :cond_35
    :goto_35
    add-int/lit8 v1, v1, -0x1

    goto :goto_15

    .end local v1  # "i":I
    :cond_38
    goto :goto_63

    .line 3638
    :cond_39
    const/4 v1, 0x0

    .restart local v1  # "i":I
    :goto_3a
    iget-object v2, p2, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    if-ge v1, v2, :cond_63

    .line 3639
    iget-object v2, p2, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 3640
    .restart local v2  # "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-eqz v3, :cond_54

    .line 3641
    invoke-virtual {v2, p0, p1}, Lcom/android/server/wm/WindowContainer;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    goto :goto_60

    .line 3642
    :cond_54
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_60

    if-nez v0, :cond_60

    .line 3643
    invoke-interface {p0, p2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3644
    const/4 v0, 0x1

    .line 3638
    .end local v2  # "child":Lcom/android/server/wm/WindowContainer;
    :cond_60
    :goto_60
    add-int/lit8 v1, v1, 0x1

    goto :goto_3a

    .line 3648
    .end local v1  # "i":I
    :cond_63
    :goto_63
    return-void
.end method

.method static synthetic lambda$getDescendantTaskCount$6(Lcom/android/server/wm/Task;[I)V
    .registers 4
    .param p0, "t"  # Lcom/android/server/wm/Task;
    .param p1, "count"  # [I

    .line 2765
    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    return-void
.end method

.method static synthetic lambda$getDumpActivitiesLocked$29(Lcom/android/server/am/ActivityManagerService$ItemMatcher;Ljava/util/ArrayList;Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p0, "matcher"  # Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    .param p1, "activities"  # Ljava/util/ArrayList;
    .param p2, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 6463
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {p0, p2, v0}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->match(Ljava/lang/Object;Landroid/content/ComponentName;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 6464
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6466
    :cond_f
    return-void
.end method

.method static synthetic lambda$getStartingWindowInfo$17(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "w"  # Lcom/android/server/wm/WindowState;

    .line 4076
    iget-object v0, p0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_8

    goto :goto_9

    :cond_8
    const/4 v1, 0x0

    :goto_9
    return v1
.end method

.method static synthetic lambda$getTopFullscreenActivity$9(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p0, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 3483
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3484
    .local v0, "win":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_10

    iget-object v1, v0, Lcom/android/server/wm/WindowState;->mAttrs:Landroid/view/WindowManager$LayoutParams;

    invoke-virtual {v1}, Landroid/view/WindowManager$LayoutParams;->isFullscreen()Z

    move-result v1

    if-eqz v1, :cond_10

    const/4 v1, 0x1

    goto :goto_11

    :cond_10
    const/4 v1, 0x0

    :goto_11
    return v1
.end method

.method static synthetic lambda$getTopRealVisibleActivity$11(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 3503
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-nez v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method static synthetic lambda$getTopVisibleActivity$10(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 3494
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mIsExiting:Z

    if-nez v0, :cond_10

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isClientVisible()Z

    move-result v0

    if-eqz v0, :cond_10

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method static synthetic lambda$getTopWaitSplashScreenActivity$12(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p0, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 3508
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mHandleExitSplashScreen:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_a

    iget v0, p0, Lcom/android/server/wm/ActivityRecord;->mTransferringSplashScreenState:I

    if-ne v0, v1, :cond_a

    goto :goto_b

    :cond_a
    const/4 v1, 0x0

    :goto_b
    return v1
.end method

.method static synthetic lambda$goToSleepIfPossible$20(Z[ILcom/android/server/wm/TaskFragment;)V
    .registers 5
    .param p0, "shuttingDown"  # Z
    .param p1, "sleepInProgress"  # [I
    .param p2, "taskFragment"  # Lcom/android/server/wm/TaskFragment;

    .line 5392
    invoke-virtual {p2, p0}, Lcom/android/server/wm/TaskFragment;->sleepIfPossible(Z)Z

    move-result v0

    if-nez v0, :cond_d

    .line 5393
    const/4 v0, 0x0

    aget v1, p1, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p1, v0

    .line 5395
    :cond_d
    return-void
.end method

.method static synthetic lambda$navigateUpTo$27(Landroid/content/ComponentName;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p0, "dest"  # Landroid/content/ComponentName;
    .param p1, "ar"  # Lcom/android/server/wm/ActivityRecord;

    .line 6054
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {p0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 6055
    invoke-virtual {p0}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/4 v0, 0x1

    goto :goto_1f

    :cond_1e
    const/4 v0, 0x0

    .line 6054
    :goto_1f
    return v0
.end method

.method static synthetic lambda$navigateUpTo$28(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 12
    .param p0, "finalParent"  # Lcom/android/server/wm/ActivityRecord;
    .param p1, "resultCodeHolder"  # [I
    .param p2, "resultDataHolder"  # [Landroid/content/Intent;
    .param p3, "resultGrantsHolder"  # [Lcom/android/server/uri/NeededUriGrants;
    .param p4, "ar"  # Lcom/android/server/wm/ActivityRecord;

    .line 6095
    if-ne p4, p0, :cond_4

    const/4 v0, 0x1

    return v0

    .line 6097
    :cond_4
    const/4 v0, 0x0

    aget v2, p1, v0

    aget-object v3, p2, v0

    aget-object v4, p3, v0

    const/4 v6, 0x1

    const-string/jumbo v5, "navigate-up"

    move-object v1, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    .line 6100
    aput v0, p1, v0

    .line 6101
    const/4 v1, 0x0

    aput-object v1, p2, v0

    .line 6102
    return v0
.end method

.method static synthetic lambda$onConfigurationChanged$4(Lcom/android/server/wm/WindowState;)V
    .registers 3
    .param p0, "w"  # Lcom/android/server/wm/WindowState;

    .line 2253
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->hiddenByKeyguard()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 2254
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/WindowState;->show(ZZ)Z

    .line 2255
    invoke-virtual {p0, v1}, Lcom/android/server/wm/WindowState;->setHiddenByKeyguard(Z)V

    .line 2257
    :cond_e
    return-void
.end method

.method static synthetic lambda$onConfigurationChanged$5(Lcom/android/server/wm/ActivityRecord;)V
    .registers 1
    .param p0, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 2264
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->clearSizeCompatModeWithoutConfigChange()V

    .line 2265
    return-void
.end method

.method static synthetic lambda$resumeTopActivityInnerLocked$22(Lcom/android/server/wm/TaskFragment;[ZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ZLcom/android/server/wm/TaskFragment;)V
    .registers 9
    .param p0, "topFragment"  # Lcom/android/server/wm/TaskFragment;
    .param p1, "resumed"  # [Z
    .param p2, "prev"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "options"  # Landroid/app/ActivityOptions;
    .param p4, "deferPause"  # Z
    .param p5, "f"  # Lcom/android/server/wm/TaskFragment;

    .line 5634
    if-ne p0, p5, :cond_3

    .line 5635
    return-void

    .line 5637
    :cond_3
    const/4 v0, 0x0

    invoke-virtual {p5, v0}, Lcom/android/server/wm/TaskFragment;->canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_b

    .line 5638
    return-void

    .line 5640
    :cond_b
    const/4 v0, 0x0

    aget-boolean v1, p1, v0

    invoke-virtual {p5, p2, p3, p4}, Lcom/android/server/wm/TaskFragment;->resumeTopActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v2

    or-int/2addr v1, v2

    aput-boolean v1, p1, v0

    .line 5641
    return-void
.end method

.method static synthetic lambda$setMainWindowSizeChangeTransaction$18(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl$Transaction;)V
    .registers 2
    .param p0, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p1, "d"  # Landroid/view/SurfaceControl$Transaction;

    .line 5002
    invoke-virtual {p1, p0}, Landroid/view/SurfaceControl$Transaction;->merge(Landroid/view/SurfaceControl$Transaction;)Landroid/view/SurfaceControl$Transaction;

    .line 5003
    return-void
.end method

.method static synthetic lambda$startActivityLocked$23(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "a"  # Lcom/android/server/wm/ActivityRecord;

    .line 5795
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    if-eqz v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static synthetic lambda$topActivityContainsStartingWindow$0(Lcom/android/server/wm/WindowState;)Z
    .registers 3
    .param p0, "window"  # Lcom/android/server/wm/WindowState;

    .line 1500
    invoke-virtual {p0}, Lcom/android/server/wm/WindowState;->getBaseType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method static synthetic lambda$topActivityContainsStartingWindow$1(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 1499
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda29;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eqz v0, :cond_d

    const/4 v0, 0x1

    goto :goto_e

    :cond_d
    const/4 v0, 0x0

    :goto_e
    return v0
.end method

.method static synthetic lambda$trimIneffectiveInfo$16(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 3978
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private static matchesActivityInHistory(Lcom/android/server/wm/ActivityRecord;Landroid/content/ComponentName;)Z
    .registers 3
    .param p0, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p1, "activityComponent"  # Landroid/content/ComponentName;

    .line 2002
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v0, p1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private onConfigurationChangedInner(Landroid/content/res/Configuration;)V
    .registers 16
    .param p1, "newParentConfig"  # Landroid/content/res/Configuration;

    .line 2094
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v0

    .line 2095
    .local v0, "prevPersistTaskBounds":Z
    nop

    .line 2096
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    .line 2097
    .local v1, "nextPersistTaskBounds":Z
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideWindowingMode()I

    move-result v2

    if-nez v2, :cond_1f

    .line 2098
    iget-object v2, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    .line 2100
    :cond_1f
    if-nez v0, :cond_38

    if-eqz v1, :cond_38

    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_38

    .line 2101
    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_38

    .line 2103
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 2104
    invoke-virtual {v2, v3}, Landroid/app/WindowConfiguration;->setBounds(Landroid/graphics/Rect;)V

    .line 2107
    :cond_38
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    .line 2108
    .local v2, "prevWinMode":I
    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2109
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v3

    .line 2110
    .local v3, "wasInMultiWindowMode":Z
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v4

    .line 2111
    .local v4, "wasInPictureInPicture":Z
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2114
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 2116
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_61

    move v5, v7

    goto :goto_62

    :cond_61
    move v5, v6

    .line 2117
    .local v5, "pipChanging":Z
    :goto_62
    if-eqz v5, :cond_6e

    .line 2118
    iget-object v8, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v9

    invoke-virtual {v8, p0, v9}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    goto :goto_79

    .line 2119
    :cond_6e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v8

    if-eq v3, v8, :cond_79

    .line 2120
    iget-object v8, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v8, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdateMultiWindowMode(Lcom/android/server/wm/Task;)V

    .line 2123
    :cond_79
    :goto_79
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v8

    .line 2124
    .local v8, "newWinMode":I
    if-eq v2, v8, :cond_8e

    iget-object v9, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v9, :cond_8e

    .line 2125
    invoke-direct {p0, v2, v8}, Lcom/android/server/wm/Task;->shouldStartChangeTransition(II)Z

    move-result v9

    if-eqz v9, :cond_8e

    .line 2126
    iget-object v9, p0, Lcom/android/server/wm/Task;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v9}, Lcom/android/server/wm/Task;->initializeChangeTransition(Landroid/graphics/Rect;)V

    .line 2129
    :cond_8e
    if-eq v2, v8, :cond_99

    iget-object v9, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v9, :cond_99

    .line 2130
    iget-object v9, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->updateImeParent()V

    .line 2135
    :cond_99
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v9

    if-eqz v9, :cond_b0

    .line 2136
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 2137
    .local v9, "currentBounds":Landroid/graphics/Rect;
    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_b0

    .line 2138
    invoke-virtual {p0, v9}, Lcom/android/server/wm/Task;->setLastNonFullscreenBounds(Landroid/graphics/Rect;)V

    .line 2142
    .end local v9  # "currentBounds":Landroid/graphics/Rect;
    :cond_b0
    if-eqz v5, :cond_df

    if-eqz v4, :cond_df

    .line 2147
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    .line 2148
    .local v9, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v9, :cond_df

    iget-object v10, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v10, v9}, Lcom/android/server/wm/DisplayContent;->isFixedRotationLaunchingApp(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v10

    if-eqz v10, :cond_df

    .line 2149
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v12, 0x0

    invoke-virtual {v10, v11, v12}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v12, 0x0

    .line 2150
    invoke-virtual {v10, v11, v12}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v10

    iget-object v11, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    sget-object v12, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    const/16 v13, 0x9

    new-array v13, v13, [F

    .line 2151
    invoke-virtual {v10, v11, v12, v13}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    .line 2155
    .end local v9  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_df
    invoke-direct {p0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded()V

    .line 2159
    if-ne v8, v7, :cond_ec

    const/4 v9, 0x5

    if-ne v2, v9, :cond_ec

    .line 2160
    invoke-virtual {p0, v7}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    move-result v7

    .local v7, "taskOrgChanged":Z
    goto :goto_f0

    .line 2162
    .end local v7  # "taskOrgChanged":Z
    :cond_ec
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskOrganizerState()Z

    move-result v7

    .line 2165
    .restart local v7  # "taskOrgChanged":Z
    :goto_f0
    if-eqz v7, :cond_106

    .line 2166
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wm/Task;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 2167
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v9

    if-nez v9, :cond_106

    .line 2171
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v9

    invoke-virtual {p0, v9}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 2176
    :cond_106
    if-nez v7, :cond_10b

    .line 2177
    invoke-virtual {p0, v6}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 2179
    :cond_10b
    return-void
.end method

.method private static processTaskResizeBounds(Lcom/android/server/wm/Task;Landroid/graphics/Rect;)V
    .registers 3
    .param p0, "task"  # Lcom/android/server/wm/Task;
    .param p1, "displayedBounds"  # Landroid/graphics/Rect;

    .line 6393
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 6395
    :cond_7
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 6396
    return-void
.end method

.method private static replaceWindowsOnTaskMove(II)Z
    .registers 3
    .param p0, "sourceWindowingMode"  # I
    .param p1, "targetWindowingMode"  # I

    .line 1055
    const/4 v0, 0x5

    if-eq p0, v0, :cond_8

    if-ne p1, v0, :cond_6

    goto :goto_8

    :cond_6
    const/4 v0, 0x0

    goto :goto_9

    :cond_8
    :goto_8
    const/4 v0, 0x1

    :goto_9
    return v0
.end method

.method private static restartPackage(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 4
    .param p0, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p1, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "packageName"  # Ljava/lang/String;

    .line 6493
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 6494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->forceNewConfig:Z

    .line 6495
    if-eqz p1, :cond_1a

    if-ne p0, p1, :cond_1a

    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_1a

    .line 6496
    const/16 v0, 0x100

    invoke-virtual {p0, v0}, Lcom/android/server/wm/ActivityRecord;->startFreezingScreenLocked(I)V

    .line 6499
    :cond_1a
    return-void
.end method

.method static restoreFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/Task;
    .registers 57
    .param p0, "in"  # Landroid/util/TypedXmlPullParser;
    .param p1, "taskSupervisor"  # Lcom/android/server/wm/ActivityTaskSupervisor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/xmlpull/v1/XmlPullParserException;
        }
    .end annotation

    .line 4421
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const/4 v0, 0x0

    .line 4422
    .local v0, "intent":Landroid/content/Intent;
    const/4 v3, 0x0

    .line 4423
    .local v3, "affinityIntent":Landroid/content/Intent;
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 4424
    .local v4, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const/4 v5, 0x0

    .line 4425
    .local v5, "realActivity":Landroid/content/ComponentName;
    const/4 v6, 0x0

    .line 4426
    .local v6, "realActivitySuspended":Z
    const/4 v7, 0x0

    .line 4427
    .local v7, "origActivity":Landroid/content/ComponentName;
    const/4 v8, 0x0

    .line 4428
    .local v8, "affinity":Ljava/lang/String;
    const/4 v9, 0x0

    .line 4429
    .local v9, "rootAffinity":Ljava/lang/String;
    const/4 v10, 0x0

    .line 4430
    .local v10, "hasRootAffinity":Z
    const/4 v11, 0x0

    .line 4431
    .local v11, "windowLayoutAffinity":Ljava/lang/String;
    const/4 v12, 0x0

    .line 4432
    .local v12, "rootHasReset":Z
    const/4 v13, 0x0

    .line 4433
    .local v13, "autoRemoveRecents":Z
    const/4 v14, 0x0

    .line 4434
    .local v14, "askedCompatMode":Z
    const/4 v15, 0x0

    .line 4435
    .local v15, "taskType":I
    const/16 v16, 0x0

    .line 4436
    .local v16, "userId":I
    const/16 v17, 0x1

    .line 4437
    .local v17, "userSetupComplete":Z
    const/16 v18, -0x1

    .line 4438
    .local v18, "effectiveUid":I
    const/16 v19, 0x0

    .line 4439
    .local v19, "lastDescription":Ljava/lang/String;
    const-wide/16 v20, 0x0

    .line 4440
    .local v20, "lastTimeOnTop":J
    const/16 v22, 0x1

    .line 4441
    .local v22, "neverRelinquishIdentity":Z
    const/16 v23, -0x1

    .line 4442
    .local v23, "taskId":I
    move-object/from16 v24, v3

    .end local v3  # "affinityIntent":Landroid/content/Intent;
    .local v24, "affinityIntent":Landroid/content/Intent;
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v3

    .line 4443
    .local v3, "outerDepth":I
    new-instance v25, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct/range {v25 .. v25}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    move-object/from16 v26, v25

    .line 4444
    .local v26, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    new-instance v25, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    invoke-direct/range {v25 .. v25}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;-><init>()V

    move-object/from16 v27, v25

    .line 4445
    .local v27, "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    const/16 v25, -0x1

    .line 4446
    .local v25, "taskAffiliation":I
    const/16 v28, -0x1

    .line 4447
    .local v28, "prevTaskId":I
    const/16 v29, -0x1

    .line 4448
    .local v29, "nextTaskId":I
    const/16 v30, -0x1

    .line 4449
    .local v30, "callingUid":I
    const-string v31, ""

    .line 4450
    .local v31, "callingPackage":Ljava/lang/String;
    const/16 v32, 0x0

    .line 4451
    .local v32, "callingFeatureId":Ljava/lang/String;
    const/16 v33, 0x4

    .line 4452
    .local v33, "resizeMode":I
    const/16 v34, 0x0

    .line 4453
    .local v34, "supportsPictureInPicture":Z
    const/16 v35, 0x0

    .line 4454
    .local v35, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    const/16 v36, -0x1

    .line 4455
    .local v36, "minWidth":I
    const/16 v37, -0x1

    .line 4456
    .local v37, "minHeight":I
    const/16 v38, 0x0

    .line 4458
    .local v38, "persistTaskVersion":I
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getAttributeCount()I

    move-result v39

    move-object/from16 v40, v5

    .end local v5  # "realActivity":Landroid/content/ComponentName;
    .local v40, "realActivity":Landroid/content/ComponentName;
    const/4 v5, 0x1

    add-int/lit8 v39, v39, -0x1

    move/from16 v41, v15

    move/from16 v42, v16

    move/from16 v43, v17

    move-object/from16 v44, v19

    move-wide/from16 v45, v20

    move/from16 v47, v22

    move/from16 v5, v23

    move/from16 v21, v25

    move/from16 v20, v28

    move/from16 v48, v29

    move/from16 v49, v30

    move-object/from16 v50, v31

    move-object/from16 v51, v32

    move-object/from16 v52, v35

    move/from16 v53, v36

    move/from16 v54, v37

    move-object/from16 v22, v0

    move/from16 v19, v6

    move-object/from16 v17, v11

    move v15, v14

    move/from16 v0, v39

    move-object/from16 v6, v40

    move v11, v10

    move v14, v13

    move-object v10, v9

    move v13, v12

    move/from16 v12, v38

    move-object v9, v8

    move-object v8, v7

    move/from16 v7, v33

    .end local v16  # "userId":I
    .end local v23  # "taskId":I
    .end local v25  # "taskAffiliation":I
    .end local v28  # "prevTaskId":I
    .end local v29  # "nextTaskId":I
    .end local v30  # "callingUid":I
    .end local v31  # "callingPackage":Ljava/lang/String;
    .end local v32  # "callingFeatureId":Ljava/lang/String;
    .end local v33  # "resizeMode":I
    .end local v35  # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .end local v36  # "minWidth":I
    .end local v37  # "minHeight":I
    .end local v38  # "persistTaskVersion":I
    .end local v40  # "realActivity":Landroid/content/ComponentName;
    .local v0, "attrNdx":I
    .local v5, "taskId":I
    .local v6, "realActivity":Landroid/content/ComponentName;
    .local v7, "resizeMode":I
    .local v8, "origActivity":Landroid/content/ComponentName;
    .local v9, "affinity":Ljava/lang/String;
    .local v10, "rootAffinity":Ljava/lang/String;
    .local v11, "hasRootAffinity":Z
    .local v12, "persistTaskVersion":I
    .local v13, "rootHasReset":Z
    .local v14, "autoRemoveRecents":Z
    .local v15, "askedCompatMode":Z
    .local v17, "windowLayoutAffinity":Ljava/lang/String;
    .local v19, "realActivitySuspended":Z
    .local v20, "prevTaskId":I
    .local v21, "taskAffiliation":I
    .local v22, "intent":Landroid/content/Intent;
    .local v41, "taskType":I
    .local v42, "userId":I
    .local v43, "userSetupComplete":Z
    .local v44, "lastDescription":Ljava/lang/String;
    .local v45, "lastTimeOnTop":J
    .local v47, "neverRelinquishIdentity":Z
    .local v48, "nextTaskId":I
    .local v49, "callingUid":I
    .local v50, "callingPackage":Ljava/lang/String;
    .local v51, "callingFeatureId":Ljava/lang/String;
    .local v52, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v53, "minWidth":I
    .local v54, "minHeight":I
    :goto_8e
    move/from16 v23, v15

    .end local v15  # "askedCompatMode":Z
    .local v23, "askedCompatMode":Z
    const-string v15, "ActivityTaskManager"

    if-ltz v0, :cond_43f

    .line 4459
    move/from16 v30, v14

    .end local v14  # "autoRemoveRecents":Z
    .local v30, "autoRemoveRecents":Z
    invoke-interface {v1, v0}, Landroid/util/TypedXmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v14

    .line 4460
    .local v14, "attrName":Ljava/lang/String;
    invoke-interface {v1, v0}, Landroid/util/TypedXmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v31

    .line 4465
    .local v31, "attrValue":Ljava/lang/String;
    invoke-virtual {v14}, Ljava/lang/String;->hashCode()I

    move-result v32

    move/from16 v33, v13

    .end local v13  # "rootHasReset":Z
    .local v33, "rootHasReset":Z
    sparse-switch v32, :sswitch_data_692

    :cond_a7
    goto/16 :goto_22c

    :sswitch_a9
    const-string/jumbo v13, "root_has_reset"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/4 v13, 0x7

    goto/16 :goto_22d

    :sswitch_b5
    const-string/jumbo v13, "window_layout_affinity"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/4 v13, 0x6

    goto/16 :goto_22d

    :sswitch_c1
    const-string/jumbo v13, "real_activity"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/4 v13, 0x1

    goto/16 :goto_22d

    :sswitch_cd
    const-string/jumbo v13, "never_relinquish_identity"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/16 v13, 0x10

    goto/16 :goto_22d

    :sswitch_da
    const-string v13, "calling_package"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/16 v13, 0x15

    goto/16 :goto_22d

    :sswitch_e6
    const-string/jumbo v13, "persist_task_version"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/16 v13, 0x1c

    goto/16 :goto_22d

    :sswitch_f3
    const-string v13, "last_description"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/16 v13, 0xe

    goto/16 :goto_22d

    :sswitch_ff
    const-string v13, "affinity"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/4 v13, 0x4

    goto/16 :goto_22d

    :sswitch_10a
    const-string/jumbo v13, "min_width"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/16 v13, 0x1a

    goto/16 :goto_22d

    :sswitch_117
    const-string v13, "calling_feature_id"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/16 v13, 0x16

    goto/16 :goto_22d

    :sswitch_123
    const-string/jumbo v13, "prev_affiliation"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/16 v13, 0x12

    goto/16 :goto_22d

    :sswitch_130
    const-string/jumbo v13, "task_type"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/16 v13, 0xd

    goto/16 :goto_22d

    :sswitch_13d
    const-string v13, "calling_uid"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/16 v13, 0x14

    goto/16 :goto_22d

    :sswitch_149
    const-string/jumbo v13, "user_id"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/16 v13, 0xa

    goto/16 :goto_22d

    :sswitch_156
    const-string/jumbo v13, "root_affinity"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/4 v13, 0x5

    goto/16 :goto_22d

    :sswitch_162
    const-string/jumbo v13, "supports_picture_in_picture"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/16 v13, 0x18

    goto/16 :goto_22d

    :sswitch_16f
    const-string v13, "auto_remove_recents"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/16 v13, 0x8

    goto/16 :goto_22d

    :sswitch_17b
    const-string v13, "last_snapshot_buffer_size"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/16 v13, 0x1f

    goto/16 :goto_22d

    :sswitch_187
    const-string/jumbo v13, "orig_activity"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/4 v13, 0x3

    goto/16 :goto_22d

    :sswitch_193
    const-string/jumbo v13, "non_fullscreen_bounds"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/16 v13, 0x19

    goto/16 :goto_22d

    :sswitch_1a0
    const-string v13, "last_snapshot_task_size"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/16 v13, 0x1d

    goto/16 :goto_22d

    :sswitch_1ac
    const-string/jumbo v13, "min_height"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/16 v13, 0x1b

    goto/16 :goto_22d

    :sswitch_1b9
    const-string/jumbo v13, "resize_mode"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/16 v13, 0x17

    goto/16 :goto_22d

    :sswitch_1c6
    const-string v13, "effective_uid"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/16 v13, 0xc

    goto :goto_22d

    :sswitch_1d1
    const-string/jumbo v13, "user_setup_complete"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/16 v13, 0xb

    goto :goto_22d

    :sswitch_1dd
    const-string/jumbo v13, "task_affiliation"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/16 v13, 0x11

    goto :goto_22d

    :sswitch_1e9
    const-string/jumbo v13, "real_activity_suspended"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/4 v13, 0x2

    goto :goto_22d

    :sswitch_1f4
    const-string/jumbo v13, "next_affiliation"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/16 v13, 0x13

    goto :goto_22d

    :sswitch_200
    const-string/jumbo v13, "task_id"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/4 v13, 0x0

    goto :goto_22d

    :sswitch_20b
    const-string v13, "last_time_moved"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/16 v13, 0xf

    goto :goto_22d

    :sswitch_216
    const-string v13, "last_snapshot_content_insets"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/16 v13, 0x1e

    goto :goto_22d

    :sswitch_221
    const-string v13, "asked_compat_mode"

    invoke-virtual {v14, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a7

    const/16 v13, 0x9

    goto :goto_22d

    :goto_22c
    const/4 v13, -0x1

    :goto_22d
    packed-switch v13, :pswitch_data_714

    .line 4564
    move-object/from16 v13, v27

    const-string/jumbo v13, "task_description_"

    invoke-virtual {v14, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v13

    if-nez v13, :cond_431

    .line 4565
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v32, v8

    .end local v8  # "origActivity":Landroid/content/ComponentName;
    .local v32, "origActivity":Landroid/content/ComponentName;
    const-string v8, "Task: Unknown attribute="

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v15, v8}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_433

    .line 4561
    .end local v32  # "origActivity":Landroid/content/ComponentName;
    .restart local v8  # "origActivity":Landroid/content/ComponentName;
    :pswitch_255  #0x1f
    invoke-static/range {v31 .. v31}, Landroid/graphics/Point;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v13

    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .local v15, "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    iput-object v13, v15, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    .line 4562
    move-object/from16 v32, v8

    goto/16 :goto_433

    .line 4558
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_261  #0x1e
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v13

    iput-object v13, v15, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    .line 4559
    move-object/from16 v32, v8

    goto/16 :goto_433

    .line 4555
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_26d  #0x1d
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Landroid/graphics/Point;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Point;

    move-result-object v13

    iput-object v13, v15, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    .line 4556
    move-object/from16 v32, v8

    goto/16 :goto_433

    .line 4552
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_279  #0x1c
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 4553
    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43b

    .line 4549
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_287  #0x1b
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4550
    .end local v54  # "minHeight":I
    .local v13, "minHeight":I
    move/from16 v54, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43b

    .line 4546
    .end local v13  # "minHeight":I
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v54  # "minHeight":I
    :pswitch_297  #0x1a
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4547
    .end local v53  # "minWidth":I
    .local v13, "minWidth":I
    move/from16 v53, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43b

    .line 4543
    .end local v13  # "minWidth":I
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v53  # "minWidth":I
    :pswitch_2a7  #0x19
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Landroid/graphics/Rect;->unflattenFromString(Ljava/lang/String;)Landroid/graphics/Rect;

    move-result-object v13

    .line 4544
    .end local v52  # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v13, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    move-object/from16 v52, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43b

    .line 4540
    .end local v13  # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v52  # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    :pswitch_2b7  #0x18
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 4541
    .end local v34  # "supportsPictureInPicture":Z
    .local v13, "supportsPictureInPicture":Z
    move/from16 v34, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43b

    .line 4537
    .end local v13  # "supportsPictureInPicture":Z
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v34  # "supportsPictureInPicture":Z
    :pswitch_2c7  #0x17
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    .line 4538
    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43b

    .line 4534
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_2d5  #0x16
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    move-object/from16 v13, v31

    .line 4535
    .end local v51  # "callingFeatureId":Ljava/lang/String;
    .local v13, "callingFeatureId":Ljava/lang/String;
    move-object/from16 v51, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43b

    .line 4531
    .end local v13  # "callingFeatureId":Ljava/lang/String;
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v51  # "callingFeatureId":Ljava/lang/String;
    :pswitch_2e3  #0x15
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    move-object/from16 v13, v31

    .line 4532
    .end local v50  # "callingPackage":Ljava/lang/String;
    .local v13, "callingPackage":Ljava/lang/String;
    move-object/from16 v50, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43b

    .line 4528
    .end local v13  # "callingPackage":Ljava/lang/String;
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v50  # "callingPackage":Ljava/lang/String;
    :pswitch_2f1  #0x14
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4529
    .end local v49  # "callingUid":I
    .local v13, "callingUid":I
    move/from16 v49, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43b

    .line 4525
    .end local v13  # "callingUid":I
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v49  # "callingUid":I
    :pswitch_301  #0x13
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4526
    .end local v48  # "nextTaskId":I
    .local v13, "nextTaskId":I
    move/from16 v48, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43b

    .line 4522
    .end local v13  # "nextTaskId":I
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v48  # "nextTaskId":I
    :pswitch_311  #0x12
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4523
    .end local v20  # "prevTaskId":I
    .local v13, "prevTaskId":I
    move/from16 v20, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43b

    .line 4519
    .end local v13  # "prevTaskId":I
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v20  # "prevTaskId":I
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_321  #0x11
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4520
    .end local v21  # "taskAffiliation":I
    .local v13, "taskAffiliation":I
    move/from16 v21, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43b

    .line 4516
    .end local v13  # "taskAffiliation":I
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v21  # "taskAffiliation":I
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_331  #0x10
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 4517
    .end local v47  # "neverRelinquishIdentity":Z
    .local v13, "neverRelinquishIdentity":Z
    move/from16 v47, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43b

    .line 4513
    .end local v13  # "neverRelinquishIdentity":Z
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v47  # "neverRelinquishIdentity":Z
    :pswitch_341  #0xf
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v27

    .line 4514
    .end local v45  # "lastTimeOnTop":J
    .local v27, "lastTimeOnTop":J
    move-wide/from16 v45, v27

    move/from16 v14, v30

    move/from16 v13, v33

    move-object/from16 v27, v15

    move/from16 v15, v23

    goto/16 :goto_43b

    .line 4510
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .local v27, "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v45  # "lastTimeOnTop":J
    :pswitch_353  #0xe
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    move-object/from16 v13, v31

    .line 4511
    .end local v44  # "lastDescription":Ljava/lang/String;
    .local v13, "lastDescription":Ljava/lang/String;
    move-object/from16 v44, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43b

    .line 4507
    .end local v13  # "lastDescription":Ljava/lang/String;
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v44  # "lastDescription":Ljava/lang/String;
    :pswitch_361  #0xd
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4508
    .end local v41  # "taskType":I
    .local v13, "taskType":I
    move/from16 v41, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43b

    .line 4504
    .end local v13  # "taskType":I
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v41  # "taskType":I
    :pswitch_371  #0xc
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4505
    .end local v18  # "effectiveUid":I
    .local v13, "effectiveUid":I
    move/from16 v18, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43b

    .line 4501
    .end local v13  # "effectiveUid":I
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v18  # "effectiveUid":I
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_381  #0xb
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 4502
    .end local v43  # "userSetupComplete":Z
    .local v13, "userSetupComplete":Z
    move/from16 v43, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43b

    .line 4498
    .end local v13  # "userSetupComplete":Z
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v43  # "userSetupComplete":Z
    :pswitch_391  #0xa
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v13

    .line 4499
    .end local v42  # "userId":I
    .local v13, "userId":I
    move/from16 v42, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43b

    .line 4495
    .end local v13  # "userId":I
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v42  # "userId":I
    :pswitch_3a1  #0x9
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 4496
    .end local v23  # "askedCompatMode":Z
    .local v13, "askedCompatMode":Z
    move/from16 v14, v30

    move v15, v13

    move/from16 v13, v33

    goto/16 :goto_43b

    .line 4492
    .end local v13  # "askedCompatMode":Z
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v23  # "askedCompatMode":Z
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_3ae  #0x8
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 4493
    .end local v30  # "autoRemoveRecents":Z
    .local v13, "autoRemoveRecents":Z
    move v14, v13

    move/from16 v15, v23

    move/from16 v13, v33

    goto/16 :goto_43b

    .line 4489
    .end local v13  # "autoRemoveRecents":Z
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v30  # "autoRemoveRecents":Z
    :pswitch_3bb  #0x7
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v13

    .line 4490
    .end local v33  # "rootHasReset":Z
    .local v13, "rootHasReset":Z
    move/from16 v15, v23

    move/from16 v14, v30

    goto/16 :goto_43b

    .line 4486
    .end local v13  # "rootHasReset":Z
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v33  # "rootHasReset":Z
    :pswitch_3c7  #0x6
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    move-object/from16 v13, v31

    .line 4487
    .end local v17  # "windowLayoutAffinity":Ljava/lang/String;
    .local v13, "windowLayoutAffinity":Ljava/lang/String;
    move-object/from16 v17, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43b

    .line 4482
    .end local v13  # "windowLayoutAffinity":Ljava/lang/String;
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v17  # "windowLayoutAffinity":Ljava/lang/String;
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_3d5  #0x5
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    move-object/from16 v10, v31

    .line 4483
    const/4 v11, 0x1

    .line 4484
    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto/16 :goto_43b

    .line 4479
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_3e2  #0x4
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    move-object/from16 v9, v31

    .line 4480
    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto :goto_43b

    .line 4476
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_3ed  #0x3
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v8

    .line 4477
    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto :goto_43b

    .line 4473
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_3fa  #0x2
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    .line 4474
    .end local v19  # "realActivitySuspended":Z
    .local v13, "realActivitySuspended":Z
    move/from16 v19, v13

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto :goto_43b

    .line 4470
    .end local v13  # "realActivitySuspended":Z
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v19  # "realActivitySuspended":Z
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_40d  #0x1
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static/range {v31 .. v31}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v6

    .line 4471
    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto :goto_43b

    .line 4467
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :pswitch_41a  #0x0
    move-object/from16 v15, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    const/4 v13, -0x1

    if-ne v5, v13, :cond_42c

    invoke-static/range {v31 .. v31}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    move-object/from16 v27, v15

    move/from16 v15, v23

    move/from16 v14, v30

    move/from16 v13, v33

    goto :goto_43b

    :cond_42c
    move-object/from16 v32, v8

    move-object/from16 v27, v15

    goto :goto_433

    .line 4564
    .end local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :cond_431
    move-object/from16 v32, v8

    .line 4458
    .end local v14  # "attrName":Ljava/lang/String;
    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .end local v31  # "attrValue":Ljava/lang/String;
    .restart local v15  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :goto_433
    move/from16 v15, v23

    move/from16 v14, v30

    move-object/from16 v8, v32

    move/from16 v13, v33

    .end local v23  # "askedCompatMode":Z
    .end local v30  # "autoRemoveRecents":Z
    .end local v33  # "rootHasReset":Z
    .local v13, "rootHasReset":Z
    .local v14, "autoRemoveRecents":Z
    .local v15, "askedCompatMode":Z
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    :goto_43b
    add-int/lit8 v0, v0, -0x1

    goto/16 :goto_8e

    .end local v15  # "askedCompatMode":Z
    .restart local v23  # "askedCompatMode":Z
    :cond_43f
    move-object/from16 v32, v8

    move/from16 v33, v13

    move/from16 v30, v14

    .line 4569
    .end local v0  # "attrNdx":I
    .end local v8  # "origActivity":Landroid/content/ComponentName;
    .end local v13  # "rootHasReset":Z
    .end local v14  # "autoRemoveRecents":Z
    .restart local v30  # "autoRemoveRecents":Z
    .restart local v32  # "origActivity":Landroid/content/ComponentName;
    .restart local v33  # "rootHasReset":Z
    move-object/from16 v8, v26

    .end local v26  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v8, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {v8, v1}, Landroid/app/ActivityManager$TaskDescription;->restoreFromXml(Landroid/util/TypedXmlPullParser;)V

    move-object/from16 v13, v22

    move-object/from16 v14, v24

    .line 4572
    .end local v22  # "intent":Landroid/content/Intent;
    .end local v24  # "affinityIntent":Landroid/content/Intent;
    .local v13, "intent":Landroid/content/Intent;
    .local v14, "affinityIntent":Landroid/content/Intent;
    :goto_44e
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->next()I

    move-result v0

    move/from16 v22, v0

    const/4 v1, 0x1

    .local v22, "event":I
    if-eq v0, v1, :cond_4cd

    move/from16 v1, v22

    move-object/from16 v22, v8

    const/4 v8, 0x3

    .end local v8  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v1, "event":I
    .local v22, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    if-ne v1, v8, :cond_469

    .line 4573
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getDepth()I

    move-result v0

    if-lt v0, v3, :cond_465

    goto :goto_469

    :cond_465
    move/from16 v24, v1

    goto/16 :goto_4d1

    .line 4574
    :cond_469
    :goto_469
    const/4 v8, 0x2

    if-ne v1, v8, :cond_4c6

    .line 4575
    invoke-interface/range {p0 .. p0}, Landroid/util/TypedXmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    .line 4577
    .local v0, "name":Ljava/lang/String;
    const-string v8, "affinity_intent"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_480

    .line 4578
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v8

    move/from16 v24, v1

    move-object v14, v8

    .end local v14  # "affinityIntent":Landroid/content/Intent;
    .local v8, "affinityIntent":Landroid/content/Intent;
    goto :goto_4c1

    .line 4579
    .end local v8  # "affinityIntent":Landroid/content/Intent;
    .restart local v14  # "affinityIntent":Landroid/content/Intent;
    :cond_480
    const-string v8, "intent"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_490

    .line 4580
    invoke-static/range {p0 .. p0}, Landroid/content/Intent;->restoreFromXml(Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/Intent;

    move-result-object v8

    move/from16 v24, v1

    move-object v13, v8

    .end local v13  # "intent":Landroid/content/Intent;
    .local v8, "intent":Landroid/content/Intent;
    goto :goto_4c1

    .line 4581
    .end local v8  # "intent":Landroid/content/Intent;
    .restart local v13  # "intent":Landroid/content/Intent;
    :cond_490
    const-string v8, "activity"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4a5

    .line 4582
    nop

    .line 4583
    invoke-static/range {p0 .. p1}, Lcom/android/server/wm/ActivityRecord;->restoreFromXml(Landroid/util/TypedXmlPullParser;Lcom/android/server/wm/ActivityTaskSupervisor;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 4587
    .local v8, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v8, :cond_4a2

    .line 4588
    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 4590
    .end local v8  # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_4a2
    move/from16 v24, v1

    goto :goto_4c1

    .line 4591
    :cond_4a5
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move/from16 v24, v1

    .end local v1  # "event":I
    .local v24, "event":I
    const-string/jumbo v1, "restoreTask: Unexpected name="

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v15, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4592
    invoke-static/range {p0 .. p0}, Lcom/android/internal/util/XmlUtils;->skipCurrentTag(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 4594
    .end local v0  # "name":Ljava/lang/String;
    :goto_4c1
    move-object/from16 v1, p0

    move-object/from16 v8, v22

    goto :goto_44e

    .line 4574
    .end local v24  # "event":I
    .restart local v1  # "event":I
    :cond_4c6
    move/from16 v24, v1

    .end local v1  # "event":I
    .restart local v24  # "event":I
    move-object/from16 v1, p0

    move-object/from16 v8, v22

    goto :goto_44e

    .line 4572
    .end local v24  # "event":I
    .local v8, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v22, "event":I
    :cond_4cd
    move/from16 v24, v22

    move-object/from16 v22, v8

    .line 4596
    .end local v8  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v22, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .restart local v24  # "event":I
    :goto_4d1
    if-nez v11, :cond_4d5

    .line 4597
    move-object v10, v9

    goto :goto_4de

    .line 4598
    :cond_4d5
    const-string v0, "@"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4de

    .line 4599
    const/4 v10, 0x0

    .line 4601
    :cond_4de
    :goto_4de
    if-gtz v18, :cond_552

    .line 4602
    if-eqz v13, :cond_4e4

    move-object v0, v13

    goto :goto_4e5

    :cond_4e4
    move-object v0, v14

    :goto_4e5
    move-object v1, v0

    .line 4603
    .local v1, "checkIntent":Landroid/content/Intent;
    const/4 v8, 0x0

    .line 4604
    .end local v18  # "effectiveUid":I
    .local v8, "effectiveUid":I
    if-eqz v1, :cond_51b

    .line 4605
    move/from16 v26, v3

    .end local v3  # "outerDepth":I
    .local v26, "outerDepth":I
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v3

    .line 4607
    .local v3, "pm":Landroid/content/pm/IPackageManager;
    nop

    .line 4608
    :try_start_4f0
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0
    :try_end_4f8
    .catch Landroid/os/RemoteException; {:try_start_4f0 .. :try_end_4f8} :catch_511

    move-object/from16 v35, v10

    move/from16 v31, v11

    .end local v10  # "rootAffinity":Ljava/lang/String;
    .end local v11  # "hasRootAffinity":Z
    .local v31, "hasRootAffinity":Z
    .local v35, "rootAffinity":Ljava/lang/String;
    const-wide/16 v10, 0x2200

    .line 4607
    move/from16 v18, v8

    move/from16 v8, v42

    .end local v42  # "userId":I
    .local v8, "userId":I
    .restart local v18  # "effectiveUid":I
    :try_start_502
    invoke-interface {v3, v0, v10, v11, v8}, Landroid/content/pm/IPackageManager;->getApplicationInfo(Ljava/lang/String;JI)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    .line 4611
    .local v0, "ai":Landroid/content/pm/ApplicationInfo;
    if-eqz v0, :cond_50c

    .line 4612
    iget v10, v0, Landroid/content/pm/ApplicationInfo;->uid:I
    :try_end_50a
    .catch Landroid/os/RemoteException; {:try_start_502 .. :try_end_50a} :catch_50f

    move/from16 v18, v10

    .line 4615
    .end local v0  # "ai":Landroid/content/pm/ApplicationInfo;
    :cond_50c
    move/from16 v0, v18

    goto :goto_527

    .line 4614
    :catch_50f
    move-exception v0

    goto :goto_525

    .end local v18  # "effectiveUid":I
    .end local v31  # "hasRootAffinity":Z
    .end local v35  # "rootAffinity":Ljava/lang/String;
    .local v8, "effectiveUid":I
    .restart local v10  # "rootAffinity":Ljava/lang/String;
    .restart local v11  # "hasRootAffinity":Z
    .restart local v42  # "userId":I
    :catch_511
    move-exception v0

    move/from16 v18, v8

    move-object/from16 v35, v10

    move/from16 v31, v11

    move/from16 v8, v42

    .end local v10  # "rootAffinity":Ljava/lang/String;
    .end local v11  # "hasRootAffinity":Z
    .end local v42  # "userId":I
    .local v8, "userId":I
    .restart local v18  # "effectiveUid":I
    .restart local v31  # "hasRootAffinity":Z
    .restart local v35  # "rootAffinity":Ljava/lang/String;
    goto :goto_525

    .line 4604
    .end local v18  # "effectiveUid":I
    .end local v26  # "outerDepth":I
    .end local v31  # "hasRootAffinity":Z
    .end local v35  # "rootAffinity":Ljava/lang/String;
    .local v3, "outerDepth":I
    .local v8, "effectiveUid":I
    .restart local v10  # "rootAffinity":Ljava/lang/String;
    .restart local v11  # "hasRootAffinity":Z
    .restart local v42  # "userId":I
    :cond_51b
    move/from16 v26, v3

    move/from16 v18, v8

    move-object/from16 v35, v10

    move/from16 v31, v11

    move/from16 v8, v42

    .line 4617
    .end local v3  # "outerDepth":I
    .end local v10  # "rootAffinity":Ljava/lang/String;
    .end local v11  # "hasRootAffinity":Z
    .end local v42  # "userId":I
    .local v8, "userId":I
    .restart local v18  # "effectiveUid":I
    .restart local v26  # "outerDepth":I
    .restart local v31  # "hasRootAffinity":Z
    .restart local v35  # "rootAffinity":Ljava/lang/String;
    :goto_525
    move/from16 v0, v18

    .end local v18  # "effectiveUid":I
    .local v0, "effectiveUid":I
    :goto_527
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Updating task #"

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, " for "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v10, ": effectiveUid="

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v15, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_55c

    .line 4601
    .end local v0  # "effectiveUid":I
    .end local v1  # "checkIntent":Landroid/content/Intent;
    .end local v8  # "userId":I
    .end local v26  # "outerDepth":I
    .end local v31  # "hasRootAffinity":Z
    .end local v35  # "rootAffinity":Ljava/lang/String;
    .restart local v3  # "outerDepth":I
    .restart local v10  # "rootAffinity":Ljava/lang/String;
    .restart local v11  # "hasRootAffinity":Z
    .restart local v18  # "effectiveUid":I
    .restart local v42  # "userId":I
    :cond_552
    move/from16 v26, v3

    move-object/from16 v35, v10

    move/from16 v31, v11

    move/from16 v8, v42

    .end local v3  # "outerDepth":I
    .end local v10  # "rootAffinity":Ljava/lang/String;
    .end local v11  # "hasRootAffinity":Z
    .end local v42  # "userId":I
    .restart local v8  # "userId":I
    .restart local v26  # "outerDepth":I
    .restart local v31  # "hasRootAffinity":Z
    .restart local v35  # "rootAffinity":Ljava/lang/String;
    move/from16 v0, v18

    .line 4621
    .end local v18  # "effectiveUid":I
    .restart local v0  # "effectiveUid":I
    :goto_55c
    const/4 v1, 0x1

    if-ge v12, v1, :cond_56a

    .line 4626
    move/from16 v3, v41

    .end local v41  # "taskType":I
    .local v3, "taskType":I
    if-ne v3, v1, :cond_575

    const/4 v1, 0x2

    if-ne v7, v1, :cond_575

    .line 4627
    const/4 v7, 0x1

    move/from16 v1, v34

    goto :goto_577

    .line 4634
    .end local v3  # "taskType":I
    .restart local v41  # "taskType":I
    :cond_56a
    move/from16 v3, v41

    .end local v41  # "taskType":I
    .restart local v3  # "taskType":I
    const/4 v1, 0x3

    if-ne v7, v1, :cond_575

    .line 4635
    const/4 v7, 0x2

    .line 4636
    const/16 v34, 0x1

    move/from16 v1, v34

    goto :goto_577

    .line 4640
    :cond_575
    move/from16 v1, v34

    .end local v34  # "supportsPictureInPicture":Z
    .local v1, "supportsPictureInPicture":Z
    :goto_577
    new-instance v10, Lcom/android/server/wm/Task$Builder;

    iget-object v11, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v10, v11}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 4641
    invoke-virtual {v10, v5}, Lcom/android/server/wm/Task$Builder;->setTaskId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4642
    invoke-virtual {v10, v13}, Lcom/android/server/wm/Task$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4643
    invoke-static {v10, v14}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetAffinityIntent(Lcom/android/server/wm/Task$Builder;Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4644
    invoke-static {v10, v9}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetAffinity(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4645
    move-object/from16 v11, v35

    .end local v35  # "rootAffinity":Ljava/lang/String;
    .local v11, "rootAffinity":Ljava/lang/String;
    invoke-static {v10, v11}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetRootAffinity(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4646
    invoke-virtual {v10, v6}, Lcom/android/server/wm/Task$Builder;->setRealActivity(Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4647
    move/from16 v18, v3

    move-object/from16 v3, v32

    .end local v32  # "origActivity":Landroid/content/ComponentName;
    .local v3, "origActivity":Landroid/content/ComponentName;
    .local v18, "taskType":I
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetOrigActivity(Lcom/android/server/wm/Task$Builder;Landroid/content/ComponentName;)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4648
    move/from16 v3, v33

    .end local v33  # "rootHasReset":Z
    .local v3, "rootHasReset":Z
    .restart local v32  # "origActivity":Landroid/content/ComponentName;
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetRootWasReset(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4649
    move/from16 v3, v30

    .end local v30  # "autoRemoveRecents":Z
    .local v3, "autoRemoveRecents":Z
    .restart local v33  # "rootHasReset":Z
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetAutoRemoveRecents(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4650
    move/from16 v3, v23

    .end local v23  # "askedCompatMode":Z
    .local v3, "askedCompatMode":Z
    .restart local v30  # "autoRemoveRecents":Z
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetAskedCompatMode(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4651
    invoke-static {v10, v8}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetUserId(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4652
    invoke-virtual {v10, v0}, Lcom/android/server/wm/Task$Builder;->setEffectiveUid(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4653
    move-object/from16 v3, v44

    .end local v44  # "lastDescription":Ljava/lang/String;
    .local v3, "lastDescription":Ljava/lang/String;
    .restart local v23  # "askedCompatMode":Z
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetLastDescription(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4654
    move/from16 v29, v5

    move-object/from16 v28, v6

    move-wide/from16 v5, v45

    .end local v6  # "realActivity":Landroid/content/ComponentName;
    .end local v45  # "lastTimeOnTop":J
    .local v5, "lastTimeOnTop":J
    .local v28, "realActivity":Landroid/content/ComponentName;
    .local v29, "taskId":I
    invoke-static {v10, v5, v6}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetLastTimeMoved(Lcom/android/server/wm/Task$Builder;J)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4655
    move-object/from16 v34, v3

    move/from16 v3, v47

    .end local v47  # "neverRelinquishIdentity":Z
    .local v3, "neverRelinquishIdentity":Z
    .local v34, "lastDescription":Ljava/lang/String;
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetNeverRelinquishIdentity(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4656
    move/from16 v35, v3

    move-object/from16 v3, v22

    .end local v22  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v3, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    .local v35, "neverRelinquishIdentity":Z
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetLastTaskDescription(Lcom/android/server/wm/Task$Builder;Landroid/app/ActivityManager$TaskDescription;)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4657
    move-object/from16 v3, v27

    .end local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .local v3, "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    .restart local v22  # "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetLastSnapshotData(Lcom/android/server/wm/Task$Builder;Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4658
    move/from16 v3, v21

    .end local v21  # "taskAffiliation":I
    .local v3, "taskAffiliation":I
    .restart local v27  # "lastSnapshotData":Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetTaskAffiliation(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4659
    move/from16 v3, v20

    .end local v20  # "prevTaskId":I
    .local v3, "prevTaskId":I
    .restart local v21  # "taskAffiliation":I
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetPrevAffiliateTaskId(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4660
    move/from16 v3, v48

    .end local v48  # "nextTaskId":I
    .local v3, "nextTaskId":I
    .restart local v20  # "prevTaskId":I
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetNextAffiliateTaskId(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4661
    move/from16 v36, v3

    move/from16 v3, v49

    .end local v49  # "callingUid":I
    .local v3, "callingUid":I
    .local v36, "nextTaskId":I
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetCallingUid(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4662
    move/from16 v37, v3

    move-object/from16 v3, v50

    .end local v50  # "callingPackage":Ljava/lang/String;
    .local v3, "callingPackage":Ljava/lang/String;
    .local v37, "callingUid":I
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetCallingPackage(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4663
    move-object/from16 v38, v3

    move-object/from16 v3, v51

    .end local v51  # "callingFeatureId":Ljava/lang/String;
    .local v3, "callingFeatureId":Ljava/lang/String;
    .local v38, "callingPackage":Ljava/lang/String;
    invoke-static {v10, v3}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetCallingFeatureId(Lcom/android/server/wm/Task$Builder;Ljava/lang/String;)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4664
    invoke-static {v10, v7}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetResizeMode(Lcom/android/server/wm/Task$Builder;I)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4665
    invoke-static {v10, v1}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetSupportsPictureInPicture(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4666
    move/from16 v39, v1

    move/from16 v1, v19

    .end local v19  # "realActivitySuspended":Z
    .local v1, "realActivitySuspended":Z
    .local v39, "supportsPictureInPicture":Z
    invoke-static {v10, v1}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetRealActivitySuspended(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4667
    move/from16 v1, v43

    .end local v43  # "userSetupComplete":Z
    .local v1, "userSetupComplete":Z
    .restart local v19  # "realActivitySuspended":Z
    invoke-static {v10, v1}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetUserSetupComplete(Lcom/android/server/wm/Task$Builder;Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4668
    move/from16 v40, v1

    move/from16 v1, v53

    .end local v53  # "minWidth":I
    .local v1, "minWidth":I
    .local v40, "userSetupComplete":Z
    invoke-virtual {v10, v1}, Lcom/android/server/wm/Task$Builder;->setMinWidth(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4669
    move/from16 v41, v1

    move/from16 v1, v54

    .end local v54  # "minHeight":I
    .local v1, "minHeight":I
    .local v41, "minWidth":I
    invoke-virtual {v10, v1}, Lcom/android/server/wm/Task$Builder;->setMinHeight(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v10

    .line 4670
    invoke-virtual {v10}, Lcom/android/server/wm/Task$Builder;->buildInner()Lcom/android/server/wm/Task;

    move-result-object v10

    .line 4671
    .local v10, "task":Lcom/android/server/wm/Task;
    move/from16 v42, v1

    move-object/from16 v1, v52

    .end local v52  # "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v1, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    .local v42, "minHeight":I
    iput-object v1, v10, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    .line 4672
    invoke-virtual {v10, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 4673
    move-object/from16 v43, v1

    move-object/from16 v1, v17

    .end local v17  # "windowLayoutAffinity":Ljava/lang/String;
    .local v1, "windowLayoutAffinity":Ljava/lang/String;
    .local v43, "lastNonFullscreenBounds":Landroid/graphics/Rect;
    iput-object v1, v10, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 4674
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v17

    if-lez v17, :cond_673

    .line 4676
    move/from16 v17, v0

    .end local v0  # "effectiveUid":I
    .local v17, "effectiveUid":I
    iget-object v0, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 4677
    move-object/from16 v44, v1

    const/4 v1, 0x0

    .end local v1  # "windowLayoutAffinity":Ljava/lang/String;
    .local v44, "windowLayoutAffinity":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lcom/android/server/wm/RootWindowContainer;->getDisplayContent(I)Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 4678
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    move-object/from16 v25, v0

    .end local v0  # "dc":Lcom/android/server/wm/DisplayContent;
    .local v25, "dc":Lcom/android/server/wm/DisplayContent;
    const/high16 v0, -0x80000000

    invoke-virtual {v1, v10, v0}, Lcom/android/server/wm/TaskDisplayArea;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 4680
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "activityNdx":I
    :goto_665
    if-ltz v0, :cond_677

    .line 4681
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v10, v1}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/ActivityRecord;)V

    .line 4680
    add-int/lit8 v0, v0, -0x1

    goto :goto_665

    .line 4674
    .end local v17  # "effectiveUid":I
    .end local v25  # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v44  # "windowLayoutAffinity":Ljava/lang/String;
    .local v0, "effectiveUid":I
    .restart local v1  # "windowLayoutAffinity":Ljava/lang/String;
    :cond_673
    move/from16 v17, v0

    move-object/from16 v44, v1

    .line 4685
    .end local v0  # "effectiveUid":I
    .end local v1  # "windowLayoutAffinity":Ljava/lang/String;
    .restart local v17  # "effectiveUid":I
    .restart local v44  # "windowLayoutAffinity":Ljava/lang/String;
    :cond_677
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_691

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Restored task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v15, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4686
    :cond_691
    return-object v10

    :sswitch_data_692
    .sparse-switch
        -0x7f3eb8a7 -> :sswitch_221
        -0x5eb23152 -> :sswitch_216
        -0x5ccdaff6 -> :sswitch_20b
        -0x5ba06deb -> :sswitch_200
        -0x591a685c -> :sswitch_1f4
        -0x43dc2f14 -> :sswitch_1e9
        -0x430d08ca -> :sswitch_1dd
        -0x3a0f4851 -> :sswitch_1d1
        -0x37680e48 -> :sswitch_1c6
        -0x3395d9b2 -> :sswitch_1b9
        -0x313f784c -> :sswitch_1ac
        -0x2fcb75f7 -> :sswitch_1a0
        -0x2a27c539 -> :sswitch_193
        -0x2a0990b3 -> :sswitch_187
        -0x20dc8352 -> :sswitch_17b
        -0x1df202b3 -> :sswitch_16f
        -0x158140a0 -> :sswitch_162
        -0x9b3481b -> :sswitch_156
        -0x8c511f1 -> :sswitch_149
        -0x7e175ab -> :sswitch_13d
        0xac8bdb4 -> :sswitch_130
        0x13bdcee4 -> :sswitch_123
        0x1782e55f -> :sswitch_117
        0x2046b199 -> :sswitch_10a
        0x24172928 -> :sswitch_ff
        0x33cf43d3 -> :sswitch_f3
        0x3c12eca9 -> :sswitch_e6
        0x40756fcb -> :sswitch_da
        0x56e1584e -> :sswitch_cd
        0x5bc3bc90 -> :sswitch_c1
        0x772fa04e -> :sswitch_b5
        0x789a804d -> :sswitch_a9
    .end sparse-switch

    :pswitch_data_714
    .packed-switch 0x0
        :pswitch_41a  #00000000
        :pswitch_40d  #00000001
        :pswitch_3fa  #00000002
        :pswitch_3ed  #00000003
        :pswitch_3e2  #00000004
        :pswitch_3d5  #00000005
        :pswitch_3c7  #00000006
        :pswitch_3bb  #00000007
        :pswitch_3ae  #00000008
        :pswitch_3a1  #00000009
        :pswitch_391  #0000000a
        :pswitch_381  #0000000b
        :pswitch_371  #0000000c
        :pswitch_361  #0000000d
        :pswitch_353  #0000000e
        :pswitch_341  #0000000f
        :pswitch_331  #00000010
        :pswitch_321  #00000011
        :pswitch_311  #00000012
        :pswitch_301  #00000013
        :pswitch_2f1  #00000014
        :pswitch_2e3  #00000015
        :pswitch_2d5  #00000016
        :pswitch_2c7  #00000017
        :pswitch_2b7  #00000018
        :pswitch_2a7  #00000019
        :pswitch_297  #0000001a
        :pswitch_287  #0000001b
        :pswitch_279  #0000001c
        :pswitch_26d  #0000001d
        :pswitch_261  #0000001e
        :pswitch_255  #0000001f
    .end packed-switch
.end method

.method private resumeNextFocusableActivityWhenRootTaskIsEmpty(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 11
    .param p1, "prev"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"  # Landroid/app/ActivityOptions;

    .line 5654
    const-string/jumbo v0, "noMoreActivities"

    .line 5656
    .local v0, "reason":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v1

    const/4 v2, 0x0

    const-string/jumbo v3, "noMoreActivities"

    if-nez v1, :cond_1a

    .line 5657
    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;)Lcom/android/server/wm/Task;

    move-result-object v1

    .line 5658
    .local v1, "nextFocusedTask":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_1a

    .line 5662
    iget-object v3, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v1, p1, v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v2

    return v2

    .line 5669
    .end local v1  # "nextFocusedTask":Lcom/android/server/wm/Task;
    :cond_1a
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 5670
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_33

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x88e815e

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v1, v6, v7

    invoke-static {v4, v5, v7, v2, v6}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5672
    .end local v1  # "protoLogParam0":Ljava/lang/String;
    :cond_33
    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v1, p1, v3, v2}, Lcom/android/server/wm/RootWindowContainer;->resumeHomeActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v1

    return v1
.end method

.method private resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z
    .registers 16
    .param p1, "prev"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"  # Landroid/app/ActivityOptions;
    .param p3, "deferPause"  # Z

    .line 5621
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooting()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isBooted()Z

    move-result v0

    if-nez v0, :cond_12

    .line 5623
    return v1

    .line 5625
    :cond_12
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 5626
    .local v2, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-nez v2, :cond_1e

    .line 5628
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->resumeNextFocusableActivityWhenRootTaskIsEmpty(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    return v0

    .line 5630
    :cond_1e
    new-array v9, v0, [Z

    .line 5631
    .local v9, "resumed":[Z
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v10

    .line 5632
    .local v10, "topFragment":Lcom/android/server/wm/TaskFragment;
    invoke-virtual {v10, p1, p2, p3}, Lcom/android/server/wm/TaskFragment;->resumeTopActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v3

    aput-boolean v3, v9, v1

    .line 5633
    new-instance v11, Lcom/android/server/wm/Task$$ExternalSyntheticLambda34;

    move-object v3, v11

    move-object v4, v10

    move-object v5, v9

    move-object v6, p1

    move-object v7, p2

    move v8, p3

    invoke-direct/range {v3 .. v8}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda34;-><init>(Lcom/android/server/wm/TaskFragment;[ZLcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)V

    invoke-virtual {p0, v11, v0}, Lcom/android/server/wm/Task;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 5642
    aget-boolean v0, v9, v1

    return v0
.end method

.method private static saveActivityToXml(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/util/TypedXmlSerializer;)Z
    .registers 7
    .param p0, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p1, "first"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "out"  # Landroid/util/TypedXmlSerializer;

    .line 4401
    const-string v0, "activity"

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v1, v1, Landroid/content/pm/ActivityInfo;->persistableMode:I

    const/4 v2, 0x1

    if-eqz v1, :cond_2f

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v1

    if-eqz v1, :cond_2f

    iget-object v1, p0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 4402
    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v3, 0x80000

    and-int/2addr v1, v3

    or-int/lit16 v1, v1, 0x2000

    if-ne v1, v3, :cond_1f

    if-eq p0, p1, :cond_1f

    goto :goto_2f

    .line 4409
    :cond_1f
    const/4 v1, 0x0

    :try_start_20
    invoke-interface {p2, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4410
    invoke-virtual {p0, p2}, Lcom/android/server/wm/ActivityRecord;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 4411
    invoke-interface {p2, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_29
    .catch Ljava/lang/Exception; {:try_start_20 .. :try_end_29} :catch_2b

    .line 4412
    const/4 v0, 0x0

    return v0

    .line 4413
    :catch_2b
    move-exception v0

    .line 4414
    .local v0, "e":Ljava/lang/Exception;
    sput-object v0, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    .line 4415
    return v2

    .line 4406
    .end local v0  # "e":Ljava/lang/Exception;
    :cond_2f
    :goto_2f
    return v2
.end method

.method private saveLaunchingStateIfNeeded()V
    .registers 2

    .line 2628
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 2629
    return-void
.end method

.method private saveLaunchingStateIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .registers 5
    .param p1, "display"  # Lcom/android/server/wm/DisplayContent;

    .line 2632
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2633
    return-void

    .line 2636
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-nez v0, :cond_e

    .line 2638
    return-void

    .line 2641
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    .line 2642
    .local v0, "windowingMode":I
    const/4 v1, 0x1

    if-eq v0, v1, :cond_16

    .line 2645
    return-void

    .line 2651
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getDisplayWindowingMode()I

    move-result v1

    const/4 v2, 0x5

    if-eq v1, v2, :cond_22

    .line 2652
    return-void

    .line 2656
    :cond_22
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mLaunchParamsPersister:Lcom/android/server/wm/LaunchParamsPersister;

    invoke-virtual {v1, p0, p1}, Lcom/android/server/wm/LaunchParamsPersister;->saveTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/DisplayContent;)V

    .line 2657
    return-void
.end method

.method private sendTaskVanished(Landroid/window/ITaskOrganizer;)V
    .registers 3
    .param p1, "organizer"  # Landroid/window/ITaskOrganizer;

    .line 4794
    if-eqz p1, :cond_9

    .line 4795
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/TaskOrganizerController;->onTaskVanished(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    .line 4797
    :cond_9
    return-void
.end method

.method private setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I
    .registers 4
    .param p1, "existing"  # Landroid/graphics/Rect;
    .param p2, "bounds"  # Landroid/graphics/Rect;

    .line 6625
    invoke-static {p1, p2}, Lcom/android/server/wm/Task;->equivalentBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 6626
    const/4 v0, 0x0

    return v0

    .line 6629
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_10

    const/4 v0, 0x0

    goto :goto_11

    :cond_10
    move-object v0, p2

    :goto_11
    invoke-super {p0, v0}, Lcom/android/server/wm/TaskFragment;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 6631
    .local v0, "result":I
    invoke-direct {p0}, Lcom/android/server/wm/Task;->updateSurfaceBounds()V

    .line 6632
    return v0
.end method

.method private setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .registers 13
    .param p1, "_intent"  # Landroid/content/Intent;
    .param p2, "info"  # Landroid/content/pm/ActivityInfo;

    .line 1099
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_7

    return-void

    .line 1101
    :cond_7
    iget v0, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v0, v0, 0x1000

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_11

    move v0, v1

    goto :goto_12

    :cond_11
    move v0, v2

    :goto_12
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    .line 1102
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    .line 1103
    iget-object v3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v3, :cond_1e

    .line 1107
    iput-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    .line 1109
    :cond_1e
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v0, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    iput v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 1110
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsEffectivelySystemApp:Z

    .line 1111
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    .line 1113
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    const/4 v4, 0x2

    if-nez v3, :cond_77

    .line 1114
    if-eqz p1, :cond_4e

    .line 1118
    invoke-virtual {p1}, Landroid/content/Intent;->getSelector()Landroid/content/Intent;

    move-result-object v3

    if-nez v3, :cond_42

    invoke-virtual {p1}, Landroid/content/Intent;->getSourceBounds()Landroid/graphics/Rect;

    move-result-object v3

    if-eqz v3, :cond_4e

    .line 1119
    :cond_42
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    move-object p1, v3

    .line 1120
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 1121
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1124
    :cond_4e
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v3, :cond_68

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam1":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x7a744c8b

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v3, v4, v2

    aput-object v5, v4, v1

    invoke-static {v6, v7, v2, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1125
    .end local v3  # "protoLogParam0":Ljava/lang/String;
    .end local v5  # "protoLogParam1":Ljava/lang/String;
    :cond_68
    iput-object p1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1126
    if-eqz p1, :cond_71

    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    goto :goto_72

    :cond_71
    move-object v3, v0

    :goto_72
    iput-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1127
    iput-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    goto :goto_c1

    .line 1129
    :cond_77
    new-instance v3, Landroid/content/ComponentName;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    invoke-direct {v3, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1131
    .local v3, "targetComponent":Landroid/content/ComponentName;
    if-eqz p1, :cond_b2

    .line 1132
    new-instance v5, Landroid/content/Intent;

    invoke-direct {v5, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1133
    .local v5, "targetIntent":Landroid/content/Intent;
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setSelector(Landroid/content/Intent;)V

    .line 1134
    invoke-virtual {v5, v0}, Landroid/content/Intent;->setSourceBounds(Landroid/graphics/Rect;)V

    .line 1135
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_TASKS_enabled:Z

    if-eqz v6, :cond_a7

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam1":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_TASKS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, 0x283aa656

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v6, v4, v2

    aput-object v7, v4, v1

    invoke-static {v8, v9, v2, v0, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1136
    .end local v6  # "protoLogParam0":Ljava/lang/String;
    .end local v7  # "protoLogParam1":Ljava/lang/String;
    :cond_a7
    iput-object v5, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1137
    iput-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1138
    invoke-virtual {p1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 1139
    .end local v5  # "targetIntent":Landroid/content/Intent;
    goto :goto_c1

    .line 1140
    :cond_b2
    iput-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    .line 1141
    iput-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1142
    new-instance v4, Landroid/content/ComponentName;

    iget-object v5, p2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v6, p2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v4, v5, v6}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v4, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    .line 1145
    .end local v3  # "targetComponent":Landroid/content/ComponentName;
    :goto_c1
    nop

    .line 1146
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-nez v3, :cond_c7

    goto :goto_cb

    :cond_c7
    iget-object v0, p2, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->windowLayoutAffinity:Ljava/lang/String;

    :goto_cb
    iput-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    .line 1148
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v0, :cond_d3

    move v0, v2

    goto :goto_d7

    :cond_d3
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    .line 1149
    .local v0, "intentFlags":I
    :goto_d7
    const/high16 v3, 0x200000

    and-int/2addr v3, v0

    if-eqz v3, :cond_de

    .line 1152
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    .line 1154
    :cond_de
    iget-object v3, p2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-static {v3}, Landroid/os/UserHandle;->getUserId(I)I

    move-result v3

    iput v3, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 1156
    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v4

    iget v5, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-interface {v3, v4, v5}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->updateTaskUserId(II)V

    .line 1157
    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mContext:Landroid/content/Context;

    .line 1158
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/Task;->mUserId:I

    .line 1157
    const-string/jumbo v5, "user_setup_complete"

    invoke-static {v3, v5, v2, v4}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v3

    if-eqz v3, :cond_10a

    move v3, v1

    goto :goto_10b

    :cond_10a
    move v3, v2

    :goto_10b
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    .line 1159
    iget v3, p2, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v3, v3, 0x2000

    if-eqz v3, :cond_116

    .line 1161
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_12a

    .line 1162
    :cond_116
    const v3, 0x82000

    and-int/2addr v3, v0

    const/high16 v4, 0x80000

    if-ne v3, v4, :cond_128

    .line 1167
    iget v3, p2, Landroid/content/pm/ActivityInfo;->documentLaunchMode:I

    if-eqz v3, :cond_125

    .line 1168
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_12a

    .line 1170
    :cond_125
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    goto :goto_12a

    .line 1173
    :cond_128
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    .line 1175
    :goto_12a
    iget v1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    iget v2, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    if-eq v1, v2, :cond_137

    .line 1176
    iget v1, p2, Landroid/content/pm/ActivityInfo;->resizeMode:I

    iput v1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 1177
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 1179
    :cond_137
    invoke-virtual {p2}, Landroid/content/pm/ActivityInfo;->supportsPictureInPicture()Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    .line 1182
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v1, :cond_14f

    .line 1183
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/RecentTasks;->remove(Lcom/android/server/wm/Task;)V

    .line 1184
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 1186
    :cond_14f
    return-void
.end method

.method private setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V
    .registers 10
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 1818
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1, p0}, Lcom/android/server/wm/LockTaskController;->getLockTaskAuth(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    .line 1819
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_LOCKTASK_enabled:Z

    if-eqz v0, :cond_2e

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam1":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_LOCKTASK:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x6cb9a502

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v1, v5, v7

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1821
    .end local v0  # "protoLogParam0":Ljava/lang/String;
    .end local v1  # "protoLogParam1":Ljava/lang/String;
    :cond_2e
    return-void
.end method

.method private setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V
    .registers 7
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "origin"  # Lcom/android/server/wm/Task;

    .line 4990
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 4991
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    .line 4992
    .local v1, "leaf":Lcom/android/server/wm/Task;
    :goto_c
    if-nez v1, :cond_f

    .line 4993
    return-void

    .line 4995
    :cond_f
    if-eq v1, p0, :cond_15

    .line 4996
    invoke-direct {v1, p1, p2}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V

    .line 4997
    return-void

    .line 4999
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 5000
    .local v2, "w":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_24

    .line 5001
    new-instance v3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda14;

    invoke-direct {v3, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda14;-><init>(Landroid/view/SurfaceControl$Transaction;)V

    invoke-virtual {v2, v3}, Lcom/android/server/wm/WindowState;->applyWithNextDraw(Ljava/util/function/Consumer;)V

    goto :goto_27

    .line 5005
    :cond_24
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Transaction;->apply()V

    .line 5007
    :goto_27
    return-void
.end method

.method private setScreenProjectionFlag(Landroid/view/SurfaceControl;)V
    .registers 5
    .param p1, "surfaceControl"  # Landroid/view/SurfaceControl;

    .line 3714
    if-nez p1, :cond_3

    .line 3715
    return-void

    .line 3717
    :cond_3
    invoke-static {}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getInstance()Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    move-result-object v0

    .line 3718
    .local v0, "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getScreenProjectionPrivaceState()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_20

    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->getScreenProjectionState()I

    move-result v1

    if-ne v1, v2, :cond_20

    .line 3719
    invoke-interface {v0}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getExtraScreenProjectFlag()I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    goto :goto_24

    .line 3721
    :cond_20
    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Landroid/view/SurfaceControl;->setScreenProjection(I)V

    .line 3723
    :goto_24
    return-void
.end method

.method private static setTaskDescriptionFromActivityAboveRoot(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityManager$TaskDescription;)Z
    .registers 5
    .param p0, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p1, "root"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "td"  # Landroid/app/ActivityManager$TaskDescription;

    .line 2036
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-nez v0, :cond_84

    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    if-eqz v0, :cond_84

    .line 2037
    iget-object v0, p0, Lcom/android/server/wm/ActivityRecord;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 2038
    .local v0, "atd":Landroid/app/ActivityManager$TaskDescription;
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_19

    .line 2039
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getLabel()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setLabel(Ljava/lang/String;)V

    .line 2041
    :cond_19
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getRawIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    if-nez v1, :cond_26

    .line 2042
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getRawIcon()Landroid/graphics/drawable/Icon;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setIcon(Landroid/graphics/drawable/Icon;)V

    .line 2044
    :cond_26
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_33

    .line 2045
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getIconFilename()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setIconFilename(Ljava/lang/String;)V

    .line 2047
    :cond_33
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    if-nez v1, :cond_40

    .line 2048
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getPrimaryColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setPrimaryColor(I)V

    .line 2050
    :cond_40
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    if-nez v1, :cond_4d

    .line 2051
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColor(I)V

    .line 2053
    :cond_4d
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v1

    if-nez v1, :cond_62

    .line 2054
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getStatusBarColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setStatusBarColor(I)V

    .line 2055
    nop

    .line 2056
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getEnsureStatusBarContrastWhenTransparent()Z

    move-result v1

    .line 2055
    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setEnsureStatusBarContrastWhenTransparent(Z)V

    .line 2058
    :cond_62
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v1

    if-nez v1, :cond_77

    .line 2059
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getNavigationBarColor()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setNavigationBarColor(I)V

    .line 2060
    nop

    .line 2061
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getEnsureNavigationBarContrastWhenTransparent()Z

    move-result v1

    .line 2060
    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setEnsureNavigationBarContrastWhenTransparent(Z)V

    .line 2063
    :cond_77
    invoke-virtual {p2}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    move-result v1

    if-nez v1, :cond_84

    .line 2064
    invoke-virtual {v0}, Landroid/app/ActivityManager$TaskDescription;->getBackgroundColorFloating()I

    move-result v1

    invoke-virtual {p2, v1}, Landroid/app/ActivityManager$TaskDescription;->setBackgroundColorFloating(I)V

    .line 2069
    .end local v0  # "atd":Landroid/app/ActivityManager$TaskDescription;
    :cond_84
    if-ne p0, p1, :cond_88

    const/4 v0, 0x1

    goto :goto_89

    :cond_88
    const/4 v0, 0x0

    :goto_89
    return v0
.end method

.method private setWindowingModeInSurfaceTransaction(IZ)V
    .registers 19
    .param p1, "preferredWindowingMode"  # I
    .param p2, "creating"  # Z

    .line 5098
    move-object/from16 v1, p0

    const-string/jumbo v0, "movePinnedActivityToOriginalTask"

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 5099
    .local v2, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    const-string v3, "ActivityTaskManager"

    if-nez v2, :cond_14

    .line 5100
    const-string/jumbo v0, "taskDisplayArea is null, bail early"

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5101
    return-void

    .line 5103
    :cond_14
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v4

    .line 5104
    .local v4, "currentMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 5105
    .local v5, "topTask":Lcom/android/server/wm/Task;
    move/from16 v6, p1

    .line 5110
    .local v6, "windowingMode":I
    const/4 v7, 0x0

    if-nez p2, :cond_28

    .line 5111
    invoke-virtual {v2, v6, v7, v5}, Lcom/android/server/wm/TaskDisplayArea;->isValidWindowingMode(ILcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v8

    if-nez v8, :cond_28

    .line 5113
    const/4 v6, 0x0

    .line 5117
    :cond_28
    if-ne v4, v6, :cond_34

    .line 5121
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRequestedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0, v6}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 5122
    return-void

    .line 5125
    :cond_34
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 5130
    .local v8, "topActivity":Lcom/android/server/wm/ActivityRecord;
    move v9, v6

    .line 5131
    .local v9, "likelyResolvedMode":I
    const/4 v10, 0x1

    if-nez v6, :cond_49

    .line 5132
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v11

    .line 5133
    .local v11, "parent":Lcom/android/server/wm/ConfigurationContainer;
    if-eqz v11, :cond_47

    invoke-virtual {v11}, Lcom/android/server/wm/ConfigurationContainer;->getWindowingMode()I

    move-result v12

    goto :goto_48

    .line 5134
    :cond_47
    move v12, v10

    :goto_48
    move v9, v12

    .line 5136
    .end local v11  # "parent":Lcom/android/server/wm/ConfigurationContainer;
    :cond_49
    const/4 v11, 0x2

    if-ne v4, v11, :cond_51

    .line 5137
    iget-object v12, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v12, v1, v7}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 5139
    :cond_51
    if-ne v9, v11, :cond_63

    .line 5143
    invoke-virtual {v1, v10}, Lcom/android/server/wm/Task;->setCanAffectSystemUiFlags(Z)V

    .line 5144
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v12

    if-eqz v12, :cond_63

    .line 5146
    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v12

    invoke-virtual {v12}, Lcom/android/server/wm/Task;->dismissPip()V

    .line 5149
    :cond_63
    const/4 v12, 0x5

    if-eq v9, v10, :cond_85

    if-eq v9, v12, :cond_85

    if-eqz v8, :cond_85

    iget-boolean v13, v8, Lcom/android/server/wm/ActivityRecord;->noDisplay:Z

    if-nez v13, :cond_85

    .line 5153
    invoke-virtual {v8, v9}, Lcom/android/server/wm/ActivityRecord;->canForceResizeNonResizable(I)Z

    move-result v13

    if-eqz v13, :cond_85

    .line 5156
    iget-object v13, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v13, v13, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 5157
    .local v13, "packageName":Ljava/lang/String;
    iget-object v14, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v14}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v14

    iget v15, v5, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v14, v15, v10, v13}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyActivityForcedResizable(IILjava/lang/String;)V

    .line 5161
    .end local v13  # "packageName":Ljava/lang/String;
    :cond_85
    iget-object v13, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 5163
    if-eqz v8, :cond_93

    .line 5164
    :try_start_8c
    iget-object v13, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v13, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 5167
    :cond_93
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v13

    if-eqz v13, :cond_a0

    .line 5168
    iget-object v13, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v13, v1, v6}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->onActivityStackWindowModeSet(Lcom/android/server/wm/Task;I)V

    .line 5170
    :cond_a0
    invoke-super {v1, v6}, Lcom/android/server/wm/TaskFragment;->setWindowingMode(I)V

    .line 5173
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v13

    if-eqz v13, :cond_de

    .line 5174
    iget-object v13, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v13, v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->updateCornerRadius(Lcom/android/server/wm/Task;)V

    .line 5175
    iget-object v13, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v13, v13, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v14

    invoke-interface {v13, v14}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v13

    .line 5176
    .local v13, "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-ne v6, v12, :cond_de

    .line 5177
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v12

    iget-object v14, v1, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v12, v14}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 5178
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "show freeform task surface: "

    invoke-virtual {v12, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v3, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5181
    .end local v13  # "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :cond_de
    if-ne v4, v11, :cond_10e

    if-eqz v8, :cond_10e

    .line 5189
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v3

    if-eqz v3, :cond_103

    .line 5192
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v3

    if-nez v3, :cond_103

    .line 5193
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 5194
    .local v3, "lastParentBeforePip":Lcom/android/server/wm/Task;
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v12

    if-eqz v12, :cond_103

    .line 5195
    nop

    .line 5196
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v12

    .line 5195
    invoke-virtual {v8, v3, v12, v0}, Lcom/android/server/wm/ActivityRecord;->reparent(Lcom/android/server/wm/TaskFragment;ILjava/lang/String;)V

    .line 5198
    invoke-virtual {v3, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 5204
    .end local v3  # "lastParentBeforePip":Lcom/android/server/wm/Task;
    :cond_103
    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result v0

    if-eqz v0, :cond_10e

    .line 5205
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->resumeAppSwitches()V
    :try_end_10e
    .catchall {:try_start_8c .. :try_end_10e} :catchall_15d

    .line 5209
    :cond_10e
    if-eqz p2, :cond_116

    .line 5232
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 5211
    return-void

    .line 5215
    :cond_116
    if-eqz v8, :cond_132

    if-ne v4, v10, :cond_132

    if-ne v6, v11, :cond_132

    :try_start_11c
    iget-object v0, v1, Lcom/android/server/wm/Task;->mTransitionController:Lcom/android/server/wm/TransitionController;

    .line 5217
    invoke-virtual {v0}, Lcom/android/server/wm/TransitionController;->isShellTransitionsEnabled()Z

    move-result v0

    if-nez v0, :cond_132

    .line 5219
    invoke-static {}, Lcom/android/server/wm/WindowManagerServiceStub;->get()Lcom/android/server/wm/WindowManagerServiceStub;

    move-result-object v0

    invoke-interface {v0, v1}, Lcom/android/server/wm/WindowManagerServiceStub;->showPinnedTaskIfNeeded(Lcom/android/server/wm/Task;)V

    .line 5220
    iget-object v0, v1, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    .line 5221
    invoke-virtual {v0}, Lcom/android/server/wm/PinnedTaskController;->deferOrientationChangeForEnteringPipFromFullScreenIfNeeded()V

    .line 5225
    :cond_132
    const/4 v0, 0x0

    if-ne v6, v10, :cond_144

    .line 5226
    if-eqz v5, :cond_144

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_144

    .line 5227
    invoke-virtual {v5, v7, v0, v0}, Lcom/android/server/wm/Task;->resize(Landroid/graphics/Rect;IZ)Z
    :try_end_144
    .catchall {:try_start_11c .. :try_end_144} :catchall_15d

    .line 5232
    :cond_144
    iget-object v3, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 5233
    nop

    .line 5235
    iget-object v3, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->isRootVisibilityUpdateDeferred()Z

    move-result v3

    if-nez v3, :cond_15c

    .line 5236
    iget-object v3, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v7, v0, v10}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 5237
    iget-object v0, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 5239
    :cond_15c
    return-void

    .line 5232
    :catchall_15d
    move-exception v0

    iget-object v3, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 5233
    throw v0
.end method

.method private shouldDockBigOverlays()Z
    .registers 3

    .line 4033
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 4034
    .local v0, "topMostActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_c

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->shouldDockBigOverlays:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method private shouldStartChangeTransition(II)Z
    .registers 8
    .param p1, "prevWinMode"  # I
    .param p2, "newWinMode"  # I

    .line 2470
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->canStartChangeTransition()Z

    move-result v0

    if-eqz v0, :cond_52

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiCvwGestureController:Lcom/android/server/wm/MiuiCvwGestureControllerStub;

    if-eqz v0, :cond_1d

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiCvwGestureController:Lcom/android/server/wm/MiuiCvwGestureControllerStub;

    .line 2473
    invoke-interface {v0}, Lcom/android/server/wm/MiuiCvwGestureControllerStub;->isFreeformResizingByCvw()Z

    move-result v0

    if-nez v0, :cond_52

    :cond_1d
    const/4 v0, 0x5

    if-ne p1, v0, :cond_23

    if-eq p2, v0, :cond_23

    goto :goto_52

    .line 2479
    :cond_23
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v2

    .line 2483
    .local v2, "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    const/4 v3, 0x1

    if-ne p1, v0, :cond_34

    move v4, v3

    goto :goto_35

    :cond_34
    move v4, v1

    :goto_35
    if-ne p2, v0, :cond_39

    move v0, v3

    goto :goto_3a

    :cond_39
    move v0, v1

    :goto_3a
    if-eq v4, v0, :cond_50

    if-eqz v2, :cond_44

    .line 2485
    invoke-virtual {v2}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->isLaunchingSmallFreeForm()Z

    move-result v0

    if-nez v0, :cond_50

    :cond_44
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    .line 2486
    invoke-interface {v0}, Lcom/android/server/wm/MiuiFreeformGestureControllerStub;->isSwitchingApp()Z

    move-result v0

    if-nez v0, :cond_50

    move v1, v3

    goto :goto_51

    :cond_50
    nop

    .line 2483
    :goto_51
    return v1

    .line 2475
    .end local v2  # "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    :cond_52
    :goto_52
    return v1
.end method

.method private supportsSplitScreenWindowingModeInner(Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 3
    .param p1, "tda"  # Lcom/android/server/wm/TaskDisplayArea;

    .line 1837
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->supportsSplitScreenWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_14

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsSplitScreenMultiWindow:Z

    if-eqz v0, :cond_14

    .line 1841
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->supportsMultiWindowInDisplayAreaForSplit(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    goto :goto_15

    :cond_14
    const/4 v0, 0x0

    .line 1837
    :goto_15
    return v0
.end method

.method static trimIneffectiveInfo(Lcom/android/server/wm/Task;Landroid/app/TaskInfo;)V
    .registers 8
    .param p0, "task"  # Lcom/android/server/wm/Task;
    .param p1, "info"  # Landroid/app/TaskInfo;

    .line 3978
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda11;-><init>()V

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3981
    .local v0, "baseActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v1

    goto :goto_13

    :cond_11
    iget v1, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    .line 3983
    .local v1, "baseActivityUid":I
    :goto_13
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    const-string v3, ""

    if-eqz v2, :cond_b6

    iget v2, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    iget-object v4, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    if-eq v2, v4, :cond_b6

    .line 3986
    new-instance v2, Landroid/content/pm/ActivityInfo;

    iget-object v4, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    invoke-direct {v2, v4}, Landroid/content/pm/ActivityInfo;-><init>(Landroid/content/pm/ActivityInfo;)V

    iput-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 3987
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    new-instance v4, Landroid/content/pm/ApplicationInfo;

    iget-object v5, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-direct {v4, v5}, Landroid/content/pm/ApplicationInfo;-><init>(Landroid/content/pm/ApplicationInfo;)V

    iput-object v4, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 3991
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v3, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 3992
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 3993
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->taskAffinity:Ljava/lang/String;

    .line 3994
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    .line 3995
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 3996
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->parentActivityName:Ljava/lang/String;

    .line 3997
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->targetActivity:Ljava/lang/String;

    .line 3998
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iput-object v3, v2, Landroid/content/pm/ActivityInfo;->splitName:Ljava/lang/String;

    .line 3999
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->className:Ljava/lang/String;

    .line 4000
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->credentialProtectedDataDir:Ljava/lang/String;

    .line 4001
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 4002
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->deviceProtectedDataDir:Ljava/lang/String;

    .line 4003
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->manageSpaceActivityName:Ljava/lang/String;

    .line 4004
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryDir:Ljava/lang/String;

    .line 4005
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->nativeLibraryRootDir:Ljava/lang/String;

    .line 4006
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->processName:Ljava/lang/String;

    .line 4007
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->publicSourceDir:Ljava/lang/String;

    .line 4008
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->scanPublicSourceDir:Ljava/lang/String;

    .line 4009
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->scanSourceDir:Ljava/lang/String;

    .line 4010
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    .line 4011
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->taskAffinity:Ljava/lang/String;

    .line 4012
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 4013
    iget-object v2, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iput-object v3, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 4016
    :cond_b6
    iget v2, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    if-eq v2, v1, :cond_c1

    .line 4017
    new-instance v2, Landroid/content/ComponentName;

    invoke-direct {v2, v3, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 4019
    :cond_c1
    return-void
.end method

.method private updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V
    .registers 6
    .param p1, "taskIsFocused"  # Z
    .param p2, "pendingTransaction"  # Landroid/view/SurfaceControl$Transaction;

    .line 4940
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_33

    .line 4942
    :cond_d
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->getShadowRadius(Z)F

    move-result v0

    .line 4945
    .local v0, "newShadowRadius":F
    iget v1, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    cmpl-float v1, v1, v0

    if-eqz v1, :cond_32

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_32

    .line 4946
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_32

    .line 4948
    iput v0, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    .line 4949
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    iget v2, p0, Lcom/android/server/wm/Task;->mShadowRadius:F

    invoke-virtual {p2, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 4951
    :cond_32
    return-void

    .line 4940
    .end local v0  # "newShadowRadius":F
    :cond_33
    :goto_33
    return-void
.end method

.method private updateSurfaceBounds()V
    .registers 2

    .line 6767
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 6768
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateSurfacePositionNonOrganized()V

    .line 6769
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->scheduleAnimation()V

    .line 6770
    return-void
.end method

.method private updateTransitLocked(ILandroid/app/ActivityOptions;)V
    .registers 5
    .param p1, "transit"  # I
    .param p2, "options"  # Landroid/app/ActivityOptions;

    .line 6169
    if-eqz p2, :cond_17

    .line 6170
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6171
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_14

    sget-object v1, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 6172
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    goto :goto_17

    .line 6174
    :cond_14
    invoke-static {p2}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 6177
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_17
    :goto_17
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 6178
    return-void
.end method

.method private warnForNonLeafTask(Ljava/lang/String;)V
    .registers 4
    .param p1, "func"  # Ljava/lang/String;

    .line 6791
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_22

    .line 6792
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on non-leaf task "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6794
    :cond_22
    return-void
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/WindowContainer;I)V
    .registers 9
    .param p1, "child"  # Lcom/android/server/wm/WindowContainer;
    .param p2, "index"  # I

    .line 1525
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I

    move-result p2

    .line 1526
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1528
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v0, :cond_1e

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v2, 0x4f52761a

    const/4 v3, 0x0

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v1, v2, v5, v3, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1532
    .end local v0  # "protoLogParam0":Ljava/lang/String;
    :cond_1e
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v0, :cond_36

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_36

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_36

    .line 1533
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->addRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    .line 1538
    :cond_36
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->updateUIDsPresentOnDisplay()V

    .line 1542
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    .line 1543
    .local v0, "childTaskFrag":Lcom/android/server/wm/TaskFragment;
    if-eqz v0, :cond_4e

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_4e

    .line 1544
    iget v1, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    iget v2, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskFragment;->setMinDimensions(II)V

    .line 1546
    :cond_4e
    return-void
.end method

.method addChild(Lcom/android/server/wm/WindowContainer;ZZ)V
    .registers 7
    .param p1, "child"  # Lcom/android/server/wm/WindowContainer;
    .param p2, "toTop"  # Z
    .param p3, "showForAllUsers"  # Z

    .line 6564
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 6566
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    if-eqz v0, :cond_d

    .line 6567
    :try_start_7
    invoke-virtual {v0, p3}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    goto :goto_d

    .line 6573
    :catchall_b
    move-exception v2

    goto :goto_1d

    .line 6571
    :cond_d
    :goto_d
    if-eqz p2, :cond_13

    const v2, 0x7fffffff

    goto :goto_14

    :cond_13
    move v2, v1

    :goto_14
    invoke-direct {p0, p1, v2, p2}, Lcom/android/server/wm/Task;->addChild(Lcom/android/server/wm/WindowContainer;IZ)V
    :try_end_17
    .catchall {:try_start_7 .. :try_end_17} :catchall_b

    .line 6573
    if-eqz v0, :cond_1c

    .line 6574
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    .line 6577
    :cond_1c
    return-void

    .line 6573
    :goto_1d
    if-eqz v0, :cond_22

    .line 6574
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setForceShowForAllUsers(Z)V

    .line 6576
    :cond_22
    throw v2
.end method

.method adjustAnimationBoundsForTransition(Landroid/graphics/Rect;)V
    .registers 7
    .param p1, "animationBounds"  # Landroid/graphics/Rect;

    .line 3251
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskTransitionSpec:Landroid/view/TaskTransitionSpec;

    .line 3252
    .local v0, "spec":Landroid/view/TaskTransitionSpec;
    if-eqz v0, :cond_34

    .line 3253
    iget-object v1, v0, Landroid/view/TaskTransitionSpec;->animationBoundInsets:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_c
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_34

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .line 3254
    .local v2, "insetType":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    .line 3255
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getInsetsStateController()Lcom/android/server/wm/InsetsStateController;

    move-result-object v3

    .line 3256
    invoke-virtual {v3, v2}, Lcom/android/server/wm/InsetsStateController;->getSourceProvider(I)Lcom/android/server/wm/WindowContainerInsetsSourceProvider;

    move-result-object v3

    .line 3258
    .local v3, "insetProvider":Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainerInsetsSourceProvider;->getSource()Landroid/view/InsetsSource;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/view/InsetsSource;->calculateVisibleInsets(Landroid/graphics/Rect;)Landroid/graphics/Insets;

    move-result-object v4

    .line 3260
    .local v4, "insets":Landroid/graphics/Insets;
    invoke-virtual {p1, v4}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 3261
    .end local v2  # "insetType":I
    .end local v3  # "insetProvider":Lcom/android/server/wm/WindowContainerInsetsSourceProvider;
    .end local v4  # "insets":Landroid/graphics/Insets;
    goto :goto_c

    .line 3263
    :cond_34
    return-void
.end method

.method adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V
    .registers 8
    .param p1, "displayContent"  # Lcom/android/server/wm/DisplayContent;

    .line 3288
    if-nez p1, :cond_3

    .line 3289
    return-void

    .line 3291
    :cond_3
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 3292
    return-void

    .line 3294
    :cond_e
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v0

    .line 3295
    .local v0, "displayId":I
    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget v1, v1, Landroid/view/DisplayInfo;->rotation:I

    .line 3296
    .local v1, "newRotation":I
    iget v2, p0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    if-eq v0, v2, :cond_21

    .line 3300
    iput v0, p0, Lcom/android/server/wm/Task;->mLastRotationDisplayId:I

    .line 3301
    iput v1, p0, Lcom/android/server/wm/Task;->mRotation:I

    .line 3302
    return-void

    .line 3305
    :cond_21
    iget v2, p0, Lcom/android/server/wm/Task;->mRotation:I

    if-ne v2, v1, :cond_26

    .line 3308
    return-void

    .line 3316
    :cond_26
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3318
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->canResizeTask()Z

    move-result v2

    if-nez v2, :cond_3f

    .line 3319
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 3320
    return-void

    .line 3323
    :cond_3f
    iget v2, p0, Lcom/android/server/wm/Task;->mRotation:I

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p1, v2, v1, v3}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    .line 3324
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect2:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v2

    if-eqz v2, :cond_76

    .line 3327
    :try_start_4e
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z
    :try_end_5a
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4e .. :try_end_5a} :catch_5b

    .line 3330
    goto :goto_76

    .line 3328
    :catch_5b
    move-exception v2

    .line 3329
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Note: WMS has a Freeform taskId, but AMS\'s taskId is different. taskId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "ActivityTaskManager"

    invoke-static {v4, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3333
    .end local v2  # "e":Ljava/lang/IllegalArgumentException;
    :cond_76
    :goto_76
    return-void
.end method

.method adjustFocusToNextFocusableTask(Ljava/lang/String;)Lcom/android/server/wm/Task;
    .registers 4
    .param p1, "reason"  # Ljava/lang/String;

    .line 2777
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, v1}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;
    .registers 10
    .param p1, "reason"  # Ljava/lang/String;
    .param p2, "allowFocusSelf"  # Z
    .param p3, "moveDisplayToTop"  # Z

    .line 2815
    invoke-direct {p0, p2}, Lcom/android/server/wm/Task;->getNextFocusableTask(Z)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2816
    .local v0, "focusableTask":Lcom/android/server/wm/Task;
    if-nez v0, :cond_e

    .line 2817
    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    xor-int/lit8 v2, p2, 0x1

    invoke-virtual {v1, p0, v2}, Lcom/android/server/wm/RootWindowContainer;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2819
    :cond_e
    if-nez v0, :cond_1b

    .line 2820
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    .line 2821
    .local v1, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v1, :cond_19

    .line 2823
    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->clearPreferredTopFocusableRootTask()V

    .line 2825
    :cond_19
    const/4 v2, 0x0

    return-object v2

    .line 2828
    .end local v1  # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_1b
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2829
    .local v1, "rootTask":Lcom/android/server/wm/Task;
    if-nez p3, :cond_3b

    .line 2833
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 2834
    .local v2, "parent":Lcom/android/server/wm/WindowContainer;
    move-object v3, v0

    .line 2836
    .local v3, "next":Lcom/android/server/wm/WindowContainer;
    :cond_26
    const v4, 0x7fffffff

    const/4 v5, 0x0

    invoke-virtual {v2, v4, v3, v5}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2837
    move-object v3, v2

    .line 2838
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 2839
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_3a

    if-nez v2, :cond_26

    .line 2840
    :cond_3a
    return-object v1

    .line 2843
    .end local v2  # "parent":Lcom/android/server/wm/WindowContainer;
    .end local v3  # "next":Lcom/android/server/wm/WindowContainer;
    :cond_3b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " adjustFocusToNextFocusableTask"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 2844
    .local v2, "myReason":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2845
    .local v3, "top":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v4

    if-eqz v4, :cond_66

    if-eqz v3, :cond_5e

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-nez v4, :cond_66

    .line 2848
    :cond_5e
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    invoke-virtual {v4, v2}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeActivityToTop(Ljava/lang/String;)V

    .line 2849
    return-object v1

    .line 2854
    :cond_66
    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 2856
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_74

    .line 2857
    iget-object v4, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v4, p1}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded(Ljava/lang/String;)V

    .line 2859
    :cond_74
    return-object v1
.end method

.method adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V
    .registers 10
    .param p1, "bounds"  # Landroid/graphics/Rect;
    .param p2, "previousBounds"  # Landroid/graphics/Rect;
    .param p3, "parentConfig"  # Landroid/content/res/Configuration;

    .line 2348
    iget v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 2349
    .local v0, "minWidth":I
    iget v1, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    .line 2353
    .local v1, "minHeight":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v2

    if-nez v2, :cond_25

    .line 2355
    iget-object v2, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v2, :cond_11

    .line 2356
    const/16 v2, 0xdc

    goto :goto_15

    :cond_11
    iget-object v2, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v2, v2, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    .line 2357
    .local v2, "defaultMinSizeDp":I
    :goto_15
    iget v3, p3, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v3, v3

    const/high16 v4, 0x43200000  # 160.0f

    div-float/2addr v3, v4

    .line 2358
    .local v3, "density":F
    int-to-float v4, v2

    mul-float/2addr v4, v3

    float-to-int v4, v4

    .line 2360
    .local v4, "defaultMinSize":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_22

    .line 2361
    move v0, v4

    .line 2363
    :cond_22
    if-ne v1, v5, :cond_25

    .line 2364
    move v1, v4

    .line 2367
    .end local v2  # "defaultMinSizeDp":I
    .end local v3  # "density":F
    .end local v4  # "defaultMinSize":I
    :cond_25
    invoke-virtual {p1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_41

    .line 2370
    iget-object v2, p3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2371
    .local v2, "parentBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v3

    if-lt v3, v0, :cond_3e

    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v3

    if-lt v3, v1, :cond_3e

    .line 2372
    return-void

    .line 2374
    :cond_3e
    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2376
    .end local v2  # "parentBounds":Landroid/graphics/Rect;
    :cond_41
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-le v0, v2, :cond_4b

    move v2, v3

    goto :goto_4c

    :cond_4b
    move v2, v4

    .line 2377
    .local v2, "adjustWidth":Z
    :goto_4c
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v5

    if-le v1, v5, :cond_53

    goto :goto_54

    :cond_53
    move v3, v4

    .line 2378
    .local v3, "adjustHeight":Z
    :goto_54
    if-nez v2, :cond_59

    if-nez v3, :cond_59

    .line 2379
    return-void

    .line 2382
    :cond_59
    if-eqz v2, :cond_72

    .line 2383
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6d

    iget v4, p1, Landroid/graphics/Rect;->right:I

    iget v5, p2, Landroid/graphics/Rect;->right:I

    if-ne v4, v5, :cond_6d

    .line 2384
    iget v4, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v4, v0

    iput v4, p1, Landroid/graphics/Rect;->left:I

    goto :goto_72

    .line 2388
    :cond_6d
    iget v4, p1, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v0

    iput v4, p1, Landroid/graphics/Rect;->right:I

    .line 2391
    :cond_72
    :goto_72
    if-eqz v3, :cond_8b

    .line 2392
    invoke-virtual {p2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_86

    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    iget v5, p2, Landroid/graphics/Rect;->bottom:I

    if-ne v4, v5, :cond_86

    .line 2393
    iget v4, p1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v4, v1

    iput v4, p1, Landroid/graphics/Rect;->top:I

    goto :goto_8b

    .line 2397
    :cond_86
    iget v4, p1, Landroid/graphics/Rect;->top:I

    add-int/2addr v4, v1

    iput v4, p1, Landroid/graphics/Rect;->bottom:I

    .line 2400
    :cond_8b
    :goto_8b
    return-void
.end method

.method adjustFreeformBoundForIme(ZI)V
    .registers 8
    .param p1, "getFocused"  # Z
    .param p2, "offSet"  # I

    .line 2509
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mMiuiIsImeTarget:Z

    if-ne v0, p1, :cond_5

    return-void

    .line 2510
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v0

    .line 2511
    .local v0, "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v0, :cond_24

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->isRunningUnPinAnim()Z

    move-result v1

    if-eqz v1, :cond_24

    .line 2512
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAdjustedFreeFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2513
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastFreeFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2514
    return-void

    .line 2516
    :cond_24
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mMiuiIsImeTarget:Z

    .line 2517
    const/4 v1, 0x0

    if-eqz p1, :cond_55

    .line 2518
    new-instance v2, Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v2, p0, Lcom/android/server/wm/Task;->mLastFreeFromBounds:Landroid/graphics/Rect;

    .line 2519
    iget-object v3, p0, Lcom/android/server/wm/Task;->mAdjustedFreeFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2520
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastFreeFromBounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->top:I

    if-le p2, v2, :cond_43

    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastFreeFromBounds:Landroid/graphics/Rect;

    iget p2, v2, Landroid/graphics/Rect;->top:I

    .line 2521
    :cond_43
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAdjustedFreeFromBounds:Landroid/graphics/Rect;

    neg-int v3, p2

    invoke-virtual {v2, v1, v3}, Landroid/graphics/Rect;->offset(II)V

    .line 2522
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/Task;->mAdjustedFreeFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    goto :goto_77

    .line 2523
    :cond_55
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wm/Task;->mAdjustedFreeFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6d

    .line 2524
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v3

    iget-object v4, p0, Lcom/android/server/wm/Task;->mLastFreeFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, v3, v4, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->resizeTask(ILandroid/graphics/Rect;I)Z

    goto :goto_77

    .line 2526
    :cond_6d
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAdjustedFreeFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2527
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastFreeFromBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2529
    :goto_77
    return-void
.end method

.method protected applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V
    .registers 16
    .param p1, "lp"  # Landroid/view/WindowManager$LayoutParams;
    .param p2, "enter"  # Z
    .param p3, "transit"  # I
    .param p4, "isVoiceInteraction"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/WindowManager$LayoutParams;",
            "ZIZ",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/WindowContainer;",
            ">;)V"
        }
    .end annotation

    .line 3818
    .local p5, "sources":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/WindowContainer;>;"
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 3819
    .local v0, "control":Lcom/android/server/wm/RecentsAnimationController;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_46

    .line 3822
    if-eqz p2, :cond_6a

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHomeOrRecents()Z

    move-result v3

    if-nez v3, :cond_6a

    .line 3823
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_RECENTS_ANIMATIONS_enabled:Z

    if-eqz v3, :cond_3d

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam1":Ljava/lang/String;
    invoke-static {p3}, Lcom/android/server/wm/AppTransition;->appTransitionOldToString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam2":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_RECENTS_ANIMATIONS:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0xc8fcb49

    const/4 v8, 0x0

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v3, v9, v2

    aput-object v4, v9, v1

    const/4 v1, 0x2

    aput-object v5, v9, v1

    invoke-static {v6, v7, v2, v8, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 3826
    .end local v3  # "protoLogParam0":Ljava/lang/String;
    .end local v4  # "protoLogParam1":Ljava/lang/String;
    .end local v5  # "protoLogParam2":Ljava/lang/String;
    :cond_3d
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda22;

    invoke-direct {v1, p5}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda22;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {v0, p0, v1}, Lcom/android/server/wm/RecentsAnimationController;->addTaskToTargets(Lcom/android/server/wm/Task;Lcom/android/server/wm/SurfaceAnimator$OnAnimationFinishedCallback;)V

    goto :goto_6a

    .line 3834
    :cond_46
    iget-boolean v3, p0, Lcom/android/server/wm/Task;->mBackGestureStarted:Z

    if-eqz v3, :cond_67

    .line 3839
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mBackGestureStarted:Z

    .line 3840
    iget-object v3, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iput-boolean v1, v3, Lcom/android/server/wm/DisplayContent;->mSkipAppTransitionAnimation:Z

    .line 3841
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z

    if-eqz v3, :cond_6a

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .restart local v3  # "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, 0x5c13dcaf

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const-string v6, "Skipping app transition animation. task=%s"

    invoke-static {v4, v5, v2, v6, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .end local v3  # "protoLogParam0":Ljava/lang/String;
    goto :goto_6a

    .line 3843
    :cond_67
    invoke-super/range {p0 .. p5}, Lcom/android/server/wm/TaskFragment;->applyAnimationUnchecked(Landroid/view/WindowManager$LayoutParams;ZIZLjava/util/ArrayList;)V

    .line 3845
    :cond_6a
    :goto_6a
    return-void
.end method

.method asTask()Lcom/android/server/wm/Task;
    .registers 1

    .line 4105
    return-object p0
.end method

.method canAffectSystemUiFlags()Z
    .registers 2

    .line 3681
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    return v0
.end method

.method canBeLaunchedOnDisplay(I)Z
    .registers 4
    .param p1, "displayId"  # I

    .line 1954
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1, v1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->canPlaceEntityOnDisplay(IIILcom/android/server/wm/Task;)Z

    move-result v0

    return v0
.end method

.method cancelTaskWindowTransition()V
    .registers 3

    .line 3337
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 3338
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->cancelAnimation()V

    .line 3337
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 3340
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method checkReadyForSleep()V
    .registers 3

    .line 5373
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_13

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->goToSleepIfPossible(Z)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 5374
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkReadyForSleepLocked(Z)V

    .line 5376
    :cond_13
    return-void
.end method

.method checkTranslucentActivityWaiting(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "top"  # Lcom/android/server/wm/ActivityRecord;

    .line 5480
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, p1, :cond_1a

    .line 5481
    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5482
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_13

    .line 5484
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 5485
    iput-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 5487
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 5489
    :cond_1a
    return-void
.end method

.method clearLastRecentsAnimationTransaction(Z)V
    .registers 7
    .param p1, "forceRemoveOverlay"  # Z

    .line 6739
    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_f

    .line 6740
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->remove(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 6742
    :cond_f
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 6743
    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    .line 6745
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    sget-object v3, Landroid/graphics/Matrix;->IDENTITY_MATRIX:Landroid/graphics/Matrix;

    const/16 v4, 0x9

    new-array v4, v4, [F

    invoke-virtual {v1, v2, v3, v4}, Landroid/view/SurfaceControl$Transaction;->setMatrix(Landroid/view/SurfaceControl;Landroid/graphics/Matrix;[F)Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    .line 6746
    invoke-virtual {v1, v2, v0}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;Landroid/graphics/Rect;)Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v2, 0x0

    .line 6747
    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setCornerRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 6748
    return-void
.end method

.method clearRootProcess()V
    .registers 2

    .line 2700
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_a

    .line 2701
    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowProcessController;->removeRecentTask(Lcom/android/server/wm/Task;)V

    .line 2702
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 2704
    :cond_a
    return-void
.end method

.method convertActivityToTranslucent(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 5492
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 5493
    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 5494
    iget-object v0, p0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x65

    const-wide/16 v2, 0x7d0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 5495
    return-void
.end method

.method cropWindowsToRootTaskBounds()Z
    .registers 4

    .line 3139
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHomeOrRecents()Z

    move-result v0

    if-eqz v0, :cond_1e

    .line 3142
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3144
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    iget-boolean v1, v0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_13

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_14

    :cond_13
    move-object v1, v0

    .line 3145
    .local v1, "topNonOrgTask":Lcom/android/server/wm/Task;
    :goto_14
    if-eq p0, v1, :cond_1c

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v2

    if-eqz v2, :cond_1e

    .line 3146
    :cond_1c
    const/4 v2, 0x0

    return v2

    .line 3149
    .end local v0  # "rootTask":Lcom/android/server/wm/Task;
    .end local v1  # "topNonOrgTask":Lcom/android/server/wm/Task;
    :cond_1e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    return v0
.end method

.method dismissPip()V
    .registers 3

    .line 6601
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v0

    if-eqz v0, :cond_20

    .line 6605
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_18

    .line 6610
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda28;-><init>(Lcom/android/server/wm/Task;)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 6622
    return-void

    .line 6606
    :cond_18
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t exit pinned mode if it\'s not pinned already."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6602
    :cond_20
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You can\'t move tasks from non-standard root tasks."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method dispatchTaskInfoChangedIfNeeded(Z)V
    .registers 3
    .param p1, "force"  # Z

    .line 6843
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 6844
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/TaskOrganizerController;->onTaskInfoChanged(Lcom/android/server/wm/Task;Z)V

    .line 6846
    :cond_d
    return-void
.end method

.method dontAnimateDimExit()V
    .registers 2

    .line 3685
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->dontAnimateExit()V

    .line 3686
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 12
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;

    .line 4119
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "userId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4120
    const-string v0, " effectiveUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 4121
    const-string v0, " mCallingUid="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    invoke-static {p1, v0}, Landroid/os/UserHandle;->formatUid(Ljava/io/PrintWriter;I)V

    .line 4122
    const-string v0, " mUserSetupComplete="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4123
    const-string v0, " mCallingPackage="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4124
    const-string v0, " mCallingFeatureId="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4125
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-nez v0, :cond_48

    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_70

    .line 4126
    :cond_48
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4127
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v0, :cond_66

    iget-object v1, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_62

    goto :goto_66

    .line 4130
    :cond_62
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    goto :goto_70

    .line 4128
    :cond_66
    :goto_66
    const-string v0, " root="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4133
    :cond_70
    :goto_70
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_82

    .line 4134
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "windowLayoutAffinity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4136
    :cond_82
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-nez v0, :cond_8a

    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    if-eqz v0, :cond_b1

    .line 4137
    :cond_8a
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "VOICE: session=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4138
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4139
    const-string v0, " interactor=0x"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4140
    iget-object v0, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4142
    :cond_b1
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/16 v1, 0x7d

    const/16 v2, 0x80

    if-eqz v0, :cond_da

    .line 4143
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4144
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "intent={"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4145
    iget-object v3, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 4146
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4147
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4149
    .end local v0  # "sb":Ljava/lang/StringBuilder;
    :cond_da
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_ff

    .line 4150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4151
    .restart local v0  # "sb":Ljava/lang/StringBuilder;
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "affinityIntent={"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4152
    iget-object v3, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v4, v0

    invoke-virtual/range {v3 .. v8}, Landroid/content/Intent;->toShortString(Ljava/lang/StringBuilder;ZZZZ)V

    .line 4153
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4154
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4156
    .end local v0  # "sb":Ljava/lang/StringBuilder;
    :cond_ff
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_115

    .line 4157
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "origActivity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4158
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4160
    :cond_115
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_12a

    .line 4161
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mActivityComponent="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4162
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4164
    :cond_12a
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    if-nez v0, :cond_138

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-nez v0, :cond_138

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeStandard()Z

    move-result v0

    if-nez v0, :cond_15b

    .line 4165
    :cond_138
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "autoRemoveRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4166
    const-string v0, " isPersistable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4167
    const-string v0, " activityType="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 4169
    :cond_15b
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    const/4 v1, 0x1

    if-nez v0, :cond_16c

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    if-nez v0, :cond_16c

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    if-nez v0, :cond_16c

    iget v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    if-eq v0, v1, :cond_19a

    .line 4171
    :cond_16c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "rootWasReset="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4172
    const-string v0, " mNeverRelinquishIdentity="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4173
    const-string v0, " mReuseTask="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4174
    const-string v0, " mLockTaskAuth="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->lockTaskAuthToString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4176
    :cond_19a
    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v0, v2, :cond_1b1

    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_1b1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-nez v0, :cond_1b1

    iget v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    if-ne v0, v2, :cond_1b1

    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-eqz v0, :cond_208

    .line 4179
    :cond_1b1
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "affiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4180
    const-string v0, " prevAffiliation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 4181
    const-string v0, " ("

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4182
    iget-object v2, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    const-string/jumbo v3, "null"

    if-nez v2, :cond_1d8

    .line 4183
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_1e3

    .line 4185
    :cond_1d8
    invoke-static {v2}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4187
    :goto_1e3
    const-string v2, ") nextAffiliation="

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v2, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    invoke-virtual {p1, v2}, Ljava/io/PrintWriter;->print(I)V

    .line 4188
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4189
    iget-object v0, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    if-nez v0, :cond_1f8

    .line 4190
    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_203

    .line 4192
    :cond_1f8
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4194
    :goto_203
    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4196
    :cond_208
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "Activities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4197
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    if-eqz v0, :cond_221

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_221

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isAvailable:Z

    if-nez v0, :cond_242

    .line 4198
    :cond_221
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "askedCompatMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4199
    const-string v0, " inRecents="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4200
    const-string v0, " isAvailable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->isAvailable:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4202
    :cond_242
    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_253

    .line 4203
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastDescription="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4205
    :cond_253
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_264

    .line 4206
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mRootProcess="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 4208
    :cond_264
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "taskId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4209
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " rootTaskId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4210
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "hasChildPipActivity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v2, :cond_2ad

    goto :goto_2ae

    :cond_2ad
    const/4 v1, 0x0

    :goto_2ae
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4211
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mHasBeenVisible="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4212
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "mResizeMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4213
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v0}, Landroid/content/pm/ActivityInfo;->resizeModeToString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4214
    const-string v0, " mSupportsPictureInPicture="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 4215
    const-string v0, " isResizeable="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 4217
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " supportsSplitScreenWindowingMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingMode()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 4218
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "lastActiveTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-wide v0, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    invoke-virtual {p1, v0, v1}, Ljava/io/PrintWriter;->print(J)V

    .line 4219
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " (inactive for "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getInactiveDuration()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "s)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 4220
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 6
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "dumpAll"  # Z

    .line 3849
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/TaskFragment;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 3850
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    const-string v1, "AnimatingApps:"

    invoke-virtual {v0, p1, v1, p2}, Lcom/android/server/wm/AnimatingActivityRegistry;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/String;)V

    .line 3851
    return-void
.end method

.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;Z)Z
    .registers 16
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "dumpAll"  # Z
    .param p4, "dumpClient"  # Z
    .param p5, "dumpPackage"  # Ljava/lang/String;
    .param p6, "needSep"  # Z

    .line 6422
    const-string v1, "  "

    const/4 v8, 0x0

    move-object v0, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move v5, p4

    move-object v6, p5

    move v7, p6

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/Task;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 10
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J
    .param p4, "logLevel"  # I

    .line 6851
    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    .line 6852
    return-void

    .line 6855
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 6857
    .local v0, "token":J
    const-wide v2, 0x10500000002L

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6858
    const-wide v2, 0x10500000010L

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6860
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_36

    .line 6861
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    const-wide v3, 0x10b0000000cL

    invoke-virtual {v2, p1, v3, v4}, Lcom/android/server/wm/ActivityRecord;->writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6863
    :cond_36
    iget-object v2, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_46

    .line 6864
    const-wide v3, 0x1090000000dL

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 6866
    :cond_46
    iget-object v2, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_56

    .line 6867
    const-wide v3, 0x1090000000eL

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 6869
    :cond_56
    const-wide v2, 0x10500000012L

    iget v4, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6870
    const-wide v2, 0x10800000004L

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6871
    invoke-direct {p0}, Lcom/android/server/wm/Task;->getRawBounds()Landroid/graphics/Rect;

    move-result-object v2

    const-wide v3, 0x10b00000005L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6873
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v2, :cond_84

    .line 6874
    const-wide v3, 0x10b00000016L

    invoke-virtual {v2, p1, v3, v4}, Landroid/graphics/Rect;->dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V

    .line 6877
    :cond_84
    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v2, :cond_a4

    .line 6878
    const-wide v2, 0x10500000008L

    iget-object v4, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->getWidth()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6879
    const-wide v2, 0x10500000009L

    iget-object v4, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v4}, Landroid/view/SurfaceControl;->getHeight()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 6882
    :cond_a4
    const-wide v2, 0x1080000001cL

    iget-boolean v4, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6883
    const-wide v2, 0x1090000001dL

    iget-object v4, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 6884
    const-wide v2, 0x1080000001eL

    iget-object v4, p0, Lcom/android/server/wm/Task;->mChildPipActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_c3

    const/4 v4, 0x1

    goto :goto_c4

    :cond_c3
    const/4 v4, 0x0

    :goto_c4
    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 6886
    const-wide v2, 0x10b0000001fL

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/TaskFragment;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 6888
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 6889
    return-void
.end method

.method dumpInner(Ljava/lang/String;Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .registers 11
    .param p1, "prefix"  # Ljava/lang/String;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "dumpAll"  # Z
    .param p4, "dumpPackage"  # Ljava/lang/String;

    .line 6427
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskFragment;->dumpInner(Ljava/lang/String;Ljava/io/PrintWriter;ZLjava/lang/String;)V

    .line 6428
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_1d

    .line 6429
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  mCreatedByOrganizer=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6431
    :cond_1d
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_2e

    .line 6432
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mLastNonFullscreenBounds="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 6433
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 6435
    :cond_2e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_ac

    .line 6436
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  isSleeping="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 6437
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  topPausingActivity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    move-object v0, p2

    move-object v2, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    .line 6439
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "  topResumedActivity="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object v0, p2

    move-object v2, p4

    invoke-static/range {v0 .. v5}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    .line 6441
    iget v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_95

    iget v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    if-eq v0, v1, :cond_ac

    .line 6442
    :cond_95
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "  mMinWidth="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 6443
    const-string v0, " mMinHeight="

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 6446
    :cond_ac
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V
    .registers 5
    .param p1, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"  # I
    .param p3, "preserveWindows"  # Z

    .line 5427
    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 5428
    return-void
.end method

.method ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .registers 7
    .param p1, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"  # I
    .param p3, "preserveWindows"  # Z
    .param p4, "notifyClients"  # Z

    .line 5449
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mForceStop:Z

    if-eqz v0, :cond_5

    .line 5450
    return-void

    .line 5453
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate()V

    .line 5455
    :try_start_a
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda24;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda24;-><init>(Lcom/android/server/wm/ActivityRecord;IZZ)V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 5460
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_23

    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 5461
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_23

    .line 5464
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    :try_end_23
    .catchall {:try_start_a .. :try_end_23} :catchall_2a

    .line 5467
    :cond_23
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 5468
    nop

    .line 5469
    return-void

    .line 5467
    :catchall_2a
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 5468
    throw v0
.end method

.method executeAppTransition(Landroid/app/ActivityOptions;)V
    .registers 3
    .param p1, "options"  # Landroid/app/ActivityOptions;

    .line 6813
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 6814
    invoke-static {p1}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 6815
    return-void
.end method

.method fillTaskInfo(Landroid/app/TaskInfo;)V
    .registers 3
    .param p1, "info"  # Landroid/app/TaskInfo;

    .line 3859
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;Z)V

    .line 3860
    return-void
.end method

.method fillTaskInfo(Landroid/app/TaskInfo;Z)V
    .registers 4
    .param p1, "info"  # Landroid/app/TaskInfo;
    .param p2, "stripExtras"  # Z

    .line 3863
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;ZLcom/android/server/wm/TaskDisplayArea;)V

    .line 3864
    return-void
.end method

.method fillTaskInfo(Landroid/app/TaskInfo;ZLcom/android/server/wm/TaskDisplayArea;)V
    .registers 13
    .param p1, "info"  # Landroid/app/TaskInfo;
    .param p2, "stripExtras"  # Z
    .param p3, "tda"  # Lcom/android/server/wm/TaskDisplayArea;

    .line 3873
    iget-object v0, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->getNumRunningActivities(Lcom/android/server/wm/Task$TaskActivitiesReport;)V

    .line 3874
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_e

    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    goto :goto_10

    :cond_e
    iget v0, p0, Lcom/android/server/wm/Task;->mCurrentUser:I

    :goto_10
    iput v0, p1, Landroid/app/TaskInfo;->userId:I

    .line 3875
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iput v0, p1, Landroid/app/TaskInfo;->taskId:I

    .line 3876
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v0

    iput v0, p1, Landroid/app/TaskInfo;->displayId:I

    .line 3877
    if-eqz p3, :cond_22

    .line 3878
    iget v0, p3, Lcom/android/server/wm/TaskDisplayArea;->mFeatureId:I

    iput v0, p1, Landroid/app/TaskInfo;->displayAreaFeatureId:I

    .line 3880
    :cond_22
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2c

    move v0, v1

    goto :goto_2d

    :cond_2c
    move v0, v2

    :goto_2d
    iput-boolean v0, p1, Landroid/app/TaskInfo;->isRunning:Z

    .line 3881
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v0

    .line 3884
    .local v0, "baseIntent":Landroid/content/Intent;
    if-nez v0, :cond_37

    move v3, v2

    goto :goto_3b

    :cond_37
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v3

    .line 3885
    .local v3, "baseIntentFlags":I
    :goto_3b
    if-nez v0, :cond_43

    .line 3886
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    goto :goto_4f

    .line 3887
    :cond_43
    if-eqz p2, :cond_4a

    invoke-virtual {v0}, Landroid/content/Intent;->cloneFilter()Landroid/content/Intent;

    move-result-object v4

    goto :goto_4f

    :cond_4a
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, v0}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    :goto_4f
    iput-object v4, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    .line 3888
    iget-object v4, p1, Landroid/app/TaskInfo;->baseIntent:Landroid/content/Intent;

    invoke-virtual {v4, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 3889
    iget-object v4, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v4, v4, Lcom/android/server/wm/Task$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    const/4 v5, 0x0

    if-eqz v4, :cond_68

    .line 3890
    iget-object v4, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v4, v4, Lcom/android/server/wm/Task$TaskActivitiesReport;->base:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    goto :goto_69

    .line 3891
    :cond_68
    move-object v4, v5

    :goto_69
    iput-object v4, p1, Landroid/app/TaskInfo;->baseActivity:Landroid/content/ComponentName;

    .line 3892
    iget-object v4, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v4, v4, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v4, :cond_78

    .line 3893
    iget-object v4, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v4, v4, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    goto :goto_79

    .line 3894
    :cond_78
    move-object v4, v5

    :goto_79
    iput-object v4, p1, Landroid/app/TaskInfo;->topActivity:Landroid/content/ComponentName;

    .line 3895
    iget-object v4, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    iput-object v4, p1, Landroid/app/TaskInfo;->origActivity:Landroid/content/ComponentName;

    .line 3896
    iget-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iput-object v4, p1, Landroid/app/TaskInfo;->realActivity:Landroid/content/ComponentName;

    .line 3897
    iget-object v4, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget v4, v4, Lcom/android/server/wm/Task$TaskActivitiesReport;->numActivities:I

    iput v4, p1, Landroid/app/TaskInfo;->numActivities:I

    .line 3898
    iget-wide v6, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    iput-wide v6, p1, Landroid/app/TaskInfo;->lastActiveTime:J

    .line 3899
    new-instance v4, Landroid/app/ActivityManager$TaskDescription;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v6

    invoke-direct {v4, v6}, Landroid/app/ActivityManager$TaskDescription;-><init>(Landroid/app/ActivityManager$TaskDescription;)V

    iput-object v4, p1, Landroid/app/TaskInfo;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 3900
    invoke-virtual {p0, p3}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v4

    iput-boolean v4, p1, Landroid/app/TaskInfo;->supportsSplitScreenMultiWindow:Z

    .line 3901
    invoke-virtual {p0, p3}, Lcom/android/server/wm/Task;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v4

    iput-boolean v4, p1, Landroid/app/TaskInfo;->supportsMultiWindow:Z

    .line 3902
    iget-object v4, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 3905
    iget-object v4, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/app/WindowConfiguration;->setActivityType(I)V

    .line 3906
    iget-object v4, p1, Landroid/app/TaskInfo;->configuration:Landroid/content/res/Configuration;

    iget-object v4, v4, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v6

    invoke-virtual {v4, v6}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 3907
    iget-object v4, p0, Lcom/android/server/wm/Task;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v4

    iput-object v4, p1, Landroid/app/TaskInfo;->token:Landroid/window/WindowContainerToken;

    .line 3911
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 3912
    .local v4, "top":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_d4

    iget v6, v4, Lcom/android/server/wm/Task;->mResizeMode:I

    goto :goto_d6

    :cond_d4
    iget v6, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    :goto_d6
    iput v6, p1, Landroid/app/TaskInfo;->resizeMode:I

    .line 3913
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v6

    iput v6, p1, Landroid/app/TaskInfo;->topActivityType:I

    .line 3914
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v6

    iput-boolean v6, p1, Landroid/app/TaskInfo;->isResizeable:Z

    .line 3915
    iget v6, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    iput v6, p1, Landroid/app/TaskInfo;->minWidth:I

    .line 3916
    iget v6, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    iput v6, p1, Landroid/app/TaskInfo;->minHeight:I

    .line 3917
    iget-object v6, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v6, :cond_f3

    .line 3918
    const/16 v6, 0xdc

    goto :goto_f7

    :cond_f3
    iget-object v6, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v6, v6, Lcom/android/server/wm/DisplayContent;->mMinSizeOfResizeableTaskDp:I

    :goto_f7
    iput v6, p1, Landroid/app/TaskInfo;->defaultMinSize:I

    .line 3920
    invoke-direct {p0}, Lcom/android/server/wm/Task;->getRelativePosition()Landroid/graphics/Point;

    move-result-object v6

    iput-object v6, p1, Landroid/app/TaskInfo;->positionInParent:Landroid/graphics/Point;

    .line 3922
    invoke-direct {p0, v4}, Lcom/android/server/wm/Task;->getPictureInPictureParams(Lcom/android/server/wm/Task;)Landroid/app/PictureInPictureParams;

    move-result-object v6

    iput-object v6, p1, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 3923
    invoke-direct {p0}, Lcom/android/server/wm/Task;->shouldDockBigOverlays()Z

    move-result v6

    iput-boolean v6, p1, Landroid/app/TaskInfo;->shouldDockBigOverlays:Z

    .line 3924
    iget-object v6, p1, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    if-eqz v6, :cond_12e

    iget-object v6, p1, Landroid/app/TaskInfo;->pictureInPictureParams:Landroid/app/PictureInPictureParams;

    .line 3925
    invoke-virtual {v6}, Landroid/app/PictureInPictureParams;->isLaunchIntoPip()Z

    move-result v6

    if-eqz v6, :cond_12e

    .line 3926
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v6

    if-eqz v6, :cond_12e

    .line 3927
    nop

    .line 3928
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getLastParentBeforePip()Lcom/android/server/wm/Task;

    move-result-object v6

    iget v6, v6, Lcom/android/server/wm/Task;->mTaskId:I

    iput v6, p1, Landroid/app/TaskInfo;->launchIntoPipHostTaskId:I

    .line 3930
    :cond_12e
    if-eqz v4, :cond_135

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getDisplayCutoutInsets()Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_136

    :cond_135
    move-object v6, v5

    :goto_136
    iput-object v6, p1, Landroid/app/TaskInfo;->displayCutoutInsets:Landroid/graphics/Rect;

    .line 3931
    iget-object v6, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v6, v6, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_145

    .line 3932
    iget-object v6, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v6, v6, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    iget-object v6, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_146

    .line 3933
    :cond_145
    move-object v6, v5

    :goto_146
    iput-object v6, p1, Landroid/app/TaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 3935
    iget-object v6, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v6, v6, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    if-eqz v6, :cond_166

    iget-object v6, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v6, v6, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 3936
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object v6

    if-ne v6, p0, :cond_166

    iget-object v6, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v6, v6, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    sget-object v7, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    .line 3937
    invoke-virtual {v6, v7}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v6

    if-eqz v6, :cond_166

    move v6, v1

    goto :goto_167

    :cond_166
    move v6, v2

    .line 3939
    .local v6, "isTopActivityResumed":Z
    :goto_167
    if-eqz v6, :cond_175

    iget-object v7, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v7, v7, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 3940
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->inSizeCompatMode()Z

    move-result v7

    if-eqz v7, :cond_175

    move v7, v1

    goto :goto_176

    :cond_175
    move v7, v2

    :goto_176
    iput-boolean v7, p1, Landroid/app/TaskInfo;->topActivityInSizeCompat:Z

    .line 3942
    if-eqz v6, :cond_196

    iget-object v7, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v7, v7, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 3943
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->inMiuiSizeCompatMode()Z

    move-result v7

    if-eqz v7, :cond_196

    .line 3944
    invoke-static {}, Lcom/android/server/wm/TaskStub;->get()Lcom/android/server/wm/TaskStub;

    move-result-object v7

    iget-object v8, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v8, v8, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    iget-object v8, v8, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v7, v8}, Lcom/android/server/wm/TaskStub;->inMiuiGameSizeCompat(Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_196

    move v7, v1

    goto :goto_197

    :cond_196
    move v7, v2

    :goto_197
    iput-boolean v7, p1, Landroid/app/TaskInfo;->topActivityInMiuiSizeCompat:Z

    .line 3947
    if-eqz v6, :cond_1a7

    iget-object v7, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v7, v7, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    .line 3948
    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->isEligibleForLetterboxEducation()Z

    move-result v7

    if-eqz v7, :cond_1a7

    move v7, v1

    goto :goto_1a8

    :cond_1a7
    move v7, v2

    :goto_1a8
    iput-boolean v7, p1, Landroid/app/TaskInfo;->topActivityEligibleForLetterboxEducation:Z

    .line 3950
    if-eqz v6, :cond_1b5

    .line 3951
    iget-object v7, p0, Lcom/android/server/wm/Task;->mReuseActivitiesReport:Lcom/android/server/wm/Task$TaskActivitiesReport;

    iget-object v7, v7, Lcom/android/server/wm/Task$TaskActivitiesReport;->top:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityRecord;->getCameraCompatControlState()I

    move-result v7

    goto :goto_1b6

    .line 3952
    :cond_1b5
    move v7, v2

    :goto_1b6
    iput v7, p1, Landroid/app/TaskInfo;->cameraCompatControlState:I

    .line 3954
    iget-object v7, p1, Landroid/app/TaskInfo;->launchCookies:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 3955
    iget-object v7, p0, Lcom/android/server/wm/Task;->mLaunchCookie:Landroid/os/IBinder;

    invoke-virtual {p1, v7}, Landroid/app/TaskInfo;->addLaunchCookie(Landroid/os/IBinder;)V

    .line 3956
    new-instance v7, Lcom/android/server/wm/Task$$ExternalSyntheticLambda26;

    invoke-direct {v7, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda26;-><init>(Landroid/app/TaskInfo;)V

    invoke-virtual {p0, v7}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3959
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    if-eqz v7, :cond_1d9

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v7

    goto :goto_1da

    :cond_1d9
    move-object v7, v5

    .line 3960
    .local v7, "parentTask":Lcom/android/server/wm/Task;
    :goto_1da
    if-eqz v7, :cond_1e3

    iget-boolean v8, v7, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v8, :cond_1e3

    .line 3961
    iget v8, v7, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_1e4

    .line 3962
    :cond_1e3
    const/4 v8, -0x1

    :goto_1e4
    iput v8, p1, Landroid/app/TaskInfo;->parentTaskId:I

    .line 3963
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocused()Z

    move-result v8

    iput-boolean v8, p1, Landroid/app/TaskInfo;->isFocused:Z

    .line 3964
    invoke-direct {p0}, Lcom/android/server/wm/Task;->hasVisibleChildren()Z

    move-result v8

    iput-boolean v8, p1, Landroid/app/TaskInfo;->isVisible:Z

    .line 3965
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldSleepActivities()Z

    move-result v8

    iput-boolean v8, p1, Landroid/app/TaskInfo;->isSleeping:Z

    .line 3966
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v8

    .line 3967
    .local v8, "topRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v8, :cond_202

    invoke-virtual {v8}, Lcom/android/server/wm/ActivityRecord;->getLocusId()Landroid/content/LocusId;

    move-result-object v5

    :cond_202
    iput-object v5, p1, Landroid/app/TaskInfo;->mTopActivityLocusId:Landroid/content/LocusId;

    .line 3969
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopRealVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    if-eqz v5, :cond_213

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopRealVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    iget-boolean v5, v5, Lcom/android/server/wm/ActivityRecord;->mIsCastMode:Z

    if-eqz v5, :cond_213

    goto :goto_214

    :cond_213
    move v1, v2

    :goto_214
    iput-boolean v1, p1, Landroid/app/TaskInfo;->mIsCastMode:Z

    .line 3971
    return-void
.end method

.method findActivityInHistory(Landroid/content/ComponentName;)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .param p1, "component"  # Landroid/content/ComponentName;

    .line 1993
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda23;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 1994
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 1993
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 1995
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1996
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 1997
    return-object v1
.end method

.method final finishTopCrashedActivityLocked(Lcom/android/server/wm/WindowProcessController;Ljava/lang/String;)Lcom/android/server/wm/Task;
    .registers 13
    .param p1, "app"  # Lcom/android/server/wm/WindowProcessController;
    .param p2, "reason"  # Ljava/lang/String;

    .line 5908
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 5909
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-eqz v0, :cond_b0

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v2, p1, :cond_d

    goto/16 :goto_b0

    .line 5912
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v2

    const-string v3, "ActivityTaskManager"

    if-eqz v2, :cond_3c

    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    if-ne v2, p1, :cond_3c

    .line 5915
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "  Not force finishing home activity "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5916
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5915
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5917
    return-object v1

    .line 5919
    :cond_3c
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  Force finishing activity "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5920
    invoke-virtual {v4}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 5919
    invoke-static {v3, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5921
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 5922
    .local v1, "finishedTask":Lcom/android/server/wm/Task;
    iget-object v4, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v5, 0x2

    const/16 v6, 0x10

    invoke-virtual {v4, v5, v6}, Lcom/android/server/wm/DisplayContent;->requestTransitionAndLegacyPrepare(II)V

    .line 5923
    const/4 v4, 0x0

    invoke-virtual {v0, p2, v4}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 5927
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v5

    .line 5928
    .local v5, "activityBelow":Lcom/android/server/wm/ActivityRecord;
    if-eqz v5, :cond_af

    .line 5929
    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->STARTED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v7, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v8, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    sget-object v9, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v6

    if-eqz v6, :cond_af

    .line 5930
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityRecord;->isActivityTypeHome()Z

    move-result v6

    if-eqz v6, :cond_8e

    iget-object v6, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v6, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mHomeProcess:Lcom/android/server/wm/WindowProcessController;

    iget-object v7, v5, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eq v6, v7, :cond_af

    .line 5932
    :cond_8e
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, v5, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 5933
    invoke-virtual {v6}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 5932
    invoke-static {v3, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5934
    invoke-virtual {v5, p2, v4}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 5939
    :cond_af
    return-object v1

    .line 5910
    .end local v1  # "finishedTask":Lcom/android/server/wm/Task;
    .end local v5  # "activityBelow":Lcom/android/server/wm/ActivityRecord;
    :cond_b0
    :goto_b0
    return-object v1
.end method

.method finishVoiceTask(Landroid/service/voice/IVoiceInteractionSession;)V
    .registers 5
    .param p1, "session"  # Landroid/service/voice/IVoiceInteractionSession;

    .line 5943
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda30;-><init>()V

    const-class v1, Lcom/android/server/wm/Task;

    .line 5944
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-interface {p1}, Landroid/service/voice/IVoiceInteractionSession;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 5943
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 5945
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 5946
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 5947
    return-void
.end method

.method forAllLeafTasks(Ljava/util/function/Consumer;Z)V
    .registers 7
    .param p2, "traverseTopToBottom"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 3557
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 3558
    .local v0, "count":I
    const/4 v1, 0x1

    .line 3559
    .local v1, "isLeafTask":Z
    if-eqz p2, :cond_23

    .line 3560
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_22

    .line 3561
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3562
    .local v3, "child":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_1f

    .line 3563
    const/4 v1, 0x0

    .line 3564
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 3560
    .end local v3  # "child":Lcom/android/server/wm/Task;
    :cond_1f
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .end local v2  # "i":I
    :cond_22
    goto :goto_3b

    .line 3568
    :cond_23
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_24
    if-ge v2, v0, :cond_3b

    .line 3569
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3570
    .restart local v3  # "child":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_38

    .line 3571
    const/4 v1, 0x0

    .line 3572
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 3568
    .end local v3  # "child":Lcom/android/server/wm/Task;
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 3576
    .end local v2  # "i":I
    :cond_3b
    :goto_3b
    if-eqz v1, :cond_40

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3577
    :cond_40
    return-void
.end method

.method forAllLeafTasks(Ljava/util/function/Predicate;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;)Z"
        }
    .end annotation

    .line 3600
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    const/4 v0, 0x1

    .line 3601
    .local v0, "isLeafTask":Z
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_24

    .line 3602
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 3603
    .local v3, "child":Lcom/android/server/wm/Task;
    if-eqz v3, :cond_21

    .line 3604
    const/4 v0, 0x0

    .line 3605
    invoke-virtual {v3, p1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 3606
    return v2

    .line 3601
    .end local v3  # "child":Lcom/android/server/wm/Task;
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 3610
    .end local v1  # "i":I
    :cond_24
    if-eqz v0, :cond_2b

    .line 3611
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 3613
    :cond_2b
    const/4 v1, 0x0

    return v1
.end method

.method forAllLeafTasksAndLeafTaskFragments(Ljava/util/function/Consumer;Z)V
    .registers 4
    .param p2, "traverseTopToBottom"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;Z)V"
        }
    .end annotation

    .line 3619
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/TaskFragment;>;"
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda32;

    invoke-direct {v0, p1, p2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda32;-><init>(Ljava/util/function/Consumer;Z)V

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 3649
    return-void
.end method

.method forAllRootTasks(Ljava/util/function/Consumer;Z)V
    .registers 4
    .param p2, "traverseTopToBottom"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 3587
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3588
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3590
    :cond_9
    return-void
.end method

.method forAllRootTasks(Ljava/util/function/Predicate;Z)Z
    .registers 4
    .param p2, "traverseTopToBottom"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;Z)Z"
        }
    .end annotation

    .line 3653
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, 0x0

    :goto_c
    return v0
.end method

.method forAllTasks(Ljava/util/function/Consumer;Z)V
    .registers 3
    .param p2, "traverseTopToBottom"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/Task;",
            ">;Z)V"
        }
    .end annotation

    .line 3581
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/Task;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->forAllTasks(Ljava/util/function/Consumer;Z)V

    .line 3582
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 3583
    return-void
.end method

.method forAllTasks(Ljava/util/function/Predicate;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;)Z"
        }
    .end annotation

    .line 3594
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->forAllTasks(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_8

    const/4 v0, 0x1

    return v0

    .line 3595
    :cond_8
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method getAnimatingActivityRegistry()Lcom/android/server/wm/AnimatingActivityRegistry;
    .registers 2

    .line 6801
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAnimatingActivityRegistry:Lcom/android/server/wm/AnimatingActivityRegistry;

    return-object v0
.end method

.method getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "outFrame"  # Landroid/graphics/Rect;
    .param p2, "outInsets"  # Landroid/graphics/Rect;
    .param p3, "outStableInsets"  # Landroid/graphics/Rect;
    .param p4, "outSurfaceInsets"  # Landroid/graphics/Rect;

    .line 3155
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 3156
    .local v0, "windowState":Lcom/android/server/wm/WindowState;
    if-eqz v0, :cond_a

    .line 3157
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/WindowState;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    goto :goto_d

    .line 3159
    :cond_a
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/wm/TaskFragment;->getAnimationFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 3161
    :goto_d
    return-void
.end method

.method getBaseIntent()Landroid/content/Intent;
    .registers 3

    .line 1456
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_5

    return-object v0

    .line 1457
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_a

    return-object v0

    .line 1459
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1460
    .local v0, "topTask":Lcom/android/server/wm/Task;
    if-eq v0, p0, :cond_17

    if-eqz v0, :cond_17

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return-object v1
.end method

.method public getBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"  # Landroid/graphics/Rect;

    .line 6637
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 6638
    return-void
.end method

.method getCreatedByOrganizerTask()Lcom/android/server/wm/Task;
    .registers 4

    .line 2728
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_5

    .line 2729
    return-object p0

    .line 2731
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 2732
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 2733
    return-object v1

    .line 2735
    :cond_d
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 2736
    .local v2, "parentTask":Lcom/android/server/wm/Task;
    if-nez v2, :cond_14

    goto :goto_18

    :cond_14
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getCreatedByOrganizerTask()Lcom/android/server/wm/Task;

    move-result-object v1

    :goto_18
    return-object v1
.end method

.method getDescendantTaskCount()I
    .registers 5

    .line 2764
    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    aput v1, v0, v1

    .line 2765
    .local v0, "currentCount":[I
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda0;-><init>()V

    const-class v3, Lcom/android/server/wm/Task;

    .line 2766
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 2765
    invoke-static {v2, v3, v0}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v2

    .line 2767
    .local v2, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v2, v1}, Lcom/android/server/wm/Task;->forAllLeafTasks(Ljava/util/function/Consumer;Z)V

    .line 2768
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 2769
    aget v1, v0, v1

    return v1
.end method

.method getDimBounds(Landroid/graphics/Rect;)V
    .registers 9
    .param p1, "out"  # Landroid/graphics/Rect;

    .line 3199
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 3200
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 3201
    return-void

    .line 3204
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3205
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 3208
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_20

    iget-object v4, v1, Lcom/android/server/wm/DisplayContent;->mDividerControllerLocked:Lcom/android/server/wm/DockedTaskDividerController;

    .line 3209
    invoke-virtual {v4}, Lcom/android/server/wm/DockedTaskDividerController;->isResizing()Z

    move-result v4

    if-eqz v4, :cond_20

    move v4, v2

    goto :goto_21

    :cond_20
    move v4, v3

    .line 3210
    .local v4, "dockedResizing":Z
    :goto_21
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v5

    if-eqz v5, :cond_45

    .line 3211
    new-array v2, v2, [Z

    aput-boolean v3, v2, v3

    .line 3212
    .local v2, "foundTop":[Z
    new-instance v5, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;

    invoke-direct {v5}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda10;-><init>()V

    const-class v6, Lcom/android/server/wm/ActivityRecord;

    .line 3213
    invoke-static {v6}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v6

    .line 3212
    invoke-static {v5, v6, p1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v5

    .line 3214
    .local v5, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v5}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 3215
    invoke-interface {v5}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 3216
    aget-boolean v3, v2, v3

    if-eqz v3, :cond_45

    .line 3217
    return-void

    .line 3221
    .end local v2  # "foundTop":[Z
    .end local v5  # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_45
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->matchParentBounds()Z

    move-result v2

    if-nez v2, :cond_65

    .line 3228
    if-eqz v4, :cond_51

    .line 3229
    invoke-virtual {v0, p1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    goto :goto_6c

    .line 3231
    :cond_51
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 3232
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 3233
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_6c

    .line 3236
    :cond_65
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 3238
    :goto_6c
    return-void
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .registers 2

    .line 3696
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3697
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0

    .line 3705
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_1a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_17

    goto :goto_1a

    .line 3709
    :cond_17
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0

    .line 3706
    :cond_1a
    :goto_1a
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v0

    return-object v0
.end method

.method getDisplayCutoutInsets()Landroid/graphics/Rect;
    .registers 5

    .line 4038
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_37

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    if-nez v0, :cond_e

    goto :goto_37

    .line 4039
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    .line 4040
    .local v0, "w":Lcom/android/server/wm/WindowState;
    if-nez v0, :cond_16

    .line 4041
    const/4 v2, 0x0

    goto :goto_22

    .line 4044
    :cond_16
    invoke-static {}, Lcom/android/server/wm/TaskStub;->get()Lcom/android/server/wm/TaskStub;

    move-result-object v2

    invoke-virtual {v0}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/server/wm/TaskStub;->getLayoutInDisplayCutoutMode(Landroid/view/WindowManager$LayoutParams;)I

    move-result v2

    :goto_22
    nop

    .line 4046
    .local v2, "displayCutoutMode":I
    const/4 v3, 0x3

    if-eq v2, v3, :cond_35

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2a

    goto :goto_35

    .line 4048
    :cond_2a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    invoke-virtual {v1}, Landroid/view/DisplayCutout;->getSafeInsets()Landroid/graphics/Rect;

    move-result-object v1

    goto :goto_36

    :cond_35
    :goto_35
    nop

    .line 4046
    :goto_36
    return-object v1

    .line 4038
    .end local v0  # "w":Lcom/android/server/wm/WindowState;
    .end local v2  # "displayCutoutMode":I
    :cond_37
    :goto_37
    return-object v1
.end method

.method public getDisplayInfo()Landroid/view/DisplayInfo;
    .registers 2

    .line 6797
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v0

    return-object v0
.end method

.method getDragResizeMode()I
    .registers 2

    .line 3284
    iget v0, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    return v0
.end method

.method getDumpActivitiesLocked(Ljava/lang/String;I)Ljava/util/ArrayList;
    .registers 6
    .param p1, "name"  # Ljava/lang/String;
    .param p2, "userId"  # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "I)",
            "Ljava/util/ArrayList<",
            "Lcom/android/server/wm/ActivityRecord;",
            ">;"
        }
    .end annotation

    .line 6449
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 6451
    .local v0, "activities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    const-string v1, "all"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 6452
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda45;

    invoke-direct {v1, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda45;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_3c

    .line 6453
    :cond_19
    const-string/jumbo v1, "top"

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2c

    .line 6454
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 6455
    .local v1, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_2b

    .line 6456
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6458
    .end local v1  # "topActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_2b
    goto :goto_3c

    .line 6459
    :cond_2c
    new-instance v1, Lcom/android/server/am/ActivityManagerService$ItemMatcher;

    invoke-direct {v1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;-><init>()V

    .line 6460
    .local v1, "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    invoke-virtual {v1, p1}, Lcom/android/server/am/ActivityManagerService$ItemMatcher;->build(Ljava/lang/String;)V

    .line 6462
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda46;

    invoke-direct {v2, v1, v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda46;-><init>(Lcom/android/server/am/ActivityManagerService$ItemMatcher;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 6468
    .end local v1  # "matcher":Lcom/android/server/am/ActivityManagerService$ItemMatcher;
    :goto_3c
    const/4 v1, -0x1

    if-eq p2, v1, :cond_57

    .line 6469
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_45
    if-ltz v1, :cond_57

    .line 6470
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    iget v2, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    if-eq v2, p2, :cond_54

    .line 6471
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 6469
    :cond_54
    add-int/lit8 v1, v1, -0x1

    goto :goto_45

    .line 6475
    .end local v1  # "i":I
    :cond_57
    return-object v0
.end method

.method public getFreezeSnapshotTarget()Landroid/view/SurfaceControl;
    .registers 5

    .line 2598
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v1, 0x6

    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_d

    .line 2599
    return-object v1

    .line 2603
    :cond_d
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    .line 2604
    .local v0, "activityTypes":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Ljava/lang/Integer;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 2605
    iget-object v2, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v2, v2, Lcom/android/server/wm/DisplayContent;->mAppTransitionController:Lcom/android/server/wm/AppTransitionController;

    const/16 v3, 0x1b

    .line 2606
    invoke-virtual {v2, p0, v3, v0}, Lcom/android/server/wm/AppTransitionController;->getRemoteAnimationOverride(Lcom/android/server/wm/WindowContainer;ILandroid/util/ArraySet;)Landroid/view/RemoteAnimationAdapter;

    move-result-object v2

    .line 2608
    .local v2, "adapter":Landroid/view/RemoteAnimationAdapter;
    if-eqz v2, :cond_30

    invoke-virtual {v2}, Landroid/view/RemoteAnimationAdapter;->getChangeNeedsSnapshot()Z

    move-result v3

    if-nez v3, :cond_30

    .line 2609
    return-object v1

    .line 2611
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    return-object v1
.end method

.method getHandler()Landroid/os/Handler;
    .registers 2

    .line 6926
    iget-object v0, p0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method getHasBeenVisible()Z
    .registers 2

    .line 4750
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    return v0
.end method

.method getInactiveDuration()J
    .registers 5

    .line 1064
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method getLastSurfaceSize()Landroid/graphics/Point;
    .registers 2

    .line 2588
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    return-object v0
.end method

.method getLaunchBounds()Landroid/graphics/Rect;
    .registers 5

    .line 2675
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2676
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2677
    return-object v1

    .line 2680
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    .line 2681
    .local v2, "windowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeStandardOrUndefined()Z

    move-result v3

    if-eqz v3, :cond_28

    const/4 v3, 0x1

    if-ne v2, v3, :cond_16

    goto :goto_28

    .line 2684
    :cond_16
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->persistTaskBounds()Z

    move-result v1

    if-nez v1, :cond_25

    .line 2685
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    return-object v1

    .line 2687
    :cond_25
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    return-object v1

    .line 2683
    :cond_28
    :goto_28
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v3

    if-eqz v3, :cond_32

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v1

    :cond_32
    return-object v1
.end method

.method getName()Ljava/lang/String;
    .registers 3

    .line 3689
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getOccludingActivityAbove(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .param p1, "activity"  # Lcom/android/server/wm/ActivityRecord;

    .line 3361
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda49;

    invoke-direct {v0, p0, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda49;-><init>(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3399
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    if-eq v0, p1, :cond_d

    move-object v1, v0

    goto :goto_e

    :cond_d
    const/4 v1, 0x0

    :goto_e
    return-object v1
.end method

.method getOrganizedTask()Lcom/android/server/wm/Task;
    .registers 4

    .line 2714
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 2715
    return-object p0

    .line 2717
    :cond_7
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 2718
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    const/4 v1, 0x0

    if-nez v0, :cond_f

    .line 2719
    return-object v1

    .line 2721
    :cond_f
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 2722
    .local v2, "parentTask":Lcom/android/server/wm/Task;
    if-nez v2, :cond_16

    goto :goto_1a

    :cond_16
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getOrganizedTask()Lcom/android/server/wm/Task;

    move-result-object v1

    :goto_1a
    return-object v1
.end method

.method getOrientation(I)I
    .registers 3
    .param p1, "candidate"  # I

    .line 3543
    invoke-direct {p0}, Lcom/android/server/wm/Task;->canSpecifyOrientation()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->getOrientation(I)I

    move-result v0

    goto :goto_c

    :cond_b
    const/4 v0, -0x2

    :goto_c
    return v0
.end method

.method getPackageName()Ljava/lang/String;
    .registers 4

    .line 6915
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_19

    .line 6916
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Task;->getTopActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6917
    .local v0, "activityRecord":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_19

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v1, :cond_19

    .line 6918
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    return-object v1

    .line 6921
    .end local v0  # "activityRecord":Lcom/android/server/wm/ActivityRecord;
    :cond_19
    const/4 v0, 0x0

    return-object v0
.end method

.method getPictureInPictureParams()Landroid/app/PictureInPictureParams;
    .registers 2

    .line 4022
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->getPictureInPictureParams(Lcom/android/server/wm/Task;)Landroid/app/PictureInPictureParams;

    move-result-object v0

    return-object v0
.end method

.method getProtoFieldId()J
    .registers 3

    .line 5068
    const-wide v0, 0x10b00000005L

    return-wide v0
.end method

.method getRootActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 3

    .line 1466
    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 3
    .param p1, "setToBottomIfNone"  # Z

    .line 1470
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lcom/android/server/wm/Task;->getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getRootActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .param p1, "ignoreRelinquishIdentity"  # Z
    .param p2, "setToBottomIfNone"  # Z

    .line 1474
    iget-object v0, p0, Lcom/android/server/wm/Task;->mFindRootHelper:Lcom/android/server/wm/Task$FindRootHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/Task$FindRootHelper;->findRoot(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getRootTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .registers 4
    .param p2, "traverseTopToBottom"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;Z)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 3666
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_e

    move-object v0, p0

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return-object v0
.end method

.method getRootTaskId()I
    .registers 2

    .line 2708
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    return v0
.end method

.method getStartingWindowInfo(Lcom/android/server/wm/ActivityRecord;)Landroid/window/StartingWindowInfo;
    .registers 6
    .param p1, "activity"  # Lcom/android/server/wm/ActivityRecord;

    .line 4065
    new-instance v0, Landroid/window/StartingWindowInfo;

    invoke-direct {v0}, Landroid/window/StartingWindowInfo;-><init>()V

    .line 4066
    .local v0, "info":Landroid/window/StartingWindowInfo;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v1

    iput-object v1, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    .line 4067
    nop

    .line 4068
    iget-object v1, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eqz v1, :cond_1d

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v2, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v2, v2, Landroid/app/ActivityManager$RunningTaskInfo;->topActivityInfo:Landroid/content/pm/ActivityInfo;

    if-eq v1, v2, :cond_1d

    .line 4069
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    :goto_1e
    iput-object v1, v0, Landroid/window/StartingWindowInfo;->targetActivityInfo:Landroid/content/pm/ActivityInfo;

    .line 4070
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mKeyguardController:Lcom/android/server/wm/KeyguardController;

    const/4 v2, 0x0

    .line 4071
    invoke-virtual {v1, v2}, Lcom/android/server/wm/KeyguardController;->isDisplayOccluded(I)Z

    move-result v1

    iput-boolean v1, v0, Landroid/window/StartingWindowInfo;->isKeyguardOccluded:Z

    .line 4073
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mStartingData:Lcom/android/server/wm/StartingData;

    iget v1, v1, Lcom/android/server/wm/StartingData;->mTypeParams:I

    iput v1, v0, Landroid/window/StartingWindowInfo;->startingWindowTypeParameter:I

    .line 4074
    iget v1, v0, Landroid/window/StartingWindowInfo;->startingWindowTypeParameter:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_51

    .line 4076
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getWindow(Ljava/util/function/Predicate;)Lcom/android/server/wm/WindowState;

    move-result-object v1

    .line 4077
    .local v1, "topMainWin":Lcom/android/server/wm/WindowState;
    if-eqz v1, :cond_51

    .line 4078
    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    iput-object v2, v0, Landroid/window/StartingWindowInfo;->mainWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 4079
    iget-object v2, v0, Landroid/window/StartingWindowInfo;->requestedVisibilities:Landroid/view/InsetsVisibilities;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowState;->getRequestedVisibilities()Landroid/view/InsetsVisibilities;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/InsetsVisibilities;->set(Landroid/view/InsetsVisibilities;)V

    .line 4084
    .end local v1  # "topMainWin":Lcom/android/server/wm/WindowState;
    :cond_51
    iget-object v1, v0, Landroid/window/StartingWindowInfo;->taskInfo:Landroid/app/ActivityManager$RunningTaskInfo;

    iget-object v1, v1, Landroid/app/ActivityManager$RunningTaskInfo;->configuration:Landroid/content/res/Configuration;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 4085
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 4086
    .local v1, "topFullscreenActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_76

    .line 4087
    nop

    .line 4088
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getTopFullscreenOpaqueWindow()Lcom/android/server/wm/WindowState;

    move-result-object v2

    .line 4089
    .local v2, "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    if-eqz v2, :cond_76

    .line 4090
    nop

    .line 4091
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getInsetsStateWithVisibilityOverride()Landroid/view/InsetsState;

    move-result-object v3

    iput-object v3, v0, Landroid/window/StartingWindowInfo;->topOpaqueWindowInsetsState:Landroid/view/InsetsState;

    .line 4092
    invoke-virtual {v2}, Lcom/android/server/wm/WindowState;->getAttrs()Landroid/view/WindowManager$LayoutParams;

    move-result-object v3

    iput-object v3, v0, Landroid/window/StartingWindowInfo;->topOpaqueWindowLayoutParams:Landroid/view/WindowManager$LayoutParams;

    .line 4095
    .end local v2  # "topFullscreenOpaqueWindow":Lcom/android/server/wm/WindowState;
    :cond_76
    return-object v0
.end method

.method getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;
    .registers 5
    .param p2, "traverseTopToBottom"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/Task;",
            ">;Z)",
            "Lcom/android/server/wm/Task;"
        }
    .end annotation

    .line 3658
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/Task;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->getTask(Ljava/util/function/Predicate;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 3659
    .local v0, "t":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_7

    return-object v0

    .line 3660
    :cond_7
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_f

    move-object v1, p0

    goto :goto_10

    :cond_f
    const/4 v1, 0x0

    :goto_10
    return-object v1
.end method

.method getTaskDescription()Landroid/app/ActivityManager$TaskDescription;
    .registers 2

    .line 3538
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    return-object v0
.end method

.method getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;
    .registers 2

    .line 4055
    new-instance v0, Landroid/app/ActivityManager$RunningTaskInfo;

    invoke-direct {v0}, Landroid/app/ActivityManager$RunningTaskInfo;-><init>()V

    .line 4056
    .local v0, "info":Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->fillTaskInfo(Landroid/app/TaskInfo;)V

    .line 4057
    return-object v0
.end method

.method getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 3482
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda47;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda47;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method public getTopLeafTask()Lcom/android/server/wm/Task;
    .registers 4

    .line 2755
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_20

    .line 2756
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2757
    .local v1, "child":Lcom/android/server/wm/Task;
    if-nez v1, :cond_1b

    .line 2755
    .end local v1  # "child":Lcom/android/server/wm/Task;
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2758
    .restart local v1  # "child":Lcom/android/server/wm/Task;
    :cond_1b
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopLeafTask()Lcom/android/server/wm/Task;

    move-result-object v2

    return-object v2

    .line 2760
    .end local v0  # "i":I
    .end local v1  # "child":Lcom/android/server/wm/Task;
    :cond_20
    return-object p0
.end method

.method getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 6

    .line 1370
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1371
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_e
    if-ltz v0, :cond_26

    .line 1372
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1373
    .local v1, "pausingActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_23

    .line 1374
    return-object v1

    .line 1371
    .end local v1  # "pausingActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 1379
    .end local v0  # "i":I
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1380
    .local v0, "taskPausingActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    .line 1381
    .local v1, "topPausingActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_33
    if-ltz v2, :cond_5b

    .line 1382
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 1383
    .local v3, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_4c

    .line 1384
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_55

    .line 1385
    :cond_4c
    if-eqz v0, :cond_55

    .line 1386
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-ne v4, v0, :cond_55

    .line 1387
    move-object v1, v0

    .line 1389
    :cond_55
    :goto_55
    if-eqz v1, :cond_58

    .line 1390
    return-object v1

    .line 1381
    .end local v3  # "child":Lcom/android/server/wm/WindowContainer;
    :cond_58
    add-int/lit8 v2, v2, -0x1

    goto :goto_33

    .line 1393
    .end local v2  # "i":I
    :cond_5b
    const/4 v2, 0x0

    return-object v2
.end method

.method getTopRealVisibleActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 3503
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 6

    .line 1341
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_26

    .line 1342
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_e
    if-ltz v0, :cond_26

    .line 1343
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 1344
    .local v1, "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_23

    .line 1345
    return-object v1

    .line 1342
    .end local v1  # "resumedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_23
    add-int/lit8 v0, v0, -0x1

    goto :goto_e

    .line 1350
    .end local v0  # "i":I
    :cond_26
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1351
    .local v0, "taskResumedActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    .line 1352
    .local v1, "topResumedActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowList;->size()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .local v2, "i":I
    :goto_33
    if-ltz v2, :cond_5b

    .line 1353
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    .line 1354
    .local v3, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_4c

    .line 1355
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto :goto_55

    .line 1356
    :cond_4c
    if-eqz v0, :cond_55

    .line 1357
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-ne v4, v0, :cond_55

    .line 1358
    move-object v1, v0

    .line 1360
    :cond_55
    :goto_55
    if-eqz v1, :cond_58

    .line 1361
    return-object v1

    .line 1352
    .end local v3  # "child":Lcom/android/server/wm/WindowContainer;
    :cond_58
    add-int/lit8 v2, v2, -0x1

    goto :goto_33

    .line 1364
    .end local v2  # "i":I
    :cond_5b
    const/4 v2, 0x0

    return-object v2
.end method

.method getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 3494
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda48;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda48;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;
    .registers 3

    .line 3444
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3445
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->findMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v1

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    return-object v1
.end method

.method getTopWaitSplashScreenActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 3507
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda27;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method goToSleepIfPossible(Z)Z
    .registers 6
    .param p1, "shuttingDown"  # Z

    .line 5390
    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 5391
    .local v1, "sleepInProgress":[I
    new-instance v3, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;

    invoke-direct {v3, p1, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda9;-><init>(Z[I)V

    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/Task;->forAllLeafTasksAndLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 5396
    aget v3, v1, v2

    if-nez v3, :cond_13

    goto :goto_14

    :cond_13
    move v0, v2

    :goto_14
    return v0
.end method

.method handlesOrientationChangeFromDescendant()Z
    .registers 4

    .line 3062
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->handlesOrientationChangeFromDescendant()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 3063
    return v1

    .line 3070
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_10

    .line 3071
    return v2

    .line 3077
    :cond_10
    invoke-direct {p0}, Lcom/android/server/wm/Task;->canSpecifyOrientation()Z

    move-result v0

    if-eqz v0, :cond_21

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->canSpecifyOrientation()Z

    move-result v0

    if-eqz v0, :cond_21

    move v1, v2

    :cond_21
    return v1
.end method

.method public inSplitScreenWindowingMode()Z
    .registers 6

    .line 1932
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    const/4 v1, 0x6

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v0, :cond_37

    .line 1933
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    if-ne v0, v3, :cond_35

    .line 1934
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_35

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_35

    .line 1935
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v0

    if-ne v0, v1, :cond_35

    move v2, v3

    goto :goto_36

    :cond_35
    nop

    .line 1933
    :goto_36
    return v2

    .line 1937
    :cond_37
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1938
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_69

    iget-boolean v4, v0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v4, :cond_69

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v4

    if-eqz v4, :cond_69

    .line 1939
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v4

    if-ne v4, v3, :cond_69

    .line 1940
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    if-eqz v4, :cond_69

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_69

    .line 1941
    invoke-virtual {v0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v4

    if-ne v4, v1, :cond_69

    move v2, v3

    goto :goto_6a

    :cond_69
    nop

    .line 1938
    :goto_6a
    return v2
.end method

.method public isAlwaysOnTop()Z
    .registers 2

    .line 5051
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v0

    if-nez v0, :cond_e

    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->isAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method public isAlwaysOnTopWhenVisible()Z
    .registers 2

    .line 5058
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->isAlwaysOnTop()Z

    move-result v0

    return v0
.end method

.method isAnimatingByRecents()Z
    .registers 3

    .line 3440
    const/4 v0, 0x4

    const/16 v1, 0x8

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->isAnimating(II)Z

    move-result v0

    return v0
.end method

.method isClearingToReuseTask()Z
    .registers 2

    .line 1985
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    return v0
.end method

.method public isCompatible(II)Z
    .registers 4
    .param p1, "windowingMode"  # I
    .param p2, "activityType"  # I

    .line 3037
    if-nez p2, :cond_3

    .line 3040
    const/4 p2, 0x1

    .line 3042
    :cond_3
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->isCompatible(II)Z

    move-result v0

    return v0
.end method

.method isDragResizing()Z
    .registers 2

    .line 3280
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    return v0
.end method

.method isFocused()Z
    .registers 3

    .line 4880
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v1, 0x0

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_c

    goto :goto_18

    .line 4883
    :cond_c
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p0, :cond_17

    const/4 v1, 0x1

    :cond_17
    return v1

    .line 4881
    :cond_18
    :goto_18
    return v1
.end method

.method isFocusedRootTaskOnDisplay()Z
    .registers 2

    .line 5409
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne p0, v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method protected isForceHidden()Z
    .registers 2

    .line 5063
    iget v0, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isInChangeTransition()Z
    .registers 2

    .line 2593
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_13

    iget v0, p0, Lcom/android/server/wm/Task;->mTransit:I

    invoke-static {v0}, Lcom/android/server/wm/AppTransition;->isChangeTransitOld(I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_13

    :cond_11
    const/4 v0, 0x0

    goto :goto_14

    :cond_13
    :goto_13
    const/4 v0, 0x1

    :goto_14
    return v0
.end method

.method isInTask(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 4109
    const/4 v0, 0x0

    if-nez p1, :cond_4

    .line 4110
    return-object v0

    .line 4112
    :cond_4
    invoke-virtual {p1, p0}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 4113
    return-object p1

    .line 4115
    :cond_b
    return-object v0
.end method

.method isLeafTask()Z
    .registers 4

    .line 2745
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1d

    .line 2746
    iget-object v2, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 2747
    const/4 v1, 0x0

    return v1

    .line 2745
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 2750
    .end local v0  # "i":I
    :cond_1d
    return v1
.end method

.method final isOnHomeDisplay()Z
    .registers 2

    .line 5252
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isOrganized()Z
    .registers 2

    .line 4691
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isResizeable()Z
    .registers 2

    .line 3104
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->isResizeable(Z)Z

    move-result v0

    return v0
.end method

.method isResizeable(Z)Z
    .registers 7
    .param p1, "checkPictureInPictureSupport"  # Z

    .line 3108
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mForceResizableActivities:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_10

    .line 3109
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v0

    if-ne v0, v2, :cond_10

    move v0, v2

    goto :goto_11

    :cond_10
    move v0, v1

    .line 3110
    .local v0, "forceResizable":Z
    :goto_11
    if-nez v0, :cond_53

    iget v3, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-static {v3}, Landroid/content/pm/ActivityInfo;->isResizeableMode(I)Z

    move-result v3

    if-nez v3, :cond_53

    iget-boolean v3, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    if-eqz v3, :cond_21

    if-nez p1, :cond_53

    .line 3113
    :cond_21
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->supportsFreeform()Z

    move-result v3

    if-nez v3, :cond_53

    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    if-eqz v3, :cond_4d

    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 3115
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getGlobalConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget v3, v3, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v4, v4, Lcom/android/server/wm/ActivityTaskManagerService;->mLargeScreenSmallestScreenWidthDp:I

    if-lt v3, v4, :cond_4d

    iget-object v3, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v3, :cond_4d

    .line 3117
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 3118
    invoke-virtual {v4}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->inResizeWhiteList(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_53

    .line 3120
    :cond_4d
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v3

    if-eqz v3, :cond_54

    :cond_53
    move v1, v2

    .line 3110
    :cond_54
    return v1
.end method

.method isRootTask()Z
    .registers 2

    .line 2741
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v0, p0, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method

.method isSameIntentFilter(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 1204
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1207
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-static {v1, v2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1c

    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_1c

    .line 1208
    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1210
    :cond_1c
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->filterEquals(Landroid/content/Intent;)Z

    move-result v1

    return v1
.end method

.method public isSplitScreenRootTask()Z
    .registers 4

    .line 7361
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2d

    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_2d

    .line 7363
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-eqz v0, :cond_2d

    .line 7364
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 7365
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_2d

    .line 7366
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v0

    const/4 v2, 0x6

    if-ne v0, v2, :cond_2d

    goto :goto_2e

    :cond_2d
    const/4 v1, 0x0

    .line 7361
    :goto_2e
    return v1
.end method

.method isTaskId(I)Z
    .registers 3
    .param p1, "taskId"  # I

    .line 4099
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    if-ne v0, p1, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isTopRootTaskInDisplayArea()Z
    .registers 3

    .line 5400
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 5401
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v0, :cond_e

    invoke-virtual {v0, p0}, Lcom/android/server/wm/TaskDisplayArea;->isTopRootTask(Lcom/android/server/wm/Task;)Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method isUidPresent(I)Z
    .registers 5
    .param p1, "uid"  # I

    .line 1488
    new-instance v0, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/wm/DisplayContent$$ExternalSyntheticLambda9;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 1489
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 1488
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 1490
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    if-eqz v1, :cond_1b

    const/4 v1, 0x1

    goto :goto_1c

    :cond_1b
    const/4 v1, 0x0

    .line 1491
    .local v1, "isUidPresent":Z
    :goto_1c
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 1492
    return v1
.end method

.method synthetic lambda$dismissPip$30$com-android-server-wm-Task()V
    .registers 5

    .line 6611
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 6612
    .local v0, "task":Lcom/android/server/wm/Task;
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setWindowingMode(I)V

    .line 6616
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v2

    if-eqz v2, :cond_18

    .line 6617
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    const v3, 0x7fffffff

    invoke-virtual {v2, v3, p0, v1}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 6620
    :cond_18
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    .line 6621
    return-void
.end method

.method synthetic lambda$getNextFocusableTask$7$com-android-server-wm-Task(ZLjava/lang/Object;)Z
    .registers 5
    .param p1, "allowFocusSelf"  # Z
    .param p2, "task"  # Ljava/lang/Object;

    .line 2792
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    move-object v1, p2

    check-cast v1, Lcom/android/server/wm/Task;

    .line 2793
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v0

    .line 2794
    .local v0, "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-nez p1, :cond_15

    if-eq p2, p0, :cond_28

    :cond_15
    move-object v1, p2

    check-cast v1, Lcom/android/server/wm/Task;

    .line 2795
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isFocusableAndVisible()Z

    move-result v1

    if-eqz v1, :cond_28

    if-eqz v0, :cond_26

    .line 2796
    invoke-virtual {v0}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->isInMiniFreeFormMode()Z

    move-result v1

    if-nez v1, :cond_28

    :cond_26
    const/4 v1, 0x1

    goto :goto_29

    :cond_28
    const/4 v1, 0x0

    .line 2794
    :goto_29
    return v1
.end method

.method synthetic lambda$getOccludingActivityAbove$8$com-android-server-wm-Task(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 9
    .param p1, "activity"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 3362
    const/4 v0, 0x1

    if-ne p2, p1, :cond_4

    .line 3364
    return v0

    .line 3367
    :cond_4
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_c

    .line 3368
    return v2

    .line 3371
    :cond_c
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    .line 3372
    .local v1, "parent":Lcom/android/server/wm/TaskFragment;
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-ne v1, v3, :cond_17

    .line 3374
    return v0

    .line 3376
    :cond_17
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/android/server/wm/Task;->isSelfOrNonEmbeddedTask(Lcom/android/server/wm/Task;)Z

    move-result v3

    if-eqz v3, :cond_22

    .line 3379
    return v0

    .line 3383
    :cond_22
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    .line 3384
    .local v3, "grandParent":Lcom/android/server/wm/TaskFragment;
    :goto_2a
    if-eqz v3, :cond_50

    .line 3385
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3b

    .line 3387
    goto :goto_50

    .line 3389
    :cond_3b
    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/android/server/wm/Task;->isSelfOrNonEmbeddedTask(Lcom/android/server/wm/Task;)Z

    move-result v4

    if-eqz v4, :cond_46

    .line 3392
    return v0

    .line 3394
    :cond_46
    move-object v1, v3

    .line 3395
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    goto :goto_2a

    .line 3397
    :cond_50
    :goto_50
    return v2
.end method

.method synthetic lambda$inFrontOfStandardRootTask$26$com-android-server-wm-Task([ZLcom/android/server/wm/Task;)Z
    .registers 6
    .param p1, "hasFound"  # [Z
    .param p2, "task"  # Lcom/android/server/wm/Task;

    .line 5989
    const/4 v0, 0x0

    aget-boolean v1, p1, v0

    const/4 v2, 0x1

    if-eqz v1, :cond_7

    .line 5990
    return v2

    .line 5992
    :cond_7
    if-ne p2, p0, :cond_b

    .line 5994
    aput-boolean v2, p1, v0

    .line 5996
    :cond_b
    return v0
.end method

.method synthetic lambda$removeActivities$2$com-android-server-wm-Task(ZLjava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p1, "excludingTaskOverlay"  # Z
    .param p2, "reason"  # Ljava/lang/String;
    .param p3, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 1698
    iget-boolean v0, p3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_14

    if-eqz p1, :cond_d

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_14

    .line 1702
    :cond_d
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->takeFromHistory()V

    .line 1703
    invoke-virtual {p0, p3, p2}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    .line 1704
    return-void

    .line 1699
    :cond_14
    :goto_14
    return-void
.end method

.method synthetic lambda$removeActivities$3$com-android-server-wm-Task(ZLjava/lang/String;Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "excludingTaskOverlay"  # Z
    .param p2, "reason"  # Ljava/lang/String;
    .param p3, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 1707
    iget-boolean v0, p3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_30

    if-eqz p1, :cond_d

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-eqz v0, :cond_d

    goto :goto_30

    .line 1713
    :cond_d
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {p3, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-nez v0, :cond_2b

    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mAppTransition:Lcom/android/server/wm/AppTransition;

    const/4 v1, 0x2

    .line 1714
    invoke-virtual {v0, v1}, Lcom/android/server/wm/AppTransition;->containsTransitRequest(I)Z

    move-result v0

    if-nez v0, :cond_27

    goto :goto_2b

    .line 1717
    :cond_27
    invoke-virtual {p3, p2}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    goto :goto_2f

    .line 1715
    :cond_2b
    :goto_2b
    const/4 v0, 0x0

    invoke-virtual {p3, p2, v0}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 1719
    :goto_2f
    return-void

    .line 1708
    :cond_30
    :goto_30
    return-void
.end method

.method synthetic lambda$setWindowingMode$19$com-android-server-wm-Task(IZ)V
    .registers 3
    .param p1, "preferredWindowingMode"  # I
    .param p2, "creating"  # Z

    .line 5092
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->setWindowingModeInSurfaceTransaction(IZ)V

    return-void
.end method

.method lockTaskAuthToString()Ljava/lang/String;
    .registers 3

    .line 1803
    iget v0, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    packed-switch v0, :pswitch_data_2c

    .line 1809
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unknown="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mLockTaskAuth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1808
    :pswitch_1c  #0x4
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE_PRIV"

    return-object v0

    .line 1807
    :pswitch_1f  #0x3
    const-string v0, "LOCK_TASK_AUTH_ALLOWLISTED"

    return-object v0

    .line 1806
    :pswitch_22  #0x2
    const-string v0, "LOCK_TASK_AUTH_LAUNCHABLE"

    return-object v0

    .line 1805
    :pswitch_25  #0x1
    const-string v0, "LOCK_TASK_AUTH_PINNABLE"

    return-object v0

    .line 1804
    :pswitch_28  #0x0
    const-string v0, "LOCK_TASK_AUTH_DONT_LOCK"

    return-object v0

    nop

    :pswitch_data_2c
    .packed-switch 0x0
        :pswitch_28  #00000000
        :pswitch_25  #00000001
        :pswitch_22  #00000002
        :pswitch_1f  #00000003
        :pswitch_1c  #00000004
    .end packed-switch
.end method

.method public makeAnimationLeash()Landroid/view/SurfaceControl$Builder;
    .registers 4

    .line 3411
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->makeAnimationLeash()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    return-object v0
.end method

.method maybeApplyLastRecentsAnimationTransaction()V
    .registers 4

    .line 6751
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    if-eqz v0, :cond_22

    .line 6752
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getPendingTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 6753
    .local v0, "tx":Landroid/view/SurfaceControl$Transaction;
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    if-eqz v1, :cond_11

    .line 6754
    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, v2}, Landroid/view/SurfaceControl$Transaction;->reparent(Landroid/view/SurfaceControl;Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 6756
    :cond_11
    iget-object v1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-static {v1, v2, v0}, Landroid/window/PictureInPictureSurfaceTransaction;->apply(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;Landroid/view/SurfaceControl$Transaction;)V

    .line 6760
    iget-object v1, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 6761
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 6762
    iput-object v1, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    .line 6764
    .end local v0  # "tx":Landroid/view/SurfaceControl$Transaction;
    :cond_22
    return-void
.end method

.method migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 2493
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 2494
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, v1}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    .line 2496
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->migrateToNewSurfaceControl(Landroid/view/SurfaceControl$Transaction;)V

    .line 2498
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiCvwGestureController:Lcom/android/server/wm/MiuiCvwGestureControllerStub;

    if-eqz v0, :cond_1c

    .line 2499
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiCvwGestureController:Lcom/android/server/wm/MiuiCvwGestureControllerStub;

    invoke-interface {v0, p0, p1}, Lcom/android/server/wm/MiuiCvwGestureControllerStub;->migrateToNewSurfaceControl(Lcom/android/server/wm/Task;Landroid/view/SurfaceControl$Transaction;)V

    .line 2502
    :cond_1c
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    const/4 v1, 0x0

    iput v1, v0, Landroid/graphics/Point;->x:I

    .line 2503
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    iput v1, v0, Landroid/graphics/Point;->y:I

    .line 2504
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V

    .line 2505
    return-void
.end method

.method minimalResumeActivityLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 10
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 5363
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_23

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    const/4 v1, 0x5

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam1":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x456f6dcc  # -0.00110299f

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v1, v5, v7

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5365
    .end local v0  # "protoLogParam0":Ljava/lang/String;
    .end local v1  # "protoLogParam1":Ljava/lang/String;
    :cond_23
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    const-string/jumbo v1, "minimalResumeActivityLocked"

    invoke-virtual {p1, v0, v1}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 5366
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    .line 5368
    invoke-static {}, Lcom/android/server/wm/MiuiMiPerfStub;->getInstance()Lcom/android/server/wm/MiuiMiPerfStub;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/android/server/wm/MiuiMiPerfStub;->onAfterActivityResumed(Lcom/android/server/wm/ActivityRecord;)V

    .line 5370
    return-void
.end method

.method final moveActivityToFrontLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 10
    .param p1, "newTop"  # Lcom/android/server/wm/ActivityRecord;

    .line 1516
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v0, :cond_23

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    const/4 v1, 0x4

    invoke-static {v1}, Landroid/os/Debug;->getCallers(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam1":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x1b9e2278

    const/4 v4, 0x0

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v0, v5, v6

    const/4 v7, 0x1

    aput-object v1, v5, v7

    invoke-static {v2, v3, v6, v4, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1519
    .end local v0  # "protoLogParam0":Ljava/lang/String;
    .end local v1  # "protoLogParam1":Ljava/lang/String;
    :cond_23
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/ActivityRecord;)V

    .line 1520
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    .line 1521
    return-void
.end method

.method moveTaskToBack(Lcom/android/server/wm/Task;)Z
    .registers 9
    .param p1, "tr"  # Lcom/android/server/wm/Task;

    .line 6300
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "moveTaskToBack: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6304
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/LockTaskController;->canMoveTaskToBack(Lcom/android/server/wm/Task;)Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_27

    .line 6305
    return v2

    .line 6311
    :cond_27
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_67

    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    if-eqz v0, :cond_67

    .line 6312
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {p0, v3, v0}, Lcom/android/server/wm/Task;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6313
    .local v0, "next":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_41

    .line 6314
    const/4 v4, -0x1

    invoke-virtual {p0, v3, v4}, Lcom/android/server/wm/Task;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6316
    :cond_41
    if-eqz v0, :cond_67

    .line 6318
    const/4 v4, 0x1

    .line 6320
    .local v4, "moveOK":Z
    :try_start_44
    iget-object v5, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    iget-object v6, v0, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v5, v6}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v5
    :try_end_4e
    .catch Landroid/os/RemoteException; {:try_start_44 .. :try_end_4e} :catch_57
    .catch Ljava/lang/NullPointerException; {:try_start_44 .. :try_end_4e} :catch_50

    move v4, v5

    .line 6326
    :goto_4f
    goto :goto_64

    .line 6324
    :catch_50
    move-exception v5

    .line 6325
    .local v5, "e":Ljava/lang/NullPointerException;
    const-string v6, "IActivityController activityResuming catch NullPointerException"

    invoke-static {v1, v6, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_64

    .line 6321
    .end local v5  # "e":Ljava/lang/NullPointerException;
    :catch_57
    move-exception v5

    .line 6322
    .local v5, "e":Landroid/os/RemoteException;
    iget-object v6, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iput-object v3, v6, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 6323
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v6

    invoke-virtual {v6, v3}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .end local v5  # "e":Landroid/os/RemoteException;
    goto :goto_4f

    .line 6327
    :goto_64
    if-nez v4, :cond_67

    .line 6328
    return v2

    .line 6333
    .end local v0  # "next":Lcom/android/server/wm/ActivityRecord;
    .end local v4  # "moveOK":Z
    :cond_67
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v0, :cond_83

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Prepare to back transition: task="

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, p1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6340
    :cond_83
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v0

    .line 6341
    .local v0, "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_ac

    iget-object v1, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_ac

    if-eqz v0, :cond_a1

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->inPinMode()Z

    move-result v1

    if-nez v1, :cond_ac

    .line 6343
    :cond_a1
    iget-object v1, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    const/4 v4, 0x4

    invoke-virtual {v1, v4}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 6344
    iget-object v1, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1, v4, p1}, Lcom/android/server/wm/DisplayContent;->requestTransitionAndLegacyPrepare(ILcom/android/server/wm/WindowContainer;)V

    .line 6346
    :cond_ac
    const-string/jumbo v1, "moveTaskToBackLocked"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 6348
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v1

    const/4 v4, 0x1

    if-eqz v1, :cond_bf

    .line 6349
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, p0}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeRootTask(Lcom/android/server/wm/Task;)V

    .line 6350
    return v4

    .line 6353
    :cond_bf
    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iget-object v5, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget v5, v5, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    invoke-virtual {v1, v3, v5, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    .line 6357
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 6358
    .local v1, "topActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 6359
    .local v2, "topRootTask":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_e6

    if-eq v2, p0, :cond_e6

    sget-object v3, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v3

    if-eqz v3, :cond_e6

    .line 6362
    iget-object v3, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    goto :goto_eb

    .line 6364
    :cond_e6
    iget-object v3, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 6366
    :goto_eb
    return v4
.end method

.method final moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;Ljava/lang/String;)V
    .registers 13
    .param p1, "tr"  # Lcom/android/server/wm/Task;
    .param p2, "noAnimation"  # Z
    .param p3, "options"  # Landroid/app/ActivityOptions;
    .param p4, "timeTracker"  # Lcom/android/server/am/AppTimeTracker;
    .param p5, "reason"  # Ljava/lang/String;

    .line 6182
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v6, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/wm/Task;->moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V

    .line 6183
    return-void
.end method

.method final moveTaskToFront(Lcom/android/server/wm/Task;ZLandroid/app/ActivityOptions;Lcom/android/server/am/AppTimeTracker;ZLjava/lang/String;)V
    .registers 15
    .param p1, "tr"  # Lcom/android/server/wm/Task;
    .param p2, "noAnimation"  # Z
    .param p3, "options"  # Landroid/app/ActivityOptions;
    .param p4, "timeTracker"  # Lcom/android/server/am/AppTimeTracker;
    .param p5, "deferResume"  # Z
    .param p6, "reason"  # Ljava/lang/String;

    .line 6187
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    const-string v1, "ActivityTaskManager"

    if-eqz v0, :cond_1d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "moveTaskToFront: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6188
    :cond_1d
    nop

    .line 6189
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 6188
    invoke-static {v0}, Lcom/android/server/wm/Task;->findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6191
    .local v0, "pipCandidate":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_7c

    .line 6192
    if-eqz p3, :cond_6f

    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    if-eqz v2, :cond_6f

    .line 6193
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_6f

    .line 6194
    invoke-virtual {p3}, Landroid/app/ActivityOptions;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 6195
    .local v2, "targetRect":Landroid/graphics/Rect;
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v4

    if-eqz v4, :cond_6b

    .line 6196
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6b

    .line 6197
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_6b

    .line 6198
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v4

    if-nez v4, :cond_6b

    .line 6199
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 6201
    :cond_6b
    const/4 v4, 0x2

    invoke-virtual {p1, v2, v4, v3}, Lcom/android/server/wm/Task;->resize(Landroid/graphics/Rect;IZ)Z

    .line 6204
    .end local v2  # "targetRect":Landroid/graphics/Rect;
    :cond_6f
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    .line 6205
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToFront(Landroid/app/TaskInfo;)V

    .line 6208
    :cond_7c
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v2

    if-eqz v2, :cond_89

    .line 6209
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v2, p0}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->moveTaskToFront(Lcom/android/server/wm/Task;)V

    .line 6213
    :cond_89
    const/4 v2, 0x3

    if-eq p1, p0, :cond_9c

    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-nez v4, :cond_9c

    .line 6215
    if-eqz p2, :cond_98

    .line 6216
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_9b

    .line 6218
    :cond_98
    invoke-direct {p0, v2, p3}, Lcom/android/server/wm/Task;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    .line 6220
    :goto_9b
    return-void

    .line 6223
    :cond_9c
    if-eqz p4, :cond_b3

    .line 6225
    new-instance v4, Lcom/android/server/wm/Task$$ExternalSyntheticLambda40;

    invoke-direct {v4}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda40;-><init>()V

    const-class v5, Lcom/android/server/wm/ActivityRecord;

    .line 6226
    invoke-static {v5}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v5

    .line 6225
    invoke-static {v4, v5, p4}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v4

    .line 6227
    .local v4, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p1, v4}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 6228
    invoke-interface {v4}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 6235
    .end local v4  # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_b3
    :try_start_b3
    iget-object v4, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->deferUpdateImeTarget()V

    .line 6238
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 6239
    .local v4, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_12b

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->showToCurrentUser()Z

    move-result v5

    if-nez v5, :cond_c5

    goto :goto_12b

    .line 6249
    :cond_c5
    invoke-virtual {v4, p6}, Lcom/android/server/wm/ActivityRecord;->moveFocusableActivityToTop(Ljava/lang/String;)Z

    .line 6251
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v5, :cond_e2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Prepare to front transition: task="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 6252
    :cond_e2
    const/4 v1, 0x0

    if-eqz p2, :cond_f5

    .line 6253
    iget-object v2, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2, v3}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 6254
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 6255
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_11a

    .line 6260
    :cond_f5
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/TaskDisplayArea;->getTopRootTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 6261
    .local v5, "topRootTask":Lcom/android/server/wm/Task;
    if-eqz v5, :cond_104

    .line 6262
    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    goto :goto_105

    :cond_104
    move-object v6, v1

    .line 6263
    .local v6, "topActivity":Lcom/android/server/wm/ActivityRecord;
    :goto_105
    if-ne v4, v6, :cond_108

    const/4 v3, 0x1

    .line 6264
    .local v3, "isTopAlready":Z
    :cond_108
    if-eqz v3, :cond_117

    if-eqz p1, :cond_117

    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v7

    if-nez v7, :cond_113

    goto :goto_117

    .line 6267
    :cond_113
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    goto :goto_11a

    .line 6265
    :cond_117
    :goto_117
    invoke-direct {p0, v2, p3}, Lcom/android/server/wm/Task;->updateTransitLocked(ILandroid/app/ActivityOptions;)V

    .line 6278
    .end local v3  # "isTopAlready":Z
    .end local v5  # "topRootTask":Lcom/android/server/wm/Task;
    .end local v6  # "topActivity":Lcom/android/server/wm/ActivityRecord;
    :goto_11a
    invoke-static {v0, p1, v1, p3}, Lcom/android/server/wm/Task;->enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 6280
    if-nez p5, :cond_124

    .line 6281
    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z
    :try_end_124
    .catchall {:try_start_b3 .. :try_end_124} :catchall_144

    .line 6284
    .end local v4  # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_124
    iget-object v1, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    .line 6285
    nop

    .line 6286
    return-void

    .line 6240
    .restart local v4  # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_12b
    :goto_12b
    :try_start_12b
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/Task;)V

    .line 6241
    if-eqz v4, :cond_13b

    .line 6242
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 6244
    :cond_13b
    invoke-static {p3}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V
    :try_end_13e
    .catchall {:try_start_12b .. :try_end_13e} :catchall_144

    .line 6284
    iget-object v1, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    .line 6245
    return-void

    .line 6284
    .end local v4  # "top":Lcom/android/server/wm/ActivityRecord;
    :catchall_144
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v2}, Lcom/android/server/wm/DisplayContent;->continueUpdateImeTarget()V

    .line 6285
    throw v1
.end method

.method moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .registers 9
    .param p1, "reason"  # Ljava/lang/String;
    .param p2, "task"  # Lcom/android/server/wm/Task;

    .line 5311
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5312
    return-void

    .line 5315
    :cond_7
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsBack:Z

    .line 5316
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 5317
    .local v0, "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v1, :cond_53

    .line 5320
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    .line 5321
    .local v1, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v1, :cond_1d

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    goto :goto_1e

    :cond_1d
    const/4 v2, 0x0

    .line 5322
    .local v2, "parentTask":Lcom/android/server/wm/Task;
    :goto_1e
    if-eqz v2, :cond_24

    .line 5323
    invoke-virtual {v2, p1, p0}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    goto :goto_3e

    .line 5325
    :cond_24
    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 5326
    .local v3, "lastFocusedTask":Lcom/android/server/wm/Task;
    const/high16 v4, -0x80000000

    const/4 v5, 0x0

    invoke-virtual {v0, v4, p0, v5}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 5327
    invoke-virtual {v0, v3, p1}, Lcom/android/server/wm/TaskDisplayArea;->updateLastFocusedRootTask(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 5328
    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v4

    .line 5329
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v5

    .line 5328
    invoke-virtual {v4, v5}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToBack(Landroid/app/TaskInfo;)V

    .line 5331
    .end local v3  # "lastFocusedTask":Lcom/android/server/wm/Task;
    :goto_3e
    if-eqz p2, :cond_52

    if-eq p2, p0, :cond_52

    .line 5332
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->positionChildAtBottom(Lcom/android/server/wm/Task;)V

    .line 5333
    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v3

    .line 5334
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    .line 5333
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskMovedToBack(Landroid/app/TaskInfo;)V

    .line 5336
    :cond_52
    return-void

    .line 5338
    .end local v1  # "parent":Lcom/android/server/wm/WindowContainer;
    .end local v2  # "parentTask":Lcom/android/server/wm/Task;
    :cond_53
    if-eqz p2, :cond_5c

    if-ne p2, p0, :cond_58

    goto :goto_5c

    .line 5345
    :cond_58
    invoke-virtual {v0, p2}, Lcom/android/server/wm/TaskDisplayArea;->positionTaskBehindHome(Lcom/android/server/wm/Task;)V

    .line 5346
    return-void

    .line 5339
    :cond_5c
    :goto_5c
    return-void
.end method

.method moveToFront(Ljava/lang/String;)V
    .registers 3
    .param p1, "reason"  # Ljava/lang/String;

    .line 5256
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 5257
    return-void
.end method

.method moveToFront(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .registers 6
    .param p1, "reason"  # Ljava/lang/String;
    .param p2, "task"  # Lcom/android/server/wm/Task;

    .line 5260
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mMoveAdjacentTogether:Z

    if-eqz v0, :cond_2b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_2b

    .line 5261
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 5262
    .local v0, "adjacentTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_2b

    .line 5263
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " adjacentTaskToTop"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/Task;->moveToFrontInner(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 5266
    .end local v0  # "adjacentTask":Lcom/android/server/wm/Task;
    :cond_2b
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->moveToFrontInner(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    .line 5267
    return-void
.end method

.method moveToFrontInner(Ljava/lang/String;Lcom/android/server/wm/Task;)V
    .registers 8
    .param p1, "reason"  # Ljava/lang/String;
    .param p2, "task"  # Lcom/android/server/wm/Task;

    .line 5275
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v0

    if-nez v0, :cond_7

    .line 5276
    return-void

    .line 5279
    :cond_7
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mIsBack:Z

    .line 5281
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 5283
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isActivityTypeHome()Z

    move-result v1

    if-nez v1, :cond_30

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->returnsToHomeRootTask()Z

    move-result v1

    if-eqz v1, :cond_30

    .line 5286
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " returnToHome"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->moveHomeRootTaskToFront(Ljava/lang/String;)V

    .line 5289
    :cond_30
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_3b

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_3c

    :cond_3b
    const/4 v1, 0x0

    .line 5290
    .local v1, "lastFocusedTask":Lcom/android/server/wm/Task;
    :goto_3c
    if-nez p2, :cond_3f

    .line 5291
    move-object p2, p0

    .line 5293
    :cond_3f
    invoke-virtual {p2}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    const v3, 0x7fffffff

    const/4 v4, 0x1

    invoke-virtual {v2, v3, p2, v4}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 5294
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskDisplayArea;->updateLastFocusedRootTask(Lcom/android/server/wm/Task;Ljava/lang/String;)V

    .line 5296
    invoke-static {}, Lcom/android/server/wm/TaskStub;->get()Lcom/android/server/wm/TaskStub;

    move-result-object v2

    iget v3, p2, Lcom/android/server/wm/Task;->effectiveUid:I

    invoke-interface {v2, v3}, Lcom/android/server/wm/TaskStub;->notifyMovetoFront(I)V

    .line 5297
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v2

    if-eqz v2, :cond_63

    .line 5298
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v2, p0}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->moveToFront(Lcom/android/server/wm/Task;)V

    .line 5301
    :cond_63
    return-void
.end method

.method navigateUpTo(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;)Z
    .registers 45
    .param p1, "srec"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "destIntent"  # Landroid/content/Intent;
    .param p3, "destGrants"  # Lcom/android/server/uri/NeededUriGrants;
    .param p4, "resultCode"  # I
    .param p5, "resultData"  # Landroid/content/Intent;
    .param p6, "resultGrants"  # Lcom/android/server/uri/NeededUriGrants;

    .line 6039
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v15, p2

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    const/4 v14, 0x0

    if-nez v0, :cond_e

    .line 6042
    return v14

    .line 6044
    :cond_e
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v13

    .line 6045
    .local v13, "task":Lcom/android/server/wm/Task;
    invoke-virtual {v2, v1}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    if-nez v0, :cond_19

    .line 6046
    return v14

    .line 6049
    :cond_19
    invoke-virtual {v13, v2}, Lcom/android/server/wm/Task;->getActivityBelow(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6050
    .local v0, "parent":Lcom/android/server/wm/ActivityRecord;
    const/4 v3, 0x0

    .line 6051
    .local v3, "foundParentInTask":Z
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v12

    .line 6052
    .local v12, "dest":Landroid/content/ComponentName;
    invoke-virtual {v13}, Lcom/android/server/wm/Task;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    const/4 v11, 0x1

    if-eq v4, v2, :cond_3b

    if-eqz v12, :cond_3b

    .line 6053
    new-instance v4, Lcom/android/server/wm/Task$$ExternalSyntheticLambda19;

    invoke-direct {v4, v12}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda19;-><init>(Landroid/content/ComponentName;)V

    invoke-virtual {v13, v4, v2, v14, v11}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 6057
    .local v4, "candidate":Lcom/android/server/wm/ActivityRecord;
    if-eqz v4, :cond_3b

    .line 6058
    move-object v0, v4

    .line 6059
    const/4 v3, 0x1

    move/from16 v17, v3

    goto :goto_3e

    .line 6065
    .end local v4  # "candidate":Lcom/android/server/wm/ActivityRecord;
    :cond_3b
    move-object v4, v0

    move/from16 v17, v3

    .end local v0  # "parent":Lcom/android/server/wm/ActivityRecord;
    .end local v3  # "foundParentInTask":Z
    .local v4, "parent":Lcom/android/server/wm/ActivityRecord;
    .local v17, "foundParentInTask":Z
    :goto_3e
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 6066
    .local v3, "controller":Landroid/app/IActivityController;
    const/4 v5, -0x1

    if-eqz v3, :cond_70

    .line 6067
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v1, v0, v5}, Lcom/android/server/wm/Task;->topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 6068
    .local v6, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v6, :cond_70

    .line 6070
    const/4 v7, 0x1

    .line 6072
    .local v7, "resumeOK":Z
    :try_start_4e
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v3, v0}, Landroid/app/IActivityController;->activityResuming(Ljava/lang/String;)Z

    move-result v0
    :try_end_54
    .catch Landroid/os/RemoteException; {:try_start_4e .. :try_end_54} :catch_5f
    .catch Ljava/lang/NullPointerException; {:try_start_4e .. :try_end_54} :catch_56

    move v7, v0

    .line 6078
    :goto_55
    goto :goto_6d

    .line 6076
    :catch_56
    move-exception v0

    .line 6077
    .local v0, "e":Ljava/lang/NullPointerException;
    const-string v8, "ActivityTaskManager"

    const-string v9, "IActivityController activityResuming catch NullPointerException"

    invoke-static {v8, v9, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6d

    .line 6073
    .end local v0  # "e":Ljava/lang/NullPointerException;
    :catch_5f
    move-exception v0

    .line 6074
    .local v0, "e":Landroid/os/RemoteException;
    iget-object v8, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v9, 0x0

    iput-object v9, v8, Lcom/android/server/wm/ActivityTaskManagerService;->mController:Landroid/app/IActivityController;

    .line 6075
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v8

    invoke-virtual {v8, v9}, Lcom/android/server/Watchdog;->setActivityController(Landroid/app/IActivityController;)V

    .end local v0  # "e":Landroid/os/RemoteException;
    goto :goto_55

    .line 6080
    :goto_6d
    if-nez v7, :cond_70

    .line 6081
    return v14

    .line 6085
    .end local v6  # "next":Lcom/android/server/wm/ActivityRecord;
    .end local v7  # "resumeOK":Z
    :cond_70
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v18

    .line 6087
    .local v18, "origId":J
    new-array v10, v11, [I

    .line 6088
    .local v10, "resultCodeHolder":[I
    aput p4, v10, v14

    .line 6089
    new-array v9, v11, [Landroid/content/Intent;

    .line 6090
    .local v9, "resultDataHolder":[Landroid/content/Intent;
    aput-object p5, v9, v14

    .line 6091
    new-array v8, v11, [Lcom/android/server/uri/NeededUriGrants;

    .line 6092
    .local v8, "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    aput-object p6, v8, v14

    .line 6093
    move-object v7, v4

    .line 6094
    .local v7, "finalParent":Lcom/android/server/wm/ActivityRecord;
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda20;

    invoke-direct {v0, v7, v10, v9, v8}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda20;-><init>(Lcom/android/server/wm/ActivityRecord;[I[Landroid/content/Intent;[Lcom/android/server/uri/NeededUriGrants;)V

    invoke-virtual {v13, v0, v2, v11, v11}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Predicate;Lcom/android/server/wm/WindowContainer;ZZ)Z

    .line 6104
    aget v20, v10, v14

    .line 6105
    .end local p4  # "resultCode":I
    .local v20, "resultCode":I
    aget-object v21, v9, v14

    .line 6107
    .end local p5  # "resultData":Landroid/content/Intent;
    .local v21, "resultData":Landroid/content/Intent;
    if-eqz v4, :cond_1e6

    if-eqz v17, :cond_1e6

    .line 6108
    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v6, v0, Landroid/content/pm/ApplicationInfo;->uid:I

    .line 6109
    .local v6, "callingUid":I
    iget-object v0, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    move-object/from16 v16, v13

    .end local v13  # "task":Lcom/android/server/wm/Task;
    .local v16, "task":Lcom/android/server/wm/Task;
    iget v13, v0, Landroid/content/pm/ActivityInfo;->launchMode:I

    .line 6110
    .local v13, "parentLaunchMode":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getFlags()I

    move-result v22

    .line 6111
    .local v22, "destIntentFlags":I
    move-object/from16 v23, v12

    .end local v12  # "dest":Landroid/content/ComponentName;
    .local v23, "dest":Landroid/content/ComponentName;
    const/4 v12, 0x2

    move-object/from16 v24, v7

    .end local v7  # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .local v24, "finalParent":Lcom/android/server/wm/ActivityRecord;
    const/4 v7, 0x3

    if-eq v13, v7, :cond_140

    if-eq v13, v12, :cond_140

    if-eq v13, v11, :cond_140

    const/high16 v0, 0x4000000

    and-int v0, v22, v0

    if-eqz v0, :cond_bc

    move v14, v6

    move-object/from16 v25, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    goto/16 :goto_147

    .line 6134
    :cond_bc
    :try_start_bc
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    .line 6135
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v7

    const-wide/16 v11, 0x400

    iget v14, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    .line 6134
    invoke-interface {v0, v7, v11, v12, v14}, Landroid/content/pm/IPackageManager;->getActivityInfo(Landroid/content/ComponentName;JI)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 6138
    .local v0, "aInfo":Landroid/content/pm/ActivityInfo;
    iget-object v7, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v7}, Lcom/android/server/wm/ActivityTaskManagerService;->getActivityStartController()Lcom/android/server/wm/ActivityStartController;

    move-result-object v7

    const-string/jumbo v11, "navigateUpTo"

    .line 6139
    invoke-virtual {v7, v15, v11}, Lcom/android/server/wm/ActivityStartController;->obtainStarter(Landroid/content/Intent;Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v7

    iget-object v11, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 6140
    invoke-virtual {v11}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v11

    invoke-virtual {v7, v11}, Lcom/android/server/wm/ActivityStarter;->setCaller(Landroid/app/IApplicationThread;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v7

    .line 6141
    invoke-virtual {v7, v0}, Lcom/android/server/wm/ActivityStarter;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v7

    iget-object v11, v4, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    .line 6142
    invoke-virtual {v7, v11}, Lcom/android/server/wm/ActivityStarter;->setResultTo(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v7

    .line 6143
    invoke-virtual {v7, v5}, Lcom/android/server/wm/ActivityStarter;->setCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v7

    .line 6144
    invoke-virtual {v7, v6}, Lcom/android/server/wm/ActivityStarter;->setCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v7

    iget-object v11, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 6145
    invoke-virtual {v7, v11}, Lcom/android/server/wm/ActivityStarter;->setCallingPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v7

    iget-object v11, v4, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    .line 6146
    invoke-virtual {v7, v11}, Lcom/android/server/wm/ActivityStarter;->setCallingFeatureId(Ljava/lang/String;)Lcom/android/server/wm/ActivityStarter;

    move-result-object v7

    .line 6147
    invoke-virtual {v7, v5}, Lcom/android/server/wm/ActivityStarter;->setRealCallingPid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 6148
    invoke-virtual {v5, v6}, Lcom/android/server/wm/ActivityStarter;->setRealCallingUid(I)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 6149
    const/4 v11, 0x1

    invoke-virtual {v5, v11}, Lcom/android/server/wm/ActivityStarter;->setComponentSpecified(Z)Lcom/android/server/wm/ActivityStarter;

    move-result-object v5

    .line 6150
    invoke-virtual {v5}, Lcom/android/server/wm/ActivityStarter;->execute()I

    move-result v5
    :try_end_112
    .catch Landroid/os/RemoteException; {:try_start_bc .. :try_end_112} :catch_11b

    .line 6151
    .local v5, "res":I
    if-nez v5, :cond_116

    move v14, v11

    goto :goto_117

    :cond_116
    const/4 v14, 0x0

    :goto_117
    move v0, v14

    .line 6154
    .end local v5  # "res":I
    .end local v17  # "foundParentInTask":Z
    .local v0, "foundParentInTask":Z
    move/from16 v17, v0

    goto :goto_11f

    .line 6152
    .end local v0  # "foundParentInTask":Z
    .restart local v17  # "foundParentInTask":Z
    :catch_11b
    move-exception v0

    .line 6153
    .local v0, "e":Landroid/os/RemoteException;
    const/4 v5, 0x0

    move/from16 v17, v5

    .line 6155
    .end local v0  # "e":Landroid/os/RemoteException;
    :goto_11f
    const/4 v0, 0x1

    const-string/jumbo v11, "navigate-top"

    move-object v5, v4

    move v14, v6

    .end local v6  # "callingUid":I
    .local v14, "callingUid":I
    move/from16 v6, v20

    move-object/from16 v7, v21

    move-object/from16 v25, v8

    .end local v8  # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .local v25, "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    move-object/from16 v8, p6

    move-object/from16 v27, v9

    .end local v9  # "resultDataHolder":[Landroid/content/Intent;
    .local v27, "resultDataHolder":[Landroid/content/Intent;
    move-object v9, v11

    move-object/from16 v28, v10

    .end local v10  # "resultCodeHolder":[I
    .local v28, "resultCodeHolder":[I
    move v10, v0

    invoke-virtual/range {v5 .. v10}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;Z)I

    move-object/from16 v5, p3

    move-object/from16 v34, v3

    move-object v7, v4

    move-object v4, v15

    move-object/from16 v30, v16

    goto/16 :goto_1f8

    .line 6111
    .end local v14  # "callingUid":I
    .end local v25  # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .end local v27  # "resultDataHolder":[Landroid/content/Intent;
    .end local v28  # "resultCodeHolder":[I
    .restart local v6  # "callingUid":I
    .restart local v8  # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .restart local v9  # "resultDataHolder":[Landroid/content/Intent;
    .restart local v10  # "resultCodeHolder":[I
    :cond_140
    move v14, v6

    move-object/from16 v25, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    .line 6117
    .end local v6  # "callingUid":I
    .end local v8  # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .end local v9  # "resultDataHolder":[Landroid/content/Intent;
    .end local v10  # "resultCodeHolder":[I
    .restart local v14  # "callingUid":I
    .restart local v25  # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .restart local v27  # "resultDataHolder":[Landroid/content/Intent;
    .restart local v28  # "resultCodeHolder":[I
    :goto_147
    :try_start_147
    iget-object v0, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v5, v4, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    const/4 v6, 0x0

    const/4 v8, -0x1

    .line 6118
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getPid()I

    move-result v9

    iget-object v10, v2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;
    :try_end_155
    .catch Ljava/lang/SecurityException; {:try_start_147 .. :try_end_155} :catch_1a0

    const/16 v29, 0x0

    const/16 v30, 0x0

    const/16 v31, 0x0

    move/from16 p4, v13

    .end local v13  # "parentLaunchMode":I
    .local p4, "parentLaunchMode":I
    :try_start_15d
    iget-object v13, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;
    :try_end_15f
    .catch Ljava/lang/SecurityException; {:try_start_15d .. :try_end_15f} :catch_18e

    const/16 v32, 0x0

    const/16 v33, 0x0

    .line 6117
    move-object/from16 v34, v3

    .end local v3  # "controller":Landroid/app/IActivityController;
    .local v34, "controller":Landroid/app/IActivityController;
    move-object v3, v0

    move-object/from16 v35, v4

    .end local v4  # "parent":Lcom/android/server/wm/ActivityRecord;
    .local v35, "parent":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v4, p2

    move v7, v8

    move v8, v9

    move v9, v14

    move/from16 v36, v11

    move-object/from16 v11, v29

    move/from16 v29, v12

    move/from16 v12, v30

    move/from16 v37, p4

    move-object v0, v13

    move-object/from16 v30, v16

    .end local v16  # "task":Lcom/android/server/wm/Task;
    .end local p4  # "parentLaunchMode":I
    .local v30, "task":Lcom/android/server/wm/Task;
    .local v37, "parentLaunchMode":I
    move/from16 v13, v31

    move/from16 p4, v14

    const/16 v26, 0x0

    .end local v14  # "callingUid":I
    .local p4, "callingUid":I
    move-object v14, v0

    move-object/from16 v15, v32

    move-object/from16 v16, v33

    :try_start_185
    invoke-virtual/range {v3 .. v16}, Lcom/android/server/wm/ActivityTaskSupervisor;->checkStartAnyActivityPermission(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Ljava/lang/String;IIILjava/lang/String;Ljava/lang/String;ZZLcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;)Z

    move-result v0
    :try_end_189
    .catch Ljava/lang/SecurityException; {:try_start_185 .. :try_end_189} :catch_18c

    xor-int/lit8 v0, v0, 0x1

    .line 6124
    .local v0, "abort":Z
    goto :goto_1b3

    .line 6122
    .end local v0  # "abort":Z
    :catch_18c
    move-exception v0

    goto :goto_1b1

    .end local v30  # "task":Lcom/android/server/wm/Task;
    .end local v34  # "controller":Landroid/app/IActivityController;
    .end local v35  # "parent":Lcom/android/server/wm/ActivityRecord;
    .end local v37  # "parentLaunchMode":I
    .restart local v3  # "controller":Landroid/app/IActivityController;
    .restart local v4  # "parent":Lcom/android/server/wm/ActivityRecord;
    .restart local v14  # "callingUid":I
    .restart local v16  # "task":Lcom/android/server/wm/Task;
    .local p4, "parentLaunchMode":I
    :catch_18e
    move-exception v0

    move/from16 v37, p4

    move-object/from16 v34, v3

    move-object/from16 v35, v4

    move/from16 v36, v11

    move/from16 v29, v12

    move/from16 p4, v14

    move-object/from16 v30, v16

    const/16 v26, 0x0

    .end local v3  # "controller":Landroid/app/IActivityController;
    .end local v4  # "parent":Lcom/android/server/wm/ActivityRecord;
    .end local v14  # "callingUid":I
    .end local v16  # "task":Lcom/android/server/wm/Task;
    .restart local v30  # "task":Lcom/android/server/wm/Task;
    .restart local v34  # "controller":Landroid/app/IActivityController;
    .restart local v35  # "parent":Lcom/android/server/wm/ActivityRecord;
    .restart local v37  # "parentLaunchMode":I
    .local p4, "callingUid":I
    goto :goto_1b1

    .end local v30  # "task":Lcom/android/server/wm/Task;
    .end local v34  # "controller":Landroid/app/IActivityController;
    .end local v35  # "parent":Lcom/android/server/wm/ActivityRecord;
    .end local v37  # "parentLaunchMode":I
    .end local p4  # "callingUid":I
    .restart local v3  # "controller":Landroid/app/IActivityController;
    .restart local v4  # "parent":Lcom/android/server/wm/ActivityRecord;
    .restart local v13  # "parentLaunchMode":I
    .restart local v14  # "callingUid":I
    .restart local v16  # "task":Lcom/android/server/wm/Task;
    :catch_1a0
    move-exception v0

    move-object/from16 v34, v3

    move-object/from16 v35, v4

    move/from16 v36, v11

    move/from16 v29, v12

    move/from16 v37, v13

    move/from16 p4, v14

    move-object/from16 v30, v16

    const/16 v26, 0x0

    .line 6123
    .end local v3  # "controller":Landroid/app/IActivityController;
    .end local v4  # "parent":Lcom/android/server/wm/ActivityRecord;
    .end local v13  # "parentLaunchMode":I
    .end local v14  # "callingUid":I
    .end local v16  # "task":Lcom/android/server/wm/Task;
    .local v0, "e":Ljava/lang/SecurityException;
    .restart local v30  # "task":Lcom/android/server/wm/Task;
    .restart local v34  # "controller":Landroid/app/IActivityController;
    .restart local v35  # "parent":Lcom/android/server/wm/ActivityRecord;
    .restart local v37  # "parentLaunchMode":I
    .restart local p4  # "callingUid":I
    :goto_1b1
    const/4 v3, 0x1

    move v0, v3

    .line 6125
    .local v0, "abort":Z
    :goto_1b3
    if-eqz v0, :cond_1d8

    .line 6126
    const v3, 0x534e4554

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    const-string v5, "238605611"

    aput-object v5, v4, v26

    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v36

    const-string v5, ""

    aput-object v5, v4, v29

    invoke-static {v3, v4}, Landroid/util/EventLog;->writeEvent(I[Ljava/lang/Object;)I

    .line 6127
    const/4 v3, 0x0

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move/from16 v17, v3

    move-object/from16 v7, v35

    .end local v17  # "foundParentInTask":Z
    .local v3, "foundParentInTask":Z
    goto :goto_1e5

    .line 6129
    .end local v3  # "foundParentInTask":Z
    .restart local v17  # "foundParentInTask":Z
    :cond_1d8
    iget-object v3, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    move-object/from16 v4, p2

    move-object/from16 v5, p3

    move/from16 v6, p4

    move-object/from16 v7, v35

    .end local v35  # "parent":Lcom/android/server/wm/ActivityRecord;
    .end local p4  # "callingUid":I
    .restart local v6  # "callingUid":I
    .local v7, "parent":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v7, v6, v4, v5, v3}, Lcom/android/server/wm/ActivityRecord;->deliverNewIntentLocked(ILandroid/content/Intent;Lcom/android/server/uri/NeededUriGrants;Ljava/lang/String;)V

    .line 6132
    .end local v0  # "abort":Z
    :goto_1e5
    goto :goto_1f8

    .line 6107
    .end local v6  # "callingUid":I
    .end local v22  # "destIntentFlags":I
    .end local v23  # "dest":Landroid/content/ComponentName;
    .end local v24  # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .end local v25  # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .end local v27  # "resultDataHolder":[Landroid/content/Intent;
    .end local v28  # "resultCodeHolder":[I
    .end local v30  # "task":Lcom/android/server/wm/Task;
    .end local v34  # "controller":Landroid/app/IActivityController;
    .end local v37  # "parentLaunchMode":I
    .local v3, "controller":Landroid/app/IActivityController;
    .restart local v4  # "parent":Lcom/android/server/wm/ActivityRecord;
    .local v7, "finalParent":Lcom/android/server/wm/ActivityRecord;
    .restart local v8  # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .restart local v9  # "resultDataHolder":[Landroid/content/Intent;
    .restart local v10  # "resultCodeHolder":[I
    .restart local v12  # "dest":Landroid/content/ComponentName;
    .local v13, "task":Lcom/android/server/wm/Task;
    :cond_1e6
    move-object/from16 v5, p3

    move-object/from16 v34, v3

    move-object/from16 v24, v7

    move-object/from16 v25, v8

    move-object/from16 v27, v9

    move-object/from16 v28, v10

    move-object/from16 v23, v12

    move-object/from16 v30, v13

    move-object v7, v4

    move-object v4, v15

    .line 6159
    .end local v3  # "controller":Landroid/app/IActivityController;
    .end local v4  # "parent":Lcom/android/server/wm/ActivityRecord;
    .end local v8  # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .end local v9  # "resultDataHolder":[Landroid/content/Intent;
    .end local v10  # "resultCodeHolder":[I
    .end local v12  # "dest":Landroid/content/ComponentName;
    .end local v13  # "task":Lcom/android/server/wm/Task;
    .local v7, "parent":Lcom/android/server/wm/ActivityRecord;
    .restart local v23  # "dest":Landroid/content/ComponentName;
    .restart local v24  # "finalParent":Lcom/android/server/wm/ActivityRecord;
    .restart local v25  # "resultGrantsHolder":[Lcom/android/server/uri/NeededUriGrants;
    .restart local v27  # "resultDataHolder":[Landroid/content/Intent;
    .restart local v28  # "resultCodeHolder":[I
    .restart local v30  # "task":Lcom/android/server/wm/Task;
    .restart local v34  # "controller":Landroid/app/IActivityController;
    :goto_1f8
    invoke-static/range {v18 .. v19}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 6160
    return v17
.end method

.method notifyActivityDrawnLocked(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 5506
    if-eqz p1, :cond_12

    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 5507
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_43

    iget-object v0, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    .line 5508
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_43

    .line 5511
    :cond_12
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 5512
    .local v0, "waitingActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/wm/Task;->mTranslucentActivityWaiting:Lcom/android/server/wm/ActivityRecord;

    .line 5513
    iget-object v1, p0, Lcom/android/server/wm/Task;->mUndrawnActivitiesBelowTopTranslucent:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 5514
    iget-object v1, p0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x65

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 5516
    if-eqz v0, :cond_43

    .line 5517
    iget-object v1, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/WindowManagerService;->setWindowOpaqueLocked(Landroid/os/IBinder;Z)V

    .line 5518
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v1

    if-eqz v1, :cond_43

    .line 5520
    :try_start_33
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v1

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    if-eqz p1, :cond_3e

    const/4 v3, 0x1

    :cond_3e
    invoke-interface {v1, v2, v3}, Landroid/app/IApplicationThread;->scheduleTranslucentConversionComplete(Landroid/os/IBinder;Z)V
    :try_end_41
    .catch Landroid/os/RemoteException; {:try_start_33 .. :try_end_41} :catch_42

    .line 5523
    goto :goto_43

    .line 5522
    :catch_42
    move-exception v1

    .line 5527
    .end local v0  # "waitingActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_43
    :goto_43
    return-void
.end method

.method public onARStopTriggered(Lcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 6805
    sget-object v0, Lcom/android/server/wm/Task;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    if-eqz v0, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    if-eqz v0, :cond_1d

    .line 6806
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v0, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    .line 6807
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v1, v3, :cond_19

    goto :goto_1a

    :cond_19
    move v3, v2

    :goto_1a
    invoke-static {v0, v3, v2}, Lcom/android/server/wm/ActivityPluginDelegate;->activitySuspendNotification(Ljava/lang/String;ZZ)V

    .line 6809
    :cond_1d
    return-void
.end method

.method onAppFocusChanged(Z)V
    .registers 3
    .param p1, "hasFocus"  # Z

    .line 4958
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/Task;->updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V

    .line 4959
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 4960
    return-void
.end method

.method onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .registers 4
    .param p1, "child"  # Lcom/android/server/wm/WindowContainer;

    .line 6696
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 6698
    iget-object v1, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    .line 6699
    return-void

    .line 6701
    :cond_d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_18

    .line 6703
    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->invalidateTaskLayers()V

    .line 6706
    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v1

    if-ne v1, p1, :cond_1f

    const/4 v0, 0x1

    .line 6707
    .local v0, "isTop":Z
    :cond_1f
    if-eqz v0, :cond_28

    .line 6708
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    .line 6709
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 6711
    .end local v1  # "displayContent":Lcom/android/server/wm/DisplayContent;
    :cond_28
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 22
    .param p1, "newParentConfig"  # Landroid/content/res/Configuration;

    .line 2183
    move-object/from16 v6, p0

    iget-object v0, v6, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_11

    iget-object v0, v6, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mPinnedTaskController:Lcom/android/server/wm/PinnedTaskController;

    .line 2184
    invoke-virtual {v0, v6}, Lcom/android/server/wm/PinnedTaskController;->isFreezingTaskConfig(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-eqz v0, :cond_11

    .line 2190
    return-void

    .line 2195
    :cond_11
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_1b

    .line 2196
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/Task;->onConfigurationChangedInner(Landroid/content/res/Configuration;)V

    .line 2197
    return-void

    .line 2201
    :cond_1b
    iget-object v0, v6, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCastRotationChanged()Z

    move-result v0

    if-eqz v0, :cond_30

    iget-object v0, v6, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getCastModeStackId()I

    move-result v0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    if-ne v0, v1, :cond_30

    .line 2202
    return-void

    .line 2204
    :cond_30
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v7

    .line 2205
    .local v7, "prevWindowingMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v8

    .line 2206
    .local v8, "prevIsAlwaysOnTop":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v9

    .line 2207
    .local v9, "prevRotation":I
    iget-object v10, v6, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    .line 2210
    .local v10, "newBounds":Landroid/graphics/Rect;
    invoke-virtual {v6, v10}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 2212
    invoke-direct/range {p0 .. p1}, Lcom/android/server/wm/Task;->onConfigurationChangedInner(Landroid/content/res/Configuration;)V

    .line 2214
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v11

    .line 2215
    .local v11, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-nez v11, :cond_4f

    .line 2216
    return-void

    .line 2219
    :cond_4f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    if-eq v7, v0, :cond_58

    .line 2220
    invoke-virtual {v11, v6}, Lcom/android/server/wm/TaskDisplayArea;->onRootTaskWindowingModeChanged(Lcom/android/server/wm/Task;)V

    .line 2224
    :cond_58
    const/4 v0, 0x5

    const-string v1, "ActivityTaskManager"

    const/4 v12, 0x1

    if-ne v7, v0, :cond_6b

    .line 2225
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    if-ne v2, v12, :cond_6b

    .line 2226
    const-string v2, "FDST freefrom to full..."

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2227
    iput-boolean v12, v6, Lcom/android/server/wm/Task;->mFreeform2Full:Z

    .line 2230
    :cond_6b
    iget-boolean v2, v6, Lcom/android/server/wm/Task;->mFreeform2Full:Z

    const/4 v13, 0x0

    if-eqz v2, :cond_85

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v2

    if-eq v7, v2, :cond_85

    if-ne v7, v0, :cond_7e

    .line 2231
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    if-eq v0, v12, :cond_85

    .line 2232
    :cond_7e
    const-string v0, "FDST clear freefrom to full..."

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2233
    iput-boolean v13, v6, Lcom/android/server/wm/Task;->mFreeform2Full:Z

    .line 2238
    :cond_85
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRequestedOverrideWindowingMode()I

    move-result v14

    .line 2241
    .local v14, "overrideWindowingMode":I
    const/4 v0, 0x0

    .line 2242
    .local v0, "isEnterFreeformMode":Z
    const/4 v2, 0x0

    .line 2244
    .local v2, "isOutFreeformMode":Z
    iget-object v3, v6, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    if-eqz v3, :cond_af

    .line 2245
    iget-object v3, v6, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v3, v3, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    .line 2246
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v4

    .line 2245
    invoke-interface {v3, v6, v7, v4}, Lcom/android/server/wm/MiuiFreeformGestureControllerStub;->stackOnConfigurationChanged(Lcom/android/server/wm/Task;II)[Z

    move-result-object v3

    .line 2247
    .local v3, "isFreeformModeChanged":[Z
    if-eqz v3, :cond_af

    .line 2248
    aget-boolean v0, v3, v13

    .line 2249
    aget-boolean v2, v3, v12

    .line 2250
    if-eqz v2, :cond_af

    .line 2251
    iput-boolean v13, v6, Lcom/android/server/wm/Task;->alreadySetFreeformBounds:Z

    .line 2252
    new-instance v4, Lcom/android/server/wm/Task$$ExternalSyntheticLambda41;

    invoke-direct {v4}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda41;-><init>()V

    invoke-virtual {v6, v4, v12}, Lcom/android/server/wm/Task;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 2262
    .end local v3  # "isFreeformModeChanged":[Z
    :cond_af
    move v15, v0

    move v5, v2

    .end local v0  # "isEnterFreeformMode":Z
    .end local v2  # "isOutFreeformMode":Z
    .local v5, "isOutFreeformMode":Z
    .local v15, "isEnterFreeformMode":Z
    if-eqz v15, :cond_bb

    .line 2263
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda42;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda42;-><init>()V

    invoke-virtual {v6, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2268
    :cond_bb
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onConfigurationChanged overrideWindowingMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " prevWindowingMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isEnterFreeformMode = "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " isOutFreeformMode = + "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "alreadySetFreeformBounds: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v2, v6, Lcom/android/server/wm/Task;->alreadySetFreeformBounds:Z

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 2274
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-nez v0, :cond_110

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_110

    iget-object v0, v6, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v0, :cond_112

    :cond_110
    if-eqz v15, :cond_18a

    .line 2278
    :cond_112
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v4

    .line 2279
    .local v4, "newRotation":I
    if-eq v9, v4, :cond_11e

    move v0, v12

    goto :goto_11f

    :cond_11e
    move v0, v13

    :goto_11f
    move/from16 v16, v0

    .line 2280
    .local v16, "rotationChanged":Z
    if-nez v16, :cond_12a

    if-eqz v15, :cond_126

    goto :goto_12a

    :cond_126
    move/from16 v19, v5

    goto/16 :goto_18c

    .line 2283
    :cond_12a
    :goto_12a
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v0

    if-nez v0, :cond_143

    .line 2284
    if-eqz v16, :cond_139

    .line 2285
    iget-object v0, v6, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v0, v4}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->setCameraOrientation(I)V

    .line 2287
    :cond_139
    iget-object v0, v6, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v9, v4, v10}, Lcom/android/server/wm/DisplayContent;->rotateBounds(IILandroid/graphics/Rect;)V

    move/from16 v18, v4

    move/from16 v19, v5

    goto :goto_186

    .line 2288
    :cond_143
    if-nez v15, :cond_162

    if-eqz v16, :cond_15d

    iget-object v0, v6, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    if-eqz v0, :cond_15d

    iget-object v0, v6, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    .line 2289
    invoke-interface {v0, v6}, Lcom/android/server/wm/MiuiFreeformGestureControllerStub;->isSwitchingApp(Lcom/android/server/wm/Task;)Z

    move-result v0

    if-nez v0, :cond_158

    goto :goto_162

    :cond_158
    move/from16 v18, v4

    move/from16 v19, v5

    goto :goto_186

    .line 2288
    :cond_15d
    move/from16 v18, v4

    move/from16 v19, v5

    goto :goto_186

    .line 2290
    :cond_162
    :goto_162
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getTopFullscreenActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v17

    .line 2291
    .local v17, "topActivity":Lcom/android/server/wm/ActivityRecord;
    iget-object v0, v6, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    if-eqz v0, :cond_182

    iget-object v0, v6, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiFreeFormGestureController:Lcom/android/server/wm/MiuiFreeformGestureControllerStub;

    .line 2292
    move-object/from16 v1, p0

    move v2, v15

    move v3, v9

    move/from16 v18, v4

    .end local v4  # "newRotation":I
    .local v18, "newRotation":I
    move/from16 v19, v5

    .end local v5  # "isOutFreeformMode":Z
    .local v19, "isOutFreeformMode":Z
    move-object v5, v10

    invoke-interface/range {v0 .. v5}, Lcom/android/server/wm/MiuiFreeformGestureControllerStub;->getFreeformStackBounds(Lcom/android/server/wm/Task;ZIILandroid/graphics/Rect;)Z

    move-result v0

    if-eqz v0, :cond_186

    .line 2294
    iput-boolean v12, v6, Lcom/android/server/wm/Task;->alreadySetFreeformBounds:Z

    goto :goto_186

    .line 2291
    .end local v18  # "newRotation":I
    .end local v19  # "isOutFreeformMode":Z
    .restart local v4  # "newRotation":I
    .restart local v5  # "isOutFreeformMode":Z
    :cond_182
    move/from16 v18, v4

    move/from16 v19, v5

    .line 2298
    .end local v4  # "newRotation":I
    .end local v5  # "isOutFreeformMode":Z
    .end local v17  # "topActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v18  # "newRotation":I
    .restart local v19  # "isOutFreeformMode":Z
    :cond_186
    :goto_186
    invoke-virtual {v6, v10}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    goto :goto_18c

    .line 2274
    .end local v16  # "rotationChanged":Z
    .end local v18  # "newRotation":I
    .end local v19  # "isOutFreeformMode":Z
    .restart local v5  # "isOutFreeformMode":Z
    :cond_18a
    move/from16 v19, v5

    .line 2302
    .end local v5  # "isOutFreeformMode":Z
    .restart local v19  # "isOutFreeformMode":Z
    :goto_18c
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v0

    if-eq v8, v0, :cond_198

    .line 2306
    const v0, 0x7fffffff

    invoke-virtual {v11, v0, v6, v13}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2309
    :cond_198
    iget-object v0, v6, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v0, v6, v7, v14}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->onActivityStackConfigurationChanged(Lcom/android/server/wm/Task;II)V

    .line 2310
    return-void
.end method

.method onDescendantActivityAdded(ZILcom/android/server/wm/ActivityRecord;)V
    .registers 6
    .param p1, "hadActivity"  # Z
    .param p2, "activityType"  # I
    .param p3, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 1550
    const-string/jumbo v0, "onDescendantActivityAdded"

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->warnForNonLeafTask(Ljava/lang/String;)V

    .line 1553
    if-nez p1, :cond_3e

    .line 1554
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_12

    .line 1559
    invoke-virtual {p3, v1}, Lcom/android/server/wm/ActivityRecord;->setActivityType(I)V

    .line 1561
    :cond_12
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setActivityType(I)V

    .line 1562
    invoke-virtual {p3}, Lcom/android/server/wm/ActivityRecord;->isPersistable()Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    .line 1563
    iget v0, p3, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 1564
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 1565
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 1567
    iget-object v0, p3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->maxRecents:I

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1568
    invoke-static {}, Landroid/app/ActivityTaskManager;->getMaxAppRecentsLimitStatic()I

    move-result v1

    .line 1567
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Lcom/android/server/wm/Task;->maxRecents:I

    goto :goto_41

    .line 1571
    :cond_3e
    invoke-virtual {p3, p2}, Lcom/android/server/wm/ActivityRecord;->setActivityType(I)V

    .line 1574
    :goto_41
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v0, p3}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->hideCallingTaskIfAddSpecificChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1575
    if-nez p1, :cond_5b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v0

    if-eqz v0, :cond_5b

    .line 1576
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->onActivityStackFirstActivityRecordAdded(I)V

    .line 1579
    :cond_5b
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    .line 1580
    return-void
.end method

.method public onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z
    .registers 4
    .param p1, "requestingContainer"  # Lcom/android/server/wm/WindowContainer;

    .line 3047
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->onDescendantOrientationChanged(Lcom/android/server/wm/WindowContainer;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 3048
    return v1

    .line 3053
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-eqz v0, :cond_1a

    .line 3054
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 3055
    return v1

    .line 3057
    :cond_1a
    const/4 v0, 0x0

    return v0
.end method

.method onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V
    .registers 6
    .param p1, "dc"  # Lcom/android/server/wm/DisplayContent;

    .line 3088
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    .line 3089
    .local v0, "isRootTask":Z
    if-nez v0, :cond_d

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v1, :cond_d

    .line 3090
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 3092
    :cond_d
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->onDisplayChanged(Lcom/android/server/wm/DisplayContent;)V

    .line 3093
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_2b

    .line 3094
    if-eqz p1, :cond_1d

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result v1

    goto :goto_1e

    :cond_1d
    const/4 v1, -0x1

    .line 3095
    .local v1, "displayId":I
    :goto_1e
    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskDisplayChanged(II)V

    .line 3098
    .end local v1  # "displayId":I
    :cond_2b
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_34

    .line 3099
    invoke-direct {p0}, Lcom/android/server/wm/Task;->updateSurfaceBounds()V

    .line 3101
    :cond_34
    return-void
.end method

.method onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V
    .registers 11
    .param p1, "rawNewParent"  # Lcom/android/server/wm/ConfigurationContainer;
    .param p2, "rawOldParent"  # Lcom/android/server/wm/ConfigurationContainer;

    .line 1239
    move-object v0, p1

    check-cast v0, Lcom/android/server/wm/WindowContainer;

    .line 1240
    .local v0, "newParent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    move-object v1, p2

    check-cast v1, Lcom/android/server/wm/WindowContainer;

    .line 1241
    .local v1, "oldParent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v3

    goto :goto_f

    :cond_e
    move-object v3, v2

    .line 1242
    .local v3, "display":Lcom/android/server/wm/DisplayContent;
    :goto_f
    if-eqz v1, :cond_16

    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    goto :goto_17

    :cond_16
    move-object v4, v2

    .line 1244
    .local v4, "oldDisplay":Lcom/android/server/wm/DisplayContent;
    :goto_17
    if-eqz v4, :cond_1c

    iget v5, v4, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    goto :goto_1d

    :cond_1c
    const/4 v5, -0x1

    :goto_1d
    iput v5, p0, Lcom/android/server/wm/Task;->mPrevDisplayId:I

    .line 1246
    if-eqz v1, :cond_26

    if-nez v0, :cond_26

    .line 1247
    invoke-direct {p0, v1}, Lcom/android/server/wm/Task;->cleanUpResourcesForDestroy(Lcom/android/server/wm/WindowContainer;)V

    .line 1250
    :cond_26
    if-eqz v3, :cond_39

    .line 1260
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v5

    iget-object v5, v5, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    .line 1261
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v6

    .line 1260
    invoke-virtual {v5, v6}, Landroid/app/WindowConfiguration;->setRotation(I)V

    .line 1264
    :cond_39
    invoke-static {}, Lcom/android/server/wm/PreloadStateManagerStub;->get()Lcom/android/server/wm/PreloadStateManagerStub;

    move-result-object v5

    iget-boolean v6, p0, Lcom/android/server/wm/Task;->mForceStop:Z

    invoke-interface {v5, v3, v6}, Lcom/android/server/wm/PreloadStateManagerStub;->stackOnParentChanged(Lcom/android/server/wm/DisplayContent;Z)Z

    move-result v5

    iput-boolean v5, p0, Lcom/android/server/wm/Task;->mForceStop:Z

    .line 1265
    invoke-super {p0, v0, v1}, Lcom/android/server/wm/TaskFragment;->onParentChanged(Lcom/android/server/wm/ConfigurationContainer;Lcom/android/server/wm/ConfigurationContainer;)V

    .line 1270
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskOrganizerState()Z

    .line 1278
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v5

    if-nez v5, :cond_5e

    iget-object v5, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v5, :cond_5e

    .line 1279
    iput-object v2, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1280
    iget-object v5, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v5, v5, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowSurfacePlacer;->requestTraversal()V

    .line 1283
    :cond_5e
    if-eqz v1, :cond_8e

    .line 1284
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v5

    .line 1285
    .local v5, "oldParentTask":Lcom/android/server/wm/Task;
    if-eqz v5, :cond_7b

    .line 1286
    new-instance v6, Lcom/android/server/wm/Task$$ExternalSyntheticLambda38;

    invoke-direct {v6}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda38;-><init>()V

    const-class v7, Lcom/android/server/wm/ActivityRecord;

    .line 1288
    invoke-static {v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v7

    .line 1286
    invoke-static {v6, v5, v7}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Ljava/lang/Object;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v6

    .line 1289
    .local v6, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v6}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1290
    invoke-interface {v6}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 1293
    .end local v6  # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_7b
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer;->inPinnedWindowingMode()Z

    move-result v6

    if-eqz v6, :cond_8e

    if-eqz v0, :cond_89

    .line 1294
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->inPinnedWindowingMode()Z

    move-result v6

    if-nez v6, :cond_8e

    .line 1297
    :cond_89
    iget-object v6, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v6, p0, v2}, Lcom/android/server/wm/RootWindowContainer;->notifyActivityPipModeChanged(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;)V

    .line 1301
    .end local v5  # "oldParentTask":Lcom/android/server/wm/Task;
    :cond_8e
    if-eqz v0, :cond_b0

    .line 1304
    iget-boolean v2, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-nez v2, :cond_a3

    invoke-direct {p0}, Lcom/android/server/wm/Task;->canBeOrganized()Z

    move-result v2

    if-nez v2, :cond_a3

    .line 1305
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    iget-object v5, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v2, v5}, Landroid/view/SurfaceControl$Transaction;->show(Landroid/view/SurfaceControl;)Landroid/view/SurfaceControl$Transaction;

    .line 1310
    :cond_a3
    iget-object v2, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    if-eqz v2, :cond_b0

    .line 1312
    :try_start_a7
    iget-object v5, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    iget v6, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-interface {v2, v5, v6}, Landroid/service/voice/IVoiceInteractionSession;->taskStarted(Landroid/content/Intent;I)V
    :try_end_ae
    .catch Landroid/os/RemoteException; {:try_start_a7 .. :try_end_ae} :catch_af

    .line 1314
    goto :goto_b0

    .line 1313
    :catch_af
    move-exception v2

    .line 1319
    :cond_b0
    :goto_b0
    if-nez v1, :cond_b7

    if-eqz v0, :cond_b7

    .line 1323
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;

    .line 1327
    :cond_b7
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->adjustBoundsForDisplayChangeIfNeeded(Lcom/android/server/wm/DisplayContent;)V

    .line 1330
    invoke-static {}, Lcom/android/server/wm/TaskStub;->get()Lcom/android/server/wm/TaskStub;

    move-result-object v2

    invoke-interface {v2, v1, v0}, Lcom/android/server/wm/TaskStub;->onSplitScreenParentChanged(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/WindowContainer;)V

    .line 1332
    iget-object v2, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->updateUIDsPresentOnDisplay()V

    .line 1335
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda39;

    invoke-direct {v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda39;-><init>()V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1336
    return-void
.end method

.method onPictureInPictureParamsChanged()V
    .registers 2

    .line 4963
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 4964
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 4966
    :cond_a
    return-void
.end method

.method onShouldDockBigOverlaysChanged()V
    .registers 2

    .line 4969
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 4970
    return-void
.end method

.method onSizeCompatActivityChanged()V
    .registers 2

    .line 4975
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 4976
    return-void
.end method

.method onSnapshotChanged(Landroid/window/TaskSnapshot;)V
    .registers 4
    .param p1, "snapshot"  # Landroid/window/TaskSnapshot;

    .line 3532
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->set(Landroid/window/TaskSnapshot;)V

    .line 3533
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskSnapshotChanged(ILandroid/window/TaskSnapshot;)V

    .line 3535
    return-void
.end method

.method onlyHasTaskOverlayActivities(Z)Z
    .registers 8
    .param p1, "includeFinishing"  # Z

    .line 1659
    const/4 v0, 0x0

    .line 1660
    .local v0, "count":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_7
    const/4 v3, 0x0

    if-ltz v1, :cond_28

    .line 1661
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    .line 1662
    .local v4, "r":Lcom/android/server/wm/ActivityRecord;
    if-nez v4, :cond_15

    .line 1664
    return v3

    .line 1666
    :cond_15
    if-nez p1, :cond_1c

    iget-boolean v5, v4, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v5, :cond_1c

    .line 1667
    goto :goto_25

    .line 1669
    :cond_1c
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v5

    if-nez v5, :cond_23

    .line 1670
    return v3

    .line 1672
    :cond_23
    add-int/lit8 v0, v0, 0x1

    .line 1660
    .end local v4  # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_25
    add-int/lit8 v1, v1, -0x1

    goto :goto_7

    .line 1674
    .end local v1  # "i":I
    :cond_28
    if-lez v0, :cond_2b

    goto :goto_2c

    :cond_2b
    move v2, v3

    :goto_2c
    return v2
.end method

.method performClearTaskForReuse(Z)V
    .registers 5
    .param p1, "excludingTaskOverlay"  # Z

    .line 1727
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1728
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 1730
    const/4 v0, 0x0

    :try_start_9
    const-string v1, "clear-task-all"

    invoke-virtual {p0, v1, p1}, Lcom/android/server/wm/Task;->removeActivities(Ljava/lang/String;Z)V
    :try_end_e
    .catchall {:try_start_9 .. :try_end_e} :catchall_17

    .line 1732
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 1733
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1734
    nop

    .line 1735
    return-void

    .line 1732
    :catchall_17
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 1733
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1734
    throw v1
.end method

.method performClearTop(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;
    .registers 6
    .param p1, "newR"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "launchFlags"  # I

    .line 1740
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1741
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginDeferResume()V

    .line 1744
    const/4 v0, 0x0

    :try_start_9
    invoke-direct {p0, p1, p2}, Lcom/android/server/wm/Task;->clearTopActivities(Lcom/android/server/wm/ActivityRecord;I)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1
    :try_end_d
    .catchall {:try_start_9 .. :try_end_d} :catchall_16

    .line 1746
    .local v1, "result":Lcom/android/server/wm/ActivityRecord;
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 1747
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1748
    nop

    .line 1749
    return-object v1

    .line 1746
    .end local v1  # "result":Lcom/android/server/wm/ActivityRecord;
    :catchall_16
    move-exception v1

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->endDeferResume()V

    .line 1747
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    .line 1748
    throw v1
.end method

.method positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V
    .registers 7
    .param p1, "position"  # I
    .param p2, "child"  # Lcom/android/server/wm/WindowContainer;
    .param p3, "includingParents"  # Z

    .line 2942
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_b

    goto :goto_c

    :cond_b
    const/4 v1, 0x0

    :goto_c
    move v0, v1

    .line 2943
    .local v0, "toTop":Z
    invoke-direct {p0, p2, p1}, Lcom/android/server/wm/Task;->getAdjustedChildPosition(Lcom/android/server/wm/WindowContainer;I)I

    move-result p1

    .line 2944
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/TaskFragment;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 2947
    sget-boolean v1, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v1, :cond_45

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "positionChildAt: child="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " parent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2950
    :cond_45
    invoke-virtual {p2}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 2951
    .local v1, "task":Lcom/android/server/wm/Task;
    if-eqz v1, :cond_4e

    .line 2952
    invoke-virtual {v1, v0, p1}, Lcom/android/server/wm/Task;->updateTaskMovement(ZI)V

    .line 2954
    :cond_4e
    return-void
.end method

.method positionChildAt(Lcom/android/server/wm/ActivityRecord;I)V
    .registers 5
    .param p1, "child"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "position"  # I

    .line 3518
    if-nez p1, :cond_a

    .line 3519
    const-string v0, "WindowManager"

    const-string v1, "Attempted to position of non-existing app"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3521
    return-void

    .line 3524
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, p2, p1, v0}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3525
    return-void
.end method

.method positionChildAtBottom(Lcom/android/server/wm/Task;)V
    .registers 5
    .param p1, "child"  # Lcom/android/server/wm/Task;

    .line 6678
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 6679
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 6678
    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskDisplayArea;->getNextFocusableRootTask(Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v0

    .line 6680
    .local v0, "nextFocusableRootTask":Lcom/android/server/wm/Task;
    if-nez v0, :cond_10

    goto :goto_11

    :cond_10
    const/4 v2, 0x0

    :goto_11
    invoke-virtual {p0, p1, v2}, Lcom/android/server/wm/Task;->positionChildAtBottom(Lcom/android/server/wm/Task;Z)V

    .line 6681
    return-void
.end method

.method positionChildAtBottom(Lcom/android/server/wm/Task;Z)V
    .registers 4
    .param p1, "child"  # Lcom/android/server/wm/Task;
    .param p2, "includingParents"  # Z

    .line 6685
    if-nez p1, :cond_3

    .line 6687
    return-void

    .line 6690
    :cond_3
    const/high16 v0, -0x80000000

    invoke-virtual {p0, v0, p1, p2}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 6691
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 6692
    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "child"  # Lcom/android/server/wm/ActivityRecord;

    .line 3514
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->positionChildAt(Lcom/android/server/wm/ActivityRecord;I)V

    .line 3515
    return-void
.end method

.method positionChildAtTop(Lcom/android/server/wm/Task;)V
    .registers 4
    .param p1, "child"  # Lcom/android/server/wm/Task;

    .line 6656
    if-nez p1, :cond_3

    .line 6658
    return-void

    .line 6661
    :cond_3
    if-ne p1, p0, :cond_c

    .line 6663
    const-string/jumbo v0, "positionChildAtTop"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 6664
    return-void

    .line 6667
    :cond_c
    const v0, 0x7fffffff

    const/4 v1, 0x1

    invoke-virtual {p0, v0, p1, v1}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 6669
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 6670
    .local v0, "displayContent":Lcom/android/server/wm/DisplayContent;
    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 6671
    return-void
.end method

.method prepareSurfaces()V
    .registers 6

    .line 3759
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 3761
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mFreeFormShadowShow:Z

    .line 3762
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_3d

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    if-eqz v1, :cond_3d

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v1

    if-eqz v1, :cond_3d

    .line 3763
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isSupportMiuiShadow()Z

    move-result v1

    if-nez v1, :cond_3d

    .line 3764
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 3765
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/android/server/wm/Task;->setScreenProjectionFlag(Landroid/view/SurfaceControl;)V

    .line 3768
    :cond_3d
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->prepareSurfaces()V

    .line 3769
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getDimBounds(Landroid/graphics/Rect;)V

    .line 3772
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_66

    .line 3773
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 3774
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    iget-object v4, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/graphics/Rect;->offsetTo(II)V

    goto :goto_6b

    .line 3777
    :cond_66
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v0}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 3780
    :goto_6b
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v1

    .line 3781
    .local v1, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocused()Z

    move-result v2

    invoke-direct {p0, v2, v1}, Lcom/android/server/wm/Task;->updateShadowsRadius(ZLandroid/view/SurfaceControl$Transaction;)V

    .line 3783
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v2

    if-eqz v2, :cond_92

    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isSupportMiuiShadow()Z

    move-result v2

    if-eqz v2, :cond_92

    .line 3784
    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v2, p0}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->updateMiuiFreeformShadow(Lcom/android/server/wm/Task;)V

    .line 3785
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/android/server/wm/Task;->setScreenProjectionFlag(Landroid/view/SurfaceControl;)V

    .line 3789
    :cond_92
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAnimatingByRecents()Z

    move-result v2

    if-eqz v2, :cond_9d

    .line 3790
    iget-object v2, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v2}, Lcom/android/server/wm/Dimmer;->dontAnimateEnter()V

    .line 3794
    :cond_9d
    iget-object v2, p0, Lcom/android/server/wm/Task;->mDimmer:Lcom/android/server/wm/Dimmer;

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTmpDimBoundsRect:Landroid/graphics/Rect;

    invoke-virtual {v2, v1, v3}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v2

    if-eqz v2, :cond_aa

    .line 3795
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->scheduleAnimation()V

    .line 3803
    :cond_aa
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v2

    if-nez v2, :cond_b7

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->isAnimating(I)Z

    move-result v2

    if-eqz v2, :cond_b8

    :cond_b7
    const/4 v0, 0x1

    .line 3804
    .local v0, "show":Z
    :cond_b8
    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v2, v2, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v3

    invoke-interface {v2, v3}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v2

    .line 3805
    .local v2, "mffs":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    iget-object v3, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v3, :cond_db

    if-eqz v2, :cond_d2

    invoke-virtual {v2}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->inPinMode()Z

    move-result v3

    if-nez v3, :cond_db

    .line 3807
    :cond_d2
    iget-boolean v3, p0, Lcom/android/server/wm/Task;->mLastSurfaceShowing:Z

    if-eq v0, v3, :cond_db

    .line 3808
    iget-object v3, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v1, v3, v0}, Landroid/view/SurfaceControl$Transaction;->setVisibility(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$Transaction;

    .line 3811
    :cond_db
    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mLastSurfaceShowing:Z

    .line 3812
    return-void
.end method

.method preserveOrientationOnResize()Z
    .registers 3

    .line 3129
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_e

    const/4 v1, 0x5

    if-eq v0, v1, :cond_e

    const/4 v1, 0x7

    if-ne v0, v1, :cond_c

    goto :goto_e

    :cond_c
    const/4 v0, 0x0

    goto :goto_f

    :cond_e
    :goto_e
    const/4 v0, 0x1

    :goto_f
    return v0
.end method

.method removeActivities(Ljava/lang/String;Z)V
    .registers 4
    .param p1, "reason"  # Ljava/lang/String;
    .param p2, "excludingTaskOverlay"  # Z

    .line 1694
    invoke-direct {p0}, Lcom/android/server/wm/Task;->clearPinnedTaskIfNeed()V

    .line 1696
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_12

    .line 1697
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/Task;ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    goto :goto_1a

    .line 1706
    :cond_12
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;

    invoke-direct {v0, p0, p2, p1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/Task;ZLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 1721
    :goto_1a
    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 3
    .param p1, "child"  # Lcom/android/server/wm/WindowContainer;

    .line 1584
    const-string/jumbo v0, "removeChild"

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V

    .line 1585
    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowContainer;Ljava/lang/String;)V
    .registers 6
    .param p1, "r"  # Lcom/android/server/wm/WindowContainer;
    .param p2, "reason"  # Ljava/lang/String;

    .line 1589
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-interface {v0, p1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->showHiddenTaskIfRemoveSpecificChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1592
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_1b

    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_1b

    .line 1593
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    move-object v1, p1

    check-cast v1, Lcom/android/server/wm/Task;

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->removeRootTaskReferenceIfNeeded(Lcom/android/server/wm/Task;)V

    .line 1595
    :cond_1b
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_47

    .line 1596
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeChild: r="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " not found in t="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1597
    return-void

    .line 1600
    :cond_47
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_TASK_MOVEMENT:Z

    if-eqz v0, :cond_6e

    .line 1601
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeChild: child="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "WindowManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1603
    :cond_6e
    const/4 v0, 0x0

    invoke-super {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->removeChild(Lcom/android/server/wm/WindowContainer;Z)V

    .line 1608
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v1

    if-nez v1, :cond_7e

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_87

    .line 1612
    :cond_7e
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1615
    :cond_87
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v1

    if-eqz v1, :cond_9d

    .line 1616
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateEffectiveIntent()V

    .line 1621
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->onlyHasTaskOverlayActivities(Z)Z

    move-result v1

    if-eqz v1, :cond_ea

    .line 1629
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, p0, v0, v0, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->removeTask(Lcom/android/server/wm/Task;ZZLjava/lang/String;)V

    goto :goto_ea

    .line 1632
    :cond_9d
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mReuseTask:Z

    if-nez v0, :cond_ea

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldRemoveSelfOnLastChildRemoval()Z

    move-result v0

    if-eqz v0, :cond_ea

    .line 1635
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_ba

    .line 1636
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 1637
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    if-eqz v0, :cond_ba

    .line 1638
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    invoke-virtual {v1, p0}, Lcom/android/server/wm/TaskFragment;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 1641
    .end local v0  # "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_ba
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeChild:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " last r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " in t="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(ILjava/lang/String;)V

    .line 1643
    invoke-virtual {p0, p2}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 1647
    :cond_ea
    :goto_ea
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_ff

    invoke-static {}, Lcom/android/server/wm/ActivityRecordStub;->get()Lcom/android/server/wm/ActivityRecordStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/ActivityRecordStub;->shouldUseCompatMode()Z

    move-result v0

    if-nez v0, :cond_ff

    .line 1648
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->updateMultiWindowState(Lcom/android/server/wm/WindowContainer;)Z

    .line 1651
    :cond_ff
    return-void
.end method

.method removeIfPossible()V
    .registers 2

    .line 823
    const-string/jumbo v0, "removeTaskIfPossible"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeIfPossible(Ljava/lang/String;)V

    .line 824
    return-void
.end method

.method removeIfPossible(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"  # Ljava/lang/String;

    .line 827
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/server/wm/LockTaskController;->clearLockedTask(Lcom/android/server/wm/Task;)V

    .line 828
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->shouldDeferRemoval()Z

    move-result v0

    if-eqz v0, :cond_39

    .line 829
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v0, :cond_38

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " deferring removing taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 831
    :cond_38
    return-void

    .line 834
    :cond_39
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiCvwGestureController:Lcom/android/server/wm/MiuiCvwGestureControllerStub;

    if-eqz v0, :cond_46

    .line 835
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mMiuiCvwGestureController:Lcom/android/server/wm/MiuiCvwGestureControllerStub;

    invoke-interface {v0, p0}, Lcom/android/server/wm/MiuiCvwGestureControllerStub;->onTaskVanished(Lcom/android/server/wm/Task;)V

    .line 838
    :cond_46
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    .line 839
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_65

    .line 840
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskRemoved(I)V

    .line 842
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 843
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v0, :cond_65

    .line 844
    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/TaskDisplayArea;->onLeafTaskRemoved(I)V

    .line 847
    .end local v0  # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_65
    return-void
.end method

.method removeImmediately()V
    .registers 2

    .line 2958
    const-string/jumbo v0, "removeTask"

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    .line 2959
    return-void
.end method

.method removeImmediately(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"  # Ljava/lang/String;

    .line 2963
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v0, :cond_29

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeTask:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " removing taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2964
    :cond_29
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mRemoving:Z

    if-eqz v0, :cond_2e

    .line 2965
    return-void

    .line 2967
    :cond_2e
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mRemoving:Z

    .line 2969
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v0, p1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(ILjava/lang/String;)V

    .line 2970
    invoke-direct {p0}, Lcom/android/server/wm/Task;->clearPinnedTaskIfNeed()V

    .line 2972
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z

    .line 2974
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->removeImmediately()V

    .line 2975
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->mRemoving:Z

    .line 2976
    return-void
.end method

.method removeLaunchTickMessages()V
    .registers 2

    .line 6164
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 6165
    return-void
.end method

.method public removeStopPreloadActivityMsg()V
    .registers 3

    .line 6931
    iget-object v0, p0, Lcom/android/server/wm/Task;->mHandler:Landroid/os/Handler;

    const/16 v1, 0xc7

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 6932
    return-void
.end method

.method removedFromRecents()V
    .registers 4

    .line 1420
    invoke-direct {p0}, Lcom/android/server/wm/Task;->closeRecentsChain()V

    .line 1421
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    if-eqz v0, :cond_f

    .line 1422
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/Task;->inRecents:Z

    .line 1423
    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1, p0, v0}, Lcom/android/server/wm/ActivityTaskManagerService;->notifyTaskPersisterLocked(Lcom/android/server/wm/Task;Z)V

    .line 1426
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearRootProcess()V

    .line 1428
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mTaskSnapshotController:Lcom/android/server/wm/TaskSnapshotController;

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget v2, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskSnapshotController;->notifyTaskRemovedFromRecents(II)V

    .line 1430
    return-void
.end method

.method reparent(Lcom/android/server/wm/Task;IZLjava/lang/String;)V
    .registers 8
    .param p1, "rootTask"  # Lcom/android/server/wm/Task;
    .param p2, "position"  # I
    .param p3, "moveParents"  # Z
    .param p4, "reason"  # Ljava/lang/String;

    .line 2980
    sget-boolean v0, Lcom/android/server/wm/WindowManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v0, :cond_2d

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "reParentTask: removing taskId="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " from rootTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2981
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2980
    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2982
    :cond_2d
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "reParentTask:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/wm/EventLogTags;->writeWmTaskRemoved(ILjava/lang/String;)V

    .line 2985
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_62

    invoke-static {}, Lcom/android/server/wm/ActivityRecordStub;->get()Lcom/android/server/wm/ActivityRecordStub;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/wm/ActivityRecordStub;->shouldUseCompatMode()Z

    move-result v0

    if-nez v0, :cond_62

    .line 2986
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_62

    .line 2987
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->updateMultiWindowState(Lcom/android/server/wm/WindowContainer;)Z

    .line 2991
    :cond_62
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 2994
    iget-boolean v0, p1, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_78

    .line 2995
    invoke-virtual {p1}, Lcom/android/server/wm/Task;->inSplitScreenPrimaryWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_78

    .line 2996
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 3000
    :cond_78
    invoke-virtual {p1, p2, p0, p3}, Lcom/android/server/wm/Task;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 3001
    return-void
.end method

.method reparent(Lcom/android/server/wm/TaskDisplayArea;Z)V
    .registers 6
    .param p1, "newParent"  # Lcom/android/server/wm/TaskDisplayArea;
    .param p2, "onTop"  # Z

    .line 6714
    if-eqz p1, :cond_6b

    .line 6718
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const-string v1, "Task="

    if-eq v0, p1, :cond_4a

    .line 6722
    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->getDisplayId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->canBeLaunchedOnDisplay(I)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 6723
    if-eqz p2, :cond_1a

    const v0, 0x7fffffff

    goto :goto_1c

    :cond_1a
    const/high16 v0, -0x80000000

    :goto_1c
    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/WindowContainer;I)V

    .line 6724
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-eqz v0, :cond_49

    .line 6725
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/TaskDisplayArea;->onLeafTaskMoved(Lcom/android/server/wm/Task;Z)V

    goto :goto_49

    .line 6728
    :cond_29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " can\'t reparent to "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6730
    :cond_49
    :goto_49
    return-void

    .line 6719
    :cond_4a
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " already child of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6715
    :cond_6b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Task can\'t reparent to null "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method reparent(Lcom/android/server/wm/Task;IIZZZLjava/lang/String;)Z
    .registers 28
    .param p1, "preferredRootTask"  # Lcom/android/server/wm/Task;
    .param p2, "position"  # I
    .param p3, "moveRootTaskMode"  # I
    .param p4, "animate"  # Z
    .param p5, "deferResume"  # Z
    .param p6, "schedulePictureInPictureModeChange"  # Z
    .param p7, "reason"  # Ljava/lang/String;

    .line 954
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v6, p7

    iget-object v7, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 955
    .local v7, "supervisor":Lcom/android/server/wm/ActivityTaskSupervisor;
    iget-object v8, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 956
    .local v8, "root":Lcom/android/server/wm/RootWindowContainer;
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v9, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    .line 957
    .local v9, "windowManager":Lcom/android/server/wm/WindowManagerService;
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v10

    .line 958
    .local v10, "sourceRootTask":Lcom/android/server/wm/Task;
    const/4 v11, 0x0

    const v12, 0x7fffffff

    if-ne v3, v12, :cond_20

    const/4 v12, 0x1

    goto :goto_21

    :cond_20
    move v12, v11

    :goto_21
    invoke-virtual {v7, v1, v2, v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->getReparentTargetRootTask(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;Z)Lcom/android/server/wm/Task;

    move-result-object v12

    .line 960
    .local v12, "toRootTask":Lcom/android/server/wm/Task;
    if-ne v12, v10, :cond_28

    .line 961
    return v11

    .line 963
    :cond_28
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v13

    invoke-virtual {v1, v13}, Lcom/android/server/wm/Task;->canBeLaunchedOnDisplay(I)Z

    move-result v13

    if-nez v13, :cond_33

    .line 964
    return v11

    .line 967
    :cond_33
    invoke-virtual {v12}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v13

    .line 968
    .local v13, "toRootTaskWindowingMode":I
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    .line 970
    .local v14, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v14, :cond_49

    .line 971
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v15

    invoke-static {v15, v13}, Lcom/android/server/wm/Task;->replaceWindowsOnTaskMove(II)Z

    move-result v15

    if-eqz v15, :cond_49

    const/4 v15, 0x1

    goto :goto_4a

    :cond_49
    move v15, v11

    .line 972
    .local v15, "mightReplaceWindow":Z
    :goto_4a
    if-eqz v15, :cond_51

    .line 981
    iget-object v11, v14, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-virtual {v9, v11, v5}, Lcom/android/server/wm/WindowManagerService;->setWillReplaceWindow(Landroid/os/IBinder;Z)V

    .line 984
    :cond_51
    iget-object v11, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v11}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 985
    const/4 v11, 0x1

    .line 987
    .local v11, "kept":Z
    :try_start_57
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v16

    move-object/from16 v17, v16

    .line 988
    .local v17, "r":Lcom/android/server/wm/ActivityRecord;
    move-object/from16 v0, v17

    .end local v17  # "r":Lcom/android/server/wm/ActivityRecord;
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_74

    invoke-virtual {v8, v10}, Lcom/android/server/wm/RootWindowContainer;->isTopDisplayFocusedRootTask(Lcom/android/server/wm/Task;)Z

    move-result v17
    :try_end_65
    .catchall {:try_start_57 .. :try_end_65} :catchall_11e

    if-eqz v17, :cond_74

    .line 989
    move/from16 v17, v13

    .end local v13  # "toRootTaskWindowingMode":I
    .local v17, "toRootTaskWindowingMode":I
    :try_start_69
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v13
    :try_end_6d
    .catchall {:try_start_69 .. :try_end_6d} :catchall_71

    if-ne v13, v0, :cond_76

    const/4 v13, 0x1

    goto :goto_77

    .line 1024
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    :catchall_71
    move-exception v0

    goto/16 :goto_121

    .line 988
    .end local v17  # "toRootTaskWindowingMode":I
    .restart local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v13  # "toRootTaskWindowingMode":I
    :cond_74
    move/from16 v17, v13

    .line 989
    .end local v13  # "toRootTaskWindowingMode":I
    .restart local v17  # "toRootTaskWindowingMode":I
    :cond_76
    const/4 v13, 0x0

    .line 994
    .local v13, "wasFocused":Z
    :goto_77
    if-eqz v0, :cond_8c

    :try_start_79
    invoke-virtual {v10}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v18

    if-eqz v18, :cond_8c

    .line 995
    invoke-virtual {v10}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2
    :try_end_83
    .catchall {:try_start_79 .. :try_end_83} :catchall_87

    if-ne v2, v0, :cond_8c

    const/4 v2, 0x1

    goto :goto_8d

    .line 1024
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v13  # "wasFocused":Z
    :catchall_87
    move-exception v0

    move-object/from16 v2, p1

    goto/16 :goto_121

    .line 995
    .restart local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v13  # "wasFocused":Z
    :cond_8c
    const/4 v2, 0x0

    .line 997
    .local v2, "wasFront":Z
    :goto_8d
    if-eqz v4, :cond_9c

    move-object/from16 v18, v8

    const/4 v8, 0x1

    .end local v8  # "root":Lcom/android/server/wm/RootWindowContainer;
    .local v18, "root":Lcom/android/server/wm/RootWindowContainer;
    if-ne v4, v8, :cond_99

    if-nez v13, :cond_9f

    if-eqz v2, :cond_99

    goto :goto_9f

    :cond_99
    const/16 v16, 0x0

    goto :goto_a1

    .end local v18  # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v8  # "root":Lcom/android/server/wm/RootWindowContainer;
    :cond_9c
    move-object/from16 v18, v8

    const/4 v8, 0x1

    .end local v8  # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v18  # "root":Lcom/android/server/wm/RootWindowContainer;
    :cond_9f
    :goto_9f
    move/from16 v16, v8

    :goto_a1
    move/from16 v19, v16

    .line 1001
    .local v19, "moveRootTaskToFront":Z
    move/from16 v8, v19

    .end local v19  # "moveRootTaskToFront":Z
    .local v8, "moveRootTaskToFront":Z
    :try_start_a5
    invoke-virtual {v1, v12, v3, v8, v6}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;IZLjava/lang/String;)V
    :try_end_a8
    .catchall {:try_start_a5 .. :try_end_a8} :catchall_118

    .line 1003
    if-eqz p6, :cond_b5

    .line 1005
    :try_start_aa
    invoke-virtual {v7, v1, v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleUpdatePictureInPictureModeIfNeeded(Lcom/android/server/wm/Task;Lcom/android/server/wm/Task;)V

    goto :goto_b5

    .line 1024
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v2  # "wasFront":Z
    .end local v8  # "moveRootTaskToFront":Z
    .end local v13  # "wasFocused":Z
    :catchall_ae
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v8, v18

    goto/16 :goto_121

    .line 1010
    .restart local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    .restart local v2  # "wasFront":Z
    .restart local v8  # "moveRootTaskToFront":Z
    .restart local v13  # "wasFocused":Z
    :cond_b5
    :goto_b5
    if-eqz v0, :cond_d4

    if-eqz v8, :cond_d4

    .line 1012
    invoke-virtual {v12, v6}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 1016
    move/from16 v19, v2

    .end local v2  # "wasFront":Z
    .local v19, "wasFront":Z
    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    if-eqz v2, :cond_d6

    iget-object v2, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-ne v0, v2, :cond_d6

    .line 1017
    iget-object v2, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2, v0, v6}, Lcom/android/server/wm/ActivityTaskManagerService;->setLastResumedActivityUncheckLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    goto :goto_d6

    .line 1010
    .end local v19  # "wasFront":Z
    .restart local v2  # "wasFront":Z
    :cond_d4
    move/from16 v19, v2

    .line 1020
    .end local v2  # "wasFront":Z
    .restart local v19  # "wasFront":Z
    :cond_d6
    :goto_d6
    if-nez v5, :cond_df

    .line 1021
    iget-object v2, v1, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_df
    .catchall {:try_start_aa .. :try_end_df} :catchall_ae

    .line 1024
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    .end local v8  # "moveRootTaskToFront":Z
    .end local v13  # "wasFocused":Z
    .end local v19  # "wasFront":Z
    :cond_df
    iget-object v0, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1025
    nop

    .line 1027
    if-eqz v15, :cond_ee

    .line 1031
    iget-object v0, v14, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    xor-int/lit8 v2, v11, 0x1

    invoke-virtual {v9, v0, v2}, Lcom/android/server/wm/WindowManagerService;->scheduleClearWillReplaceWindows(Landroid/os/IBinder;Z)V

    .line 1034
    :cond_ee
    if-nez p5, :cond_100

    .line 1037
    const/4 v0, 0x0

    if-nez v15, :cond_f5

    const/4 v2, 0x1

    goto :goto_f6

    :cond_f5
    const/4 v2, 0x0

    :goto_f6
    move-object/from16 v8, v18

    const/4 v13, 0x0

    .end local v18  # "root":Lcom/android/server/wm/RootWindowContainer;
    .local v8, "root":Lcom/android/server/wm/RootWindowContainer;
    invoke-virtual {v8, v0, v13, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1038
    invoke-virtual {v8}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    goto :goto_103

    .line 1034
    .end local v8  # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v18  # "root":Lcom/android/server/wm/RootWindowContainer;
    :cond_100
    move-object/from16 v8, v18

    const/4 v13, 0x0

    .line 1042
    .end local v18  # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v8  # "root":Lcom/android/server/wm/RootWindowContainer;
    :goto_103
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v0

    iget-object v2, v1, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 1043
    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 1042
    invoke-virtual {v7, v1, v0, v2, v12}, Lcom/android/server/wm/ActivityTaskSupervisor;->handleNonResizableTaskIfNeeded(Lcom/android/server/wm/Task;ILcom/android/server/wm/TaskDisplayArea;Lcom/android/server/wm/Task;)V

    .line 1045
    move-object/from16 v2, p1

    if-ne v2, v12, :cond_116

    const/4 v0, 0x1

    goto :goto_117

    :cond_116
    move v0, v13

    :goto_117
    return v0

    .line 1024
    .end local v8  # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v18  # "root":Lcom/android/server/wm/RootWindowContainer;
    :catchall_118
    move-exception v0

    move-object/from16 v2, p1

    move-object/from16 v8, v18

    .end local v18  # "root":Lcom/android/server/wm/RootWindowContainer;
    .restart local v8  # "root":Lcom/android/server/wm/RootWindowContainer;
    goto :goto_121

    .end local v17  # "toRootTaskWindowingMode":I
    .local v13, "toRootTaskWindowingMode":I
    :catchall_11e
    move-exception v0

    move/from16 v17, v13

    .end local v13  # "toRootTaskWindowingMode":I
    .restart local v17  # "toRootTaskWindowingMode":I
    :goto_121
    iget-object v13, v1, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v13}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 1025
    throw v0
.end method

.method reparent(Lcom/android/server/wm/Task;ZIZZLjava/lang/String;)Z
    .registers 16
    .param p1, "preferredRootTask"  # Lcom/android/server/wm/Task;
    .param p2, "toTop"  # Z
    .param p3, "moveRootTaskMode"  # I
    .param p4, "animate"  # Z
    .param p5, "deferResume"  # Z
    .param p6, "reason"  # Ljava/lang/String;

    .line 928
    if-eqz p2, :cond_6

    const v0, 0x7fffffff

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    move v3, v0

    const/4 v7, 0x1

    move-object v1, p0

    move-object v2, p1

    move v4, p3

    move v5, p4

    move v6, p5

    move-object v8, p6

    invoke-virtual/range {v1 .. v8}, Lcom/android/server/wm/Task;->reparent(Lcom/android/server/wm/Task;IIZZZLjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "newParent"  # Landroid/view/SurfaceControl;

    .line 4733
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 4734
    return-void

    .line 4736
    :cond_d
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->reparentSurfaceControl(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 4737
    return-void
.end method

.method resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 7
    .param p1, "taskTop"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "newActivity"  # Lcom/android/server/wm/ActivityRecord;

    .line 5876
    iget-object v0, p2, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v0, v0, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_a

    const/4 v0, 0x1

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    .line 5878
    .local v0, "forceReset":Z
    :goto_b
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 5881
    .local v1, "task":Lcom/android/server/wm/Task;
    sget-object v2, Lcom/android/server/wm/Task;->sResetTargetTaskHelper:Lcom/android/server/wm/ResetTargetTaskHelper;

    invoke-virtual {v2, v1, v0}, Lcom/android/server/wm/ResetTargetTaskHelper;->process(Lcom/android/server/wm/Task;Z)Landroid/app/ActivityOptions;

    move-result-object v2

    .line 5883
    .local v2, "topOptions":Landroid/app/ActivityOptions;
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 5884
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 5885
    .local v3, "newTop":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_24

    .line 5886
    move-object p1, v3

    .line 5890
    .end local v3  # "newTop":Lcom/android/server/wm/ActivityRecord;
    :cond_24
    if-eqz v2, :cond_29

    .line 5893
    invoke-virtual {p1, v2}, Lcom/android/server/wm/ActivityRecord;->updateOptionsLocked(Landroid/app/ActivityOptions;)V

    .line 5896
    :cond_29
    return-object p1
.end method

.method resize(Landroid/graphics/Rect;ZZ)V
    .registers 8
    .param p1, "displayedBounds"  # Landroid/graphics/Rect;
    .param p2, "preserveWindows"  # Z
    .param p3, "deferResume"  # Z

    .line 6372
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "task.resize_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x20

    invoke-static {v1, v2, v0}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 6373
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 6377
    :try_start_22
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda43;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda43;-><init>()V

    const-class v3, Lcom/android/server/wm/Task;

    .line 6378
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 6377
    invoke-static {v0, v3, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 6380
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    const/4 v3, 0x1

    invoke-virtual {p0, v0, v3}, Lcom/android/server/wm/Task;->forAllTasks(Ljava/util/function/Consumer;Z)V

    .line 6381
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 6383
    if-nez p3, :cond_41

    .line 6384
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/android/server/wm/Task;->ensureVisibleActivitiesConfiguration(Lcom/android/server/wm/ActivityRecord;Z)V
    :try_end_41
    .catchall {:try_start_22 .. :try_end_41} :catchall_4b

    .line 6387
    .end local v0  # "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    :cond_41
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 6388
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 6389
    nop

    .line 6390
    return-void

    .line 6387
    :catchall_4b
    move-exception v0

    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 6388
    invoke-static {v1, v2}, Landroid/os/Trace;->traceEnd(J)V

    .line 6389
    throw v0
.end method

.method resize(ZZ)V
    .registers 4
    .param p1, "relayout"  # Z
    .param p2, "forced"  # Z

    .line 3081
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0, p2}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Z)I

    move-result v0

    if-eqz v0, :cond_13

    if-eqz p1, :cond_13

    .line 3082
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->layoutAndAssignWindowLayersIfNeeded()V

    .line 3084
    :cond_13
    return-void
.end method

.method resize(Landroid/graphics/Rect;IZ)Z
    .registers 12
    .param p1, "bounds"  # Landroid/graphics/Rect;
    .param p2, "resizeMode"  # I
    .param p3, "preserveWindow"  # Z

    .line 860
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->deferWindowLayout()V

    .line 863
    and-int/lit8 v0, p2, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_d

    move v0, v1

    goto :goto_e

    :cond_d
    move v0, v2

    .line 865
    .local v0, "forced":Z
    :goto_e
    :try_start_e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    if-nez v3, :cond_2a

    .line 869
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 870
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v3

    if-nez v3, :cond_23

    .line 872
    iget-object v3, p0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v4, 0x0

    invoke-virtual {v3, p0, v4, v2}, Lcom/android/server/wm/ActivityTaskSupervisor;->restoreRecentTaskLocked(Lcom/android/server/wm/Task;Landroid/app/ActivityOptions;Z)Z
    :try_end_23
    .catchall {:try_start_e .. :try_end_23} :catchall_c1

    .line 874
    :cond_23
    nop

    .line 920
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 874
    return v1

    .line 877
    :cond_2a
    :try_start_2a
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->canResizeToBounds(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_91

    .line 886
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "resizeTask_"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-wide/16 v4, 0x20

    invoke-static {v4, v5, v3}, Landroid/os/Trace;->traceBegin(JLjava/lang/String;)V

    .line 888
    const/4 v3, 0x0

    .line 889
    .local v3, "updatedConfig":Z
    iget-object v6, p0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->setTo(Landroid/content/res/Configuration;)V

    .line 890
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v6

    if-eqz v6, :cond_67

    .line 891
    iget-object v6, p0, Lcom/android/server/wm/Task;->mTmpConfig:Landroid/content/res/Configuration;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/res/Configuration;->equals(Landroid/content/res/Configuration;)Z

    move-result v6

    xor-int/2addr v1, v6

    move v3, v1

    .line 896
    :cond_67
    const/4 v1, 0x1

    .line 897
    .local v1, "kept":Z
    if-eqz v3, :cond_81

    .line 898
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 899
    .local v6, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v6, :cond_81

    .line 900
    invoke-virtual {v6, v2, p3}, Lcom/android/server/wm/ActivityRecord;->ensureActivityConfiguration(IZ)Z

    move-result v7

    move v1, v7

    .line 908
    iget-object v7, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v7, v6, v2, p3}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 909
    if-nez v1, :cond_81

    .line 910
    iget-object v2, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 914
    .end local v6  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_81
    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/Task;->resize(ZZ)V

    .line 916
    invoke-direct {p0}, Lcom/android/server/wm/Task;->saveLaunchingStateIfNeeded()V

    .line 917
    invoke-static {v4, v5}, Landroid/os/Trace;->traceEnd(J)V
    :try_end_8a
    .catchall {:try_start_2a .. :try_end_8a} :catchall_c1

    .line 918
    nop

    .line 920
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 918
    return v1

    .line 878
    .end local v1  # "kept":Z
    .end local v3  # "updatedConfig":Z
    :cond_91
    :try_start_91
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "resizeTask: Can not resize task="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " to bounds="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " resizeMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p0  # "this":Lcom/android/server/wm/Task;
    .end local p1  # "bounds":Landroid/graphics/Rect;
    .end local p2  # "resizeMode":I
    .end local p3  # "preserveWindow":Z
    throw v1
    :try_end_c1
    .catchall {:try_start_91 .. :try_end_c1} :catchall_c1

    .line 920
    .end local v0  # "forced":Z
    .restart local p0  # "this":Lcom/android/server/wm/Task;
    .restart local p1  # "bounds":Landroid/graphics/Rect;
    .restart local p2  # "resizeMode":I
    .restart local p3  # "preserveWindow":Z
    :catchall_c1
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskManagerService;->continueWindowLayout()V

    .line 921
    throw v0
.end method

.method resolveLeafTaskOnlyOverrideConfigs(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V
    .registers 6
    .param p1, "newParentConfig"  # Landroid/content/res/Configuration;
    .param p2, "previousBounds"  # Landroid/graphics/Rect;

    .line 2313
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v0

    if-nez v0, :cond_7

    .line 2314
    return-void

    .line 2317
    :cond_7
    nop

    .line 2318
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2319
    .local v0, "windowingMode":I
    if-nez v0, :cond_1a

    .line 2320
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2324
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 2325
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2327
    .local v1, "outOverrideBounds":Landroid/graphics/Rect;
    const/4 v2, 0x1

    if-ne v0, v2, :cond_3a

    .line 2328
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v2

    if-nez v2, :cond_39

    .line 2330
    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 2334
    :cond_39
    return-void

    .line 2337
    :cond_3a
    invoke-virtual {p0, v1, p2, p1}, Lcom/android/server/wm/Task;->adjustForMinimalTaskDimensions(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/content/res/Configuration;)V

    .line 2344
    return-void
.end method

.method restartPackage(Ljava/lang/String;)Lcom/android/server/wm/ActivityRecord;
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;

    .line 6479
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6483
    .local v0, "starting":Lcom/android/server/wm/ActivityRecord;
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda50;

    invoke-direct {v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda50;-><init>()V

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 6484
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 6483
    invoke-static {v1, v2, v0, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Lcom/android/internal/util/function/TriConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v1

    .line 6485
    .local v1, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 6486
    invoke-interface {v1}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 6488
    return-object v0
.end method

.method resumeNextFocusAfterReparent()V
    .registers 4

    .line 5242
    const-string/jumbo v0, "reparent"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Lcom/android/server/wm/Task;->adjustFocusToNextFocusableTask(Ljava/lang/String;ZZ)Lcom/android/server/wm/Task;

    .line 5244
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 5247
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 5249
    return-void
.end method

.method resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z
    .registers 4
    .param p1, "prev"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"  # Landroid/app/ActivityOptions;

    .line 5615
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v0

    return v0
.end method

.method resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z
    .registers 10
    .param p1, "prev"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"  # Landroid/app/ActivityOptions;
    .param p3, "deferPause"  # Z

    .line 5548
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 5550
    return v1

    .line 5553
    :cond_6
    const/4 v0, 0x0

    .line 5556
    .local v0, "someActivityResumed":Z
    const/4 v2, 0x1

    :try_start_8
    iput-boolean v2, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 5558
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 5559
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusableAndVisible()Z

    move-result v3

    if-eqz v3, :cond_5b

    .line 5560
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wm/Task;->resumeTopActivityInnerLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v3

    move v0, v3

    goto :goto_5b

    .line 5563
    :cond_1c
    iget-object v3, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowList;->size()I

    move-result v3

    sub-int/2addr v3, v2

    .line 5564
    .local v3, "idx":I
    :goto_23
    if-ltz v3, :cond_5b

    .line 5567
    add-int/lit8 v4, v3, -0x1

    .end local v3  # "idx":I
    .local v4, "idx":I
    invoke-virtual {p0, v3}, Lcom/android/server/wm/Task;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v3

    .line 5568
    .local v3, "child":Lcom/android/server/wm/Task;
    if-nez v3, :cond_32

    .line 5569
    goto :goto_39

    .line 5572
    :cond_32
    invoke-virtual {v3}, Lcom/android/server/wm/Task;->isTopActivityFocusable()Z

    move-result v5

    if-nez v5, :cond_3b

    .line 5573
    nop

    .line 5564
    .end local v3  # "child":Lcom/android/server/wm/Task;
    :goto_39
    move v3, v4

    goto :goto_23

    .line 5575
    .restart local v3  # "child":Lcom/android/server/wm/Task;
    :cond_3b
    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/android/server/wm/Task;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v5

    if-eqz v5, :cond_43

    .line 5577
    goto :goto_5b

    .line 5580
    :cond_43
    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/wm/Task;->resumeTopActivityUncheckedLocked(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z

    move-result v5

    or-int/2addr v0, v5

    .line 5585
    iget-object v5, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    if-lt v4, v5, :cond_59

    .line 5586
    iget-object v5, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5}, Lcom/android/server/wm/WindowList;->size()I

    move-result v5

    sub-int/2addr v5, v2

    move v3, v5

    .end local v4  # "idx":I
    .local v5, "idx":I
    goto :goto_5a

    .line 5585
    .end local v5  # "idx":I
    .restart local v4  # "idx":I
    :cond_59
    move v3, v4

    .line 5588
    .end local v4  # "idx":I
    .local v3, "idx":I
    :goto_5a
    goto :goto_23

    .line 5598
    .end local v3  # "idx":I
    :cond_5b
    :goto_5b
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 5601
    .local v2, "next":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_71

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->canTurnScreenOn()Z

    move-result v3

    if-nez v3, :cond_74

    .line 5602
    invoke-static {}, Lcom/android/server/wm/ActivityRecordStub;->get()Lcom/android/server/wm/ActivityRecordStub;

    move-result-object v3

    invoke-interface {v3, v2}, Lcom/android/server/wm/ActivityRecordStub;->shouldNotBeResume(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-nez v3, :cond_74

    .line 5603
    :cond_71
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->checkReadyForSleep()V
    :try_end_74
    .catchall {:try_start_8 .. :try_end_74} :catchall_78

    .line 5606
    .end local v2  # "next":Lcom/android/server/wm/ActivityRecord;
    :cond_74
    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 5607
    nop

    .line 5609
    return v0

    .line 5606
    :catchall_78
    move-exception v2

    iput-boolean v1, p0, Lcom/android/server/wm/Task;->mInResumeTopActivity:Z

    .line 5607
    throw v2
.end method

.method returnsToHomeRootTask()Z
    .registers 8

    .line 1214
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inMultiWindowMode()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_55

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->hasChild()Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_55

    .line 1215
    :cond_e
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    const/4 v2, 0x1

    if-eqz v0, :cond_47

    .line 1216
    const v0, 0x10004000

    .line 1217
    .local v0, "returnHomeFlags":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    if-eqz v3, :cond_25

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getRootHomeTask()Lcom/android/server/wm/Task;

    move-result-object v3

    goto :goto_26

    :cond_25
    const/4 v3, 0x0

    .line 1218
    .local v3, "task":Lcom/android/server/wm/Task;
    :goto_26
    if-eqz v3, :cond_36

    iget-object v4, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1219
    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getLockTaskController()Lcom/android/server/wm/LockTaskController;

    move-result-object v4

    invoke-virtual {v4, v3}, Lcom/android/server/wm/LockTaskController;->isLockTaskModeViolation(Lcom/android/server/wm/Task;)Z

    move-result v4

    if-eqz v4, :cond_36

    move v4, v2

    goto :goto_37

    :cond_36
    move v4, v1

    .line 1220
    .local v4, "isLockTaskModeViolation":Z
    :goto_37
    iget-object v5, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v5}, Landroid/content/Intent;->getFlags()I

    move-result v5

    const v6, 0x10004000

    and-int/2addr v5, v6

    if-ne v5, v6, :cond_46

    if-nez v4, :cond_46

    move v1, v2

    :cond_46
    return v1

    .line 1223
    .end local v0  # "returnHomeFlags":I
    .end local v3  # "task":Lcom/android/server/wm/Task;
    .end local v4  # "isLockTaskModeViolation":Z
    :cond_47
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBottomMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1224
    .local v0, "bottomTask":Lcom/android/server/wm/Task;
    if-eq v0, p0, :cond_54

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->returnsToHomeRootTask()Z

    move-result v3

    if-eqz v3, :cond_54

    move v1, v2

    :cond_54
    return v1

    .line 1214
    .end local v0  # "bottomTask":Lcom/android/server/wm/Task;
    :cond_55
    :goto_55
    return v1
.end method

.method reuseAsLeafTask(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Task;
    .registers 9
    .param p1, "_voiceSession"  # Landroid/service/voice/IVoiceInteractionSession;
    .param p2, "_voiceInteractor"  # Lcom/android/internal/app/IVoiceInteractor;
    .param p3, "intent"  # Landroid/content/Intent;
    .param p4, "info"  # Landroid/content/pm/ActivityInfo;
    .param p5, "activity"  # Lcom/android/server/wm/ActivityRecord;

    .line 763
    iput-object p1, p0, Lcom/android/server/wm/Task;->voiceSession:Landroid/service/voice/IVoiceInteractionSession;

    .line 764
    iput-object p2, p0, Lcom/android/server/wm/Task;->voiceInteractor:Lcom/android/internal/app/IVoiceInteractor;

    .line 765
    invoke-virtual {p0, p5, p3, p4}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 766
    invoke-virtual {p0, p4}, Lcom/android/server/wm/Task;->setMinDimensions(Landroid/content/pm/ActivityInfo;)V

    .line 774
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v2, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskCreated(ILandroid/content/ComponentName;)V

    .line 775
    return-object p0
.end method

.method reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;
    .registers 26
    .param p1, "info"  # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "voiceSession"  # Landroid/service/voice/IVoiceInteractionSession;
    .param p4, "voiceInteractor"  # Lcom/android/internal/app/IVoiceInteractor;
    .param p5, "toTop"  # Z
    .param p6, "activity"  # Lcom/android/server/wm/ActivityRecord;
    .param p7, "source"  # Lcom/android/server/wm/ActivityRecord;
    .param p8, "options"  # Landroid/app/ActivityOptions;

    .line 6513
    move-object/from16 v6, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p6

    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/Task;->canReuseAsLeafTask()Z

    move-result v0

    if-eqz v0, :cond_28

    .line 6516
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-object/from16 v2, p4

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move-object/from16 v5, p6

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/Task;->reuseAsLeafTask(Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/Task;

    move-result-object v0

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    move-object/from16 v12, p4

    move/from16 v13, p5

    move-object/from16 v9, p8

    move-object v14, v0

    .local v0, "task":Lcom/android/server/wm/Task;
    goto :goto_70

    .line 6519
    .end local v0  # "task":Lcom/android/server/wm/Task;
    :cond_28
    if-eqz v8, :cond_33

    .line 6520
    iget-object v0, v6, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget v1, v8, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->getNextTaskIdForUser(I)I

    move-result v0

    goto :goto_39

    .line 6521
    :cond_33
    iget-object v0, v6, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getNextTaskIdForUser()I

    move-result v0

    :goto_39
    nop

    .line 6522
    .local v0, "taskId":I
    new-instance v1, Lcom/android/server/wm/Task$Builder;

    iget-object v2, v6, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-direct {v1, v2}, Lcom/android/server/wm/Task$Builder;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;)V

    .line 6523
    invoke-virtual {v1, v0}, Lcom/android/server/wm/Task$Builder;->setTaskId(I)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 6524
    invoke-virtual {v1, v7}, Lcom/android/server/wm/Task$Builder;->setActivityInfo(Landroid/content/pm/ActivityInfo;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 6525
    move-object/from16 v9, p8

    invoke-virtual {v1, v9}, Lcom/android/server/wm/Task$Builder;->setActivityOptions(Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 6526
    move-object/from16 v10, p2

    invoke-virtual {v1, v10}, Lcom/android/server/wm/Task$Builder;->setIntent(Landroid/content/Intent;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 6527
    move-object/from16 v11, p3

    invoke-virtual {v1, v11}, Lcom/android/server/wm/Task$Builder;->setVoiceSession(Landroid/service/voice/IVoiceInteractionSession;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 6528
    move-object/from16 v12, p4

    invoke-static {v1, v12}, Lcom/android/server/wm/Task$Builder;->-$$Nest$msetVoiceInteractor(Lcom/android/server/wm/Task$Builder;Lcom/android/internal/app/IVoiceInteractor;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 6529
    move/from16 v13, p5

    invoke-virtual {v1, v13}, Lcom/android/server/wm/Task$Builder;->setOnTop(Z)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 6530
    invoke-virtual {v1, v6}, Lcom/android/server/wm/Task$Builder;->setParent(Lcom/android/server/wm/WindowContainer;)Lcom/android/server/wm/Task$Builder;

    move-result-object v1

    .line 6531
    invoke-virtual {v1}, Lcom/android/server/wm/Task$Builder;->build()Lcom/android/server/wm/Task;

    move-result-object v1

    move-object v14, v1

    .line 6534
    .end local v0  # "taskId":I
    .local v14, "task":Lcom/android/server/wm/Task;
    :goto_70
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getDisplayId()I

    move-result v0

    .line 6535
    .local v0, "displayId":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_78

    const/4 v0, 0x0

    :cond_78
    move v15, v0

    .line 6536
    .end local v0  # "displayId":I
    .local v15, "displayId":I
    iget-object v0, v6, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getKeyguardController()Lcom/android/server/wm/KeyguardController;

    move-result-object v0

    .line 6537
    invoke-virtual {v0, v15}, Lcom/android/server/wm/KeyguardController;->isKeyguardOrAodShowing(I)Z

    move-result v16

    .line 6538
    .local v16, "isLockscreenShown":Z
    iget-object v0, v6, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getLaunchParamsController()Lcom/android/server/wm/LaunchParamsController;

    move-result-object v0

    iget-object v2, v7, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    .line 6539
    move-object v1, v14

    move-object/from16 v3, p6

    move-object/from16 v4, p7

    move-object/from16 v5, p8

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/LaunchParamsController;->layoutTask(Lcom/android/server/wm/Task;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    move-result v0

    if-nez v0, :cond_b3

    .line 6540
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_b3

    .line 6541
    invoke-virtual {v14}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-eqz v0, :cond_b3

    if-nez v16, :cond_b3

    .line 6542
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {v14, v0}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 6545
    :cond_b3
    return-object v14
.end method

.method reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Z)Lcom/android/server/wm/Task;
    .registers 13
    .param p1, "info"  # Landroid/content/pm/ActivityInfo;
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "toTop"  # Z

    .line 6502
    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p3

    invoke-virtual/range {v0 .. v8}, Lcom/android/server/wm/Task;->reuseOrCreateTask(Landroid/content/pm/ActivityInfo;Landroid/content/Intent;Landroid/service/voice/IVoiceInteractionSession;Lcom/android/internal/app/IVoiceInteractor;ZLcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method saveToXml(Landroid/util/TypedXmlSerializer;)V
    .registers 7
    .param p1, "out"  # Landroid/util/TypedXmlSerializer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 4308
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RECENTS:Z

    if-eqz v0, :cond_1c

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Saving task="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4310
    :cond_1c
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v1, 0x0

    const-string/jumbo v2, "task_id"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4311
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_33

    .line 4312
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "real_activity"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4314
    :cond_33
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->realActivitySuspended:Z

    const-string/jumbo v2, "real_activity_suspended"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4315
    iget-object v0, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_49

    .line 4316
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v2, "orig_activity"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4322
    :cond_49
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    const-string v2, "@"

    const-string/jumbo v3, "root_affinity"

    if-eqz v0, :cond_6a

    .line 4323
    const-string v4, "affinity"

    invoke-interface {p1, v1, v4, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4324
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_74

    .line 4325
    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_66

    move-object v2, v0

    :cond_66
    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    goto :goto_74

    .line 4327
    :cond_6a
    iget-object v0, p0, Lcom/android/server/wm/Task;->rootAffinity:Ljava/lang/String;

    if-eqz v0, :cond_74

    .line 4328
    if-eqz v0, :cond_71

    move-object v2, v0

    :cond_71
    invoke-interface {p1, v1, v3, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4330
    :cond_74
    :goto_74
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWindowLayoutAffinity:Ljava/lang/String;

    if-eqz v0, :cond_7e

    .line 4331
    const-string/jumbo v2, "window_layout_affinity"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4333
    :cond_7e
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->rootWasReset:Z

    const-string/jumbo v2, "root_has_reset"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4334
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->autoRemoveRecents:Z

    const-string v2, "auto_remove_recents"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4335
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->askedCompatMode:Z

    const-string v2, "asked_compat_mode"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4336
    iget v0, p0, Lcom/android/server/wm/Task;->mUserId:I

    const-string/jumbo v2, "user_id"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4337
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mUserSetupComplete:Z

    const-string/jumbo v2, "user_setup_complete"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4338
    iget v0, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    const-string v2, "effective_uid"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4339
    iget-wide v2, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    const-string v0, "last_time_moved"

    invoke-interface {p1, v1, v0, v2, v3}, Landroid/util/TypedXmlSerializer;->attributeLong(Ljava/lang/String;Ljava/lang/String;J)Lorg/xmlpull/v1/XmlSerializer;

    .line 4340
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    const-string/jumbo v2, "never_relinquish_identity"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4341
    iget-object v0, p0, Lcom/android/server/wm/Task;->lastDescription:Ljava/lang/CharSequence;

    if-eqz v0, :cond_c7

    .line 4342
    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "last_description"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4344
    :cond_c7
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    if-eqz v0, :cond_d4

    .line 4345
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskDescription()Landroid/app/ActivityManager$TaskDescription;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/ActivityManager$TaskDescription;->saveToXml(Landroid/util/TypedXmlSerializer;)V

    .line 4347
    :cond_d4
    iget v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    const-string/jumbo v2, "task_affiliation"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4348
    iget v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    const-string/jumbo v2, "prev_affiliation"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4349
    iget v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    const-string/jumbo v2, "next_affiliation"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4350
    iget v0, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    const-string v2, "calling_uid"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4351
    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    const-string v2, ""

    if-nez v0, :cond_fa

    move-object v0, v2

    :cond_fa
    const-string v3, "calling_package"

    invoke-interface {p1, v1, v3, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4352
    nop

    .line 4353
    iget-object v0, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    if-nez v0, :cond_105

    goto :goto_106

    :cond_105
    move-object v2, v0

    .line 4352
    :goto_106
    const-string v0, "calling_feature_id"

    invoke-interface {p1, v1, v0, v2}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4354
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    const-string/jumbo v2, "resize_mode"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4355
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mSupportsPictureInPicture:Z

    const-string/jumbo v2, "supports_picture_in_picture"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeBoolean(Ljava/lang/String;Ljava/lang/String;Z)Lorg/xmlpull/v1/XmlSerializer;

    .line 4356
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-eqz v0, :cond_12a

    .line 4357
    nop

    .line 4358
    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 4357
    const-string/jumbo v2, "non_fullscreen_bounds"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4360
    :cond_12a
    iget v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    const-string/jumbo v2, "min_width"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4361
    iget v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    const-string/jumbo v2, "min_height"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4362
    const/4 v0, 0x1

    const-string/jumbo v2, "persist_task_version"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attributeInt(Ljava/lang/String;Ljava/lang/String;I)Lorg/xmlpull/v1/XmlSerializer;

    .line 4364
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    if-eqz v0, :cond_154

    .line 4365
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->taskSize:Landroid/graphics/Point;

    .line 4366
    invoke-virtual {v0}, Landroid/graphics/Point;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 4365
    const-string v2, "last_snapshot_task_size"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4368
    :cond_154
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    if-eqz v0, :cond_167

    .line 4369
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->contentInsets:Landroid/graphics/Rect;

    .line 4370
    invoke-virtual {v0}, Landroid/graphics/Rect;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 4369
    const-string v2, "last_snapshot_content_insets"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4372
    :cond_167
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    if-eqz v0, :cond_17a

    .line 4373
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastTaskSnapshotData:Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;

    iget-object v0, v0, Landroid/app/ActivityManager$RecentTaskInfo$PersistedTaskSnapshotData;->bufferSize:Landroid/graphics/Point;

    .line 4374
    invoke-virtual {v0}, Landroid/graphics/Point;->flattenToString()Ljava/lang/String;

    move-result-object v0

    .line 4373
    const-string v2, "last_snapshot_buffer_size"

    invoke-interface {p1, v1, v2, v0}, Landroid/util/TypedXmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4377
    :cond_17a
    iget-object v0, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_18b

    .line 4378
    const-string v0, "affinity_intent"

    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4379
    iget-object v2, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 4380
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4383
    :cond_18b
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_19c

    .line 4384
    const-string v0, "intent"

    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4385
    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v2, p1}, Landroid/content/Intent;->saveToXml(Lorg/xmlpull/v1/XmlSerializer;)V

    .line 4386
    invoke-interface {p1, v1, v0}, Landroid/util/TypedXmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 4389
    :cond_19c
    sput-object v1, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    .line 4390
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda25;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 4391
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBottomMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 4390
    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 4392
    .local v0, "f":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 4393
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 4394
    sget-object v1, Lcom/android/server/wm/Task;->sTmpException:Ljava/lang/Exception;

    if-nez v1, :cond_1bc

    .line 4397
    return-void

    .line 4395
    :cond_1bc
    throw v1
.end method

.method sendTaskAppeared()V
    .registers 3

    .line 4788
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v0, :cond_d

    .line 4789
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    iget-object v1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    invoke-virtual {v0, v1, p0}, Lcom/android/server/wm/TaskOrganizerController;->onTaskAppeared(Landroid/window/ITaskOrganizer;Lcom/android/server/wm/Task;)V

    .line 4791
    :cond_d
    return-void
.end method

.method setActivityWindowingMode(I)V
    .registers 5
    .param p1, "windowingMode"  # I

    .line 5011
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda31;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda31;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 5012
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 5011
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainConsumer(Ljava/util/function/BiConsumer;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledConsumer;

    move-result-object v0

    .line 5013
    .local v0, "c":Lcom/android/internal/util/function/pooled/PooledConsumer;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 5014
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledConsumer;->recycle()V

    .line 5015
    return-void
.end method

.method public setAlwaysOnTop(Z)V
    .registers 5
    .param p1, "alwaysOnTop"  # Z

    .line 6583
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->isAlwaysOnTop()Z

    move-result v0

    if-ne v0, p1, :cond_7

    .line 6584
    return-void

    .line 6586
    :cond_7
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->setAlwaysOnTop(Z)V

    .line 6588
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    if-nez v0, :cond_11

    return-void

    .line 6595
    :cond_11
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v0

    if-nez v0, :cond_22

    .line 6596
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/wm/TaskDisplayArea;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 6598
    :cond_22
    return-void
.end method

.method public setBounds(Landroid/graphics/Rect;)I
    .registers 5
    .param p1, "bounds"  # Landroid/graphics/Rect;

    .line 3017
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 3018
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;Landroid/graphics/Rect;)I

    move-result v0

    return v0

    .line 3021
    :cond_f
    const/4 v0, 0x0

    .line 3022
    .local v0, "rotation":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-eqz v1, :cond_1f

    .line 3023
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    goto :goto_20

    :cond_1f
    const/4 v1, 0x0

    .line 3024
    .local v1, "displayContent":Lcom/android/server/wm/DisplayContent;
    :goto_20
    if-eqz v1, :cond_28

    .line 3025
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v2

    iget v0, v2, Landroid/view/DisplayInfo;->rotation:I

    .line 3028
    :cond_28
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->setBounds(Landroid/graphics/Rect;)I

    move-result v2

    .line 3029
    .local v2, "boundsChange":I
    iput v0, p0, Lcom/android/server/wm/Task;->mRotation:I

    .line 3030
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateSurfacePositionNonOrganized()V

    .line 3031
    return v2
.end method

.method public setBounds(Landroid/graphics/Rect;Z)I
    .registers 6
    .param p1, "bounds"  # Landroid/graphics/Rect;
    .param p2, "forceResize"  # Z

    .line 3004
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    move-result v0

    .line 3006
    .local v0, "boundsChanged":I
    if-eqz p2, :cond_11

    and-int/lit8 v1, v0, 0x2

    const/4 v2, 0x2

    if-eq v1, v2, :cond_11

    .line 3007
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->onResize()V

    .line 3008
    or-int/lit8 v1, v0, 0x2

    return v1

    .line 3011
    :cond_11
    return v0
.end method

.method setCanAffectSystemUiFlags(Z)V
    .registers 2
    .param p1, "canAffectSystemUiFlags"  # Z

    .line 3674
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mCanAffectSystemUiFlags:Z

    .line 3675
    return-void
.end method

.method public setCastMode(Z)V
    .registers 5
    .param p1, "enable"  # Z

    .line 6898
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_16

    .line 6900
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, p1}, Landroid/view/SurfaceControl;->setCastLayer(Z)V

    .line 6903
    new-instance v0, Landroid/view/SurfaceControl$MiuiTransaction;

    invoke-direct {v0}, Landroid/view/SurfaceControl$MiuiTransaction;-><init>()V

    .line 6904
    .local v0, "t":Landroid/view/SurfaceControl$MiuiTransaction;
    iget-object v1, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0, v1, p1}, Landroid/view/SurfaceControl$MiuiTransaction;->setMiuiCastMode(Landroid/view/SurfaceControl;Z)Landroid/view/SurfaceControl$MiuiTransaction;

    .line 6905
    invoke-virtual {v0}, Landroid/view/SurfaceControl$MiuiTransaction;->apply()V
    :try_end_16
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_16} :catch_17

    .line 6909
    .end local v0  # "t":Landroid/view/SurfaceControl$MiuiTransaction;
    :cond_16
    goto :goto_30

    .line 6907
    :catch_17
    move-exception v0

    .line 6908
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Exception setCastMode in "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "WindowManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6910
    .end local v0  # "e":Ljava/lang/RuntimeException;
    :goto_30
    return-void
.end method

.method setDeferTaskAppear(Z)V
    .registers 2
    .param p1, "deferTaskAppear"  # Z

    .line 4754
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    .line 4755
    if-nez p1, :cond_7

    .line 4756
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    .line 4758
    :cond_7
    return-void
.end method

.method setDragResizing(ZI)V
    .registers 6
    .param p1, "dragResizing"  # Z
    .param p2, "dragResizeMode"  # I

    .line 3266
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    if-eq v0, p1, :cond_3f

    .line 3268
    if-eqz p1, :cond_38

    .line 3269
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/android/server/wm/DragResizeMode;->isModeAllowedForRootTask(Lcom/android/server/wm/Task;I)Z

    move-result v0

    if-eqz v0, :cond_11

    goto :goto_38

    .line 3270
    :cond_11
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Drag resize mode not allow for root task id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3271
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " dragResizeMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3273
    :cond_38
    :goto_38
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mDragResizing:Z

    .line 3274
    iput p2, p0, Lcom/android/server/wm/Task;->mDragResizeMode:I

    .line 3275
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->resetDragResizingChangeReported()V

    .line 3277
    :cond_3f
    return-void
.end method

.method setForceHidden(IZ)Z
    .registers 10
    .param p1, "flags"  # I
    .param p2, "set"  # Z

    .line 5022
    iget v0, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    .line 5023
    .local v0, "newFlags":I
    if-eqz p2, :cond_6

    .line 5024
    or-int/2addr v0, p1

    goto :goto_8

    .line 5026
    :cond_6
    not-int v1, p1

    and-int/2addr v0, v1

    .line 5028
    :goto_8
    iget v1, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    if-ne v1, v0, :cond_e

    .line 5029
    const/4 v1, 0x0

    return v1

    .line 5032
    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v1

    .line 5033
    .local v1, "wasHidden":Z
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isVisible()Z

    move-result v2

    .line 5034
    .local v2, "wasVisible":Z
    iput v0, p0, Lcom/android/server/wm/Task;->mForceHiddenFlags:I

    .line 5035
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isForceHidden()Z

    move-result v3

    .line 5036
    .local v3, "nowHidden":Z
    if-eq v1, v3, :cond_36

    .line 5037
    const-string/jumbo v4, "setForceHidden"

    .line 5038
    .local v4, "reason":Ljava/lang/String;
    const-string/jumbo v5, "setForceHidden"

    if-eqz v2, :cond_2d

    if-eqz v3, :cond_2d

    .line 5040
    const/4 v6, 0x0

    invoke-virtual {p0, v5, v6}, Lcom/android/server/wm/Task;->moveToBack(Ljava/lang/String;Lcom/android/server/wm/Task;)V

    goto :goto_36

    .line 5041
    :cond_2d
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAlwaysOnTop()Z

    move-result v6

    if-eqz v6, :cond_36

    .line 5043
    invoke-virtual {p0, v5}, Lcom/android/server/wm/Task;->moveToFront(Ljava/lang/String;)V

    .line 5046
    .end local v4  # "reason":Ljava/lang/String;
    :cond_36
    :goto_36
    const/4 v4, 0x1

    return v4
.end method

.method setForceShowForAllUsers(Z)V
    .registers 2
    .param p1, "forceShowForAllUsers"  # Z

    .line 3355
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    .line 3356
    return-void
.end method

.method setHasBeenVisible(Z)V
    .registers 4
    .param p1, "hasBeenVisible"  # Z

    .line 4740
    iput-boolean p1, p0, Lcom/android/server/wm/Task;->mHasBeenVisible:Z

    .line 4741
    if-eqz p1, :cond_19

    .line 4742
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    if-nez v0, :cond_b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    .line 4743
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_19

    .line 4744
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setHasBeenVisible(Z)V

    .line 4747
    :cond_19
    return-void
.end method

.method setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V
    .registers 5
    .param p1, "b"  # Landroid/view/SurfaceControl$Builder;

    .line 3434
    invoke-virtual {p1}, Landroid/view/SurfaceControl$Builder;->setEffectLayer()Landroid/view/SurfaceControl$Builder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/view/SurfaceControl$Builder;->setMetadata(II)Landroid/view/SurfaceControl$Builder;

    .line 3435
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->setInitialSurfaceControlProperties(Landroid/view/SurfaceControl$Builder;)V

    .line 3436
    return-void
.end method

.method setIntent(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 1069
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0, v0}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 1070
    return-void
.end method

.method setIntent(Lcom/android/server/wm/ActivityRecord;Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V
    .registers 8
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "intent"  # Landroid/content/Intent;
    .param p3, "info"  # Landroid/content/pm/ActivityInfo;

    .line 1080
    const/4 v0, 0x0

    .line 1081
    .local v0, "updateIdentity":Z
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-nez v1, :cond_7

    .line 1082
    const/4 v0, 0x1

    goto :goto_26

    .line 1083
    :cond_7
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mNeverRelinquishIdentity:Z

    if-nez v1, :cond_26

    .line 1084
    if-eqz p3, :cond_f

    move-object v1, p3

    goto :goto_11

    :cond_f
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    .line 1085
    .local v1, "activityInfo":Landroid/content/pm/ActivityInfo;
    :goto_11
    iget v2, p0, Lcom/android/server/wm/Task;->effectiveUid:I

    const/16 v3, 0x3e8

    if-eq v2, v3, :cond_24

    iget-boolean v3, p0, Lcom/android/server/wm/Task;->mIsEffectivelySystemApp:Z

    if-nez v3, :cond_24

    iget-object v3, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v3, v3, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v2, v3, :cond_22

    goto :goto_24

    :cond_22
    const/4 v2, 0x0

    goto :goto_25

    :cond_24
    :goto_24
    const/4 v2, 0x1

    :goto_25
    move v0, v2

    .line 1088
    .end local v1  # "activityInfo":Landroid/content/pm/ActivityInfo;
    :cond_26
    :goto_26
    if-eqz v0, :cond_43

    .line 1089
    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromUid:I

    iput v1, p0, Lcom/android/server/wm/Task;->mCallingUid:I

    .line 1090
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromPackage:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wm/Task;->mCallingPackage:Ljava/lang/String;

    .line 1091
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->launchedFromFeatureId:Ljava/lang/String;

    iput-object v1, p0, Lcom/android/server/wm/Task;->mCallingFeatureId:Ljava/lang/String;

    .line 1092
    if-eqz p2, :cond_38

    move-object v1, p2

    goto :goto_3a

    :cond_38
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    :goto_3a
    if-eqz p3, :cond_3e

    move-object v2, p3

    goto :goto_40

    :cond_3e
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    :goto_40
    invoke-direct {p0, v1, v2}, Lcom/android/server/wm/Task;->setIntent(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;)V

    .line 1094
    :cond_43
    invoke-direct {p0, p1}, Lcom/android/server/wm/Task;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    .line 1095
    return-void
.end method

.method setLastNonFullscreenBounds(Landroid/graphics/Rect;)V
    .registers 3
    .param p1, "bounds"  # Landroid/graphics/Rect;

    .line 2084
    iget-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    if-nez v0, :cond_c

    .line 2085
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p1}, Landroid/graphics/Rect;-><init>(Landroid/graphics/Rect;)V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastNonFullscreenBounds:Landroid/graphics/Rect;

    goto :goto_f

    .line 2087
    :cond_c
    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2089
    :goto_f
    return-void
.end method

.method setLastRecentsAnimationTransaction(Landroid/window/PictureInPictureSurfaceTransaction;Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "transaction"  # Landroid/window/PictureInPictureSurfaceTransaction;
    .param p2, "overlay"  # Landroid/view/SurfaceControl;

    .line 6734
    new-instance v0, Landroid/window/PictureInPictureSurfaceTransaction;

    invoke-direct {v0, p1}, Landroid/window/PictureInPictureSurfaceTransaction;-><init>(Landroid/window/PictureInPictureSurfaceTransaction;)V

    iput-object v0, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationTransaction:Landroid/window/PictureInPictureSurfaceTransaction;

    .line 6735
    iput-object p2, p0, Lcom/android/server/wm/Task;->mLastRecentsAnimationOverlay:Landroid/view/SurfaceControl;

    .line 6736
    return-void
.end method

.method setLockTaskAuth()V
    .registers 2

    .line 1814
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->setLockTaskAuth(Lcom/android/server/wm/ActivityRecord;)V

    .line 1815
    return-void
.end method

.method setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;)V
    .registers 4
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 4984
    invoke-direct {p0, p1, p0}, Lcom/android/server/wm/Task;->setMainWindowSizeChangeTransaction(Landroid/view/SurfaceControl$Transaction;Lcom/android/server/wm/Task;)V

    .line 4985
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda5;-><init>()V

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/android/server/wm/Task;->forAllWindows(Ljava/util/function/Consumer;Z)V

    .line 4986
    return-void
.end method

.method setMinDimensions(Landroid/content/pm/ActivityInfo;)V
    .registers 3
    .param p1, "info"  # Landroid/content/pm/ActivityInfo;

    .line 1190
    if-eqz p1, :cond_13

    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    if-eqz v0, :cond_13

    .line 1191
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minWidth:I

    iput v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 1192
    iget-object v0, p1, Landroid/content/pm/ActivityInfo;->windowLayout:Landroid/content/pm/ActivityInfo$WindowLayout;

    iget v0, v0, Landroid/content/pm/ActivityInfo$WindowLayout;->minHeight:I

    iput v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    goto :goto_18

    .line 1194
    :cond_13
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    .line 1195
    iput v0, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    .line 1197
    :goto_18
    return-void
.end method

.method setNextAffiliate(Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "nextAffiliate"  # Lcom/android/server/wm/Task;

    .line 1233
    iput-object p1, p0, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 1234
    if-nez p1, :cond_6

    const/4 v0, -0x1

    goto :goto_8

    :cond_6
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_8
    iput v0, p0, Lcom/android/server/wm/Task;->mNextAffiliateTaskId:I

    .line 1235
    return-void
.end method

.method setPrevAffiliate(Lcom/android/server/wm/Task;)V
    .registers 3
    .param p1, "prevAffiliate"  # Lcom/android/server/wm/Task;

    .line 1228
    iput-object p1, p0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    .line 1229
    if-nez p1, :cond_6

    const/4 v0, -0x1

    goto :goto_8

    :cond_6
    iget v0, p1, Lcom/android/server/wm/Task;->mTaskId:I

    :goto_8
    iput v0, p0, Lcom/android/server/wm/Task;->mPrevAffiliateTaskId:I

    .line 1230
    return-void
.end method

.method setResizeMode(I)V
    .registers 5
    .param p1, "resizeMode"  # I

    .line 850
    iget v0, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    if-ne v0, p1, :cond_5

    .line 851
    return-void

    .line 853
    :cond_5
    iput p1, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    .line 854
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 855
    iget-object v0, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 856
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 857
    return-void
.end method

.method setRootProcess(Lcom/android/server/wm/WindowProcessController;)V
    .registers 4
    .param p1, "proc"  # Lcom/android/server/wm/WindowProcessController;

    .line 2691
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->clearRootProcess()V

    .line 2692
    iget-object v0, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v0, :cond_15

    .line 2693
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x800000

    and-int/2addr v0, v1

    if-nez v0, :cond_15

    .line 2694
    iput-object p1, p0, Lcom/android/server/wm/Task;->mRootProcess:Lcom/android/server/wm/WindowProcessController;

    .line 2695
    invoke-virtual {p1, p0}, Lcom/android/server/wm/WindowProcessController;->addRecentTask(Lcom/android/server/wm/Task;)V

    .line 2697
    :cond_15
    return-void
.end method

.method setSurfaceControl(Landroid/view/SurfaceControl;)V
    .registers 2
    .param p1, "sc"  # Landroid/view/SurfaceControl;

    .line 4870
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 4873
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    .line 4874
    return-void
.end method

.method setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V
    .registers 2
    .param p1, "taskDescription"  # Landroid/app/ActivityManager$TaskDescription;

    .line 3528
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 3529
    return-void
.end method

.method setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z
    .registers 3
    .param p1, "organizer"  # Landroid/window/ITaskOrganizer;

    .line 4801
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;Z)Z

    move-result v0

    return v0
.end method

.method setTaskOrganizer(Landroid/window/ITaskOrganizer;Z)Z
    .registers 7
    .param p1, "organizer"  # Landroid/window/ITaskOrganizer;
    .param p2, "skipTaskAppeared"  # Z

    .line 4806
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    const/4 v1, 0x0

    if-ne v0, p1, :cond_6

    .line 4807
    return v1

    .line 4810
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 4813
    .local v0, "prevOrganizer":Landroid/window/ITaskOrganizer;
    iput-object p1, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    .line 4815
    invoke-direct {p0, v0}, Lcom/android/server/wm/Task;->sendTaskVanished(Landroid/window/ITaskOrganizer;)V

    .line 4817
    iget-object v2, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v2, :cond_17

    .line 4818
    if-nez p2, :cond_2e

    .line 4819
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->sendTaskAppeared()V

    goto :goto_2e

    .line 4823
    :cond_17
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    .line 4824
    .local v2, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v2, :cond_20

    .line 4825
    invoke-virtual {v2, p0}, Lcom/android/server/wm/TaskDisplayArea;->removeLaunchRootTask(Lcom/android/server/wm/Task;)V

    .line 4827
    :cond_20
    const/4 v3, 0x2

    invoke-virtual {p0, v3, v1}, Lcom/android/server/wm/Task;->setForceHidden(IZ)Z

    .line 4828
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v1, :cond_2e

    .line 4829
    const-string/jumbo v1, "setTaskOrganizer"

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->removeImmediately(Ljava/lang/String;)V

    .line 4833
    .end local v2  # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_2e
    :goto_2e
    const/4 v1, 0x1

    return v1
.end method

.method setTaskToAffiliateWith(Lcom/android/server/wm/Task;)V
    .registers 6
    .param p1, "taskToAffiliateWith"  # Lcom/android/server/wm/Task;

    .line 1433
    invoke-direct {p0}, Lcom/android/server/wm/Task;->closeRecentsChain()V

    .line 1434
    iget v0, p1, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iput v0, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    .line 1436
    :goto_7
    iget-object v0, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    const/4 v1, 0x0

    if-eqz v0, :cond_52

    .line 1437
    iget-object v0, p1, Lcom/android/server/wm/Task;->mNextAffiliate:Lcom/android/server/wm/Task;

    .line 1438
    .local v0, "nextRecents":Lcom/android/server/wm/Task;
    iget v2, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    iget v3, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    if-eq v2, v3, :cond_50

    .line 1439
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setTaskToAffiliateWith: nextRecents="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " affilTaskId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " should be "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/Task;->mAffiliatedTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ActivityTaskManager"

    invoke-static {v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    iget-object v2, v0, Lcom/android/server/wm/Task;->mPrevAffiliate:Lcom/android/server/wm/Task;

    if-ne v2, p1, :cond_4c

    .line 1442
    invoke-virtual {v0, v1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1444
    :cond_4c
    invoke-virtual {p1, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1445
    goto :goto_52

    .line 1447
    :cond_50
    move-object p1, v0

    .line 1448
    .end local v0  # "nextRecents":Lcom/android/server/wm/Task;
    goto :goto_7

    .line 1449
    :cond_52
    :goto_52
    invoke-virtual {p1, p0}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1450
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->setPrevAffiliate(Lcom/android/server/wm/Task;)V

    .line 1451
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setNextAffiliate(Lcom/android/server/wm/Task;)V

    .line 1452
    return-void
.end method

.method public setWindowingMode(I)V
    .registers 3
    .param p1, "windowingMode"  # I

    .line 5075
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_a

    .line 5076
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->setWindowingMode(I)V

    .line 5077
    return-void

    .line 5080
    :cond_a
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/Task;->setWindowingMode(IZ)V

    .line 5081
    return-void
.end method

.method setWindowingMode(IZ)V
    .registers 5
    .param p1, "preferredWindowingMode"  # I
    .param p2, "creating"  # Z

    .line 5092
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda44;-><init>(Lcom/android/server/wm/Task;IZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->inSurfaceTransaction(Ljava/lang/Runnable;)V

    .line 5094
    return-void
.end method

.method shouldAnimate()Z
    .registers 4

    .line 3418
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    .line 3419
    return v1

    .line 3424
    :cond_8
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowManagerService;->getRecentsAnimationController()Lcom/android/server/wm/RecentsAnimationController;

    move-result-object v0

    .line 3425
    .local v0, "controller":Lcom/android/server/wm/RecentsAnimationController;
    if-eqz v0, :cond_1d

    invoke-virtual {v0, p0}, Lcom/android/server/wm/RecentsAnimationController;->isAnimatingTask(Lcom/android/server/wm/Task;)Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3426
    invoke-virtual {v0}, Lcom/android/server/wm/RecentsAnimationController;->shouldDeferCancelUntilNextTransition()Z

    move-result v2

    if-eqz v2, :cond_1d

    .line 3427
    return v1

    .line 3429
    :cond_1d
    const/4 v1, 0x1

    return v1
.end method

.method shouldIgnoreInput()Z
    .registers 2

    .line 6779
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mHasLeanbackFeature:Z

    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_14

    .line 6780
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result v0

    if-nez v0, :cond_14

    .line 6782
    const/4 v0, 0x1

    return v0

    .line 6784
    :cond_14
    const/4 v0, 0x0

    return v0
.end method

.method shouldResizeRootTaskWithLaunchBounds()Z
    .registers 2

    .line 5476
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    return v0
.end method

.method shouldSleepActivities()Z
    .registers 5

    .line 6818
    iget-object v0, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 6819
    .local v0, "display":Lcom/android/server/wm/DisplayContent;
    iget-object v1, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_d

    .line 6820
    iget-object v1, p0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isKeyguardGoingAway()Z

    move-result v1

    goto :goto_17

    .line 6821
    :cond_d
    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultDisplay()Lcom/android/server/wm/DisplayContent;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->isKeyguardGoingAway()Z

    move-result v1

    :goto_17
    nop

    .line 6825
    .local v1, "isKeyguardGoingAway":Z
    const/4 v2, 0x0

    if-eqz v1, :cond_26

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isFocusedRootTaskOnDisplay()Z

    move-result v3

    if-eqz v3, :cond_26

    iget-boolean v3, v0, Lcom/android/server/wm/DisplayContent;->isDefaultDisplay:Z

    if-eqz v3, :cond_26

    .line 6830
    return v2

    .line 6835
    :cond_26
    if-eqz v0, :cond_36

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isSleeping()Z

    move-result v3

    if-eqz v3, :cond_3c

    invoke-virtual {v0}, Lcom/android/server/wm/DisplayContent;->isTopResumedActivityHoldingOn()Z

    move-result v3

    if-nez v3, :cond_3c

    const/4 v2, 0x1

    goto :goto_3c

    :cond_36
    iget-object v2, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingLocked()Z

    move-result v2

    :cond_3c
    :goto_3c
    return v2
.end method

.method shouldUpRecreateTaskLocked(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .registers 10
    .param p1, "srec"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "destAffinity"  # Ljava/lang/String;

    .line 6005
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v0

    iget v1, p1, Lcom/android/server/wm/ActivityRecord;->launchMode:I

    invoke-static {p2, v0, v1}, Lcom/android/server/wm/ActivityRecord;->computeTaskAffinity(Ljava/lang/String;II)Ljava/lang/String;

    move-result-object v0

    .line 6007
    .local v0, "affinity":Ljava/lang/String;
    const/4 v1, 0x1

    if-eqz p1, :cond_70

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v2, :cond_70

    .line 6008
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_22

    goto :goto_70

    .line 6015
    :cond_22
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 6016
    .local v2, "task":Lcom/android/server/wm/Task;
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isRootOfTask()Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_6f

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    if-eqz v3, :cond_6f

    .line 6017
    invoke-virtual {v2}, Lcom/android/server/wm/Task;->getBaseIntent()Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Intent;->isDocument()Z

    move-result v3

    if-eqz v3, :cond_6f

    .line 6019
    invoke-direct {p0}, Lcom/android/server/wm/Task;->inFrontOfStandardRootTask()Z

    move-result v3

    if-nez v3, :cond_44

    .line 6021
    return v1

    .line 6024
    :cond_44
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->getTaskBelow(Lcom/android/server/wm/Task;)Lcom/android/server/wm/Task;

    move-result-object v3

    .line 6025
    .local v3, "prevTask":Lcom/android/server/wm/Task;
    if-nez v3, :cond_64

    .line 6026
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "shouldUpRecreateTask: task not in history for "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, "ActivityTaskManager"

    invoke-static {v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 6027
    return v4

    .line 6029
    :cond_64
    iget-object v5, v2, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    iget-object v6, v3, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6f

    .line 6031
    return v1

    .line 6034
    .end local v3  # "prevTask":Lcom/android/server/wm/Task;
    :cond_6f
    return v4

    .line 6009
    .end local v2  # "task":Lcom/android/server/wm/Task;
    :cond_70
    :goto_70
    return v1
.end method

.method showForAllUsers()Z
    .registers 4

    .line 3343
    iget-object v0, p0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_a

    return v1

    .line 3344
    :cond_a
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 3345
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_15

    iget-boolean v2, v0, Lcom/android/server/wm/ActivityRecord;->mShowForAllUsers:Z

    if-eqz v2, :cond_15

    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method public showShadow()V
    .registers 8

    .line 3727
    const/4 v0, 0x0

    .line 3728
    .local v0, "isBackStack":Z
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 3729
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mIsBack:Z

    .line 3731
    :cond_9
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_a2

    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mFreeFormShadowShow:Z

    if-nez v1, :cond_a2

    if-nez v0, :cond_a2

    .line 3732
    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    if-eqz v1, :cond_28

    .line 3733
    iget-object v1, p0, Lcom/android/server/wm/Task;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v1}, Lcom/android/server/wm/RootWindowContainer;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/TaskDisplayArea;->getRootPinnedTask()Lcom/android/server/wm/Task;

    move-result-object v1

    goto :goto_29

    .line 3734
    :cond_28
    const/4 v1, 0x0

    :goto_29
    nop

    .line 3735
    .local v1, "rootPinnedStask":Lcom/android/server/wm/Task;
    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_36

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-eqz v4, :cond_36

    move v4, v3

    goto :goto_37

    :cond_36
    move v4, v2

    .line 3736
    .local v4, "isPipshow":Z
    :goto_37
    const-string v5, "ActivityTaskManager"

    if-nez v4, :cond_51

    iget-object v6, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mIsFreeformShadowMode:Z

    if-nez v6, :cond_51

    .line 3737
    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v3, v2, Lcom/android/server/wm/WindowManagerService;->mIsFreeformShadowMode:Z

    .line 3738
    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->setGlobalShadowFreeformSettings()V

    .line 3739
    const-string/jumbo v2, "setGlobalShadowFreeformSettings"

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_68

    .line 3740
    :cond_51
    if-eqz v4, :cond_68

    iget-object v6, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-boolean v6, v6, Lcom/android/server/wm/WindowManagerService;->mIsFreeformShadowMode:Z

    if-eqz v6, :cond_68

    .line 3741
    iget-object v6, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iput-boolean v2, v6, Lcom/android/server/wm/WindowManagerService;->mIsFreeformShadowMode:Z

    .line 3742
    iget-object v2, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowManagerService;->setGlobalShadowSettings()V

    .line 3743
    const-string/jumbo v2, "setGlobalShadowSettings"

    invoke-static {v5, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3745
    :cond_68
    :goto_68
    if-eqz v4, :cond_79

    .line 3746
    const/4 v2, 0x5

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wm/DisplayContent;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v5

    invoke-static {v2, v5}, Lcom/android/server/wm/WindowManagerService;->dipToPixel(ILandroid/util/DisplayMetrics;)I

    move-result v2

    int-to-float v2, v2

    goto :goto_7d

    .line 3747
    :cond_79
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getShadowRadius()F

    move-result v2

    :goto_7d
    nop

    .line 3748
    .local v2, "freeformShadowRadius":F
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    if-eqz v5, :cond_a0

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v5

    if-eqz v5, :cond_a0

    .line 3749
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v5

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v6

    invoke-virtual {v5, v6, v2}, Landroid/view/SurfaceControl$Transaction;->setShadowRadius(Landroid/view/SurfaceControl;F)Landroid/view/SurfaceControl$Transaction;

    .line 3750
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v5

    invoke-direct {p0, v5}, Lcom/android/server/wm/Task;->setScreenProjectionFlag(Landroid/view/SurfaceControl;)V

    .line 3752
    :cond_a0
    iput-boolean v3, p0, Lcom/android/server/wm/Task;->mFreeFormShadowShow:Z

    .line 3754
    .end local v1  # "rootPinnedStask":Lcom/android/server/wm/Task;
    .end local v2  # "freeformShadowRadius":F
    .end local v4  # "isPipshow":Z
    :cond_a2
    return-void
.end method

.method showSurfaceOnCreation()Z
    .registers 4

    .line 4712
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 4715
    return v1

    .line 4718
    :cond_6
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v2

    invoke-interface {v0, v2}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v0

    .line 4719
    .local v0, "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->isLaunchingSmallFreeForm()Z

    move-result v2

    if-eqz v2, :cond_1c

    .line 4720
    const/4 v1, 0x0

    return v1

    .line 4724
    :cond_1c
    invoke-direct {p0}, Lcom/android/server/wm/Task;->canBeOrganized()Z

    move-result v2

    xor-int/2addr v1, v2

    return v1
.end method

.method showToCurrentUser()Z
    .registers 3

    .line 3350
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mForceShowForAllUsers:Z

    if-nez v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showForAllUsers()Z

    move-result v0

    if-nez v0, :cond_1b

    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    .line 3351
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v1

    iget v1, v1, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowManagerService;->isCurrentProfile(I)Z

    move-result v0

    if-eqz v0, :cond_19

    goto :goto_1b

    :cond_19
    const/4 v0, 0x0

    goto :goto_1c

    :cond_1b
    :goto_1b
    const/4 v0, 0x1

    .line 3350
    :goto_1c
    return v0
.end method

.method startActivityLocked(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;ZZLandroid/app/ActivityOptions;Lcom/android/server/wm/ActivityRecord;)V
    .registers 27
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "topTask"  # Lcom/android/server/wm/Task;
    .param p3, "newTask"  # Z
    .param p4, "isTaskSwitch"  # Z
    .param p5, "options"  # Landroid/app/ActivityOptions;
    .param p6, "sourceRecord"  # Lcom/android/server/wm/ActivityRecord;

    .line 5677
    move-object/from16 v0, p0

    move-object/from16 v7, p1

    move-object/from16 v8, p5

    invoke-static/range {p2 .. p2}, Lcom/android/server/wm/Task;->findEnterPipOnTaskSwitchCandidate(Lcom/android/server/wm/Task;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v9

    .line 5678
    .local v9, "pipCandidate":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    .line 5679
    .local v10, "rTask":Lcom/android/server/wm/Task;
    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v8, :cond_1b

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getAvoidMoveToFront()Z

    move-result v3

    if-nez v3, :cond_19

    goto :goto_1b

    :cond_19
    move v3, v2

    goto :goto_1c

    :cond_1b
    :goto_1b
    move v3, v1

    :goto_1c
    move v11, v3

    .line 5680
    .local v11, "allowMoveToFront":Z
    if-eq v10, v0, :cond_28

    invoke-virtual {v0, v10}, Lcom/android/server/wm/Task;->hasChild(Lcom/android/server/wm/WindowContainer;)Z

    move-result v3

    if-eqz v3, :cond_26

    goto :goto_28

    :cond_26
    move v3, v2

    goto :goto_29

    :cond_28
    :goto_28
    move v3, v1

    :goto_29
    move v12, v3

    .line 5682
    .local v12, "isOrhasTask":Z
    iget-boolean v3, v7, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-nez v3, :cond_37

    if-eqz v11, :cond_37

    if-eqz v12, :cond_34

    if-eqz p3, :cond_37

    .line 5686
    :cond_34
    invoke-virtual {v0, v10}, Lcom/android/server/wm/Task;->positionChildAtTop(Lcom/android/server/wm/Task;)V

    .line 5688
    :cond_37
    const/4 v3, 0x0

    .line 5689
    .local v3, "task":Lcom/android/server/wm/Task;
    if-nez p3, :cond_46

    if-eqz v12, :cond_46

    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result v4

    if-nez v4, :cond_46

    .line 5690
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 5691
    return-void

    .line 5698
    :cond_46
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v13

    .line 5699
    .local v13, "activityTask":Lcom/android/server/wm/Task;
    const-string v4, "ActivityTaskManager"

    if-ne v3, v13, :cond_69

    iget-object v5, v0, Lcom/android/server/wm/Task;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v5, v3}, Lcom/android/server/wm/WindowList;->indexOf(Ljava/lang/Object;)I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v6

    sub-int/2addr v6, v1

    if-eq v5, v6, :cond_69

    .line 5700
    iget-object v5, v0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v2, v5, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    .line 5701
    sget-boolean v5, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_USER_LEAVING:Z

    if-eqz v5, :cond_69

    const-string/jumbo v5, "startActivity() behind front, mUserLeaving=false"

    invoke-static {v4, v5}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5705
    :cond_69
    move-object v14, v13

    .line 5708
    .end local v3  # "task":Lcom/android/server/wm/Task;
    .local v14, "task":Lcom/android/server/wm/Task;
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_ADD_REMOVE_enabled:Z

    if-eqz v3, :cond_9f

    invoke-static/range {p1 .. p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    invoke-static {v14}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam1":Ljava/lang/String;
    new-instance v15, Ljava/lang/RuntimeException;

    const-string v5, "here"

    invoke-direct {v15, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v15}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam2":Ljava/lang/String;
    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_ADD_REMOVE:Lcom/android/internal/protolog/ProtoLogGroup;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v3, v1, v2

    const/16 v17, 0x1

    aput-object v6, v1, v17

    const/16 v19, 0x2

    aput-object v5, v1, v19

    move-object/from16 v19, v3

    move-object/from16 v18, v5

    const v3, -0x6544f687

    const/4 v5, 0x0

    .end local v3  # "protoLogParam0":Ljava/lang/String;
    .end local v5  # "protoLogParam2":Ljava/lang/String;
    .local v18, "protoLogParam2":Ljava/lang/String;
    .local v19, "protoLogParam0":Ljava/lang/String;
    invoke-static {v15, v3, v2, v5, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 5711
    .end local v6  # "protoLogParam1":Ljava/lang/String;
    .end local v18  # "protoLogParam2":Ljava/lang/String;
    .end local v19  # "protoLogParam0":Ljava/lang/String;
    :cond_9f
    sget-object v1, Lcom/android/server/wm/Task;->mActivityPluginDelegate:Lcom/android/server/wm/ActivityPluginDelegate;

    if-eqz v1, :cond_b4

    .line 5712
    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 5713
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    const/4 v5, 0x1

    if-ne v3, v5, :cond_b0

    const/4 v3, 0x1

    goto :goto_b1

    :cond_b0
    move v3, v2

    :goto_b1
    invoke-static {v1, v3}, Lcom/android/server/wm/ActivityPluginDelegate;->activityInvokeNotification(Ljava/lang/String;Z)V

    .line 5724
    :cond_b4
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->isActivityTypeHomeOrRecents()Z

    move-result v1

    if-eqz v1, :cond_c0

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->hasActivity()Z

    move-result v1

    if-eqz v1, :cond_1bb

    :cond_c0
    if-eqz v11, :cond_1bb

    .line 5725
    iget-object v15, v0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 5726
    .local v15, "dc":Lcom/android/server/wm/DisplayContent;
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v1, :cond_de

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Prepare open transition: starting "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 5729
    :cond_de
    iget-object v1, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const/high16 v3, 0x10000

    and-int/2addr v1, v3

    if-eqz v1, :cond_f4

    .line 5730
    invoke-virtual {v15, v2}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 5731
    iget-object v1, v0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_123

    .line 5733
    :cond_f4
    const/4 v1, 0x6

    .line 5734
    .local v1, "transit":I
    if-eqz p3, :cond_105

    .line 5735
    iget-boolean v3, v7, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v3, :cond_fe

    .line 5736
    const/16 v1, 0x10

    goto :goto_118

    .line 5742
    :cond_fe
    const/4 v3, 0x0

    invoke-static {v9, v3, v7, v8}, Lcom/android/server/wm/Task;->enableEnterPipOnTaskSwitch(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)V

    .line 5744
    const/16 v1, 0x8

    goto :goto_118

    .line 5748
    :cond_105
    iget v3, v7, Lcom/android/server/wm/ActivityRecord;->realCallingUid:I

    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getHomeUid()I

    move-result v4

    if-ne v3, v4, :cond_118

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/Task;->inFreeformSmallWinMode()Z

    move-result v3

    if-eqz v3, :cond_118

    .line 5749
    const/16 v1, 0x8

    .line 5750
    const/4 v3, -0x2

    iput v3, v7, Lcom/android/server/wm/ActivityRecord;->realCallingUid:I

    .line 5753
    :cond_118
    :goto_118
    const/4 v3, 0x1

    invoke-virtual {v15, v3}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 5754
    iget-object v3, v0, Lcom/android/server/wm/Task;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 5756
    .end local v1  # "transit":I
    :goto_123
    const/4 v1, 0x1

    .line 5757
    .local v1, "doShow":Z
    if-eqz p3, :cond_142

    .line 5763
    iget-object v3, v7, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    invoke-virtual {v3}, Landroid/content/Intent;->getFlags()I

    move-result v3

    const/high16 v4, 0x200000

    and-int/2addr v3, v4

    if-eqz v3, :cond_14f

    .line 5764
    invoke-virtual {v0, v7, v7}, Lcom/android/server/wm/Task;->resetTaskIfNeeded(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    .line 5765
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/android/server/wm/Task;->topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    if-ne v4, v7, :cond_13d

    const/4 v3, 0x1

    goto :goto_13e

    :cond_13d
    move v3, v2

    :goto_13e
    move v1, v3

    move/from16 v18, v1

    goto :goto_151

    .line 5767
    :cond_142
    if-eqz v8, :cond_14f

    invoke-virtual/range {p5 .. p5}, Landroid/app/ActivityOptions;->getAnimationType()I

    move-result v3

    const/4 v4, 0x5

    if-ne v3, v4, :cond_14f

    .line 5769
    const/4 v1, 0x0

    move/from16 v18, v1

    goto :goto_151

    .line 5771
    :cond_14f
    move/from16 v18, v1

    .end local v1  # "doShow":Z
    .local v18, "doShow":Z
    :goto_151
    iget-boolean v1, v7, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_163

    .line 5775
    const/4 v1, 0x1

    invoke-virtual {v7, v1}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 5776
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v2, v2}, Lcom/android/server/wm/Task;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 5779
    iget-object v1, v0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    goto :goto_1ba

    .line 5780
    :cond_163
    if-eqz v18, :cond_1ba

    .line 5785
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 5786
    .local v1, "baseTask":Lcom/android/server/wm/Task;
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_17d

    .line 5791
    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    move-object v6, v1

    goto :goto_17e

    .line 5786
    :cond_17d
    move-object v6, v1

    .line 5794
    .end local v1  # "baseTask":Lcom/android/server/wm/Task;
    .local v6, "baseTask":Lcom/android/server/wm/Task;
    :goto_17e
    new-instance v1, Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda1;-><init>()V

    invoke-virtual {v6, v1}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v16

    .line 5797
    .local v16, "prev":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->isSplitMode()Z

    move-result v1

    if-eqz v1, :cond_196

    .line 5798
    iget-object v1, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setSplittable(Z)V

    goto :goto_1a7

    .line 5799
    :cond_196
    iget-object v1, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowManagerService;->isSplitMode()Z

    move-result v1

    if-eqz v1, :cond_1a7

    .line 5800
    iget-object v1, v0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/WindowManagerService;->setSplittable(Z)V

    .line 5803
    :cond_1a7
    :goto_1a7
    iget-object v1, v0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v1, v1, Lcom/android/server/wm/WindowManagerService;->mStartingSurfaceController:Lcom/android/server/wm/StartingSurfaceController;

    move-object/from16 v2, p1

    move-object/from16 v3, v16

    move/from16 v4, p3

    move/from16 v5, p4

    move-object/from16 v17, v6

    .end local v6  # "baseTask":Lcom/android/server/wm/Task;
    .local v17, "baseTask":Lcom/android/server/wm/Task;
    move-object/from16 v6, p6

    invoke-virtual/range {v1 .. v6}, Lcom/android/server/wm/StartingSurfaceController;->showStartingWindow(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;ZZLcom/android/server/wm/ActivityRecord;)V

    .line 5806
    .end local v15  # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v16  # "prev":Lcom/android/server/wm/ActivityRecord;
    .end local v17  # "baseTask":Lcom/android/server/wm/Task;
    .end local v18  # "doShow":Z
    :cond_1ba
    :goto_1ba
    goto :goto_1be

    .line 5809
    :cond_1bb
    invoke-static/range {p5 .. p5}, Landroid/app/ActivityOptions;->abort(Landroid/app/ActivityOptions;)V

    .line 5811
    :goto_1be
    return-void
.end method

.method supportsFreeform()Z
    .registers 2

    .line 1845
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    return v0
.end method

.method supportsFreeformInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 3
    .param p1, "tda"  # Lcom/android/server/wm/TaskDisplayArea;

    .line 1853
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsFreeformWindowManagement:Z

    if-eqz v0, :cond_e

    .line 1856
    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->supportsMultiWindowInDisplayAreaForFreeForm(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 1853
    :goto_f
    return v0
.end method

.method supportsMultiWindowInDisplayAreaForFreeForm(Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 9
    .param p1, "tda"  # Lcom/android/server/wm/TaskDisplayArea;

    .line 1883
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMIUIProduct()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    return v0

    .line 1885
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 1886
    return v1

    .line 1888
    :cond_13
    const-string v0, "ActivityTaskManager"

    if-nez p1, :cond_3e

    .line 1889
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t find TaskDisplayArea to determine support for multi window. Task id="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " attached="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1890
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1889
    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1891
    return v1

    .line 1894
    :cond_3e
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->supportsFreeform()Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_46

    .line 1895
    return v3

    .line 1898
    :cond_46
    iget-object v2, p0, Lcom/android/server/wm/Task;->origActivity:Landroid/content/ComponentName;

    const-string/jumbo v4, "unknown"

    if-eqz v2, :cond_52

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_69

    .line 1899
    :cond_52
    iget-object v2, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v2, :cond_5b

    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    goto :goto_69

    .line 1900
    :cond_5b
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_68

    .line 1901
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    iget-object v2, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    goto :goto_69

    :cond_68
    move-object v2, v4

    :goto_69
    nop

    .line 1902
    .local v2, "packageName":Ljava/lang/String;
    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8d

    .line 1903
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "supportsMultiWindowInDisplayAreaForFreeForm: task="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " packageName: unknown"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1906
    :cond_8d
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getFreeformResizeableWhiteList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    const-string/jumbo v5, "supportsMultiWindowInDisplayAreaForFreeForm: package="

    if-nez v4, :cond_f4

    iget-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v4, :cond_af

    .line 1908
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getFreeformResizeableWhiteList()Ljava/util/List;

    move-result-object v4

    iget-object v6, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    invoke-virtual {v6}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_af

    goto :goto_f4

    .line 1917
    :cond_af
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->getFreeformBlackList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d4

    .line 1918
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " is in freeform blackList"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1919
    return v1

    .line 1922
    :cond_d4
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_e1

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->supportsNonResizableMultiWindow()Z

    move-result v0

    if-nez v0, :cond_e1

    .line 1924
    return v1

    .line 1926
    :cond_e1
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1927
    .local v0, "rootActivity":Lcom/android/server/wm/ActivityRecord;
    iget v1, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    iget v3, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    .line 1928
    if-eqz v0, :cond_ee

    iget-object v4, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_ef

    :cond_ee
    const/4 v4, 0x0

    .line 1927
    :goto_ef
    invoke-virtual {p1, v1, v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->supportsActivityMinWidthHeightMultiWindow(IILandroid/content/pm/ActivityInfo;)Z

    move-result v1

    return v1

    .line 1909
    .end local v0  # "rootActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_f4
    :goto_f4
    iget-object v4, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1910
    invoke-virtual {v4}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v4

    .line 1909
    const-string v6, "com.miui.securitycenter/com.miui.applicationlock.ConfirmAccessControl"

    invoke-virtual {v6, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_109

    .line 1910
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v4

    if-nez v4, :cond_109

    .line 1911
    return v1

    .line 1913
    :cond_109
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, " is in freeform whiteList"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1914
    return v3
.end method

.method supportsMultiWindowInDisplayAreaForSplit(Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 6
    .param p1, "tda"  # Lcom/android/server/wm/TaskDisplayArea;

    .line 1861
    invoke-static {}, Lcom/android/server/wm/MiuiFreeformServicesUtils;->isMIUIProduct()Z

    move-result v0

    if-nez v0, :cond_b

    invoke-virtual {p0, p1}, Lcom/android/server/wm/Task;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    return v0

    .line 1863
    :cond_b
    iget-object v0, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_13

    .line 1864
    return v1

    .line 1866
    :cond_13
    if-nez p1, :cond_3e

    .line 1867
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Can\'t find TaskDisplayArea to determine support for multi window. Task id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " attached="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1868
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isAttached()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1867
    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    return v1

    .line 1872
    :cond_3e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v0

    if-nez v0, :cond_4a

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->supportsNonResizableMultiWindow()Z

    move-result v0

    if-eqz v0, :cond_5e

    :cond_4a
    iget-object v0, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_5f

    .line 1873
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/wm/Task;->realActivity:Landroid/content/ComponentName;

    .line 1874
    invoke-virtual {v2}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->inResizeBlackList(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5f

    .line 1875
    :cond_5e
    return v1

    .line 1877
    :cond_5f
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1878
    .local v0, "rootActivity":Lcom/android/server/wm/ActivityRecord;
    iget v1, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    iget v2, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    .line 1879
    if-eqz v0, :cond_6c

    iget-object v3, v0, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_6d

    :cond_6c
    const/4 v3, 0x0

    .line 1878
    :goto_6d
    invoke-virtual {p1, v1, v2, v3}, Lcom/android/server/wm/TaskDisplayArea;->supportsActivityMinWidthHeightMultiWindow(IILandroid/content/pm/ActivityInfo;)Z

    move-result v1

    return v1
.end method

.method public supportsSplitScreenWindowingMode()Z
    .registers 2

    .line 1825
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    return v0
.end method

.method supportsSplitScreenWindowingModeInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 4
    .param p1, "tda"  # Lcom/android/server/wm/TaskDisplayArea;

    .line 1829
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 1830
    .local v0, "topTask":Lcom/android/server/wm/Task;
    invoke-super {p0}, Lcom/android/server/wm/TaskFragment;->supportsSplitScreenWindowingMode()Z

    move-result v1

    if-eqz v1, :cond_18

    if-eqz v0, :cond_12

    .line 1831
    invoke-direct {v0, p1}, Lcom/android/server/wm/Task;->supportsSplitScreenWindowingModeInner(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v1

    if-eqz v1, :cond_18

    :cond_12
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->mIsSplitMode:Z

    if-nez v1, :cond_18

    const/4 v1, 0x1

    goto :goto_19

    :cond_18
    const/4 v1, 0x0

    .line 1830
    :goto_19
    return v1
.end method

.method switchUser(I)V
    .registers 5
    .param p1, "userId"  # I

    .line 5351
    iget v0, p0, Lcom/android/server/wm/Task;->mCurrentUser:I

    if-ne v0, p1, :cond_5

    .line 5352
    return-void

    .line 5354
    :cond_5
    iput p1, p0, Lcom/android/server/wm/Task;->mCurrentUser:I

    .line 5356
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->switchUser(I)V

    .line 5357
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v0

    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->showToCurrentUser()Z

    move-result v0

    if-eqz v0, :cond_21

    .line 5358
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const v1, 0x7fffffff

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Lcom/android/server/wm/WindowContainer;->positionChildAt(ILcom/android/server/wm/WindowContainer;Z)V

    .line 5360
    :cond_21
    return-void
.end method

.method taskAppearedReady()Z
    .registers 4

    .line 4770
    iget-object v0, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    const/4 v1, 0x0

    if-nez v0, :cond_6

    .line 4771
    return v1

    .line 4774
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mDeferTaskAppear:Z

    if-eqz v0, :cond_b

    .line 4775
    return v1

    .line 4778
    :cond_b
    iget-boolean v0, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_11

    .line 4779
    return v2

    .line 4782
    :cond_11
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_1c

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getHasBeenVisible()Z

    move-result v0

    if-eqz v0, :cond_1c

    move v1, v2

    :cond_1c
    return v1
.end method

.method public toString()Ljava/lang/String;
    .registers 5

    .line 4224
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 4225
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    if-eqz v1, :cond_73

    .line 4226
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4227
    const-string v1, " U="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4228
    iget v1, p0, Lcom/android/server/wm/Task;->mUserId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4229
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 4230
    .local v1, "rootTask":Lcom/android/server/wm/Task;
    if-eq v1, p0, :cond_28

    .line 4231
    const-string v2, " rootTaskId="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4232
    iget v2, v1, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4234
    :cond_28
    const-string v2, " visible="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4235
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4236
    const-string v3, " visibleRequested="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4237
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isVisibleRequested()Z

    move-result v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4238
    const-string v3, " mode="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4239
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v3

    invoke-static {v3}, Landroid/app/WindowConfiguration;->windowingModeToString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4240
    const-string v3, " translucent="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4241
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 4242
    const-string v2, " sz="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4243
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getChildCount()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4244
    const/16 v2, 0x7d

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 4245
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 4247
    .end local v1  # "rootTask":Lcom/android/server/wm/Task;
    :cond_73
    const-string v1, "Task{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4248
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4249
    const-string v1, " #"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4250
    iget v1, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 4251
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " type="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v2

    invoke-static {v2}, Landroid/app/WindowConfiguration;->activityTypeToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4252
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    if-eqz v1, :cond_ba

    .line 4253
    const-string v1, " A="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4254
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinity:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f9

    .line 4255
    :cond_ba
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_d7

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_d7

    .line 4256
    const-string v1, " I="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4257
    iget-object v1, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f9

    .line 4258
    :cond_d7
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    if-eqz v1, :cond_f4

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    if-eqz v1, :cond_f4

    .line 4259
    const-string v1, " aI="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4260
    iget-object v1, p0, Lcom/android/server/wm/Task;->affinityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_f9

    .line 4262
    :cond_f4
    const-string v1, " ??"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4264
    :goto_f9
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wm/Task;->stringName:Ljava/lang/String;

    .line 4265
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method topActivityContainsStartingWindow()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 1496
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1497
    const/4 v0, 0x0

    return-object v0

    .line 1499
    :cond_8
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(Landroid/os/IBinder;I)Lcom/android/server/wm/ActivityRecord;
    .registers 6
    .param p1, "token"  # Landroid/os/IBinder;
    .param p2, "taskId"  # I

    .line 3470
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda8;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 3471
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 3470
    invoke-static {v0, v1, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 3472
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3473
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 3474
    return-object v1
.end method

.method topRunningActivityLocked()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 1478
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    if-nez v0, :cond_8

    .line 1479
    const/4 v0, 0x0

    return-object v0

    .line 1481
    :cond_8
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda21;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningNonDelayedActivityLocked(Lcom/android/server/wm/ActivityRecord;)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .param p1, "notTop"  # Lcom/android/server/wm/ActivityRecord;

    .line 3449
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda35;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda35;-><init>()V

    const-class v1, Lcom/android/server/wm/ActivityRecord;

    .line 3450
    invoke-static {v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v1

    .line 3449
    invoke-static {v0, v1, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 3451
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 3452
    .local v1, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 3453
    return-object v1
.end method

.method touchActiveTime()V
    .registers 3

    .line 1060
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/wm/Task;->lastActiveTime:J

    .line 1061
    return-void
.end method

.method unhandledBackLocked()V
    .registers 4

    .line 6412
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6413
    .local v0, "topActivity":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v1, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v1, :cond_20

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Performing unhandledBack(): top activity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 6415
    :cond_20
    if-eqz v0, :cond_29

    .line 6416
    const/4 v1, 0x1

    const-string/jumbo v2, "unhandled-back"

    invoke-virtual {v0, v2, v1}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 6418
    :cond_29
    return-void
.end method

.method updateEffectiveIntent()V
    .registers 2

    .line 2075
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2076
    .local v0, "root":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_d

    .line 2077
    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setIntent(Lcom/android/server/wm/ActivityRecord;)V

    .line 2079
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 2081
    :cond_d
    return-void
.end method

.method updateOverlayInsetsState(Lcom/android/server/wm/WindowState;)V
    .registers 5
    .param p1, "originalChange"  # Lcom/android/server/wm/WindowState;

    .line 7347
    invoke-super {p0, p1}, Lcom/android/server/wm/TaskFragment;->updateOverlayInsetsState(Lcom/android/server/wm/WindowState;)V

    .line 7348
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTopVisibleAppMainWindow()Lcom/android/server/wm/WindowState;

    move-result-object v0

    if-eq p1, v0, :cond_a

    .line 7349
    return-void

    .line 7351
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/Task;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    if-eqz v0, :cond_1f

    .line 7352
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/android/server/wm/WindowState;->getInsetsState(Z)Landroid/view/InsetsState;

    move-result-object v0

    .line 7353
    .local v0, "s":Landroid/view/InsetsState;
    iget-object v1, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->getBounds(Landroid/graphics/Rect;)V

    .line 7354
    iget-object v1, p0, Lcom/android/server/wm/Task;->mOverlayHost:Lcom/android/server/wm/TrustedOverlayHost;

    iget-object v2, p0, Lcom/android/server/wm/Task;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v1, v0, v2}, Lcom/android/server/wm/TrustedOverlayHost;->dispatchInsetsChanged(Landroid/view/InsetsState;Landroid/graphics/Rect;)V

    .line 7356
    .end local v0  # "s":Landroid/view/InsetsState;
    :cond_1f
    return-void
.end method

.method updateOverrideConfigurationFromLaunchBounds()Landroid/graphics/Rect;
    .registers 4

    .line 2662
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2663
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-eq v0, p0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x0

    goto :goto_12

    :cond_e
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getLaunchBounds()Landroid/graphics/Rect;

    move-result-object v1

    .line 2664
    .local v1, "bounds":Landroid/graphics/Rect;
    :goto_12
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setBounds(Landroid/graphics/Rect;)I

    .line 2665
    if-eqz v1, :cond_24

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_24

    .line 2668
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2670
    :cond_24
    return-object v1
.end method

.method updateSurfaceSize(Landroid/view/SurfaceControl$Transaction;)V
    .registers 14
    .param p1, "transaction"  # Landroid/view/SurfaceControl$Transaction;

    .line 2535
    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_e9

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isOrganized()Z

    move-result v0

    if-nez v0, :cond_e9

    iget-object v0, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {v0}, Landroid/view/SurfaceControl;->isValid()Z

    move-result v0

    if-nez v0, :cond_14

    goto/16 :goto_e9

    .line 2540
    :cond_14
    const/4 v0, 0x0

    .line 2541
    .local v0, "width":I
    const/4 v1, 0x0

    .line 2542
    .local v1, "height":I
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isRootTask()Z

    move-result v2

    if-eqz v2, :cond_d1

    .line 2543
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    .line 2544
    .local v2, "taskBounds":Landroid/graphics/Rect;
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 2545
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    .line 2547
    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v3, v3, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v4

    invoke-interface {v3, v4}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->getMiuiFreeFormActivityStack(I)Lcom/android/server/wm/MiuiFreeFormActivityStackStub;

    move-result-object v3

    .line 2548
    .local v3, "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    if-eqz v3, :cond_d1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v4

    if-eqz v4, :cond_d1

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v4

    if-eqz v4, :cond_d1

    .line 2549
    iget-object v4, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v4, v4, Lcom/android/server/wm/WindowManagerService;->mRoot:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->getCurrentInputMethodWindow()Lcom/android/server/wm/WindowState;

    move-result-object v4

    .line 2550
    .local v4, "imeWin":Lcom/android/server/wm/WindowState;
    const/4 v5, 0x0

    if-eqz v4, :cond_5b

    .line 2551
    invoke-virtual {v4}, Lcom/android/server/wm/WindowState;->isVisibleNow()Z

    move-result v6

    if-eqz v6, :cond_5b

    invoke-virtual {v3}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->isInMiniFreeFormMode()Z

    move-result v6

    if-nez v6, :cond_5b

    const/4 v6, 0x1

    goto :goto_5c

    :cond_5b
    move v6, v5

    .line 2552
    .local v6, "isNeedAdjust":Z
    :goto_5c
    new-instance v7, Landroid/graphics/Rect;

    invoke-direct {v7}, Landroid/graphics/Rect;-><init>()V

    .line 2553
    .local v7, "visibleFrame":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v8, v8, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    invoke-virtual {v8}, Landroid/view/InsetsState;->getDisplayFrame()Landroid/graphics/Rect;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2554
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v8

    iget-object v8, v8, Lcom/android/server/wm/DisplayContent;->mDisplayFrames:Lcom/android/server/wm/DisplayFrames;

    iget-object v8, v8, Lcom/android/server/wm/DisplayFrames;->mInsetsState:Landroid/view/InsetsState;

    .line 2555
    invoke-static {}, Landroid/view/WindowInsets$Type;->systemBars()I

    move-result v9

    invoke-static {}, Landroid/view/WindowInsets$Type;->ime()I

    move-result v10

    or-int/2addr v9, v10

    invoke-static {}, Landroid/view/WindowInsets$Type;->displayCutout()I

    move-result v10

    or-int/2addr v9, v10

    .line 2554
    invoke-virtual {v8, v7, v9, v5}, Landroid/view/InsetsState;->calculateInsets(Landroid/graphics/Rect;IZ)Landroid/graphics/Insets;

    move-result-object v5

    invoke-virtual {v7, v5}, Landroid/graphics/Rect;->inset(Landroid/graphics/Insets;)V

    .line 2556
    iget v5, v2, Landroid/graphics/Rect;->top:I

    iget v8, v7, Landroid/graphics/Rect;->top:I

    sub-int/2addr v5, v8

    .line 2557
    .local v5, "topadjustMost":I
    if-gez v5, :cond_95

    const/4 v5, 0x0

    .line 2558
    :cond_95
    int-to-float v8, v0

    invoke-virtual {v3}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->getFreeFormScale()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v0, v8

    .line 2559
    int-to-float v8, v1

    invoke-virtual {v3}, Lcom/android/server/wm/MiuiFreeFormActivityStackStub;->getFreeFormScale()F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v1, v8

    .line 2560
    const/4 v8, 0x0

    .line 2561
    .local v8, "adjust":I
    if-eqz v6, :cond_b5

    .line 2563
    iget v9, v7, Landroid/graphics/Rect;->bottom:I

    iget v10, v2, Landroid/graphics/Rect;->top:I

    sub-int/2addr v9, v10

    .line 2564
    .local v9, "heightMax":I
    if-le v1, v9, :cond_b5

    .line 2565
    sub-int v8, v1, v9

    .line 2566
    if-le v8, v5, :cond_b2

    move v8, v5

    .line 2568
    :cond_b2
    if-lez v9, :cond_b5

    move v1, v9

    .line 2571
    .end local v9  # "heightMax":I
    :cond_b5
    if-gtz v8, :cond_b9

    if-nez v6, :cond_d1

    .line 2572
    :cond_b9
    new-instance v9, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;

    invoke-direct {v9}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda37;-><init>()V

    .line 2573
    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    .line 2572
    invoke-static {v9, p0, v10, v11}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainMessage(Lcom/android/internal/util/function/TriConsumer;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    .line 2574
    .local v9, "msg":Landroid/os/Message;
    iget-object v10, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskManagerService;->mH:Lcom/android/server/wm/ActivityTaskManagerService$H;

    invoke-virtual {v10, v9}, Lcom/android/server/wm/ActivityTaskManagerService$H;->sendMessage(Landroid/os/Message;)Z

    .line 2579
    .end local v2  # "taskBounds":Landroid/graphics/Rect;
    .end local v3  # "ffas":Lcom/android/server/wm/MiuiFreeFormActivityStackStub;
    .end local v4  # "imeWin":Lcom/android/server/wm/WindowState;
    .end local v5  # "topadjustMost":I
    .end local v6  # "isNeedAdjust":Z
    .end local v7  # "visibleFrame":Landroid/graphics/Rect;
    .end local v8  # "adjust":I
    .end local v9  # "msg":Landroid/os/Message;
    :cond_d1
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->x:I

    if-ne v0, v2, :cond_de

    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v2, v2, Landroid/graphics/Point;->y:I

    if-ne v1, v2, :cond_de

    .line 2580
    return-void

    .line 2582
    :cond_de
    iget-object v2, p0, Lcom/android/server/wm/Task;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v2, v0, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 2583
    iget-object v2, p0, Lcom/android/server/wm/Task;->mLastSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v2, v0, v1}, Landroid/graphics/Point;->set(II)V

    .line 2584
    return-void

    .line 2536
    .end local v0  # "width":I
    .end local v1  # "height":I
    :cond_e9
    :goto_e9
    return-void
.end method

.method updateTaskDescription()V
    .registers 6

    .line 2007
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->getRootActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2008
    .local v0, "root":Lcom/android/server/wm/ActivityRecord;
    if-nez v0, :cond_8

    return-void

    .line 2010
    :cond_8
    new-instance v1, Landroid/app/ActivityManager$TaskDescription;

    invoke-direct {v1}, Landroid/app/ActivityManager$TaskDescription;-><init>()V

    .line 2011
    .local v1, "taskDescription":Landroid/app/ActivityManager$TaskDescription;
    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;

    invoke-direct {v2}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda33;-><init>()V

    const-class v3, Lcom/android/server/wm/ActivityRecord;

    .line 2013
    invoke-static {v3}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v3

    .line 2011
    invoke-static {v2, v3, v0, v1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Lcom/android/internal/util/function/TriPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v2

    .line 2014
    .local v2, "f":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v2}, Lcom/android/server/wm/Task;->forAllActivities(Ljava/util/function/Predicate;)Z

    .line 2015
    invoke-interface {v2}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 2016
    iget v3, p0, Lcom/android/server/wm/Task;->mResizeMode:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager$TaskDescription;->setResizeMode(I)V

    .line 2017
    iget v3, p0, Lcom/android/server/wm/Task;->mMinWidth:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager$TaskDescription;->setMinWidth(I)V

    .line 2018
    iget v3, p0, Lcom/android/server/wm/Task;->mMinHeight:I

    invoke-virtual {v1, v3}, Landroid/app/ActivityManager$TaskDescription;->setMinHeight(I)V

    .line 2019
    invoke-virtual {p0, v1}, Lcom/android/server/wm/Task;->setTaskDescription(Landroid/app/ActivityManager$TaskDescription;)V

    .line 2020
    iget-object v3, p0, Lcom/android/server/wm/Task;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v3

    .line 2021
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getTaskInfo()Landroid/app/ActivityManager$RunningTaskInfo;

    move-result-object v4

    .line 2020
    invoke-virtual {v3, v4}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskDescriptionChanged(Landroid/app/TaskInfo;)V

    .line 2023
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v3

    .line 2024
    .local v3, "parent":Lcom/android/server/wm/WindowContainer;
    if-eqz v3, :cond_50

    .line 2025
    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    .line 2026
    .local v4, "t":Lcom/android/server/wm/Task;
    if-eqz v4, :cond_50

    .line 2027
    invoke-virtual {v4}, Lcom/android/server/wm/Task;->updateTaskDescription()V

    .line 2031
    .end local v4  # "t":Lcom/android/server/wm/Task;
    :cond_50
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/android/server/wm/Task;->dispatchTaskInfoChangedIfNeeded(Z)V

    .line 2032
    return-void
.end method

.method updateTaskMovement(ZI)V
    .registers 6
    .param p1, "toTop"  # Z
    .param p2, "position"  # I

    .line 1397
    iget v0, p0, Lcom/android/server/wm/Task;->mTaskId:I

    invoke-static {v0, p1, p2}, Lcom/android/server/wm/EventLogTags;->writeWmTaskMoved(III)V

    .line 1398
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 1399
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/Task;->isLeafTask()Z

    move-result v1

    if-eqz v1, :cond_14

    .line 1400
    invoke-virtual {v0, p0, p1}, Lcom/android/server/wm/TaskDisplayArea;->onLeafTaskMoved(Lcom/android/server/wm/Task;Z)V

    .line 1402
    :cond_14
    iget-boolean v1, p0, Lcom/android/server/wm/Task;->isPersistable:Z

    if-eqz v1, :cond_1e

    .line 1403
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/server/wm/Task;->mLastTimeMoved:J

    .line 1405
    :cond_1e
    return-void
.end method

.method updateTaskOrganizerState()Z
    .registers 2

    .line 4837
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->updateTaskOrganizerState(Z)Z

    move-result v0

    return v0
.end method

.method updateTaskOrganizerState(Z)Z
    .registers 6
    .param p1, "skipTaskAppeared"  # Z

    .line 4848
    invoke-virtual {p0}, Lcom/android/server/wm/Task;->getSurfaceControl()Landroid/view/SurfaceControl;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 4851
    return v1

    .line 4853
    :cond_8
    invoke-direct {p0}, Lcom/android/server/wm/Task;->canBeOrganized()Z

    move-result v0

    if-nez v0, :cond_14

    .line 4854
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;)Z

    move-result v0

    return v0

    .line 4857
    :cond_14
    iget-object v0, p0, Lcom/android/server/wm/Task;->mWmService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskOrganizerController:Lcom/android/server/wm/TaskOrganizerController;

    .line 4858
    .local v0, "controller":Lcom/android/server/wm/TaskOrganizerController;
    invoke-virtual {v0}, Lcom/android/server/wm/TaskOrganizerController;->getTaskOrganizer()Landroid/window/ITaskOrganizer;

    move-result-object v2

    .line 4861
    .local v2, "organizer":Landroid/window/ITaskOrganizer;
    iget-boolean v3, p0, Lcom/android/server/wm/Task;->mCreatedByOrganizer:Z

    if-eqz v3, :cond_2b

    iget-object v3, p0, Lcom/android/server/wm/Task;->mTaskOrganizer:Landroid/window/ITaskOrganizer;

    if-eqz v3, :cond_2b

    if-eqz v2, :cond_2b

    if-eq v3, v2, :cond_2b

    .line 4863
    return v1

    .line 4865
    :cond_2b
    invoke-virtual {p0, v2, p1}, Lcom/android/server/wm/Task;->setTaskOrganizer(Landroid/window/ITaskOrganizer;Z)Z

    move-result v1

    return v1
.end method

.method willActivityBeVisible(Landroid/os/IBinder;)Z
    .registers 5
    .param p1, "token"  # Landroid/os/IBinder;

    .line 6399
    invoke-static {p1}, Lcom/android/server/wm/ActivityRecord;->forTokenLocked(Landroid/os/IBinder;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 6400
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 6401
    return v1

    .line 6404
    :cond_8
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->shouldBeVisible()Z

    move-result v2

    if-nez v2, :cond_f

    return v1

    .line 6406
    :cond_f
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v1, :cond_2c

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "willActivityBeVisible: Returning false, would have returned true for r="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 6408
    :cond_2c
    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 9
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 2616
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2617
    .local v0, "token":J
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2618
    iget v2, p0, Lcom/android/server/wm/Task;->mUserId:I

    const-wide v3, 0x10500000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2619
    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    if-eqz v2, :cond_2f

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    if-eqz v2, :cond_2f

    .line 2620
    iget-object v2, p0, Lcom/android/server/wm/Task;->intent:Landroid/content/Intent;

    invoke-virtual {v2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_31

    :cond_2f
    const-string v2, "Task"

    .line 2619
    :goto_31
    const-wide v3, 0x10900000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2621
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2622
    return-void
.end method
