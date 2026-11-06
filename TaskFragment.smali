# classes2.dex

.class Lcom/android/server/wm/TaskFragment;
.super Lcom/android/server/wm/WindowContainer;
.source "TaskFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;,
        Lcom/android/server/wm/TaskFragment$EmbeddingCheckResult;,
        Lcom/android/server/wm/TaskFragment$TaskFragmentVisibility;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/wm/WindowContainer<",
        "Lcom/android/server/wm/WindowContainer;",
        ">;"
    }
.end annotation


# static fields
.field static final EMBEDDING_ALLOWED:I = 0x0

.field static final EMBEDDING_DISALLOWED_MIN_DIMENSION_VIOLATION:I = 0x2

.field static final EMBEDDING_DISALLOWED_NEW_TASK:I = 0x3

.field static final EMBEDDING_DISALLOWED_UNTRUSTED_HOST:I = 0x1

.field static final INVALID_MIN_SIZE:I = -0x1

.field static final SHOW_APP_STARTING_PREVIEW:Z = true

.field private static final TAG:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_RESULTS:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_SWITCH:Ljava/lang/String; = "ActivityTaskManager"

.field private static final TAG_TRANSITION:Ljava/lang/String; = "ActivityTaskManager"

.field static final TASK_FRAGMENT_VISIBILITY_INVISIBLE:I = 0x2

.field static final TASK_FRAGMENT_VISIBILITY_VISIBLE:I = 0x0

.field static final TASK_FRAGMENT_VISIBILITY_VISIBLE_BEHIND_TRANSLUCENT:I = 0x1

.field static final mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;


# instance fields
.field private mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

.field final mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

.field mBackScreenshots:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;",
            ">;"
        }
    .end annotation
.end field

.field mClearedTaskForReuse:Z

.field mClearedTaskFragmentForPip:Z

.field mCreatedByOrganizer:Z

.field private mDelayLastActivityRemoval:Z

.field mDimmer:Lcom/android/server/wm/Dimmer;

.field private final mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

.field private final mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;

.field private final mFragmentToken:Landroid/os/IBinder;

.field private final mIsEmbedded:Z

.field private mIsRemovalRequested:Z

.field mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

.field final mLastSurfaceSize:Landroid/graphics/Point;

.field mMinHeight:I

.field mMinWidth:I

.field mMoveAdjacentTogether:Z

.field private mPausingActivity:Lcom/android/server/wm/ActivityRecord;

.field protected mResumedActivity:Lcom/android/server/wm/ActivityRecord;

.field final mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

.field mTaskFragmentAppearedSent:Z

.field private mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

.field private final mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

.field private mTaskFragmentOrganizerProcessName:Ljava/lang/String;

.field private mTaskFragmentOrganizerUid:I

.field final mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

.field private final mTmpBounds:Landroid/graphics/Rect;

.field private final mTmpFullBounds:Landroid/graphics/Rect;

.field private final mTmpInsets:Landroid/graphics/Rect;

.field private final mTmpNonDecorBounds:Landroid/graphics/Rect;

.field private final mTmpStableBounds:Landroid/graphics/Rect;


# direct methods
.method public static synthetic $r8$lambda$q77xa5YS28EmN0qaij-drM-u_C8(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2

    invoke-static {p0, p1}, Lcom/android/server/wm/TaskFragment;->isOpaqueActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z

    move-result p0

    return p0
.end method

.method static constructor <clinit>()V
    .registers 1

    .line 201
    new-instance v0, Lcom/android/internal/app/ActivityTrigger;

    invoke-direct {v0}, Lcom/android/internal/app/ActivityTrigger;-><init>()V

    sput-object v0, Lcom/android/server/wm/TaskFragment;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;Z)V
    .registers 5
    .param p1, "atmService"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "fragmentToken"  # Landroid/os/IBinder;
    .param p3, "createdByOrganizer"  # Z

    .line 362
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/server/wm/TaskFragment;-><init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;ZZ)V

    .line 363
    return-void
.end method

.method constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;Landroid/os/IBinder;ZZ)V
    .registers 7
    .param p1, "atmService"  # Lcom/android/server/wm/ActivityTaskManagerService;
    .param p2, "fragmentToken"  # Landroid/os/IBinder;
    .param p3, "createdByOrganizer"  # Z
    .param p4, "isEmbedded"  # Z

    .line 367
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-direct {p0, v0}, Lcom/android/server/wm/WindowContainer;-><init>(Lcom/android/server/wm/WindowManagerService;)V

    .line 216
    new-instance v0, Lcom/android/server/wm/Dimmer;

    invoke-direct {v0, p0}, Lcom/android/server/wm/Dimmer;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    .line 256
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 264
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 270
    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 295
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    .line 309
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    .line 311
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTmpInsets:Landroid/graphics/Rect;

    .line 312
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    .line 313
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 314
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    .line 315
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    .line 319
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mBackScreenshots:Ljava/util/HashMap;

    .line 321
    new-instance v1, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    invoke-direct {v1, p0}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;-><init>(Lcom/android/server/wm/TaskFragment;)V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    .line 323
    new-instance v1, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;

    invoke-direct {v1, p0, v0}, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;-><init>(Lcom/android/server/wm/TaskFragment;Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper-IA;)V

    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;

    .line 369
    iput-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 370
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    .line 371
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    .line 372
    iput-boolean p3, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    .line 373
    iput-boolean p4, p0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    .line 374
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    iget-object v0, v0, Lcom/android/server/wm/WindowOrganizerController;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 376
    iput-object p2, p0, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    .line 377
    new-instance v0, Lcom/android/server/wm/WindowContainer$RemoteToken;

    invoke-direct {v0, p0}, Lcom/android/server/wm/WindowContainer$RemoteToken;-><init>(Lcom/android/server/wm/WindowContainer;)V

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 378
    return-void
.end method

.method private cleanUp()V
    .registers 2

    .line 2736
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-eqz v0, :cond_b

    .line 2737
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowOrganizerController;->cleanUpEmbeddedTaskFragment(Lcom/android/server/wm/TaskFragment;)V

    .line 2739
    :cond_b
    return-void
.end method

.method static computeScreenLayoutOverride(III)I
    .registers 6
    .param p0, "sourceScreenLayout"  # I
    .param p1, "screenWidthDp"  # I
    .param p2, "screenHeightDp"  # I

    .line 2370
    and-int/lit8 p0, p0, 0x3f

    .line 2372
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 2373
    .local v0, "longSize":I
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 2374
    .local v1, "shortSize":I
    invoke-static {p0, v0, v1}, Landroid/content/res/Configuration;->reduceScreenLayout(III)I

    move-result v2

    return v2
.end method

.method private containsStoppingActivity()Z
    .registers 5

    .line 865
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_a
    if-ltz v0, :cond_20

    .line 866
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/ActivityRecord;

    .line 867
    .local v2, "r":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v2}, Lcom/android/server/wm/ActivityRecord;->getTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    if-ne v3, p0, :cond_1d

    .line 868
    return v1

    .line 865
    .end local v2  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1d
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 871
    .end local v0  # "i":I
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method static fromTaskFragmentToken(Landroid/os/IBinder;Lcom/android/server/wm/ActivityTaskManagerService;)Lcom/android/server/wm/TaskFragment;
    .registers 3
    .param p0, "token"  # Landroid/os/IBinder;
    .param p1, "service"  # Lcom/android/server/wm/ActivityTaskManagerService;

    .line 383
    if-nez p0, :cond_4

    const/4 v0, 0x0

    return-object v0

    .line 384
    :cond_4
    iget-object v0, p1, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowOrganizerController:Lcom/android/server/wm/WindowOrganizerController;

    invoke-virtual {v0, p0}, Lcom/android/server/wm/WindowOrganizerController;->getTaskFragment(Landroid/os/IBinder;)Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    return-object v0
.end method

.method private getTaskId()I
    .registers 2

    .line 2089
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    iget v0, v0, Lcom/android/server/wm/Task;->mTaskId:I

    goto :goto_e

    :cond_d
    const/4 v0, -0x1

    :goto_e
    return v0
.end method

.method private static hasRunningActivity(Lcom/android/server/wm/WindowContainer;)Z
    .registers 4
    .param p0, "wc"  # Lcom/android/server/wm/WindowContainer;

    .line 1112
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_15

    .line 1113
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_13

    goto :goto_14

    :cond_13
    move v1, v2

    :goto_14
    return v1

    .line 1115
    :cond_15
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_24

    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_24

    goto :goto_25

    :cond_24
    move v1, v2

    :goto_25
    return v1
.end method

.method static intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V
    .registers 5
    .param p0, "inOutBounds"  # Landroid/graphics/Rect;
    .param p1, "intersectBounds"  # Landroid/graphics/Rect;
    .param p2, "intersectInsets"  # Landroid/graphics/Rect;

    .line 2349
    iget v0, p0, Landroid/graphics/Rect;->right:I

    iget v1, p1, Landroid/graphics/Rect;->right:I

    if-gt v0, v1, :cond_13

    .line 2350
    iget v0, p1, Landroid/graphics/Rect;->right:I

    iget v1, p2, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->right:I

    .line 2351
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->right:I

    .line 2353
    :cond_13
    iget v0, p0, Landroid/graphics/Rect;->bottom:I

    iget v1, p1, Landroid/graphics/Rect;->bottom:I

    if-gt v0, v1, :cond_26

    .line 2354
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iget v1, p2, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->bottom:I

    .line 2355
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->bottom:I

    .line 2357
    :cond_26
    iget v0, p0, Landroid/graphics/Rect;->left:I

    iget v1, p1, Landroid/graphics/Rect;->left:I

    if-lt v0, v1, :cond_39

    .line 2358
    iget v0, p1, Landroid/graphics/Rect;->left:I

    iget v1, p2, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->left:I

    .line 2359
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->left:I

    .line 2361
    :cond_39
    iget v0, p0, Landroid/graphics/Rect;->top:I

    iget v1, p1, Landroid/graphics/Rect;->top:I

    if-lt v0, v1, :cond_4c

    .line 2362
    iget v0, p1, Landroid/graphics/Rect;->top:I

    iget v1, p2, Landroid/graphics/Rect;->top:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/graphics/Rect;->top:I

    .line 2363
    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    iput v0, p0, Landroid/graphics/Rect;->top:I

    .line 2365
    :cond_4c
    return-void
.end method

.method private static invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V
    .registers 3
    .param p0, "inOutConfig"  # Landroid/content/res/Configuration;

    .line 2133
    iget-object v0, p0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2134
    .local v0, "appBounds":Landroid/graphics/Rect;
    if-eqz v0, :cond_b

    .line 2135
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 2137
    :cond_b
    const/4 v1, 0x0

    iput v1, p0, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2138
    iput v1, p0, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2139
    return-void
.end method

.method private static isFullyTrustedEmbedding(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 4
    .param p0, "a"  # Lcom/android/server/wm/ActivityRecord;
    .param p1, "uid"  # I

    .line 668
    invoke-static {p1}, Landroid/os/UserHandle;->getAppId(I)I

    move-result v0

    const/16 v1, 0x3e8

    if-eq v0, v1, :cond_11

    .line 670
    invoke-virtual {p0, p1}, Lcom/android/server/wm/ActivityRecord;->isUid(I)Z

    move-result v0

    if-eqz v0, :cond_f

    goto :goto_11

    :cond_f
    const/4 v0, 0x0

    goto :goto_12

    :cond_11
    :goto_11
    const/4 v0, 0x1

    .line 668
    :goto_12
    return v0
.end method

.method private static isOpaqueActivity(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p0, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p1, "starting"  # Lcom/android/server/wm/ActivityRecord;

    .line 893
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 896
    return v1

    .line 899
    :cond_6
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->visibleIgnoringKeyguard:Z

    if-nez v0, :cond_d

    if-eq p0, p1, :cond_d

    .line 902
    return v1

    .line 905
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 908
    const/4 v0, 0x1

    return v0

    .line 910
    :cond_15
    return v1
.end method

.method private isTopActivityLaunchedBehind()Z
    .registers 3

    .line 1129
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1130
    .local v0, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_c

    iget-boolean v1, v0, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    goto :goto_d

    :cond_c
    const/4 v1, 0x0

    :goto_d
    return v1
.end method

.method private static isTranslucent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p0, "wc"  # Lcom/android/server/wm/WindowContainer;
    .param p1, "starting"  # Lcom/android/server/wm/ActivityRecord;

    .line 1119
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 1120
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    return v0

    .line 1121
    :cond_f
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eqz v0, :cond_20

    .line 1122
    invoke-virtual {p0}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 1124
    :cond_20
    const/4 v0, 0x0

    return v0
.end method

.method static synthetic lambda$calculateMinDimension$10([I[ILcom/android/server/wm/ActivityRecord;)V
    .registers 7
    .param p0, "maxMinWidth"  # [I
    .param p1, "maxMinHeight"  # [I
    .param p2, "a"  # Lcom/android/server/wm/ActivityRecord;

    .line 2543
    iget-boolean v0, p2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v0, :cond_5

    .line 2544
    return-void

    .line 2546
    :cond_5
    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->getMinDimensions()Landroid/graphics/Point;

    move-result-object v0

    .line 2547
    .local v0, "minDimensions":Landroid/graphics/Point;
    if-nez v0, :cond_c

    .line 2548
    return-void

    .line 2550
    :cond_c
    const/4 v1, 0x0

    aget v2, p0, v1

    iget v3, v0, Landroid/graphics/Point;->x:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, p0, v1

    .line 2551
    aget v2, p1, v1

    iget v3, v0, Landroid/graphics/Point;->y:I

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    aput v2, p1, v1

    .line 2552
    return-void
.end method

.method static synthetic lambda$clearLastPausedActivity$11(Lcom/android/server/wm/TaskFragment;)V
    .registers 2
    .param p0, "taskFragment"  # Lcom/android/server/wm/TaskFragment;

    .line 2606
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    return-void
.end method

.method static synthetic lambda$getNonFinishingActivityCount$9([ILcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p0, "runningActivityCount"  # [I
    .param p1, "a"  # Lcom/android/server/wm/ActivityRecord;

    .line 979
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_b

    .line 980
    const/4 v0, 0x0

    aget v1, p0, v0

    add-int/lit8 v1, v1, 0x1

    aput v1, p0, v0

    .line 982
    :cond_b
    return-void
.end method

.method static synthetic lambda$getTopNonFinishingActivity$2(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 934
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$getTopNonFinishingActivity$4(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 940
    iget-boolean v0, p0, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method static synthetic lambda$isFullyTrustedEmbedding$0(ILcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p0, "uid"  # I
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 680
    invoke-static {p1, p0}, Lcom/android/server/wm/TaskFragment;->isFullyTrustedEmbedding(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$topRunningActivity$6(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 2
    .param p0, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 964
    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-virtual {p0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    :goto_f
    return v0
.end method

.method private sendTaskFragmentAppeared()V
    .registers 3

    .line 2491
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_9

    .line 2492
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->onTaskFragmentAppeared(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V

    .line 2494
    :cond_9
    return-void
.end method

.method private sendTaskFragmentVanished()V
    .registers 3

    .line 2497
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_9

    .line 2498
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->onTaskFragmentVanished(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V

    .line 2500
    :cond_9
    return-void
.end method

.method private shouldStartChangeTransition(Landroid/graphics/Rect;)Z
    .registers 3
    .param p1, "startBounds"  # Landroid/graphics/Rect;

    .line 2463
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_16

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->canStartChangeTransition()Z

    move-result v0

    if-nez v0, :cond_b

    goto :goto_16

    .line 2467
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0

    .line 2464
    :cond_16
    :goto_16
    const/4 v0, 0x0

    return v0
.end method

.method private switchFocusedTaskIfNeed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V
    .registers 5
    .param p1, "current"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "topResumed"  # Lcom/android/server/wm/ActivityRecord;

    .line 781
    if-eqz p1, :cond_56

    if-eqz p2, :cond_56

    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v1, p2, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-ne v0, v1, :cond_56

    .line 782
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->inFreeformSmallWinMode()Z

    move-result v0

    if-nez v0, :cond_56

    invoke-virtual {p2}, Lcom/android/server/wm/ActivityRecord;->inFreeformSmallWinMode()Z

    move-result v0

    if-eqz v0, :cond_56

    .line 783
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_56

    .line 784
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRootTaskId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityTaskManagerService;->setFocusedTask(I)V

    .line 785
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "switchFocusedTaskIfNeed setFocusedTask(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "current: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " topResumed: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 788
    :cond_56
    return-void
.end method

.method private updateOrganizedTaskFragmentSurfaceSize(Landroid/view/SurfaceControl$Transaction;Z)V
    .registers 7
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "forceUpdate"  # Z

    .line 2422
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-nez v0, :cond_5

    .line 2424
    return-void

    .line 2426
    :cond_5
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mSurfaceControl:Landroid/view/SurfaceControl;

    if-eqz v0, :cond_40

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mSurfaceAnimator:Lcom/android/server/wm/SurfaceAnimator;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceAnimator;->hasLeash()Z

    move-result v0

    if-nez v0, :cond_40

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mSurfaceFreezer:Lcom/android/server/wm/SurfaceFreezer;

    invoke-virtual {v0}, Lcom/android/server/wm/SurfaceFreezer;->hasLeash()Z

    move-result v0

    if-eqz v0, :cond_1a

    goto :goto_40

    .line 2430
    :cond_1a
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2431
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v1

    .line 2432
    .local v1, "width":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v2

    .line 2433
    .local v2, "height":I
    if-nez p2, :cond_35

    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->x:I

    if-ne v1, v3, :cond_35

    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v3, v3, Landroid/graphics/Point;->y:I

    if-ne v2, v3, :cond_35

    .line 2434
    return-void

    .line 2436
    :cond_35
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mSurfaceControl:Landroid/view/SurfaceControl;

    invoke-virtual {p1, v3, v1, v2}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 2437
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v3, v1, v2}, Landroid/graphics/Point;->set(II)V

    .line 2438
    return-void

    .line 2427
    .end local v0  # "bounds":Landroid/graphics/Rect;
    .end local v1  # "width":I
    .end local v2  # "height":I
    :cond_40
    :goto_40
    return-void
.end method

.method private warnForNonLeafTaskFragment(Ljava/lang/String;)V
    .registers 4
    .param p1, "func"  # Ljava/lang/String;

    .line 710
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isLeafTaskFragment()Z

    move-result v0

    if-nez v0, :cond_22

    .line 711
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " on non-leaf task fragment "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_22
    return-void
.end method


# virtual methods
.method addChild(Lcom/android/server/wm/ActivityRecord;)V
    .registers 3
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 1946
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1947
    return-void
.end method

.method addChild(Lcom/android/server/wm/WindowContainer;I)V
    .registers 16
    .param p1, "child"  # Lcom/android/server/wm/WindowContainer;
    .param p2, "index"  # I

    .line 1951
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1952
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mClearedTaskForReuse:Z

    .line 1953
    iput-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mClearedTaskFragmentForPip:Z

    .line 1955
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 1956
    .local v2, "addingActivity":Lcom/android/server/wm/ActivityRecord;
    const/4 v3, 0x1

    if-eqz v2, :cond_12

    move v4, v3

    goto :goto_13

    :cond_12
    move v4, v1

    .line 1957
    .local v4, "isAddingActivity":Z
    :goto_13
    if-eqz v4, :cond_1a

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v5

    goto :goto_1b

    :cond_1a
    const/4 v5, 0x0

    .line 1960
    .local v5, "task":Lcom/android/server/wm/Task;
    :goto_1b
    if-eqz v5, :cond_25

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    if-eqz v6, :cond_25

    move v6, v3

    goto :goto_26

    :cond_25
    move v6, v1

    .line 1963
    .local v6, "taskHadActivity":Z
    :goto_26
    if-eqz v5, :cond_2d

    invoke-virtual {v5}, Lcom/android/server/wm/Task;->getActivityType()I

    move-result v7

    goto :goto_2e

    :cond_2d
    move v7, v1

    .line 1965
    .local v7, "activityType":I
    :goto_2e
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->addChild(Lcom/android/server/wm/WindowContainer;I)V

    .line 1967
    if-eqz v4, :cond_86

    if-eqz v5, :cond_86

    .line 1970
    if-eqz v0, :cond_7d

    invoke-static {}, Lcom/android/server/wm/BackNavigationController;->isScreenshotEnabled()Z

    move-result v8

    if-eqz v8, :cond_7d

    .line 1971
    sget-boolean v8, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_BACK_PREVIEW_enabled:Z

    if-eqz v8, :cond_59

    iget-object v8, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    .local v8, "protoLogParam0":Ljava/lang/String;
    sget-object v9, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_BACK_PREVIEW:Lcom/android/internal/protolog/ProtoLogGroup;

    const v10, -0x7fe146a

    new-array v11, v3, [Ljava/lang/Object;

    aput-object v8, v11, v1

    const-string v12, "Screenshotting Activity %s"

    invoke-static {v9, v10, v1, v12, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1973
    .end local v8  # "protoLogParam0":Ljava/lang/String;
    :cond_59
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->getBounds()Landroid/graphics/Rect;

    move-result-object v8

    .line 1974
    .local v8, "outBounds":Landroid/graphics/Rect;
    iget-object v9, v0, Lcom/android/server/wm/ActivityRecord;->mSurfaceControl:Landroid/view/SurfaceControl;

    new-instance v10, Landroid/graphics/Rect;

    .line 1976
    invoke-virtual {v8}, Landroid/graphics/Rect;->width()I

    move-result v11

    invoke-virtual {v8}, Landroid/graphics/Rect;->height()I

    move-result v12

    invoke-direct {v10, v1, v1, v11, v12}, Landroid/graphics/Rect;-><init>(IIII)V

    const/high16 v1, 0x3f800000  # 1.0f

    .line 1974
    invoke-static {v9, v10, v1}, Landroid/view/SurfaceControl;->captureLayers(Landroid/view/SurfaceControl;Landroid/graphics/Rect;F)Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;

    move-result-object v1

    .line 1978
    .local v1, "backBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    iget-object v9, p0, Lcom/android/server/wm/TaskFragment;->mBackScreenshots:Ljava/util/HashMap;

    iget-object v10, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v10}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1980
    .end local v1  # "backBuffer":Landroid/view/SurfaceControl$ScreenshotHardwareBuffer;
    .end local v8  # "outBounds":Landroid/graphics/Rect;
    :cond_7d
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    iput-boolean v3, v1, Lcom/android/server/wm/ActivityRecord;->inHistory:Z

    .line 1981
    invoke-virtual {v5, v6, v7, v2}, Lcom/android/server/wm/Task;->onDescendantActivityAdded(ZILcom/android/server/wm/ActivityRecord;)V

    .line 1983
    :cond_86
    return-void
.end method

.method asTaskFragment()Lcom/android/server/wm/TaskFragment;
    .registers 1

    .line 557
    return-object p0
.end method

.method awakeFromSleeping()V
    .registers 3

    .line 814
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_11

    .line 815
    const-string v0, "ActivityTaskManager"

    const-string v1, "awakeFromSleeping: previously pausing activity didn\'t pause"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/ActivityRecord;->activityPaused(Z)V

    .line 818
    :cond_11
    return-void
.end method

.method calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V
    .registers 10
    .param p1, "outNonDecorBounds"  # Landroid/graphics/Rect;
    .param p2, "outStableBounds"  # Landroid/graphics/Rect;
    .param p3, "bounds"  # Landroid/graphics/Rect;
    .param p4, "displayInfo"  # Landroid/view/DisplayInfo;

    .line 2318
    invoke-virtual {p1, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2319
    invoke-virtual {p2, p3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2320
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2321
    .local v0, "rootTask":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_44

    iget-object v1, v0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-nez v1, :cond_15

    goto :goto_44

    .line 2324
    :cond_15
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    iget v2, p4, Landroid/view/DisplayInfo;->logicalWidth:I

    iget v3, p4, Landroid/view/DisplayInfo;->logicalHeight:I

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    .line 2326
    iget-object v1, v0, Lcom/android/server/wm/Task;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getDisplayPolicy()Lcom/android/server/wm/DisplayPolicy;

    move-result-object v1

    .line 2327
    .local v1, "policy":Lcom/android/server/wm/DisplayPolicy;
    iget v2, p4, Landroid/view/DisplayInfo;->rotation:I

    iget-object v3, p4, Landroid/view/DisplayInfo;->displayCutout:Landroid/view/DisplayCutout;

    iget-object v4, p0, Lcom/android/server/wm/TaskFragment;->mTmpInsets:Landroid/graphics/Rect;

    invoke-virtual {v1, v2, v3, v4}, Lcom/android/server/wm/DisplayPolicy;->getNonDecorInsetsLw(ILandroid/view/DisplayCutout;Landroid/graphics/Rect;)V

    .line 2329
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p1, v2, v3}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2331
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mTmpInsets:Landroid/graphics/Rect;

    iget v3, p4, Landroid/view/DisplayInfo;->rotation:I

    invoke-virtual {v1, v2, v3}, Lcom/android/server/wm/DisplayPolicy;->convertNonDecorInsetsToStableInsets(Landroid/graphics/Rect;I)V

    .line 2332
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mTmpInsets:Landroid/graphics/Rect;

    invoke-static {p2, v2, v3}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2333
    return-void

    .line 2322
    .end local v1  # "policy":Lcom/android/server/wm/DisplayPolicy;
    :cond_44
    :goto_44
    return-void
.end method

.method calculateMinDimension()Landroid/graphics/Point;
    .registers 6

    .line 2539
    const/4 v0, 0x1

    new-array v1, v0, [I

    .line 2540
    .local v1, "maxMinWidth":[I
    new-array v0, v0, [I

    .line 2542
    .local v0, "maxMinHeight":[I
    new-instance v2, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1, v0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda1;-><init>([I[I)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskFragment;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2553
    new-instance v2, Landroid/graphics/Point;

    const/4 v3, 0x0

    aget v4, v1, v3

    aget v3, v0, v3

    invoke-direct {v2, v4, v3}, Landroid/graphics/Point;-><init>(II)V

    return-object v2
.end method

.method canBeAnimationTarget()Z
    .registers 2

    .line 2771
    const/4 v0, 0x1

    return v0
.end method

.method canBeResumed(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "starting"  # Lcom/android/server/wm/ActivityRecord;

    .line 1625
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 1626
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    if-nez v0, :cond_e

    const/4 v0, 0x1

    goto :goto_f

    :cond_e
    const/4 v0, 0x0

    .line 1625
    :goto_f
    return v0
.end method

.method canCreateRemoteAnimationTarget()Z
    .registers 2

    .line 2010
    const/4 v0, 0x1

    return v0
.end method

.method cleanUpActivityReferences(Lcom/android/server/wm/ActivityRecord;)V
    .registers 4
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 725
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v1, 0x0

    if-eqz v0, :cond_9

    if-ne v0, p1, :cond_9

    .line 726
    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 729
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_14

    if-ne v0, p1, :cond_14

    .line 730
    const-string v0, "cleanUpActivityReferences"

    invoke-virtual {p0, v1, v0}, Lcom/android/server/wm/TaskFragment;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 732
    :cond_14
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->removeTimeouts()V

    .line 733
    return-void
.end method

.method clearLastPausedActivity()V
    .registers 2

    .line 2606
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->forAllTaskFragments(Ljava/util/function/Consumer;)V

    .line 2607
    return-void
.end method

.method completePause(ZLcom/android/server/wm/ActivityRecord;)V
    .registers 19
    .param p1, "resumeNext"  # Z
    .param p2, "resuming"  # Lcom/android/server/wm/ActivityRecord;

    .line 1813
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1814
    .local v1, "prev":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-eqz v2, :cond_1b

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    sget-object v6, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x1384aa78

    new-array v8, v3, [Ljava/lang/Object;

    aput-object v2, v8, v5

    invoke-static {v6, v7, v5, v4, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1816
    .end local v2  # "protoLogParam0":Ljava/lang/String;
    :cond_1b
    if-eqz v1, :cond_cd

    .line 1817
    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    .line 1818
    sget-object v2, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v2

    .line 1819
    .local v2, "wasStopping":Z
    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->PAUSED:Lcom/android/server/wm/ActivityRecord$State;

    const-string v7, "completePausedLocked"

    invoke-virtual {v1, v6, v7}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 1820
    iget-boolean v6, v1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v6, :cond_4b

    .line 1825
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v6, :cond_45

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .local v6, "protoLogParam0":Ljava/lang/String;
    sget-object v8, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x129e233e

    new-array v10, v3, [Ljava/lang/Object;

    aput-object v6, v10, v5

    invoke-static {v8, v9, v5, v4, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1826
    .end local v6  # "protoLogParam0":Ljava/lang/String;
    :cond_45
    invoke-virtual {v1, v5, v7}, Lcom/android/server/wm/ActivityRecord;->completeFinishing(ZLjava/lang/String;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    goto/16 :goto_c6

    .line 1828
    :cond_4b
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v6

    if-eqz v6, :cond_b1

    .line 1829
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v6, :cond_78

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6  # "protoLogParam0":Ljava/lang/String;
    move v8, v2

    .local v8, "protoLogParam1":Z
    iget-boolean v9, v1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    .local v9, "protoLogParam2":Z
    sget-object v10, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, -0x46c5ef9f

    const/16 v12, 0x3c

    const/4 v13, 0x3

    new-array v13, v13, [Ljava/lang/Object;

    aput-object v6, v13, v5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v14

    aput-object v14, v13, v3

    const/4 v14, 0x2

    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v13, v14

    invoke-static {v10, v11, v12, v4, v13}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1832
    .end local v6  # "protoLogParam0":Ljava/lang/String;
    .end local v8  # "protoLogParam1":Z
    .end local v9  # "protoLogParam2":Z
    :cond_78
    iget-boolean v6, v1, Lcom/android/server/wm/ActivityRecord;->deferRelaunchUntilPaused:Z

    if-eqz v6, :cond_96

    .line 1834
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v6, :cond_90

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6  # "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, 0x3c49af70

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v6, v9, v5

    invoke-static {v7, v8, v5, v4, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1835
    .end local v6  # "protoLogParam0":Ljava/lang/String;
    :cond_90
    iget-boolean v6, v1, Lcom/android/server/wm/ActivityRecord;->preserveWindowOnDeferredRelaunch:Z

    invoke-virtual {v1, v6}, Lcom/android/server/wm/ActivityRecord;->relaunchActivityLocked(Z)V

    goto :goto_c6

    .line 1836
    :cond_96
    if-eqz v2, :cond_9e

    .line 1840
    sget-object v6, Lcom/android/server/wm/ActivityRecord$State;->STOPPING:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v1, v6, v7}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    goto :goto_c6

    .line 1841
    :cond_9e
    iget-boolean v6, v1, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v6, :cond_a8

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepOrShutDownActivities()Z

    move-result v6

    if-eqz v6, :cond_c6

    .line 1843
    :cond_a8
    invoke-virtual {v1, v5}, Lcom/android/server/wm/ActivityRecord;->setDeferHidingClient(Z)V

    .line 1846
    const-string v6, "completePauseLocked"

    invoke-virtual {v1, v3, v5, v6}, Lcom/android/server/wm/ActivityRecord;->addToStopping(ZZLjava/lang/String;)V

    goto :goto_c6

    .line 1850
    :cond_b1
    sget-boolean v6, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v6, :cond_c5

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .restart local v6  # "protoLogParam0":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x1f17322e

    new-array v9, v3, [Ljava/lang/Object;

    aput-object v6, v9, v5

    invoke-static {v7, v8, v5, v4, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1851
    .end local v6  # "protoLogParam0":Ljava/lang/String;
    :cond_c5
    const/4 v1, 0x0

    .line 1856
    :cond_c6
    :goto_c6
    if-eqz v1, :cond_cb

    .line 1857
    invoke-virtual {v1, v3}, Lcom/android/server/wm/ActivityRecord;->stopFreezingScreenLocked(Z)V

    .line 1859
    :cond_cb
    iput-object v4, v0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1862
    .end local v2  # "wasStopping":Z
    :cond_cd
    if-eqz p1, :cond_f5

    .line 1863
    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/RootWindowContainer;->getTopDisplayFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 1864
    .local v2, "topRootTask":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_e3

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->shouldSleepOrShutDownActivities()Z

    move-result v3

    if-nez v3, :cond_e3

    .line 1865
    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v3, v2, v1, v4}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities(Lcom/android/server/wm/Task;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;)Z

    goto :goto_f5

    .line 1870
    :cond_e3
    if-eqz v2, :cond_e9

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    :cond_e9
    move-object v3, v4

    .line 1871
    .local v3, "top":Lcom/android/server/wm/ActivityRecord;
    if-eqz v3, :cond_f0

    if-eqz v1, :cond_f5

    if-eq v3, v1, :cond_f5

    .line 1876
    :cond_f0
    iget-object v4, v0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v4}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 1881
    .end local v2  # "topRootTask":Lcom/android/server/wm/Task;
    .end local v3  # "top":Lcom/android/server/wm/ActivityRecord;
    :cond_f5
    :goto_f5
    if-eqz v1, :cond_fa

    .line 1882
    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->resumeKeyDispatchingLocked()V

    .line 1885
    :cond_fa
    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    move-object/from16 v3, p2

    invoke-virtual {v2, v3, v5, v5}, Lcom/android/server/wm/RootWindowContainer;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZ)V

    .line 1890
    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v2, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    if-nez v2, :cond_117

    .line 1891
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    if-eqz v2, :cond_124

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskDisplayArea;->hasPinnedTask()Z

    move-result v2

    if-eqz v2, :cond_124

    .line 1892
    :cond_117
    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getTaskChangeNotificationController()Lcom/android/server/wm/TaskChangeNotificationController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/TaskChangeNotificationController;->notifyTaskStackChanged()V

    .line 1893
    iget-object v2, v0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iput-boolean v5, v2, Lcom/android/server/wm/ActivityTaskSupervisor;->mAppVisibilitiesChangedSinceLastPause:Z

    .line 1895
    :cond_124
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V
    .registers 4
    .param p1, "inOutConfig"  # Landroid/content/res/Configuration;
    .param p2, "parentConfig"  # Landroid/content/res/Configuration;

    .line 2101
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, v0}, Lcom/android/server/wm/TaskFragment;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    .line 2103
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;)V
    .registers 5
    .param p1, "inOutConfig"  # Landroid/content/res/Configuration;
    .param p2, "parentConfig"  # Landroid/content/res/Configuration;
    .param p3, "overrideDisplayInfo"  # Landroid/view/DisplayInfo;

    .line 2107
    if-eqz p3, :cond_8

    .line 2109
    const/4 v0, 0x0

    iput v0, p1, Landroid/content/res/Configuration;->screenLayout:I

    .line 2110
    invoke-static {p1}, Lcom/android/server/wm/TaskFragment;->invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V

    .line 2112
    :cond_8
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/server/wm/TaskFragment;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    .line 2114
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V
    .registers 21
    .param p1, "inOutConfig"  # Landroid/content/res/Configuration;
    .param p2, "parentConfig"  # Landroid/content/res/Configuration;
    .param p3, "overrideDisplayInfo"  # Landroid/view/DisplayInfo;
    .param p4, "compatInsets"  # Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    .line 2152
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p4

    iget-object v4, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v4}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    .line 2153
    .local v4, "windowingMode":I
    if-nez v4, :cond_16

    .line 2154
    iget-object v5, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v5}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v4

    .line 2157
    :cond_16
    iget v5, v1, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v5, v5

    .line 2158
    .local v5, "density":F
    const/4 v6, 0x0

    cmpl-float v6, v5, v6

    if-nez v6, :cond_21

    .line 2159
    iget v6, v2, Landroid/content/res/Configuration;->densityDpi:I

    int-to-float v5, v6

    .line 2161
    :cond_21
    const v6, 0x3bcccccd  # 0.00625f

    mul-float/2addr v5, v6

    .line 2167
    iget-object v6, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v6}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v6

    .line 2168
    .local v6, "parentBounds":Landroid/graphics/Rect;
    iget-object v7, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v7}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    .line 2169
    .local v7, "resolvedBounds":Landroid/graphics/Rect;
    if-eqz v7, :cond_44

    invoke-virtual {v7}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_3a

    goto :goto_44

    .line 2173
    :cond_3a
    iget-object v8, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v7}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2174
    invoke-virtual {v6, v7}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v8

    .local v8, "insideParentBounds":Z
    goto :goto_4a

    .line 2170
    .end local v8  # "insideParentBounds":Z
    :cond_44
    :goto_44
    iget-object v8, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v8, v6}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2171
    const/4 v8, 0x1

    .line 2179
    .restart local v8  # "insideParentBounds":Z
    :goto_4a
    if-eqz v3, :cond_4e

    const/4 v11, 0x1

    goto :goto_4f

    :cond_4e
    const/4 v11, 0x0

    .line 2181
    .local v11, "customContainerPolicy":Z
    :goto_4f
    iget-object v12, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v12}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 2182
    .local v12, "outAppBounds":Landroid/graphics/Rect;
    if-eqz v12, :cond_5d

    invoke-virtual {v12}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v13

    if-eqz v13, :cond_94

    .line 2184
    :cond_5d
    iget-object v13, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    iget-object v14, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v14}, Landroid/app/WindowConfiguration;->setAppBounds(Landroid/graphics/Rect;)V

    .line 2185
    iget-object v13, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v12

    .line 2187
    if-nez v11, :cond_94

    const/4 v13, 0x5

    if-eq v4, v13, :cond_94

    .line 2189
    if-eqz v8, :cond_78

    .line 2190
    iget-object v13, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v13

    .local v13, "containingAppBounds":Landroid/graphics/Rect;
    goto :goto_89

    .line 2195
    .end local v13  # "containingAppBounds":Landroid/graphics/Rect;
    :cond_78
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v13

    .line 2196
    .local v13, "displayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v13, :cond_87

    .line 2197
    invoke-virtual {v13}, Lcom/android/server/wm/TaskDisplayArea;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v14

    invoke-virtual {v14}, Landroid/app/WindowConfiguration;->getAppBounds()Landroid/graphics/Rect;

    move-result-object v14

    goto :goto_88

    :cond_87
    const/4 v14, 0x0

    :goto_88
    move-object v13, v14

    .line 2199
    .local v13, "containingAppBounds":Landroid/graphics/Rect;
    :goto_89
    if-eqz v13, :cond_94

    invoke-virtual {v13}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_94

    .line 2200
    invoke-virtual {v12, v13}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    .line 2205
    .end local v13  # "containingAppBounds":Landroid/graphics/Rect;
    :cond_94
    iget v13, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    const/4 v14, 0x2

    if-eqz v13, :cond_9d

    iget v13, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v13, :cond_19f

    .line 2207
    :cond_9d
    if-nez v11, :cond_b4

    invoke-static {v4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v13

    if-eqz v13, :cond_b4

    .line 2208
    iget-object v13, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2209
    iget-object v13, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v15, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13, v15}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_122

    .line 2210
    :cond_b4
    if-nez v11, :cond_d6

    if-nez p3, :cond_be

    .line 2211
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    if-eqz v13, :cond_d6

    .line 2212
    :cond_be
    if-eqz p3, :cond_c3

    .line 2213
    move-object/from16 v13, p3

    goto :goto_cb

    .line 2214
    :cond_c3
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v13

    invoke-virtual {v13}, Lcom/android/server/wm/DisplayContent;->getDisplayInfo()Landroid/view/DisplayInfo;

    move-result-object v13

    :goto_cb
    nop

    .line 2220
    .local v13, "di":Landroid/view/DisplayInfo;
    iget-object v15, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v9, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v15, v9, v10, v13}, Lcom/android/server/wm/TaskFragment;->calculateInsetFrames(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/view/DisplayInfo;)V

    .line 2221
    .end local v13  # "di":Landroid/view/DisplayInfo;
    goto :goto_122

    .line 2224
    :cond_d6
    iget-object v9, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v9}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v9

    .line 2225
    .local v9, "rotation":I
    const/4 v10, -0x1

    if-ne v9, v10, :cond_e5

    .line 2226
    iget-object v13, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v13}, Landroid/app/WindowConfiguration;->getRotation()I

    move-result v9

    .line 2228
    :cond_e5
    if-eq v9, v10, :cond_118

    if-eqz v11, :cond_118

    .line 2229
    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2230
    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v13}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2231
    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v3, v10, v9}, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->getBoundsByRotation(Landroid/graphics/Rect;I)V

    .line 2232
    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v15, v3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mNonDecorInsets:[Landroid/graphics/Rect;

    aget-object v15, v15, v9

    invoke-static {v10, v13, v15}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2234
    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    iget-object v13, v0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    iget-object v15, v3, Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;->mStableInsets:[Landroid/graphics/Rect;

    aget-object v15, v15, v9

    invoke-static {v10, v13, v15}, Lcom/android/server/wm/TaskFragment;->intersectWithInsetsIfFits(Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Rect;)V

    .line 2236
    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v12, v10}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    goto :goto_122

    .line 2239
    :cond_118
    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2240
    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v10, v12}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2244
    .end local v9  # "rotation":I
    :goto_122
    iget v9, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-nez v9, :cond_13d

    .line 2245
    iget-object v9, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    float-to-int v9, v9

    .line 2246
    .local v9, "overrideScreenWidthDp":I
    if-eqz v8, :cond_13a

    if-nez v11, :cond_13a

    .line 2247
    iget v10, v2, Landroid/content/res/Configuration;->screenWidthDp:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_13b

    .line 2248
    :cond_13a
    move v10, v9

    :goto_13b
    iput v10, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2250
    .end local v9  # "overrideScreenWidthDp":I
    :cond_13d
    iget v9, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-nez v9, :cond_158

    .line 2251
    iget-object v9, v0, Lcom/android/server/wm/TaskFragment;->mTmpStableBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->height()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    float-to-int v9, v9

    .line 2252
    .local v9, "overrideScreenHeightDp":I
    if-eqz v8, :cond_155

    if-nez v11, :cond_155

    .line 2253
    iget v10, v2, Landroid/content/res/Configuration;->screenHeightDp:I

    invoke-static {v9, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    goto :goto_156

    .line 2254
    :cond_155
    move v10, v9

    :goto_156
    iput v10, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2257
    .end local v9  # "overrideScreenHeightDp":I
    :cond_158
    iget v9, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    if-nez v9, :cond_19f

    .line 2265
    if-ne v4, v14, :cond_170

    iget-object v9, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 2266
    invoke-virtual {v9}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v9

    if-nez v9, :cond_170

    iget-object v9, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v9, v6}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_170

    const/4 v9, 0x1

    goto :goto_171

    :cond_170
    const/4 v9, 0x0

    .line 2267
    .local v9, "inPipTransition":Z
    :goto_171
    invoke-static {v4}, Landroid/app/WindowConfiguration;->isFloating(I)Z

    move-result v10

    if-eqz v10, :cond_18f

    if-nez v9, :cond_18f

    .line 2270
    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    .line 2271
    invoke-virtual {v10}, Landroid/graphics/Rect;->width()I

    move-result v10

    iget-object v13, v0, Lcom/android/server/wm/TaskFragment;->mTmpFullBounds:Landroid/graphics/Rect;

    invoke-virtual {v13}, Landroid/graphics/Rect;->height()I

    move-result v13

    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v5

    float-to-int v10, v10

    iput v10, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    goto :goto_19f

    .line 2272
    :cond_18f
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v10

    if-eqz v10, :cond_19f

    .line 2275
    iget v10, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v13, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2276
    invoke-static {v10, v13}, Ljava/lang/Math;->min(II)I

    move-result v10

    iput v10, v1, Landroid/content/res/Configuration;->smallestScreenWidthDp:I

    .line 2282
    .end local v9  # "inPipTransition":Z
    :cond_19f
    :goto_19f
    iget v9, v1, Landroid/content/res/Configuration;->orientation:I

    if-nez v9, :cond_1ae

    .line 2283
    iget v9, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    iget v10, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-gt v9, v10, :cond_1ab

    .line 2284
    const/4 v10, 0x1

    goto :goto_1ac

    :cond_1ab
    move v10, v14

    :goto_1ac
    iput v10, v1, Landroid/content/res/Configuration;->orientation:I

    .line 2286
    :cond_1ae
    iget v9, v1, Landroid/content/res/Configuration;->screenLayout:I

    if-nez v9, :cond_1d8

    .line 2290
    iget-object v9, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v9

    int-to-float v9, v9

    div-float/2addr v9, v5

    float-to-int v9, v9

    .line 2291
    .local v9, "compatScreenWidthDp":I
    iget-object v10, v0, Lcom/android/server/wm/TaskFragment;->mTmpNonDecorBounds:Landroid/graphics/Rect;

    invoke-virtual {v10}, Landroid/graphics/Rect;->height()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v5

    float-to-int v10, v10

    .line 2294
    .local v10, "compatScreenHeightDp":I
    iget v13, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    if-eqz v13, :cond_1ca

    .line 2295
    iget v9, v1, Landroid/content/res/Configuration;->screenWidthDp:I

    .line 2297
    :cond_1ca
    iget v13, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    if-eqz v13, :cond_1d0

    .line 2298
    iget v10, v1, Landroid/content/res/Configuration;->screenHeightDp:I

    .line 2301
    :cond_1d0
    iget v13, v2, Landroid/content/res/Configuration;->screenLayout:I

    invoke-static {v13, v9, v10}, Lcom/android/server/wm/TaskFragment;->computeScreenLayoutOverride(III)I

    move-result v13

    iput v13, v1, Landroid/content/res/Configuration;->screenLayout:I

    .line 2304
    .end local v9  # "compatScreenWidthDp":I
    .end local v10  # "compatScreenHeightDp":I
    :cond_1d8
    return-void
.end method

.method computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V
    .registers 5
    .param p1, "inOutConfig"  # Landroid/content/res/Configuration;
    .param p2, "parentConfig"  # Landroid/content/res/Configuration;
    .param p3, "compatInsets"  # Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;

    .line 2119
    if-eqz p3, :cond_5

    .line 2121
    invoke-static {p1}, Lcom/android/server/wm/TaskFragment;->invalidateAppBoundsConfig(Landroid/content/res/Configuration;)V

    .line 2123
    :cond_5
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0, p3}, Lcom/android/server/wm/TaskFragment;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;Landroid/view/DisplayInfo;Lcom/android/server/wm/ActivityRecord$CompatDisplayInsets;)V

    .line 2125
    return-void
.end method

.method createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;
    .registers 4
    .param p1, "record"  # Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;

    .line 1999
    invoke-virtual {p1}, Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;->getMode()I

    move-result v0

    if-nez v0, :cond_b

    .line 2003
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    goto :goto_f

    .line 2004
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_f
    nop

    .line 2005
    .local v0, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_17

    invoke-virtual {v0, p1}, Lcom/android/server/wm/ActivityRecord;->createRemoteAnimationTarget(Lcom/android/server/wm/RemoteAnimationController$RemoteAnimationRecord;)Landroid/view/RemoteAnimationTarget;

    move-result-object v1

    goto :goto_18

    :cond_17
    const/4 v1, 0x0

    :goto_18
    return-object v1
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V
    .registers 9
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "dumpAll"  # Z

    .line 2836
    invoke-super {p0, p1, p2, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2837
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/Rect;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2838
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 2839
    .local v0, "doublePrefix":Ljava/lang/String;
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_40
    if-ltz v1, :cond_70

    .line 2840
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 2841
    .local v2, "child":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "* "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2844
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-nez v3, :cond_6d

    .line 2845
    invoke-virtual {v2, p1, v0, p3}, Lcom/android/server/wm/WindowContainer;->dump(Ljava/io/PrintWriter;Ljava/lang/String;Z)V

    .line 2839
    .end local v2  # "child":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    :cond_6d
    add-int/lit8 v1, v1, -0x1

    goto :goto_40

    .line 2848
    .end local v1  # "i":I
    :cond_70
    return-void
.end method

.method dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/Runnable;)Z
    .registers 33
    .param p1, "prefix"  # Ljava/lang/String;
    .param p2, "fd"  # Ljava/io/FileDescriptor;
    .param p3, "pw"  # Ljava/io/PrintWriter;
    .param p4, "dumpAll"  # Z
    .param p5, "dumpClient"  # Z
    .param p6, "dumpPackage"  # Ljava/lang/String;
    .param p7, "needSep"  # Z
    .param p8, "header"  # Ljava/lang/Runnable;

    .line 2784
    move-object/from16 v8, p0

    move-object/from16 v9, p1

    const/4 v10, 0x0

    .line 2785
    .local v10, "printed":Z
    new-instance v11, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda13;

    move-object v0, v11

    move-object/from16 v1, p0

    move/from16 v2, p7

    move-object/from16 v3, p3

    move-object/from16 v4, p8

    move-object/from16 v5, p1

    move/from16 v6, p4

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda13;-><init>(Lcom/android/server/wm/TaskFragment;ZLjava/io/PrintWriter;Ljava/lang/Runnable;Ljava/lang/String;ZLjava/lang/String;)V

    .line 2796
    .local v0, "headerPrinter":Ljava/lang/Runnable;
    if-nez p6, :cond_20

    .line 2799
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 2800
    const/4 v0, 0x0

    .line 2801
    const/4 v10, 0x1

    .line 2804
    :cond_20
    iget-object v1, v8, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_28
    if-ltz v1, :cond_9c

    .line 2805
    iget-object v2, v8, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    .line 2806
    .local v2, "child":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    const-string v4, "  "

    if-eqz v3, :cond_64

    .line 2807
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v11

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v13, p2

    move-object/from16 v14, p3

    move/from16 v15, p4

    move/from16 v16, p5

    move-object/from16 v17, p6

    move/from16 v18, p7

    move-object/from16 v19, v0

    invoke-virtual/range {v11 .. v19}, Lcom/android/server/wm/TaskFragment;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ZZLjava/lang/String;ZLjava/lang/Runnable;)Z

    move-result v3

    or-int/2addr v3, v10

    move v10, v3

    .end local v10  # "printed":Z
    .local v3, "printed":Z
    goto :goto_99

    .line 2809
    .end local v3  # "printed":Z
    .restart local v10  # "printed":Z
    :cond_64
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_99

    .line 2810
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v14

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    const/16 v17, 0x1

    xor-int/lit8 v18, p4, 0x1

    const/16 v21, 0x0

    .line 2812
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v23

    .line 2810
    const-string v16, "Hist "

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    move v13, v1

    move/from16 v19, p5

    move-object/from16 v20, p6

    move-object/from16 v22, v0

    invoke-static/range {v11 .. v23}, Lcom/android/server/wm/ActivityRecord;->dumpActivity(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;ILcom/android/server/wm/ActivityRecord;Ljava/lang/String;Ljava/lang/String;ZZZLjava/lang/String;ZLjava/lang/Runnable;Lcom/android/server/wm/Task;)Z

    .line 2804
    .end local v2  # "child":Lcom/android/server/wm/WindowContainer;
    :cond_99
    :goto_99
    add-int/lit8 v1, v1, -0x1

    goto :goto_28

    .line 2816
    .end local v1  # "i":I
    :cond_9c
    return v10
.end method

.method public dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V
    .registers 10
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J
    .param p4, "logLevel"  # I

    .line 2869
    const/4 v0, 0x2

    if-ne p4, v0, :cond_a

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isVisible()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2870
    return-void

    .line 2873
    :cond_a
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2875
    .local v0, "token":J
    const-wide v2, 0x10b00000001L

    invoke-super {p0, p1, v2, v3, p4}, Lcom/android/server/wm/WindowContainer;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 2877
    const-wide v2, 0x10500000002L

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2878
    const-wide v2, 0x10500000003L

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v4

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2879
    const-wide v2, 0x10500000004L

    iget v4, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2880
    const-wide v2, 0x10500000005L

    iget v4, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2882
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2883
    return-void
.end method

.method dumpInner(Ljava/lang/String;Ljava/io/PrintWriter;ZLjava/lang/String;)V
    .registers 13
    .param p1, "prefix"  # Ljava/lang/String;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "dumpAll"  # Z
    .param p4, "dumpPackage"  # Ljava/lang/String;

    .line 2820
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "* "

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 2821
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRequestedOverrideBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2822
    .local v0, "bounds":Landroid/graphics/Rect;
    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2f

    .line 2823
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mBounds="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2825
    :cond_2f
    iget-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    if-eqz v1, :cond_49

    .line 2826
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mIsRemovalRequested=true"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 2828
    :cond_49
    if-eqz p3, :cond_67

    .line 2829
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v5, 0x0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "  mLastPausedActivity: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    move-object v2, p2

    move-object v4, p4

    invoke-static/range {v2 .. v7}, Lcom/android/server/wm/ActivityTaskSupervisor;->printThisActivity(Ljava/io/PrintWriter;Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/Runnable;)Z

    .line 2832
    :cond_67
    return-void
.end method

.method ensureVisibleActivitiesConfiguration(Lcom/android/server/wm/ActivityRecord;Z)V
    .registers 4
    .param p1, "start"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "preserveWindow"  # Z

    .line 2096
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mEnsureVisibleActivitiesConfigHelper:Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/TaskFragment$EnsureVisibleActivitiesConfigHelper;->process(Lcom/android/server/wm/ActivityRecord;Z)V

    .line 2097
    return-void
.end method

.method executeAppTransition(Landroid/app/ActivityOptions;)V
    .registers 2
    .param p1, "options"  # Landroid/app/ActivityOptions;

    .line 1994
    return-void
.end method

.method fillsParent()Z
    .registers 3

    .line 2779
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getWindowingMode()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_f

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->matchParentBounds()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :cond_f
    :goto_f
    return v1
.end method

.method forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V
    .registers 7
    .param p2, "traverseTopToBottom"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;Z)V"
        }
    .end annotation

    .line 1905
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/TaskFragment;>;"
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    .line 1906
    .local v0, "count":I
    const/4 v1, 0x1

    .line 1907
    .local v1, "isLeafTaskFrag":Z
    if-eqz p2, :cond_23

    .line 1908
    add-int/lit8 v2, v0, -0x1

    .local v2, "i":I
    :goto_b
    if-ltz v2, :cond_22

    .line 1909
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    .line 1910
    .local v3, "child":Lcom/android/server/wm/TaskFragment;
    if-eqz v3, :cond_1f

    .line 1911
    const/4 v1, 0x0

    .line 1912
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 1908
    .end local v3  # "child":Lcom/android/server/wm/TaskFragment;
    :cond_1f
    add-int/lit8 v2, v2, -0x1

    goto :goto_b

    .end local v2  # "i":I
    :cond_22
    goto :goto_3b

    .line 1916
    :cond_23
    const/4 v2, 0x0

    .restart local v2  # "i":I
    :goto_24
    if-ge v2, v0, :cond_3b

    .line 1917
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v2}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    .line 1918
    .restart local v3  # "child":Lcom/android/server/wm/TaskFragment;
    if-eqz v3, :cond_38

    .line 1919
    const/4 v1, 0x0

    .line 1920
    invoke-virtual {v3, p1, p2}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 1916
    .end local v3  # "child":Lcom/android/server/wm/TaskFragment;
    :cond_38
    add-int/lit8 v2, v2, 0x1

    goto :goto_24

    .line 1924
    .end local v2  # "i":I
    :cond_3b
    :goto_3b
    if-eqz v1, :cond_40

    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1925
    :cond_40
    return-void
.end method

.method forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;)Z"
        }
    .end annotation

    .line 1929
    .local p1, "callback":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<Lcom/android/server/wm/TaskFragment;>;"
    const/4 v0, 0x1

    .line 1930
    .local v0, "isLeafTaskFrag":Z
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v1}, Lcom/android/server/wm/WindowList;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "i":I
    :goto_9
    if-ltz v1, :cond_24

    .line 1931
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v3, v1}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v3}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    .line 1932
    .local v3, "child":Lcom/android/server/wm/TaskFragment;
    if-eqz v3, :cond_21

    .line 1933
    const/4 v0, 0x0

    .line 1934
    invoke-virtual {v3, p1}, Lcom/android/server/wm/TaskFragment;->forAllLeafTaskFragments(Ljava/util/function/Predicate;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 1935
    return v2

    .line 1930
    .end local v3  # "child":Lcom/android/server/wm/TaskFragment;
    :cond_21
    add-int/lit8 v1, v1, -0x1

    goto :goto_9

    .line 1939
    .end local v1  # "i":I
    :cond_24
    if-eqz v0, :cond_2b

    .line 1940
    invoke-interface {p1, p0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 1942
    :cond_2b
    const/4 v1, 0x0

    return v1
.end method

.method forAllTaskFragments(Ljava/util/function/Consumer;Z)V
    .registers 3
    .param p2, "traverseTopToBottom"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/wm/TaskFragment;",
            ">;Z)V"
        }
    .end annotation

    .line 1899
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/wm/TaskFragment;>;"
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->forAllTaskFragments(Ljava/util/function/Consumer;Z)V

    .line 1900
    invoke-interface {p1, p0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 1901
    return-void
.end method

.method public getActivityType()I
    .registers 4

    .line 2379
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getActivityType()I

    move-result v0

    .line 2380
    .local v0, "applicationType":I
    if-nez v0, :cond_21

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->hasChild()Z

    move-result v1

    if-nez v1, :cond_d

    goto :goto_21

    .line 2383
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopMostActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2384
    .local v1, "activity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v1, :cond_18

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityRecord;->getActivityType()I

    move-result v2

    goto :goto_20

    :cond_18
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopChild()Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->getActivityType()I

    move-result v2

    :goto_20
    return v2

    .line 2381
    .end local v1  # "activity":Lcom/android/server/wm/ActivityRecord;
    :cond_21
    :goto_21
    return v0
.end method

.method getAdjacentTaskFragment()Lcom/android/server/wm/TaskFragment;
    .registers 2

    .line 425
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    return-object v0
.end method

.method getDimmer()Lcom/android/server/wm/Dimmer;
    .registers 2

    .line 2744
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_9

    .line 2745
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    return-object v0

    .line 2748
    :cond_9
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDimmer()Lcom/android/server/wm/Dimmer;

    move-result-object v0

    return-object v0
.end method

.method bridge synthetic getDisplayArea()Lcom/android/server/wm/DisplayArea;
    .registers 2

    .line 121
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    return-object v0
.end method

.method getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;
    .registers 2

    .line 529
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->getDisplayArea()Lcom/android/server/wm/DisplayArea;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/TaskDisplayArea;

    return-object v0
.end method

.method getDisplayId()I
    .registers 3

    .line 512
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object v0

    .line 513
    .local v0, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v0, :cond_9

    iget v1, v0, Lcom/android/server/wm/DisplayContent;->mDisplayId:I

    goto :goto_a

    :cond_9
    const/4 v1, -0x1

    :goto_a
    return v1
.end method

.method getFragmentToken()Landroid/os/IBinder;
    .registers 2

    .line 2558
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    return-object v0
.end method

.method getNonFinishingActivityCount()I
    .registers 3

    .line 977
    const/4 v0, 0x1

    new-array v0, v0, [I

    .line 978
    .local v0, "runningActivityCount":[I
    new-instance v1, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;

    invoke-direct {v1, v0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda0;-><init>([I)V

    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 983
    const/4 v1, 0x0

    aget v1, v0, v1

    return v1
.end method

.method getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;
    .registers 3

    .line 698
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_5

    .line 699
    return-object p0

    .line 702
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_15

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    goto :goto_16

    :cond_15
    move-object v0, v1

    .line 703
    .local v0, "parentTaskFragment":Lcom/android/server/wm/TaskFragment;
    :goto_16
    if-eqz v0, :cond_1c

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getOrganizedTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    :cond_1c
    return-object v1
.end method

.method getPausingActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 508
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method getProtoFieldId()J
    .registers 3

    .line 2863
    const-wide v0, 0x10b00000009L

    return-wide v0
.end method

.method getResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 452
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    return-object v0
.end method

.method getRootTask()Lcom/android/server/wm/Task;
    .registers 2

    .line 552
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getRootTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0
.end method

.method getRootTaskFragment()Lcom/android/server/wm/TaskFragment;
    .registers 4

    .line 543
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 544
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    if-nez v0, :cond_7

    return-object p0

    .line 546
    :cond_7
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v1

    .line 547
    .local v1, "parentTaskFragment":Lcom/android/server/wm/TaskFragment;
    if-nez v1, :cond_f

    move-object v2, p0

    goto :goto_13

    :cond_f
    invoke-virtual {v1}, Lcom/android/server/wm/TaskFragment;->getRootTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    :goto_13
    return-object v2
.end method

.method getTask()Lcom/android/server/wm/Task;
    .registers 3

    .line 518
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 519
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    return-object v0

    .line 522
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1b

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v0

    goto :goto_1c

    :cond_1b
    move-object v0, v1

    .line 523
    .local v0, "parent":Lcom/android/server/wm/TaskFragment;
    :goto_1c
    if-eqz v0, :cond_22

    invoke-virtual {v0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    :cond_22
    return-object v1
.end method

.method getTaskFragmentInfo()Landroid/window/TaskFragmentInfo;
    .registers 15

    .line 2507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2508
    .local v0, "childActivities":Ljava/util/List;, "Ljava/util/List<Landroid/os/IBinder;>;"
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_6
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3b

    .line 2509
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 2510
    .local v2, "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 2511
    .local v3, "ar":Lcom/android/server/wm/ActivityRecord;
    iget v4, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    const/4 v5, -0x1

    if-eq v4, v5, :cond_38

    if-eqz v3, :cond_38

    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->processName:Ljava/lang/String;

    iget-object v5, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerProcessName:Ljava/lang/String;

    .line 2512
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_38

    .line 2513
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getUid()I

    move-result v4

    iget v5, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    if-ne v4, v5, :cond_38

    iget-boolean v4, v3, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v4, :cond_38

    .line 2515
    iget-object v4, v3, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2508
    .end local v2  # "wc":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v3  # "ar":Lcom/android/server/wm/ActivityRecord;
    :cond_38
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 2518
    .end local v1  # "i":I
    :cond_3b
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    move-object v12, v1

    .line 2519
    .local v12, "positionInParent":Landroid/graphics/Point;
    invoke-virtual {p0, v12}, Lcom/android/server/wm/TaskFragment;->getRelativePosition(Landroid/graphics/Point;)V

    .line 2520
    new-instance v13, Landroid/window/TaskFragmentInfo;

    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mFragmentToken:Landroid/os/IBinder;

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mRemoteToken:Lcom/android/server/wm/WindowContainer$RemoteToken;

    .line 2522
    invoke-virtual {v1}, Lcom/android/server/wm/WindowContainer$RemoteToken;->toWindowContainerToken()Landroid/window/WindowContainerToken;

    move-result-object v3

    .line 2523
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v4

    .line 2524
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getNonFinishingActivityCount()I

    move-result v5

    .line 2525
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isVisible()Z

    move-result v6

    iget-boolean v9, p0, Lcom/android/server/wm/TaskFragment;->mClearedTaskForReuse:Z

    iget-boolean v10, p0, Lcom/android/server/wm/TaskFragment;->mClearedTaskFragmentForPip:Z

    .line 2530
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->calculateMinDimension()Landroid/graphics/Point;

    move-result-object v11

    move-object v1, v13

    move-object v7, v0

    move-object v8, v12

    invoke-direct/range {v1 .. v11}, Landroid/window/TaskFragmentInfo;-><init>(Landroid/os/IBinder;Landroid/window/WindowContainerToken;Landroid/content/res/Configuration;IZLjava/util/List;Landroid/graphics/Point;ZZLandroid/graphics/Point;)V

    .line 2520
    return-object v13
.end method

.method getTaskFragmentOrganizer()Landroid/window/ITaskFragmentOrganizer;
    .registers 2

    .line 2563
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    return-object v0
.end method

.method getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 914
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopNonFinishingActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 3
    .param p1, "includeOverlays"  # Z

    .line 918
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopNonFinishingActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .param p1, "includeOverlays"  # Z
    .param p2, "includingEmbeddedTask"  # Z

    .line 932
    if-eqz p1, :cond_18

    .line 933
    if-eqz p2, :cond_e

    .line 934
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 936
    :cond_e
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda4;-><init>(Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 939
    :cond_18
    if-eqz p2, :cond_24

    .line 940
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 942
    :cond_24
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda6;-><init>(Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 6

    .line 491
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 492
    .local v0, "taskFragPausingActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_2e

    .line 493
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 494
    .local v2, "child":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    const/4 v3, 0x0

    .line 495
    .local v3, "topPausingActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_1a

    if-ne v2, v0, :cond_1a

    .line 496
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_28

    .line 497
    :cond_1a
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 498
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTopPausingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 500
    :cond_28
    :goto_28
    if-eqz v3, :cond_2b

    .line 501
    return-object v3

    .line 492
    .end local v2  # "child":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v3  # "topPausingActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 504
    .end local v1  # "i":I
    :cond_2e
    const/4 v1, 0x0

    return-object v1
.end method

.method getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 6

    .line 431
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 432
    .local v0, "taskFragResumedActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .local v1, "i":I
    :goto_a
    if-ltz v1, :cond_2e

    .line 433
    invoke-virtual {p0, v1}, Lcom/android/server/wm/TaskFragment;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v2

    .line 434
    .local v2, "child":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    const/4 v3, 0x0

    .line 435
    .local v3, "topResumedActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_1a

    if-ne v2, v0, :cond_1a

    .line 436
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    goto :goto_28

    .line 437
    :cond_1a
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    if-eqz v4, :cond_28

    .line 438
    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/TaskFragment;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    .line 440
    :cond_28
    :goto_28
    if-eqz v3, :cond_2b

    .line 441
    return-object v3

    .line 432
    .end local v2  # "child":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    .end local v3  # "topResumedActivity":Lcom/android/server/wm/ActivityRecord;
    :cond_2b
    add-int/lit8 v1, v1, -0x1

    goto :goto_a

    .line 444
    .end local v1  # "i":I
    :cond_2e
    const/4 v1, 0x0

    return-object v1
.end method

.method getVisibility(Lcom/android/server/wm/ActivityRecord;)I
    .registers 18
    .param p1, "starting"  # Lcom/android/server/wm/ActivityRecord;

    .line 999
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v2

    const/4 v3, 0x2

    if-eqz v2, :cond_104

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v2

    if-eqz v2, :cond_13

    goto/16 :goto_104

    .line 1003
    :cond_13
    invoke-direct/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->isTopActivityLaunchedBehind()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_1b

    .line 1004
    return v4

    .line 1007
    :cond_1b
    const/4 v2, 0x0

    .line 1008
    .local v2, "gotTranslucentFullscreen":Z
    const/4 v5, 0x0

    .line 1009
    .local v5, "gotTranslucentAdjacent":Z
    const/4 v6, 0x1

    .line 1013
    .local v6, "shouldBeVisible":Z
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v7

    .line 1014
    .local v7, "parent":Lcom/android/server/wm/WindowContainer;
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v8

    const/4 v9, 0x1

    if-eqz v8, :cond_37

    .line 1015
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v8

    invoke-virtual {v8, v1}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v8

    .line 1016
    .local v8, "parentVisibility":I
    if-ne v8, v3, :cond_34

    .line 1018
    return v3

    .line 1019
    :cond_34
    if-ne v8, v9, :cond_37

    .line 1022
    const/4 v2, 0x1

    .line 1026
    .end local v8  # "parentVisibility":I
    :cond_37
    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    .line 1027
    .local v8, "adjacentTaskFragments":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/TaskFragment;>;"
    invoke-virtual {v7}, Lcom/android/server/wm/WindowContainer;->getChildCount()I

    move-result v10

    sub-int/2addr v10, v9

    .local v10, "i":I
    :goto_41
    if-ltz v10, :cond_fb

    .line 1028
    invoke-virtual {v7, v10}, Lcom/android/server/wm/WindowContainer;->getChildAt(I)Lcom/android/server/wm/WindowContainer;

    move-result-object v11

    .line 1029
    .local v11, "other":Lcom/android/server/wm/WindowContainer;
    if-nez v11, :cond_4b

    goto/16 :goto_f6

    .line 1031
    :cond_4b
    invoke-static {v11}, Lcom/android/server/wm/TaskFragment;->hasRunningActivity(Lcom/android/server/wm/WindowContainer;)Z

    move-result v12

    .line 1032
    .local v12, "hasRunningActivities":Z
    if-ne v11, v0, :cond_aa

    .line 1033
    invoke-interface {v8}, Ljava/util/List;->isEmpty()Z

    move-result v13

    if-nez v13, :cond_93

    if-nez v5, :cond_93

    .line 1037
    iget-object v13, v0, Lcom/android/server/wm/TaskFragment;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1038
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v9

    .local v13, "j":I
    :goto_67
    if-ltz v13, :cond_93

    .line 1039
    invoke-interface {v8, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcom/android/server/wm/TaskFragment;

    .line 1040
    .local v14, "taskFragment":Lcom/android/server/wm/TaskFragment;
    iget-object v15, v14, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 1042
    .local v15, "adjacentTaskFragment":Lcom/android/server/wm/TaskFragment;
    if-ne v15, v0, :cond_74

    .line 1043
    goto :goto_8d

    .line 1045
    :cond_74
    iget-object v4, v0, Lcom/android/server/wm/TaskFragment;->mTmpRect:Landroid/graphics/Rect;

    invoke-virtual {v14}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-nez v4, :cond_92

    iget-object v4, v0, Lcom/android/server/wm/TaskFragment;->mTmpRect:Landroid/graphics/Rect;

    .line 1046
    invoke-virtual {v15}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    invoke-virtual {v4, v9}, Landroid/graphics/Rect;->intersect(Landroid/graphics/Rect;)Z

    move-result v4

    if-eqz v4, :cond_8d

    goto :goto_92

    .line 1038
    .end local v14  # "taskFragment":Lcom/android/server/wm/TaskFragment;
    .end local v15  # "adjacentTaskFragment":Lcom/android/server/wm/TaskFragment;
    :cond_8d
    :goto_8d
    add-int/lit8 v13, v13, -0x1

    const/4 v4, 0x0

    const/4 v9, 0x1

    goto :goto_67

    .line 1047
    .restart local v14  # "taskFragment":Lcom/android/server/wm/TaskFragment;
    .restart local v15  # "adjacentTaskFragment":Lcom/android/server/wm/TaskFragment;
    :cond_92
    :goto_92
    return v3

    .line 1053
    .end local v13  # "j":I
    .end local v14  # "taskFragment":Lcom/android/server/wm/TaskFragment;
    .end local v15  # "adjacentTaskFragment":Lcom/android/server/wm/TaskFragment;
    :cond_93
    if-nez v12, :cond_a6

    if-eqz v1, :cond_9d

    .line 1054
    invoke-virtual {v1, v0}, Lcom/android/server/wm/ActivityRecord;->isDescendantOf(Lcom/android/server/wm/WindowContainer;)Z

    move-result v4

    if-nez v4, :cond_a6

    .line 1055
    :cond_9d
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->isActivityTypeHome()Z

    move-result v4

    if-eqz v4, :cond_a4

    goto :goto_a6

    :cond_a4
    const/4 v4, 0x0

    goto :goto_a7

    :cond_a6
    :goto_a6
    const/4 v4, 0x1

    :goto_a7
    move v6, v4

    .line 1056
    const/4 v9, 0x1

    goto :goto_fb

    .line 1059
    :cond_aa
    if-nez v12, :cond_ae

    .line 1060
    const/4 v9, 0x1

    goto :goto_f6

    .line 1063
    :cond_ae
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->getWindowingMode()I

    move-result v4

    .line 1064
    .local v4, "otherWindowingMode":I
    const/4 v9, 0x1

    if-ne v4, v9, :cond_be

    .line 1065
    invoke-static {v11, v1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v13

    if-eqz v13, :cond_bd

    .line 1067
    const/4 v2, 0x1

    .line 1068
    goto :goto_f6

    .line 1070
    :cond_bd
    return v3

    .line 1071
    :cond_be
    const/4 v13, 0x6

    if-ne v4, v13, :cond_d0

    .line 1072
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->matchParentBounds()Z

    move-result v13

    if-eqz v13, :cond_d0

    .line 1073
    invoke-static {v11, v1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/WindowContainer;Lcom/android/server/wm/ActivityRecord;)Z

    move-result v13

    if-eqz v13, :cond_cf

    .line 1075
    const/4 v2, 0x1

    .line 1076
    goto :goto_f6

    .line 1079
    :cond_cf
    return v3

    .line 1082
    :cond_d0
    invoke-virtual {v11}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v13

    .line 1083
    .local v13, "otherTaskFrag":Lcom/android/server/wm/TaskFragment;
    if-eqz v13, :cond_f6

    iget-object v14, v13, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-eqz v14, :cond_f6

    .line 1084
    invoke-interface {v8, v14}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_f3

    .line 1085
    invoke-virtual {v13, v1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v14

    if-nez v14, :cond_f0

    iget-object v14, v13, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 1086
    invoke-virtual {v14, v1}, Lcom/android/server/wm/TaskFragment;->isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v14

    if-eqz v14, :cond_ef

    goto :goto_f0

    .line 1093
    :cond_ef
    return v3

    .line 1088
    :cond_f0
    :goto_f0
    const/4 v2, 0x1

    .line 1089
    const/4 v5, 0x1

    .line 1090
    goto :goto_f6

    .line 1095
    :cond_f3
    invoke-interface {v8, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1027
    .end local v4  # "otherWindowingMode":I
    .end local v11  # "other":Lcom/android/server/wm/WindowContainer;
    .end local v12  # "hasRunningActivities":Z
    .end local v13  # "otherTaskFrag":Lcom/android/server/wm/TaskFragment;
    :cond_f6
    :goto_f6
    add-int/lit8 v10, v10, -0x1

    const/4 v4, 0x0

    goto/16 :goto_41

    .line 1101
    .end local v10  # "i":I
    :cond_fb
    :goto_fb
    if-nez v6, :cond_fe

    .line 1102
    return v3

    .line 1106
    :cond_fe
    if-eqz v2, :cond_102

    .line 1107
    move v4, v9

    goto :goto_103

    .line 1108
    :cond_102
    const/4 v4, 0x0

    .line 1106
    :goto_103
    return v4

    .line 1000
    .end local v2  # "gotTranslucentFullscreen":Z
    .end local v5  # "gotTranslucentAdjacent":Z
    .end local v6  # "shouldBeVisible":Z
    .end local v7  # "parent":Lcom/android/server/wm/WindowContainer;
    .end local v8  # "adjacentTaskFragments":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/wm/TaskFragment;>;"
    :cond_104
    :goto_104
    return v3
.end method

.method handleAppDied(Lcom/android/server/wm/WindowProcessController;)Z
    .registers 9
    .param p1, "app"  # Lcom/android/server/wm/WindowProcessController;

    .line 798
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mMiuiFreeFormManagerService:Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/server/wm/MiuiFreeFormManagerServiceStub;->handleAppDied(Lcom/android/server/wm/WindowProcessController;Lcom/android/server/wm/Task;)Z

    .line 799
    const-string v0, "handleAppDied"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskFragment;->warnForNonLeafTaskFragment(Ljava/lang/String;)V

    .line 800
    const/4 v0, 0x0

    .line 801
    .local v0, "isPausingDied":Z
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    if-eqz v1, :cond_35

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v1, p1, :cond_35

    .line 802
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_32

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x5d3c3b70

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    invoke-static {v3, v4, v6, v2, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 804
    .end local v1  # "protoLogParam0":Ljava/lang/String;
    :cond_32
    iput-object v2, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 805
    const/4 v0, 0x1

    .line 807
    :cond_35
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_3f

    iget-object v1, v1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-ne v1, p1, :cond_3f

    .line 808
    iput-object v2, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 810
    :cond_3f
    return v0
.end method

.method handleCompleteDeferredRemoval()Z
    .registers 2

    .line 2702
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldDeferRemoval()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 2703
    const/4 v0, 0x1

    return v0

    .line 2705
    :cond_8
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->handleCompleteDeferredRemoval()Z

    move-result v0

    return v0
.end method

.method hasDirectChildActivities()Z
    .registers 4

    .line 716
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1c

    .line 717
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    if-eqz v2, :cond_19

    .line 718
    return v1

    .line 716
    :cond_19
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 721
    .end local v0  # "i":I
    :cond_1c
    const/4 v0, 0x0

    return v0
.end method

.method hasTaskFragmentOrganizer(Landroid/window/ITaskFragmentOrganizer;)Z
    .registers 4
    .param p1, "organizer"  # Landroid/window/ITaskFragmentOrganizer;

    .line 420
    if-eqz p1, :cond_18

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_18

    .line 421
    invoke-interface {p1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    invoke-interface {v1}, Landroid/window/ITaskFragmentOrganizer;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    .line 420
    :goto_19
    return v0
.end method

.method isAllowedToBeEmbeddedInTrustedMode()Z
    .registers 2

    .line 689
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda12;-><init>(Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->forAllActivities(Ljava/util/function/Predicate;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isAllowedToEmbedActivity(Lcom/android/server/wm/ActivityRecord;)I
    .registers 3
    .param p1, "a"  # Lcom/android/server/wm/ActivityRecord;

    .line 575
    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivity(Lcom/android/server/wm/ActivityRecord;I)I

    move-result v0

    return v0
.end method

.method isAllowedToEmbedActivity(Lcom/android/server/wm/ActivityRecord;I)I
    .registers 4
    .param p1, "a"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "uid"  # I

    .line 589
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivityInUntrustedMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-nez v0, :cond_e

    .line 590
    invoke-virtual {p0, p1, p2}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivityInTrustedMode(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v0

    if-nez v0, :cond_e

    .line 591
    const/4 v0, 0x1

    return v0

    .line 592
    :cond_e
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->smallerThanMinDimension(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 593
    const/4 v0, 0x2

    return v0

    .line 595
    :cond_16
    const/4 v0, 0x0

    return v0
.end method

.method isAllowedToEmbedActivityInTrustedMode(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "a"  # Lcom/android/server/wm/ActivityRecord;

    .line 631
    iget v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivityInTrustedMode(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v0

    return v0
.end method

.method isAllowedToEmbedActivityInTrustedMode(Lcom/android/server/wm/ActivityRecord;I)Z
    .registers 8
    .param p1, "a"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "uid"  # I

    .line 643
    invoke-static {p1, p2}, Lcom/android/server/wm/TaskFragment;->isFullyTrustedEmbedding(Lcom/android/server/wm/ActivityRecord;I)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_8

    .line 644
    return v1

    .line 647
    :cond_8
    iget-object v0, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    invoke-virtual {v0}, Landroid/content/pm/ActivityInfo;->getKnownActivityEmbeddingCerts()Ljava/util/Set;

    move-result-object v0

    .line 648
    .local v0, "knownActivityEmbeddingCerts":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_16

    .line 651
    return v3

    .line 654
    :cond_16
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v2}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManagerInternalLocked()Landroid/content/pm/PackageManagerInternal;

    move-result-object v2

    .line 655
    invoke-virtual {v2, p2}, Landroid/content/pm/PackageManagerInternal;->getPackage(I)Lcom/android/server/pm/parsing/pkg/AndroidPackage;

    move-result-object v2

    .line 657
    .local v2, "hostPackage":Lcom/android/server/pm/parsing/pkg/AndroidPackage;
    if-eqz v2, :cond_2d

    invoke-interface {v2}, Lcom/android/server/pm/parsing/pkg/AndroidPackage;->getSigningDetails()Landroid/content/pm/SigningDetails;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/pm/SigningDetails;->hasAncestorOrSelfWithDigest(Ljava/util/Set;)Z

    move-result v4

    if-eqz v4, :cond_2d

    goto :goto_2e

    :cond_2d
    move v1, v3

    :goto_2e
    return v1
.end method

.method isAllowedToEmbedActivityInUntrustedMode(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 6
    .param p1, "a"  # Lcom/android/server/wm/ActivityRecord;

    .line 620
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 621
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;
    const/4 v1, 0x0

    if-eqz v0, :cond_21

    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->getBounds()Landroid/graphics/Rect;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->contains(Landroid/graphics/Rect;)Z

    move-result v2

    if-nez v2, :cond_16

    goto :goto_21

    .line 626
    :cond_16
    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v2, v2, Landroid/content/pm/ActivityInfo;->flags:I

    const/high16 v3, 0x10000000

    and-int/2addr v2, v3

    if-ne v2, v3, :cond_20

    const/4 v1, 0x1

    :cond_20
    return v1

    .line 624
    :cond_21
    :goto_21
    return v1
.end method

.method public isAttached()Z
    .registers 3

    .line 534
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    .line 535
    .local v0, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/TaskDisplayArea;->isRemoved()Z

    move-result v1

    if-nez v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method isDelayLastActivityRemoval()Z
    .registers 2

    .line 2690
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mDelayLastActivityRemoval:Z

    return v0
.end method

.method isEmbedded()Z
    .registers 6

    .line 562
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_6

    .line 563
    return v1

    .line 565
    :cond_6
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getParent()Lcom/android/server/wm/WindowContainer;

    move-result-object v0

    .line 566
    .local v0, "parent":Lcom/android/server/wm/WindowContainer;, "Lcom/android/server/wm/WindowContainer<*>;"
    const/4 v2, 0x0

    if-eqz v0, :cond_1c

    .line 567
    invoke-virtual {v0}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v3

    .line 568
    .local v3, "taskFragment":Lcom/android/server/wm/TaskFragment;
    if-eqz v3, :cond_1a

    invoke-virtual {v3}, Lcom/android/server/wm/TaskFragment;->isEmbedded()Z

    move-result v4

    if-eqz v4, :cond_1a

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    return v1

    .line 570
    .end local v3  # "taskFragment":Lcom/android/server/wm/TaskFragment;
    :cond_1c
    return v2
.end method

.method isEmbeddedTaskFragmentInPip()Z
    .registers 2

    .line 2628
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isOrganizedTaskFragment()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->inPinnedWindowingMode()Z

    move-result v0

    if-eqz v0, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method isFocusableAndVisible()Z
    .registers 2

    .line 1630
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isTopActivityFocusable()Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_f

    const/4 v0, 0x1

    goto :goto_10

    :cond_f
    const/4 v0, 0x0

    :goto_10
    return v0
.end method

.method protected isForceHidden()Z
    .registers 2

    .line 739
    const/4 v0, 0x0

    return v0
.end method

.method isFullyTrustedEmbedding(I)Z
    .registers 3
    .param p1, "uid"  # I

    .line 680
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda7;-><init>(I)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->forAllActivities(Ljava/util/function/Predicate;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method isLeafTaskFragment()Z
    .registers 4

    .line 743
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowList;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_1d

    .line 744
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mChildren:Lcom/android/server/wm/WindowList;

    invoke-virtual {v2, v0}, Lcom/android/server/wm/WindowList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wm/WindowContainer;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowContainer;->asTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v2

    if-eqz v2, :cond_1a

    .line 745
    const/4 v1, 0x0

    return v1

    .line 743
    :cond_1a
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 748
    .end local v0  # "i":I
    :cond_1d
    return v1
.end method

.method isOrganized()Z
    .registers 2

    .line 2568
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method final isOrganizedTaskFragment()Z
    .registers 2

    .line 2573
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    goto :goto_7

    :cond_6
    const/4 v0, 0x0

    :goto_7
    return v0
.end method

.method isReadyToTransit()Z
    .registers 3

    .line 2584
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isOrganizedTaskFragment()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_8

    .line 2585
    return v1

    .line 2589
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTopNonFinishingActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-nez v0, :cond_27

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    if-eqz v0, :cond_13

    goto :goto_27

    .line 2593
    :cond_13
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isEmbeddedTaskFragmentInPip()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2594
    return v1

    .line 2598
    :cond_1a
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mClearedTaskFragmentForPip:Z

    if-eqz v0, :cond_25

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isTaskVisibleRequested()Z

    move-result v0

    if-nez v0, :cond_25

    .line 2599
    return v1

    .line 2601
    :cond_25
    const/4 v0, 0x0

    return v0

    .line 2590
    :cond_27
    :goto_27
    return v1
.end method

.method isTaskVisibleRequested()Z
    .registers 3

    .line 2578
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2579
    .local v0, "task":Lcom/android/server/wm/Task;
    if-eqz v0, :cond_e

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->isVisibleRequested()Z

    move-result v1

    if-eqz v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    return v1
.end method

.method isTopActivityFocusable()Z
    .registers 3

    .line 987
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 988
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_b

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v1

    goto :goto_1e

    .line 989
    :cond_b
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isFocusable()Z

    move-result v1

    if-eqz v1, :cond_1d

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getWindowConfiguration()Landroid/app/WindowConfiguration;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->canReceiveKeys()Z

    move-result v1

    if-eqz v1, :cond_1d

    const/4 v1, 0x1

    goto :goto_1e

    :cond_1d
    const/4 v1, 0x0

    .line 988
    :goto_1e
    return v1
.end method

.method isTranslucent(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 5
    .param p1, "starting"  # Lcom/android/server/wm/ActivityRecord;

    .line 882
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isAttached()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_29

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isForceHidden()Z

    move-result v0

    if-eqz v0, :cond_e

    goto :goto_29

    .line 885
    :cond_e
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda2;-><init>()V

    const-class v2, Lcom/android/server/wm/ActivityRecord;

    .line 886
    invoke-static {v2}, Lcom/android/internal/util/function/pooled/PooledLambda;->__(Ljava/lang/Class;)Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;

    move-result-object v2

    .line 885
    invoke-static {v0, v2, p1}, Lcom/android/internal/util/function/pooled/PooledLambda;->obtainPredicate(Ljava/util/function/BiPredicate;Lcom/android/internal/util/function/pooled/ArgumentPlaceholder;Ljava/lang/Object;)Lcom/android/internal/util/function/pooled/PooledPredicate;

    move-result-object v0

    .line 887
    .local v0, "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 888
    .local v2, "opaque":Lcom/android/server/wm/ActivityRecord;
    invoke-interface {v0}, Lcom/android/internal/util/function/pooled/PooledPredicate;->recycle()V

    .line 889
    if-nez v2, :cond_27

    goto :goto_28

    :cond_27
    const/4 v1, 0x0

    :goto_28
    return v1

    .line 883
    .end local v0  # "p":Lcom/android/internal/util/function/pooled/PooledPredicate;
    .end local v2  # "opaque":Lcom/android/server/wm/ActivityRecord;
    :cond_29
    :goto_29
    return v1
.end method

.method synthetic lambda$dump$12$com-android-server-wm-TaskFragment(ZLjava/io/PrintWriter;Ljava/lang/Runnable;Ljava/lang/String;ZLjava/lang/String;)V
    .registers 7
    .param p1, "needSep"  # Z
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "header"  # Ljava/lang/Runnable;
    .param p4, "prefix"  # Ljava/lang/String;
    .param p5, "dumpAll"  # Z
    .param p6, "dumpPackage"  # Ljava/lang/String;

    .line 2786
    if-eqz p1, :cond_5

    .line 2787
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 2789
    :cond_5
    if-eqz p3, :cond_a

    .line 2790
    invoke-interface {p3}, Ljava/lang/Runnable;->run()V

    .line 2793
    :cond_a
    invoke-virtual {p0, p4, p2, p5, p6}, Lcom/android/server/wm/TaskFragment;->dumpInner(Ljava/lang/String;Ljava/io/PrintWriter;ZLjava/lang/String;)V

    .line 2794
    return-void
.end method

.method synthetic lambda$getTopNonFinishingActivity$3$com-android-server-wm-TaskFragment(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 936
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_10

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_11

    :cond_10
    const/4 v0, 0x0

    :goto_11
    return v0
.end method

.method synthetic lambda$getTopNonFinishingActivity$5$com-android-server-wm-TaskFragment(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 943
    iget-boolean v0, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_16

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isTaskOverlay()Z

    move-result v0

    if-nez v0, :cond_16

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v0, v1, :cond_16

    const/4 v0, 0x1

    goto :goto_17

    :cond_16
    const/4 v0, 0x0

    :goto_17
    return v0
.end method

.method synthetic lambda$isAllowedToBeEmbeddedInTrustedMode$1$com-android-server-wm-TaskFragment(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 3
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 689
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->isAllowedToEmbedActivityInTrustedMode(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method synthetic lambda$topRunningActivity$7$com-android-server-wm-TaskFragment(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 967
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->isFocusable()Z

    move-result v0

    if-eqz v0, :cond_18

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v0, v1, :cond_18

    const/4 v0, 0x1

    goto :goto_19

    :cond_18
    const/4 v0, 0x0

    :goto_19
    return v0
.end method

.method synthetic lambda$topRunningActivity$8$com-android-server-wm-TaskFragment(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;

    .line 973
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->canBeTopRunning()Z

    move-result v0

    if-eqz v0, :cond_12

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-ne v0, v1, :cond_12

    const/4 v0, 0x1

    goto :goto_13

    :cond_12
    const/4 v0, 0x0

    :goto_13
    return v0
.end method

.method onActivityStateChanged(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V
    .registers 7
    .param p1, "record"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "state"  # Lcom/android/server/wm/ActivityRecord$State;
    .param p3, "reason"  # Ljava/lang/String;

    .line 761
    const-string/jumbo v0, "onActivityStateChanged"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskFragment;->warnForNonLeafTaskFragment(Ljava/lang/String;)V

    .line 762
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v1, " - onActivityStateChanged"

    if-ne p1, v0, :cond_25

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-eq p2, v0, :cond_25

    .line 763
    const/4 v0, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/wm/TaskFragment;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 766
    :cond_25
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    if-ne p2, v0, :cond_80

    .line 767
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v0, :cond_50

    .line 768
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "set resumed activity to:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " reason:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v2, "ActivityTaskManager"

    invoke-static {v2, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 770
    :cond_50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V

    .line 772
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    if-eq p1, v0, :cond_75

    .line 773
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->switchFocusedTaskIfNeed(Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;)V

    .line 775
    :cond_75
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mRecentTasks:Lcom/android/server/wm/RecentTasks;

    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wm/RecentTasks;->add(Lcom/android/server/wm/Task;)V

    .line 777
    :cond_80
    return-void
.end method

.method public onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V
    .registers 5
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;
    .param p2, "leash"  # Landroid/view/SurfaceControl;

    .line 2442
    invoke-super {p0, p1, p2}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashCreated(Landroid/view/SurfaceControl$Transaction;Landroid/view/SurfaceControl;)V

    .line 2445
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_1e

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->x:I

    if-nez v0, :cond_13

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    if-eqz v0, :cond_1e

    .line 2447
    :cond_13
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mSurfaceControl:Landroid/view/SurfaceControl;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/view/SurfaceControl$Transaction;->setWindowCrop(Landroid/view/SurfaceControl;II)Landroid/view/SurfaceControl$Transaction;

    .line 2448
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mLastSurfaceSize:Landroid/graphics/Point;

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Point;->set(II)V

    .line 2450
    :cond_1e
    return-void
.end method

.method public onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V
    .registers 3
    .param p1, "t"  # Landroid/view/SurfaceControl$Transaction;

    .line 2454
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onAnimationLeashLost(Landroid/view/SurfaceControl$Transaction;)V

    .line 2456
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_b

    .line 2457
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->updateOrganizedTaskFragmentSurfaceSize(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 2459
    :cond_b
    return-void
.end method

.method onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V
    .registers 2
    .param p1, "child"  # Lcom/android/server/wm/WindowContainer;

    .line 1987
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onChildPositionChanged(Lcom/android/server/wm/WindowContainer;)V

    .line 1989
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->sendTaskFragmentInfoChanged()V

    .line 1990
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .registers 8
    .param p1, "newParentConfig"  # Landroid/content/res/Configuration;

    .line 2390
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_d

    .line 2391
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2395
    :cond_d
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getWindowingMode()I

    move-result v0

    .line 2396
    .local v0, "preTaskMode":I
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2401
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getWindowingMode()I

    move-result v1

    .line 2402
    .local v1, "newWinMode":I
    const/4 v2, 0x0

    const/4 v3, 0x5

    if-ne v0, v1, :cond_1e

    if-eq v1, v3, :cond_45

    :cond_1e
    if-ne v0, v1, :cond_2b

    .line 2403
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->getWindowingMode()I

    move-result v4

    const/4 v5, 0x6

    if-eq v4, v5, :cond_45

    :cond_2b
    const/4 v4, 0x1

    if-ne v0, v3, :cond_30

    move v5, v4

    goto :goto_31

    :cond_30
    move v5, v2

    :goto_31
    if-ne v1, v3, :cond_34

    goto :goto_35

    :cond_34
    move v4, v2

    :goto_35
    if-ne v5, v4, :cond_45

    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mTmpPrevBounds:Landroid/graphics/Rect;

    .line 2405
    invoke-direct {p0, v3}, Lcom/android/server/wm/TaskFragment;->shouldStartChangeTransition(Landroid/graphics/Rect;)Z

    move-result v3

    if-eqz v3, :cond_45

    .line 2407
    iget-object v2, p0, Lcom/android/server/wm/TaskFragment;->mTmpPrevBounds:Landroid/graphics/Rect;

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskFragment;->initializeChangeTransition(Landroid/graphics/Rect;)V

    goto :goto_53

    .line 2408
    :cond_45
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v3, :cond_53

    .line 2411
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v3

    .line 2412
    .local v3, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p0, v3}, Lcom/android/server/wm/TaskFragment;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 2413
    invoke-direct {p0, v3, v2}, Lcom/android/server/wm/TaskFragment;->updateOrganizedTaskFragmentSurfaceSize(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 2416
    .end local v3  # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_53
    :goto_53
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->sendTaskFragmentInfoChanged()V

    .line 2417
    return-void
.end method

.method prepareSurfaces()V
    .registers 4

    .line 2753
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_a

    .line 2754
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 2755
    return-void

    .line 2758
    :cond_a
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {v0}, Lcom/android/server/wm/Dimmer;->resetDimStates()V

    .line 2759
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->prepareSurfaces()V

    .line 2762
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 2763
    .local v0, "dimBounds":Landroid/graphics/Rect;
    const/4 v1, 0x0

    invoke-virtual {v0, v1, v1}, Landroid/graphics/Rect;->offsetTo(II)V

    .line 2764
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mDimmer:Lcom/android/server/wm/Dimmer;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/android/server/wm/Dimmer;->updateDims(Landroid/view/SurfaceControl$Transaction;Landroid/graphics/Rect;)Z

    move-result v1

    if-eqz v1, :cond_29

    .line 2765
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->scheduleAnimation()V

    .line 2767
    :cond_29
    return-void
.end method

.method remove(ZLjava/lang/String;)V
    .registers 7
    .param p1, "withTransition"  # Z
    .param p2, "reason"  # Ljava/lang/String;

    .line 2663
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->hasChild()Z

    move-result v0

    if-nez v0, :cond_a

    .line 2664
    invoke-virtual {p0, p2}, Lcom/android/server/wm/TaskFragment;->removeImmediately(Ljava/lang/String;)V

    .line 2665
    return-void

    .line 2667
    :cond_a
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    .line 2670
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2671
    .local v1, "removingActivities":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/server/wm/ActivityRecord;>;"
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v2, Lcom/android/server/wm/Task$$ExternalSyntheticLambda45;

    invoke-direct {v2, v1}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda45;-><init>(Ljava/util/ArrayList;)V

    invoke-virtual {p0, v2}, Lcom/android/server/wm/TaskFragment;->forAllActivities(Ljava/util/function/Consumer;)V

    .line 2672
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v0

    .local v2, "i":I
    :goto_22
    if-ltz v2, :cond_3d

    .line 2673
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/wm/ActivityRecord;

    .line 2674
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz p1, :cond_37

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->isVisible()Z

    move-result v3

    if-eqz v3, :cond_37

    .line 2675
    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    goto :goto_3a

    .line 2677
    :cond_37
    invoke-virtual {v0, p2}, Lcom/android/server/wm/ActivityRecord;->destroyIfPossible(Ljava/lang/String;)Z

    .line 2672
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    :goto_3a
    add-int/lit8 v2, v2, -0x1

    goto :goto_22

    .line 2680
    .end local v2  # "i":I
    :cond_3d
    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowContainer;)V
    .registers 3
    .param p1, "child"  # Lcom/android/server/wm/WindowContainer;

    .line 2637
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->removeChild(Lcom/android/server/wm/WindowContainer;Z)V

    .line 2638
    return-void
.end method

.method removeChild(Lcom/android/server/wm/WindowContainer;Z)V
    .registers 6
    .param p1, "child"  # Lcom/android/server/wm/WindowContainer;
    .param p2, "removeSelfIfPossible"  # Z

    .line 2641
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->removeChild(Lcom/android/server/wm/WindowContainer;)V

    .line 2642
    invoke-static {}, Lcom/android/server/wm/BackNavigationController;->isScreenshotEnabled()Z

    move-result v0

    if-eqz v0, :cond_1a

    .line 2645
    invoke-virtual {p1}, Lcom/android/server/wm/WindowContainer;->asActivityRecord()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 2646
    .local v0, "r":Lcom/android/server/wm/ActivityRecord;
    if-eqz v0, :cond_1a

    .line 2647
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mBackScreenshots:Ljava/util/HashMap;

    iget-object v2, v0, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    invoke-virtual {v2}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2650
    .end local v0  # "r":Lcom/android/server/wm/ActivityRecord;
    :cond_1a
    if-eqz p2, :cond_3f

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldRemoveSelfOnLastChildRemoval()Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->hasChild()Z

    move-result v0

    if-nez v0, :cond_3f

    .line 2651
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "removeLastChild "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->removeImmediately(Ljava/lang/String;)V

    .line 2653
    :cond_3f
    return-void
.end method

.method removeImmediately()V
    .registers 4

    .line 2716
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    .line 2717
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->resetAdjacentTaskFragment()V

    .line 2718
    invoke-direct {p0}, Lcom/android/server/wm/TaskFragment;->cleanUp()V

    .line 2719
    iget-boolean v1, p0, Lcom/android/server/wm/TaskFragment;->mClearedTaskFragmentForPip:Z

    if-eqz v1, :cond_15

    .line 2720
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isTaskVisibleRequested()Z

    move-result v1

    if-eqz v1, :cond_15

    const/4 v0, 0x1

    goto :goto_16

    :cond_15
    nop

    .line 2721
    .local v0, "shouldExecuteAppTransition":Z
    :goto_16
    invoke-super {p0}, Lcom/android/server/wm/WindowContainer;->removeImmediately()V

    .line 2722
    invoke-direct {p0}, Lcom/android/server/wm/TaskFragment;->sendTaskFragmentVanished()V

    .line 2723
    if-eqz v0, :cond_2d

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_2d

    .line 2728
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->addWindowLayoutReasons(I)V

    .line 2730
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->executeAppTransition()V

    .line 2732
    :cond_2d
    return-void
.end method

.method removeImmediately(Ljava/lang/String;)V
    .registers 4
    .param p1, "reason"  # Ljava/lang/String;

    .line 2710
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Remove task fragment: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2711
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->removeImmediately()V

    .line 2712
    return-void
.end method

.method resetAdjacentTaskFragment()V
    .registers 5

    .line 401
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_12

    iget-object v3, v0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-ne v3, p0, :cond_12

    .line 402
    iput-object v1, v0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 403
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    iput-boolean v2, v0, Lcom/android/server/wm/TaskFragment;->mDelayLastActivityRemoval:Z

    .line 404
    iput-boolean v2, v0, Lcom/android/server/wm/TaskFragment;->mMoveAdjacentTogether:Z

    .line 406
    :cond_12
    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 407
    iput-boolean v2, p0, Lcom/android/server/wm/TaskFragment;->mDelayLastActivityRemoval:Z

    .line 408
    iput-boolean v2, p0, Lcom/android/server/wm/TaskFragment;->mMoveAdjacentTogether:Z

    .line 409
    return-void
.end method

.method resolveOverrideConfiguration(Landroid/content/res/Configuration;)V
    .registers 7
    .param p1, "newParentConfig"  # Landroid/content/res/Configuration;

    .line 2019
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget-object v1, v1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 2020
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->resolveOverrideConfiguration(Landroid/content/res/Configuration;)V

    .line 2022
    nop

    .line 2023
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget-object v0, v0, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v0}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v0

    .line 2024
    .local v0, "windowingMode":I
    iget-object v1, p1, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v1}, Landroid/app/WindowConfiguration;->getWindowingMode()I

    move-result v1

    .line 2028
    .local v1, "parentWindowingMode":I
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getActivityType()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_36

    if-nez v0, :cond_36

    .line 2029
    const/4 v0, 0x1

    .line 2030
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget-object v2, v2, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    invoke-virtual {v2, v0}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 2037
    :cond_36
    const/4 v2, 0x5

    if-ne v0, v2, :cond_49

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    if-eqz v4, :cond_49

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wm/Task;->supportsFreeform()Z

    move-result v4

    if-eqz v4, :cond_51

    :cond_49
    if-eq v0, v2, :cond_68

    .line 2038
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindow()Z

    move-result v2

    if-nez v2, :cond_68

    .line 2041
    :cond_51
    if-eqz v0, :cond_55

    move v2, v0

    goto :goto_56

    :cond_55
    move v2, v1

    .line 2042
    .local v2, "candidateWindowingMode":I
    :goto_56
    invoke-static {v2}, Landroid/app/WindowConfiguration;->inMultiWindowMode(I)Z

    move-result v4

    if-eqz v4, :cond_68

    if-eq v2, v3, :cond_68

    .line 2044
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->windowConfiguration:Landroid/app/WindowConfiguration;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Landroid/app/WindowConfiguration;->setWindowingMode(I)V

    .line 2049
    .end local v2  # "candidateWindowingMode":I
    :cond_68
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v2

    .line 2052
    .local v2, "thisTask":Lcom/android/server/wm/Task;
    if-eqz v2, :cond_79

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isEmbedded()Z

    move-result v3

    if-nez v3, :cond_79

    .line 2053
    iget-object v3, p0, Lcom/android/server/wm/TaskFragment;->mTmpBounds:Landroid/graphics/Rect;

    invoke-virtual {v2, p1, v3}, Lcom/android/server/wm/Task;->resolveLeafTaskOnlyOverrideConfigs(Landroid/content/res/Configuration;Landroid/graphics/Rect;)V

    .line 2056
    :cond_79
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getResolvedOverrideConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/android/server/wm/TaskFragment;->computeConfigResourceOverrides(Landroid/content/res/Configuration;Landroid/content/res/Configuration;)V

    .line 2057
    return-void
.end method

.method final resumeTopActivity(Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;Z)Z
    .registers 30
    .param p1, "prev"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "options"  # Landroid/app/ActivityOptions;
    .param p3, "deferPause"  # Z

    .line 1146
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    const-string v4, ": "

    const/4 v5, 0x1

    invoke-virtual {v1, v5}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v6

    .line 1147
    .local v6, "next":Lcom/android/server/wm/ActivityRecord;
    const/4 v7, 0x0

    if-eqz v6, :cond_6e4

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->canResumeByCompat()Z

    move-result v0

    if-nez v0, :cond_18

    goto/16 :goto_6e4

    .line 1152
    :cond_18
    invoke-static {}, Lcom/android/server/wm/PreloadStateManagerStub;->get()Lcom/android/server/wm/PreloadStateManagerStub;

    move-result-object v0

    iget-boolean v8, v1, Lcom/android/server/wm/TaskFragment;->mForceStop:Z

    invoke-interface {v0, v6, v8}, Lcom/android/server/wm/PreloadStateManagerStub;->hidePreloadActivity(Lcom/android/server/wm/ActivityRecord;Z)Z

    move-result v0

    if-eqz v0, :cond_25

    .line 1153
    return v5

    .line 1157
    :cond_25
    iput-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->delayedResume:Z

    .line 1158
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v8

    .line 1161
    .local v8, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    invoke-static {}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getInstance()Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;

    move-result-object v9

    .line 1162
    .local v9, "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->mIsLastFrame:Z

    if-nez v0, :cond_40

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v9, v0}, Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;->getLastFrame(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_40

    .line 1163
    invoke-virtual {v6, v5}, Lcom/android/server/wm/ActivityRecord;->setLastFrame(Z)V

    .line 1165
    :cond_40
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mWindowManager:Lcom/android/server/wm/WindowManagerService;

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->toString()Ljava/lang/String;

    move-result-object v10

    iput-object v10, v0, Lcom/android/server/wm/WindowManagerService;->mResumeActivity:Ljava/lang/String;

    .line 1169
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v10, 0x0

    if-ne v0, v6, :cond_8d

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1170
    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result v0

    if-eqz v0, :cond_8d

    .line 1172
    invoke-virtual {v8, v10, v7, v7, v5}, Lcom/android/server/wm/TaskDisplayArea;->ensureActivitiesVisible(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 1176
    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskFragment;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 1181
    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->inMultiWindowMode()Z

    move-result v0

    if-eqz v0, :cond_78

    iget-object v0, v8, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v0, :cond_78

    iget-object v0, v8, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    iget-object v0, v0, Lcom/android/server/wm/DisplayContent;->mFocusedApp:Lcom/android/server/wm/ActivityRecord;

    if-eq v0, v6, :cond_78

    .line 1183
    iget-object v0, v8, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/DisplayContent;->setFocusedApp(Lcom/android/server/wm/ActivityRecord;)Z

    .line 1185
    :cond_78
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_8c

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v11, 0x28467144

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v7

    invoke-static {v4, v11, v7, v10, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1187
    .end local v0  # "protoLogParam0":Ljava/lang/String;
    :cond_8c
    return v7

    .line 1191
    :cond_8d
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->allPausedActivitiesComplete()Z

    move-result v11

    .line 1192
    .local v11, "allPausedComplete":Z
    if-nez v11, :cond_a5

    .line 1193
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_a4

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x37c159ec

    move-object v5, v10

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v7, v10, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1195
    :cond_a4
    return v7

    .line 1200
    :cond_a5
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, v6, :cond_c2

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepOrShutDownActivities()Z

    move-result v0

    if-eqz v0, :cond_c2

    .line 1203
    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskFragment;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 1204
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_c1

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0x706c4a7b

    move-object v5, v10

    check-cast v5, [Ljava/lang/Object;

    invoke-static {v0, v4, v7, v10, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1206
    :cond_c1
    return v7

    .line 1212
    :cond_c2
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mAmInternal:Landroid/app/ActivityManagerInternal;

    iget v12, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v12}, Landroid/app/ActivityManagerInternal;->hasStartedUserState(I)Z

    move-result v0

    const-string v12, "ActivityTaskManager"

    if-nez v0, :cond_f9

    .line 1213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Skipping resume of top activity "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, ": user "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v4, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " is stopped"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    return v7

    .line 1220
    :cond_f9
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1222
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_11a

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Resuming "

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1225
    :cond_11a
    sget-object v0, Lcom/android/server/wm/TaskFragment;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v0, :cond_12d

    .line 1226
    iget-object v13, v6, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v14, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v15, v15, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    .line 1228
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v10

    .line 1226
    invoke-virtual {v0, v13, v14, v15, v10}, Lcom/android/internal/app/ActivityTrigger;->activityResumeTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;Z)V

    .line 1231
    :cond_12d
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v10, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v10, v10, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v10, v10, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v10}, Lcom/android/server/wm/ActivityTaskSupervisor;->setLaunchSource(I)V

    .line 1234
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v10, v6, Lcom/android/server/wm/ActivityRecord;->processName:Ljava/lang/String;

    iget-object v13, v6, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v13, v13, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v13, v13, Landroid/content/pm/ApplicationInfo;->uid:I

    invoke-virtual {v0, v10, v13}, Lcom/android/server/wm/ActivityTaskManagerService;->getProcessController(Ljava/lang/String;I)Lcom/android/server/wm/WindowProcessController;

    move-result-object v10

    .line 1238
    .local v10, "app":Lcom/android/server/wm/WindowProcessController;
    const/4 v0, 0x0

    .line 1239
    .local v0, "lastResumed":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->getLastFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v13

    .line 1240
    .local v13, "lastFocusedRootTask":Lcom/android/server/wm/Task;
    const/4 v14, -0x1

    if-eqz v13, :cond_17c

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getRootTaskFragment()Lcom/android/server/wm/TaskFragment;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v7

    if-eq v13, v7, :cond_17c

    .line 1244
    invoke-virtual {v13}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1248
    invoke-virtual {v13}, Lcom/android/server/wm/Task;->inFreeformWindowingMode()Z

    move-result v7

    if-nez v7, :cond_16a

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->inFreeformWindowingMode()Z

    move-result v7

    if-nez v7, :cond_16a

    .line 1249
    iget-object v0, v13, Lcom/android/server/wm/Task;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1252
    :cond_16a
    if-eqz v10, :cond_1cc

    invoke-virtual {v10}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    if-eqz v7, :cond_1cc

    .line 1253
    invoke-static {}, Landroid/perf/PerfStub;->getInstance()Landroid/perf/PerfStub;

    move-result-object v7

    iget-object v15, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v7, v15, v14, v5}, Landroid/perf/PerfStub;->perfWarmLaunchBoost(Ljava/lang/String;II)I

    goto :goto_1cc

    .line 1259
    :cond_17c
    if-eqz v10, :cond_1cc

    invoke-virtual {v10}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v7

    if-eqz v7, :cond_1cc

    .line 1260
    iget-object v7, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v7, :cond_19c

    if-eqz v2, :cond_19c

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_19c

    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_19c

    iget-object v7, v2, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v15, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1261
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1b8

    :cond_19c
    iget-object v7, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v7, :cond_1c2

    if-eqz v6, :cond_1c2

    iget-object v7, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_1c2

    iget-object v7, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    if-eqz v7, :cond_1c2

    iget-object v7, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    iget-object v7, v7, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget-object v15, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1264
    invoke-virtual {v7, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_1c2

    .line 1265
    :cond_1b8
    invoke-static {}, Landroid/perf/PerfStub;->getInstance()Landroid/perf/PerfStub;

    move-result-object v7

    iget-object v15, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v7, v15, v14, v5}, Landroid/perf/PerfStub;->perfWarmLaunchBoost(Ljava/lang/String;II)I

    goto :goto_1cc

    .line 1267
    :cond_1c2
    invoke-static {}, Landroid/perf/PerfStub;->getInstance()Landroid/perf/PerfStub;

    move-result-object v7

    iget-object v15, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    const/4 v5, 0x2

    invoke-interface {v7, v15, v14, v5}, Landroid/perf/PerfStub;->perfWarmLaunchBoost(Ljava/lang/String;II)I

    .line 1273
    :cond_1cc
    :goto_1cc
    move-object v5, v0

    .end local v0  # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .local v5, "lastResumed":Lcom/android/server/wm/ActivityRecord;
    if-nez p3, :cond_1d7

    invoke-virtual {v8, v6}, Lcom/android/server/wm/TaskDisplayArea;->pauseBackTasks(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v0

    if-eqz v0, :cond_1d7

    const/4 v0, 0x1

    goto :goto_1d8

    :cond_1d7
    const/4 v0, 0x0

    .line 1274
    .local v0, "pausing":Z
    :goto_1d8
    iget-object v7, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const-string/jumbo v14, "resumeTopActivity"

    if-eqz v7, :cond_213

    .line 1275
    sget-boolean v7, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v7, :cond_201

    iget-object v7, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .local v7, "protoLogParam0":Ljava/lang/String;
    sget-object v15, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    move-object/from16 v18, v9

    .end local v9  # "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    .local v18, "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    move-object/from16 v20, v10

    const/4 v9, 0x1

    .end local v10  # "app":Lcom/android/server/wm/WindowProcessController;
    .local v20, "app":Lcom/android/server/wm/WindowProcessController;
    new-array v10, v9, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v7, v10, v9

    move-object/from16 v17, v7

    move/from16 v19, v11

    const v7, 0x61dd69c

    const/4 v11, 0x0

    .end local v7  # "protoLogParam0":Ljava/lang/String;
    .end local v11  # "allPausedComplete":Z
    .local v17, "protoLogParam0":Ljava/lang/String;
    .local v19, "allPausedComplete":Z
    invoke-static {v15, v7, v9, v11, v10}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_208

    .end local v17  # "protoLogParam0":Ljava/lang/String;
    .end local v18  # "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    .end local v19  # "allPausedComplete":Z
    .end local v20  # "app":Lcom/android/server/wm/WindowProcessController;
    .restart local v9  # "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    .restart local v10  # "app":Lcom/android/server/wm/WindowProcessController;
    .restart local v11  # "allPausedComplete":Z
    :cond_201
    move-object/from16 v18, v9

    move-object/from16 v20, v10

    move/from16 v19, v11

    const/4 v9, 0x0

    .line 1276
    .end local v9  # "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    .end local v10  # "app":Lcom/android/server/wm/WindowProcessController;
    .end local v11  # "allPausedComplete":Z
    .restart local v18  # "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    .restart local v19  # "allPausedComplete":Z
    .restart local v20  # "app":Lcom/android/server/wm/WindowProcessController;
    :goto_208
    iget-object v7, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v7, v7, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    invoke-virtual {v1, v7, v9, v6, v14}, Lcom/android/server/wm/TaskFragment;->startPausing(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v7

    or-int/2addr v0, v7

    move v7, v0

    goto :goto_21a

    .line 1274
    .end local v18  # "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    .end local v19  # "allPausedComplete":Z
    .end local v20  # "app":Lcom/android/server/wm/WindowProcessController;
    .restart local v9  # "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    .restart local v10  # "app":Lcom/android/server/wm/WindowProcessController;
    .restart local v11  # "allPausedComplete":Z
    :cond_213
    move-object/from16 v18, v9

    move-object/from16 v20, v10

    move/from16 v19, v11

    .end local v9  # "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    .end local v10  # "app":Lcom/android/server/wm/WindowProcessController;
    .end local v11  # "allPausedComplete":Z
    .restart local v18  # "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    .restart local v19  # "allPausedComplete":Z
    .restart local v20  # "app":Lcom/android/server/wm/WindowProcessController;
    move v7, v0

    .line 1279
    .end local v0  # "pausing":Z
    .local v7, "pausing":Z
    :goto_21a
    if-eqz v7, :cond_263

    .line 1280
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_22e

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, 0x14541918

    const/4 v9, 0x0

    move-object v10, v9

    check-cast v10, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0, v4, v10, v9, v9}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_22f

    :cond_22e
    const/4 v10, 0x0

    .line 1286
    :goto_22f
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_23c

    .line 1287
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    const/4 v4, 0x1

    invoke-virtual {v0, v10, v4, v10, v10}, Lcom/android/server/wm/WindowProcessController;->updateProcessInfo(ZZZZ)V

    goto :goto_25a

    .line 1290
    :cond_23c
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->isProcessRunning()Z

    move-result v0

    if-nez v0, :cond_25a

    .line 1294
    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-ne v1, v0, :cond_24a

    const/4 v0, 0x1

    goto :goto_24b

    :cond_24a
    const/4 v0, 0x0

    .line 1295
    .local v0, "isTop":Z
    :goto_24b
    iget-object v4, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    .line 1296
    if-eqz v0, :cond_253

    const-string/jumbo v9, "next-top-activity"

    goto :goto_256

    .line 1297
    :cond_253
    const-string/jumbo v9, "next-activity"

    .line 1295
    :goto_256
    const/4 v10, 0x0

    invoke-virtual {v4, v6, v10, v0, v9}, Lcom/android/server/wm/ActivityTaskManagerService;->startProcessAsync(Lcom/android/server/wm/ActivityRecord;ZZLjava/lang/String;)V

    .line 1299
    .end local v0  # "isTop":Z
    :cond_25a
    :goto_25a
    if-eqz v5, :cond_261

    .line 1300
    const/4 v4, 0x1

    invoke-virtual {v5, v4}, Lcom/android/server/wm/ActivityRecord;->setWillCloseOrEnterPip(Z)V

    goto :goto_262

    .line 1299
    :cond_261
    const/4 v4, 0x1

    .line 1302
    :goto_262
    return v4

    .line 1303
    :cond_263
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, v6, :cond_292

    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v6, v0}, Lcom/android/server/wm/ActivityRecord;->isState(Lcom/android/server/wm/ActivityRecord$State;)Z

    move-result v0

    if-eqz v0, :cond_292

    .line 1304
    invoke-virtual {v8}, Lcom/android/server/wm/TaskDisplayArea;->allResumedActivitiesComplete()Z

    move-result v0

    if-eqz v0, :cond_292

    .line 1310
    invoke-virtual {v1, v3}, Lcom/android/server/wm/TaskFragment;->executeAppTransition(Landroid/app/ActivityOptions;)V

    .line 1311
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_290

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v9, -0x77d338ae

    const/4 v10, 0x1

    new-array v11, v10, [Ljava/lang/Object;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    const/4 v14, 0x0

    invoke-static {v4, v9, v12, v14, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_291

    .end local v0  # "protoLogParam0":Ljava/lang/String;
    :cond_290
    const/4 v10, 0x1

    .line 1313
    :goto_291
    return v10

    .line 1319
    :cond_292
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    move-result v0

    if-eqz v0, :cond_29d

    .line 1320
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v6}, Lcom/android/server/wm/ActivityTaskSupervisor;->finishNoHistoryActivitiesIfNeeded(Lcom/android/server/wm/ActivityRecord;)V

    .line 1323
    :cond_29d
    if-eqz v2, :cond_2fc

    if-eq v2, v6, :cond_2fc

    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    if-eqz v0, :cond_2fc

    .line 1334
    iget-boolean v0, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    const-string v9, ", nowVisible="

    if-eqz v0, :cond_2d8

    iget-object v0, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v0, :cond_2d8

    .line 1336
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 1337
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_2fc

    .line 1338
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Not waiting for visible to hide: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v9, v6, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2fc

    .line 1342
    :cond_2d8
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_2fc

    .line 1343
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Previous already visible but still waiting to hide: "

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v9, v6, Lcom/android/server/wm/ActivityRecord;->nowVisible:Z

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    :cond_2fc
    :goto_2fc
    :try_start_2fc
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->getActivityMetricsLogger()Lcom/android/server/wm/ActivityMetricsLogger;

    move-result-object v0

    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    .line 1353
    invoke-virtual {v0, v9}, Lcom/android/server/wm/ActivityMetricsLogger;->notifyBeforePackageUnstopped(Ljava/lang/String;)V

    .line 1354
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v0

    iget-object v9, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    iget v10, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    const/4 v11, 0x0

    invoke-interface {v0, v9, v11, v10}, Landroid/content/pm/IPackageManager;->setPackageStoppedState(Ljava/lang/String;ZI)V
    :try_end_315
    .catch Landroid/os/RemoteException; {:try_start_2fc .. :try_end_315} :catch_338
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2fc .. :try_end_315} :catch_316

    goto :goto_339

    .line 1357
    :catch_316
    move-exception v0

    .line 1358
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failed trying to unstop package "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v12, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_33a

    .line 1356
    .end local v0  # "e":Ljava/lang/IllegalArgumentException;
    :catch_338
    move-exception v0

    .line 1360
    :goto_339
    nop

    .line 1365
    :goto_33a
    const/4 v0, 0x1

    .line 1366
    .local v0, "anim":Z
    iget-object v9, v8, Lcom/android/server/wm/TaskDisplayArea;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1370
    .local v9, "dc":Lcom/android/server/wm/DisplayContent;
    if-eqz v2, :cond_3df

    iget-boolean v10, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v10, :cond_3df

    iget-object v10, v2, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    if-eqz v10, :cond_3df

    .line 1372
    iget-boolean v10, v2, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-eqz v10, :cond_393

    .line 1373
    sget-boolean v10, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v10, :cond_365

    .line 1374
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Prepare close transition: prev="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1376
    :cond_365
    iget-object v10, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_375

    .line 1377
    const/4 v0, 0x0

    .line 1378
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    goto :goto_38c

    .line 1381
    :cond_375
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v11

    if-eq v10, v11, :cond_388

    .line 1382
    invoke-static {}, Landroid/perf/PerfStub;->getInstance()Landroid/perf/PerfStub;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v10, v11}, Landroid/perf/PerfStub;->perfAnimBoost(Ljava/lang/String;)I

    .line 1385
    :cond_388
    const/4 v10, 0x2

    invoke-virtual {v9, v10}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 1387
    :goto_38c
    const/4 v10, 0x0

    invoke-virtual {v2, v10}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    move v10, v0

    goto/16 :goto_3fe

    .line 1389
    :cond_393
    sget-boolean v10, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v10, :cond_3ad

    .line 1390
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Prepare open transition: prev="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v12, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1392
    :cond_3ad
    iget-object v10, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3be

    .line 1393
    const/4 v0, 0x0

    .line 1394
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    move v10, v0

    goto :goto_3fe

    .line 1397
    :cond_3be
    invoke-virtual/range {p1 .. p1}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v10

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v11

    if-eq v10, v11, :cond_3d1

    .line 1398
    invoke-static {}, Landroid/perf/PerfStub;->getInstance()Landroid/perf/PerfStub;

    move-result-object v10

    iget-object v11, v6, Lcom/android/server/wm/ActivityRecord;->packageName:Ljava/lang/String;

    invoke-interface {v10, v11}, Landroid/perf/PerfStub;->perfAnimBoost(Ljava/lang/String;)I

    .line 1401
    :cond_3d1
    nop

    .line 1402
    iget-boolean v10, v6, Lcom/android/server/wm/ActivityRecord;->mLaunchTaskBehind:Z

    if-eqz v10, :cond_3d9

    const/16 v10, 0x20

    goto :goto_3da

    :cond_3d9
    const/4 v10, 0x0

    .line 1401
    :goto_3da
    const/4 v11, 0x1

    invoke-virtual {v9, v11, v10}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(II)V

    goto :goto_3fd

    .line 1406
    :cond_3df
    sget-boolean v10, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_TRANSITION:Z

    if-eqz v10, :cond_3e8

    const-string v10, "Prepare open transition: no previous"

    invoke-static {v12, v10}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1407
    :cond_3e8
    iget-object v10, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v10, v10, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v10, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3f9

    .line 1408
    const/4 v0, 0x0

    .line 1409
    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    move v10, v0

    goto :goto_3fe

    .line 1411
    :cond_3f9
    const/4 v10, 0x1

    invoke-virtual {v9, v10}, Lcom/android/server/wm/DisplayContent;->prepareAppTransition(I)V

    .line 1415
    :goto_3fd
    move v10, v0

    .end local v0  # "anim":Z
    .local v10, "anim":Z
    :goto_3fe
    if-eqz v10, :cond_404

    .line 1416
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->applyOptionsAnimation()V

    goto :goto_407

    .line 1418
    :cond_404
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->abortAndClearOptionsAnimation()V

    .line 1422
    :goto_407
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-eqz v0, :cond_41c

    .line 1423
    invoke-static {}, Lcom/android/server/wm/PreloadStateManagerStub;->get()Lcom/android/server/wm/PreloadStateManagerStub;

    move-result-object v0

    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getRootTask()Lcom/android/server/wm/Task;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/server/wm/Task;->getHandler()Landroid/os/Handler;

    move-result-object v11

    invoke-interface {v0, v6, v11}, Lcom/android/server/wm/PreloadStateManagerStub;->resumeTopActivityInjector(Lcom/android/server/wm/ActivityRecord;Landroid/os/Handler;)V

    .line 1426
    :cond_41c
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoAnimActivities:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1428
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_699

    .line 1429
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_45b

    .line 1430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Resume running: "

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " stopped="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v11, v6, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v11, " visibleRequested="

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v11, v6, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1441
    :cond_45b
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->inMultiWindowMode()Z

    move-result v0

    if-nez v0, :cond_46e

    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_46c

    .line 1442
    invoke-virtual {v0}, Lcom/android/server/wm/ActivityRecord;->occludesParent()Z

    move-result v0

    if-nez v0, :cond_46c

    goto :goto_46e

    :cond_46c
    const/4 v0, 0x0

    goto :goto_46f

    :cond_46e
    :goto_46e
    const/4 v0, 0x1

    :goto_46f
    move v11, v0

    .line 1445
    .local v11, "lastActivityTranslucent":Z
    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v0, :cond_47a

    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-nez v0, :cond_47a

    if-eqz v11, :cond_483

    .line 1446
    :cond_47a
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->addToPendingTop()V

    .line 1447
    const/4 v15, 0x1

    invoke-virtual {v6, v15}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 1451
    :cond_483
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->startLaunchTickingLocked()V

    .line 1454
    if-nez v13, :cond_48a

    const/4 v0, 0x0

    goto :goto_48e

    .line 1455
    :cond_48a
    invoke-virtual {v13}, Lcom/android/server/wm/Task;->getTopResumedActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    :goto_48e
    move-object v15, v0

    .line 1456
    .local v15, "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v2

    .line 1458
    .local v2, "lastState":Lcom/android/server/wm/ActivityRecord$State;
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateCpuStats()V

    .line 1460
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_4b8

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    move-object/from16 v21, v5

    .end local v5  # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .local v21, "lastResumed":Lcom/android/server/wm/ActivityRecord;
    move/from16 v23, v7

    const/4 v5, 0x1

    .end local v7  # "pausing":Z
    .local v23, "pausing":Z
    new-array v7, v5, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v7, v5

    move-object/from16 v24, v0

    move-object/from16 v22, v8

    const v0, -0x54b744a8

    const/4 v8, 0x0

    .end local v0  # "protoLogParam0":Ljava/lang/String;
    .end local v8  # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v22, "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .local v24, "protoLogParam0":Ljava/lang/String;
    invoke-static {v3, v0, v5, v8, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_4be

    .end local v21  # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .end local v22  # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v23  # "pausing":Z
    .end local v24  # "protoLogParam0":Ljava/lang/String;
    .restart local v5  # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .restart local v7  # "pausing":Z
    .restart local v8  # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_4b8
    move-object/from16 v21, v5

    move/from16 v23, v7

    move-object/from16 v22, v8

    .line 1462
    .end local v5  # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .end local v7  # "pausing":Z
    .end local v8  # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v21  # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .restart local v22  # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v23  # "pausing":Z
    :goto_4be
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v6, v0, v14}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 1465
    invoke-static {}, Lcom/android/server/wm/MiuiMiPerfStub;->getInstance()Lcom/android/server/wm/MiuiMiPerfStub;

    move-result-object v0

    invoke-interface {v0, v6}, Lcom/android/server/wm/MiuiMiPerfStub;->onAfterActivityResumed(Lcom/android/server/wm/ActivityRecord;)V

    .line 1470
    const/4 v0, 0x1

    .line 1474
    .local v0, "notUpdated":Z
    invoke-virtual {v1, v6}, Lcom/android/server/wm/TaskFragment;->shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z

    move-result v3

    if-eqz v3, :cond_4e0

    .line 1483
    iget-object v3, v1, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->getDisplayId()I

    move-result v5

    const/4 v7, 0x1

    const/4 v8, 0x0

    invoke-virtual {v3, v6, v5, v7, v8}, Lcom/android/server/wm/RootWindowContainer;->ensureVisibilityAndConfig(Lcom/android/server/wm/ActivityRecord;IZZ)Z

    move-result v3

    xor-int/2addr v3, v7

    move v0, v3

    goto :goto_4e1

    .line 1474
    :cond_4e0
    move v3, v0

    .line 1487
    .end local v0  # "notUpdated":Z
    .local v3, "notUpdated":Z
    :goto_4e1
    if-eqz v3, :cond_525

    .line 1493
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    .line 1494
    .local v0, "nextNext":Lcom/android/server/wm/ActivityRecord;
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v4, :cond_509

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam0":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .local v5, "protoLogParam1":Ljava/lang/String;
    sget-object v7, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v8, -0x127f5f19

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v4, v12, v14

    const/16 v16, 0x1

    aput-object v5, v12, v16

    move/from16 v24, v3

    const/4 v3, 0x0

    .end local v3  # "notUpdated":Z
    .local v24, "notUpdated":Z
    invoke-static {v7, v8, v14, v3, v12}, Lcom/android/internal/protolog/ProtoLogImpl;->i(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_50b

    .end local v4  # "protoLogParam0":Ljava/lang/String;
    .end local v5  # "protoLogParam1":Ljava/lang/String;
    .end local v24  # "notUpdated":Z
    .restart local v3  # "notUpdated":Z
    :cond_509
    move/from16 v24, v3

    .line 1496
    .end local v3  # "notUpdated":Z
    .restart local v24  # "notUpdated":Z
    :goto_50b
    if-eq v0, v6, :cond_512

    .line 1498
    iget-object v3, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleResumeTopActivities()V

    .line 1500
    :cond_512
    iget-boolean v3, v6, Lcom/android/server/wm/ActivityRecord;->mVisibleRequested:Z

    if-eqz v3, :cond_51d

    iget-boolean v3, v6, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    if-eqz v3, :cond_51b

    goto :goto_51d

    :cond_51b
    const/4 v3, 0x1

    goto :goto_521

    .line 1501
    :cond_51d
    :goto_51d
    const/4 v3, 0x1

    invoke-virtual {v6, v3}, Lcom/android/server/wm/ActivityRecord;->setVisibility(Z)V

    .line 1503
    :goto_521
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V

    .line 1504
    return v3

    .line 1508
    .end local v0  # "nextNext":Lcom/android/server/wm/ActivityRecord;
    .end local v24  # "notUpdated":Z
    .restart local v3  # "notUpdated":Z
    :cond_525
    move/from16 v24, v3

    .end local v3  # "notUpdated":Z
    .restart local v24  # "notUpdated":Z
    :try_start_527
    iget-object v0, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1509
    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v0

    iget-object v3, v6, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    invoke-static {v0, v3}, Landroid/app/servertransaction/ClientTransaction;->obtain(Landroid/app/IApplicationThread;Landroid/os/IBinder;)Landroid/app/servertransaction/ClientTransaction;

    move-result-object v0

    .line 1511
    .local v0, "transaction":Landroid/app/servertransaction/ClientTransaction;
    iget-object v3, v6, Lcom/android/server/wm/ActivityRecord;->results:Ljava/util/ArrayList;

    .line 1512
    .local v3, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    if-eqz v3, :cond_56a

    .line 1513
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 1514
    .local v5, "size":I
    iget-boolean v7, v6, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v7, :cond_56a

    if-lez v5, :cond_56a

    .line 1515
    sget-boolean v7, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_RESULTS:Z

    if-eqz v7, :cond_563

    .line 1516
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Delivering results to "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v12, v4}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    :cond_563
    invoke-static {v3}, Landroid/app/servertransaction/ActivityResultItem;->obtain(Ljava/util/List;)Landroid/app/servertransaction/ActivityResultItem;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 1522
    .end local v5  # "size":I
    :cond_56a
    iget-object v4, v6, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    if-eqz v4, :cond_578

    .line 1523
    iget-object v4, v6, Lcom/android/server/wm/ActivityRecord;->newIntents:Ljava/util/ArrayList;

    .line 1524
    const/4 v5, 0x1

    invoke-static {v4, v5}, Landroid/app/servertransaction/NewIntentItem;->obtain(Ljava/util/List;Z)Landroid/app/servertransaction/NewIntentItem;

    move-result-object v4

    .line 1523
    invoke-virtual {v0, v4}, Landroid/app/servertransaction/ClientTransaction;->addCallback(Landroid/app/servertransaction/ClientTransactionItem;)V

    .line 1529
    :cond_578
    iget-boolean v4, v6, Lcom/android/server/wm/ActivityRecord;->stopped:Z

    invoke-virtual {v6, v4}, Lcom/android/server/wm/ActivityRecord;->notifyAppResumed(Z)V

    .line 1531
    iget v4, v6, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {v6}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v5

    .line 1532
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v7

    iget v7, v7, Lcom/android/server/wm/Task;->mTaskId:I

    iget-object v8, v6, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    .line 1531
    invoke-static {v4, v5, v7, v8}, Lcom/android/server/wm/EventLogTags;->writeWmResumeActivity(IIILjava/lang/String;)V

    .line 1534
    invoke-static {}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->get()Lcom/android/server/wm/ActivityTaskManagerServiceStub;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/server/wm/ActivityTaskManagerServiceStub;->onForegroundActivityChangedLocked(Lcom/android/server/wm/ActivityRecord;)V

    .line 1536
    iget-object v4, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getAppWarningsLocked()Lcom/android/server/wm/AppWarnings;

    move-result-object v4

    invoke-virtual {v4, v6}, Lcom/android/server/wm/AppWarnings;->onResumeActivity(Lcom/android/server/wm/ActivityRecord;)V

    .line 1537
    iget-object v4, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    iget-object v5, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget v5, v5, Lcom/android/server/wm/ActivityTaskManagerService;->mTopProcessState:I

    invoke-virtual {v4, v5}, Lcom/android/server/wm/WindowProcessController;->setPendingUiCleanAndForceProcessStateUpTo(I)V

    .line 1538
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->abortAndClearOptionsAnimation()V

    .line 1539
    iget-object v4, v6, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    .line 1540
    invoke-virtual {v4}, Lcom/android/server/wm/WindowProcessController;->getReportedProcState()I

    move-result v4

    .line 1541
    invoke-virtual {v9}, Lcom/android/server/wm/DisplayContent;->isNextTransitionForward()Z

    move-result v5

    .line 1540
    invoke-static {v4, v5}, Landroid/app/servertransaction/ResumeActivityItem;->obtain(IZ)Landroid/app/servertransaction/ResumeActivityItem;

    move-result-object v4

    .line 1539
    invoke-virtual {v0, v4}, Landroid/app/servertransaction/ClientTransaction;->setLifecycleStateRequest(Landroid/app/servertransaction/ActivityLifecycleItem;)V

    .line 1542
    iget-object v4, v1, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v4}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/servertransaction/ClientTransaction;)V

    .line 1544
    sget-boolean v4, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v4, :cond_5de

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .restart local v4  # "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x549b4288

    const/4 v8, 0x1

    new-array v14, v8, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v4, v14, v8

    move-object/from16 v25, v3

    const/4 v3, 0x0

    .end local v3  # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .local v25, "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    invoke-static {v5, v7, v8, v3, v14}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5e0

    .end local v4  # "protoLogParam0":Ljava/lang/String;
    .end local v25  # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .restart local v3  # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :cond_5de
    move-object/from16 v25, v3

    .line 1547
    .end local v3  # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    .restart local v25  # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :goto_5e0
    iget-object v3, v1, Lcom/android/server/wm/TaskFragment;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v3, :cond_60b

    iget-object v3, v1, Lcom/android/server/wm/TaskFragment;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1548
    invoke-virtual {v3}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v3

    if-eqz v3, :cond_60b

    iget-object v3, v6, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    iget-object v4, v1, Lcom/android/server/wm/TaskFragment;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 1550
    invoke-virtual {v4}, Lcom/android/server/wm/DisplayContent;->getDefaultTaskDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v4

    .line 1551
    invoke-virtual {v4}, Lcom/android/server/wm/TaskDisplayArea;->getHomeActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v4

    iget-object v4, v4, Lcom/android/server/wm/ActivityRecord;->mActivityComponent:Landroid/content/ComponentName;

    .line 1549
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_60b

    .line 1552
    invoke-static {}, Lcom/android/server/am/SystemPressureControllerStub;->getInstance()Lcom/android/server/am/SystemPressureControllerStub;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/server/am/SystemPressureControllerStub;->reclaimPage()V
    :try_end_60b
    .catch Ljava/lang/Exception; {:try_start_527 .. :try_end_60b} :catch_634

    .line 1575
    .end local v0  # "transaction":Landroid/app/servertransaction/ClientTransaction;
    .end local v25  # "a":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/ResultInfo;>;"
    :cond_60b
    nop

    .line 1580
    :try_start_60c
    invoke-virtual {v6}, Lcom/android/server/wm/ActivityRecord;->completeResumeLocked()V
    :try_end_60f
    .catch Ljava/lang/Exception; {:try_start_60c .. :try_end_60f} :catch_613

    .line 1587
    nop

    .line 1588
    .end local v2  # "lastState":Lcom/android/server/wm/ActivityRecord$State;
    .end local v11  # "lastActivityTranslucent":Z
    .end local v15  # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v24  # "notUpdated":Z
    const/4 v4, 0x1

    goto/16 :goto_6e3

    .line 1581
    .restart local v2  # "lastState":Lcom/android/server/wm/ActivityRecord$State;
    .restart local v11  # "lastActivityTranslucent":Z
    .restart local v15  # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .restart local v24  # "notUpdated":Z
    :catch_613
    move-exception v0

    move-object v3, v0

    move-object v0, v3

    .line 1584
    .local v0, "e":Ljava/lang/Exception;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception thrown during resume of "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1585
    const-string/jumbo v3, "resume-exception"

    const/4 v4, 0x1

    invoke-virtual {v6, v3, v4}, Lcom/android/server/wm/ActivityRecord;->finishIfPossible(Ljava/lang/String;Z)I

    .line 1586
    return v4

    .line 1555
    .end local v0  # "e":Ljava/lang/Exception;
    :catch_634
    move-exception v0

    .line 1557
    .restart local v0  # "e":Ljava/lang/Exception;
    sget-boolean v3, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v3, :cond_656

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .local v3, "protoLogParam0":Ljava/lang/String;
    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .local v4, "protoLogParam1":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, -0x4c4c64b

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v3, v8, v14

    const/16 v16, 0x1

    aput-object v4, v8, v16

    move-object/from16 v25, v3

    const/4 v3, 0x0

    .end local v3  # "protoLogParam0":Ljava/lang/String;
    .local v25, "protoLogParam0":Ljava/lang/String;
    invoke-static {v5, v7, v14, v3, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1559
    .end local v4  # "protoLogParam1":Ljava/lang/String;
    .end local v25  # "protoLogParam0":Ljava/lang/String;
    :cond_656
    const-string/jumbo v3, "resumeTopActivityInnerLocked"

    invoke-virtual {v6, v2, v3}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 1562
    if-eqz v15, :cond_663

    .line 1563
    sget-object v4, Lcom/android/server/wm/ActivityRecord$State;->RESUMED:Lcom/android/server/wm/ActivityRecord$State;

    invoke-virtual {v15, v4, v3}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 1566
    :cond_663
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Restarting because process died: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v12, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1567
    iget-boolean v3, v6, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    if-nez v3, :cond_682

    .line 1568
    const/4 v3, 0x1

    iput-boolean v3, v6, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    const/4 v3, 0x0

    goto :goto_692

    .line 1569
    :cond_682
    if-eqz v13, :cond_691

    .line 1570
    invoke-virtual {v13}, Lcom/android/server/wm/Task;->isTopRootTaskInDisplayArea()Z

    move-result v3

    if-eqz v3, :cond_68f

    .line 1571
    const/4 v3, 0x0

    invoke-virtual {v6, v3}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    goto :goto_692

    .line 1570
    :cond_68f
    const/4 v3, 0x0

    goto :goto_692

    .line 1569
    :cond_691
    const/4 v3, 0x0

    .line 1573
    :goto_692
    iget-object v4, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    const/4 v5, 0x1

    invoke-virtual {v4, v6, v5, v3}, Lcom/android/server/wm/ActivityTaskSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 1574
    return v5

    .line 1590
    .end local v0  # "e":Ljava/lang/Exception;
    .end local v2  # "lastState":Lcom/android/server/wm/ActivityRecord$State;
    .end local v11  # "lastActivityTranslucent":Z
    .end local v15  # "lastResumedActivity":Lcom/android/server/wm/ActivityRecord;
    .end local v21  # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .end local v22  # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v23  # "pausing":Z
    .end local v24  # "notUpdated":Z
    .local v5, "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .restart local v7  # "pausing":Z
    .restart local v8  # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    :cond_699
    move-object/from16 v21, v5

    move/from16 v23, v7

    move-object/from16 v22, v8

    const/4 v3, 0x0

    const/4 v5, 0x1

    .end local v5  # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .end local v7  # "pausing":Z
    .end local v8  # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v21  # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .restart local v22  # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .restart local v23  # "pausing":Z
    iget-boolean v0, v6, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    if-nez v0, :cond_6a8

    .line 1591
    iput-boolean v5, v6, Lcom/android/server/wm/ActivityRecord;->hasBeenLaunched:Z

    goto :goto_6c5

    .line 1594
    :cond_6a8
    invoke-virtual {v6, v3}, Lcom/android/server/wm/ActivityRecord;->showStartingWindow(Z)V

    .line 1596
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_SWITCH:Z

    if-eqz v0, :cond_6c5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Restarting: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v12, v0}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1598
    :cond_6c5
    :goto_6c5
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_6dd

    invoke-static {v6}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x6eac4482

    const/4 v4, 0x1

    new-array v5, v4, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v5, v7

    const/4 v8, 0x0

    invoke-static {v2, v3, v7, v8, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6de

    .end local v0  # "protoLogParam0":Ljava/lang/String;
    :cond_6dd
    const/4 v4, 0x1

    .line 1599
    :goto_6de
    iget-object v0, v1, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0, v6, v4, v4}, Lcom/android/server/wm/ActivityTaskSupervisor;->startSpecificActivity(Lcom/android/server/wm/ActivityRecord;ZZ)V

    .line 1602
    :goto_6e3
    return v4

    .line 1148
    .end local v9  # "dc":Lcom/android/server/wm/DisplayContent;
    .end local v10  # "anim":Z
    .end local v13  # "lastFocusedRootTask":Lcom/android/server/wm/Task;
    .end local v18  # "imp":Lcom/xiaomi/screenprojection/IMiuiScreenProjectionStub;
    .end local v19  # "allPausedComplete":Z
    .end local v20  # "app":Lcom/android/server/wm/WindowProcessController;
    .end local v21  # "lastResumed":Lcom/android/server/wm/ActivityRecord;
    .end local v22  # "taskDisplayArea":Lcom/android/server/wm/TaskDisplayArea;
    .end local v23  # "pausing":Z
    :cond_6e4
    :goto_6e4
    const/4 v2, 0x0

    return v2
.end method

.method schedulePauseActivity(Lcom/android/server/wm/ActivityRecord;ZZZLjava/lang/String;)V
    .registers 12
    .param p1, "prev"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "userLeaving"  # Z
    .param p3, "pauseImmediately"  # Z
    .param p4, "autoEnteringPip"  # Z
    .param p5, "reason"  # Ljava/lang/String;

    .line 1790
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_17

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, 0x16946990

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v5, v1, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1792
    .end local v0  # "protoLogParam0":Ljava/lang/String;
    :cond_17
    :try_start_17
    iget v0, p1, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "userLeaving="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v2, v3, v4, p5}, Lcom/android/server/wm/EventLogTags;->writeWmPauseActivity(IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1795
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->getLifecycleManager()Lcom/android/server/wm/ClientLifecycleManager;

    move-result-object v0

    iget-object v2, p1, Lcom/android/server/wm/ActivityRecord;->app:Lcom/android/server/wm/WindowProcessController;

    invoke-virtual {v2}, Lcom/android/server/wm/WindowProcessController;->getThread()Landroid/app/IApplicationThread;

    move-result-object v2

    iget-object v3, p1, Lcom/android/server/wm/ActivityRecord;->token:Landroid/os/IBinder;

    iget-boolean v4, p1, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    iget v5, p1, Lcom/android/server/wm/ActivityRecord;->configChangeFlags:I

    .line 1796
    invoke-static {v4, p2, v5, p3, p4}, Landroid/app/servertransaction/PauseActivityItem;->obtain(ZZIZZ)Landroid/app/servertransaction/PauseActivityItem;

    move-result-object v4

    .line 1795
    invoke-virtual {v0, v2, v3, v4}, Lcom/android/server/wm/ClientLifecycleManager;->scheduleTransaction(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/app/servertransaction/ActivityLifecycleItem;)V
    :try_end_4f
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_4f} :catch_50

    .line 1804
    goto :goto_63

    .line 1798
    :catch_50
    move-exception v0

    .line 1800
    .local v0, "e":Ljava/lang/Exception;
    const-string v2, "ActivityTaskManager"

    const-string v3, "Exception thrown during pause"

    invoke-static {v2, v3, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1801
    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1802
    iput-object v1, p0, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1803
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1805
    .end local v0  # "e":Ljava/lang/Exception;
    :goto_63
    return-void
.end method

.method sendTaskFragmentInfoChanged()V
    .registers 3

    .line 2484
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_9

    .line 2485
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerController:Lcom/android/server/wm/TaskFragmentOrganizerController;

    .line 2486
    invoke-virtual {v1, v0, p0}, Lcom/android/server/wm/TaskFragmentOrganizerController;->onTaskFragmentInfoChanged(Landroid/window/ITaskFragmentOrganizer;Lcom/android/server/wm/TaskFragment;)V

    .line 2488
    :cond_9
    return-void
.end method

.method setAdjacentTaskFragment(Lcom/android/server/wm/TaskFragment;Z)V
    .registers 4
    .param p1, "taskFragment"  # Lcom/android/server/wm/TaskFragment;
    .param p2, "moveTogether"  # Z

    .line 388
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    if-ne v0, p1, :cond_5

    .line 389
    return-void

    .line 391
    :cond_5
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->resetAdjacentTaskFragment()V

    .line 392
    if-eqz p1, :cond_11

    .line 393
    iput-object p1, p0, Lcom/android/server/wm/TaskFragment;->mAdjacentTaskFragment:Lcom/android/server/wm/TaskFragment;

    .line 394
    iput-boolean p2, p0, Lcom/android/server/wm/TaskFragment;->mMoveAdjacentTogether:Z

    .line 395
    invoke-virtual {p1, p0, p2}, Lcom/android/server/wm/TaskFragment;->setAdjacentTaskFragment(Lcom/android/server/wm/TaskFragment;Z)V

    .line 397
    :cond_11
    return-void
.end method

.method setDelayLastActivityRemoval(Z)V
    .registers 4
    .param p1, "delay"  # Z

    .line 2683
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsEmbedded:Z

    if-nez v0, :cond_b

    .line 2684
    const-string v0, "ActivityTaskManager"

    const-string v1, "Set delaying last activity removal on a non-embedded TF."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2686
    :cond_b
    iput-boolean p1, p0, Lcom/android/server/wm/TaskFragment;->mDelayLastActivityRemoval:Z

    .line 2687
    return-void
.end method

.method setMinDimensions(II)V
    .registers 5
    .param p1, "minWidth"  # I
    .param p2, "minHeight"  # I

    .line 2615
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->asTask()Lcom/android/server/wm/Task;

    move-result-object v0

    if-nez v0, :cond_b

    .line 2619
    iput p1, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    .line 2620
    iput p2, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 2621
    return-void

    .line 2616
    :cond_b
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "This method must not be used to Task. The  minimum dimension of Task should be passed from Task constructor."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method setPausingActivity(Lcom/android/server/wm/ActivityRecord;)V
    .registers 2
    .param p1, "pausing"  # Lcom/android/server/wm/ActivityRecord;

    .line 485
    iput-object p1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 486
    return-void
.end method

.method setResumedActivity(Lcom/android/server/wm/ActivityRecord;Ljava/lang/String;)V
    .registers 5
    .param p1, "r"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "reason"  # Ljava/lang/String;

    .line 456
    const-string/jumbo v0, "setResumedActivity"

    invoke-direct {p0, v0}, Lcom/android/server/wm/TaskFragment;->warnForNonLeafTaskFragment(Ljava/lang/String;)V

    .line 457
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-ne v0, p1, :cond_b

    .line 458
    return-void

    .line 461
    :cond_b
    sget-boolean v0, Lcom/android/server/wm/ActivityTaskManagerDebugConfig;->DEBUG_ROOT_TASK:Z

    if-eqz v0, :cond_48

    .line 462
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "setResumedActivity taskFrag:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " + from: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " to:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " reason:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ActivityTaskManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 466
    :cond_48
    if-eqz p1, :cond_55

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    if-nez v0, :cond_55

    .line 468
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->touchActiveTime()V

    .line 471
    :cond_55
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 472
    .local v0, "prevR":Lcom/android/server/wm/ActivityRecord;
    iput-object p1, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 473
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1, p2}, Lcom/android/server/wm/ActivityTaskSupervisor;->updateTopResumedActivityIfNeeded(Ljava/lang/String;)V

    .line 474
    if-nez p1, :cond_72

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    if-eqz v1, :cond_72

    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 475
    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->getFocusedRootTask()Lcom/android/server/wm/Task;

    move-result-object v1

    if-nez v1, :cond_72

    .line 477
    iget-object v1, v0, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->onRunningActivityChanged()V

    goto :goto_79

    .line 478
    :cond_72
    if-eqz p1, :cond_79

    .line 479
    iget-object v1, p1, Lcom/android/server/wm/ActivityRecord;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    invoke-virtual {v1}, Lcom/android/server/wm/DisplayContent;->onRunningActivityChanged()V

    .line 481
    :cond_79
    :goto_79
    return-void
.end method

.method setSurfaceControl(Landroid/view/SurfaceControl;)V
    .registers 4
    .param p1, "sc"  # Landroid/view/SurfaceControl;

    .line 2472
    invoke-super {p0, p1}, Lcom/android/server/wm/WindowContainer;->setSurfaceControl(Landroid/view/SurfaceControl;)V

    .line 2473
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    if-eqz v0, :cond_15

    .line 2474
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getSyncTransaction()Landroid/view/SurfaceControl$Transaction;

    move-result-object v0

    .line 2475
    .local v0, "t":Landroid/view/SurfaceControl$Transaction;
    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->updateSurfacePosition(Landroid/view/SurfaceControl$Transaction;)V

    .line 2476
    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/android/server/wm/TaskFragment;->updateOrganizedTaskFragmentSurfaceSize(Landroid/view/SurfaceControl$Transaction;Z)V

    .line 2479
    invoke-direct {p0}, Lcom/android/server/wm/TaskFragment;->sendTaskFragmentAppeared()V

    .line 2481
    .end local v0  # "t":Landroid/view/SurfaceControl$Transaction;
    :cond_15
    return-void
.end method

.method setTaskFragmentOrganizer(Landroid/window/TaskFragmentOrganizerToken;ILjava/lang/String;)V
    .registers 5
    .param p1, "organizer"  # Landroid/window/TaskFragmentOrganizerToken;
    .param p2, "uid"  # I
    .param p3, "processName"  # Ljava/lang/String;

    .line 413
    invoke-virtual {p1}, Landroid/window/TaskFragmentOrganizerToken;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/window/ITaskFragmentOrganizer$Stub;->asInterface(Landroid/os/IBinder;)Landroid/window/ITaskFragmentOrganizer;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizer:Landroid/window/ITaskFragmentOrganizer;

    .line 414
    iput p2, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerUid:I

    .line 415
    iput-object p3, p0, Lcom/android/server/wm/TaskFragment;->mTaskFragmentOrganizerProcessName:Ljava/lang/String;

    .line 416
    return-void
.end method

.method shouldBeVisible(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 4
    .param p1, "starting"  # Lcom/android/server/wm/ActivityRecord;

    .line 1615
    invoke-virtual {p0, p1}, Lcom/android/server/wm/TaskFragment;->getVisibility(Lcom/android/server/wm/ActivityRecord;)I

    move-result v0

    const/4 v1, 0x2

    if-eq v0, v1, :cond_9

    const/4 v0, 0x1

    goto :goto_a

    :cond_9
    const/4 v0, 0x0

    :goto_a
    return v0
.end method

.method shouldDeferRemoval()Z
    .registers 3

    .line 2694
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->hasChild()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2695
    return v1

    .line 2697
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->isExitAnimationRunningSelfOrChild()Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->inTransition()Z

    move-result v0

    if-eqz v0, :cond_15

    :cond_14
    const/4 v1, 0x1

    :cond_15
    return v1
.end method

.method shouldRemoveSelfOnLastChildRemoval()Z
    .registers 2

    .line 2632
    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mCreatedByOrganizer:Z

    if-eqz v0, :cond_b

    iget-boolean v0, p0, Lcom/android/server/wm/TaskFragment;->mIsRemovalRequested:Z

    if-eqz v0, :cond_9

    goto :goto_b

    :cond_9
    const/4 v0, 0x0

    goto :goto_c

    :cond_b
    :goto_b
    const/4 v0, 0x1

    :goto_c
    return v0
.end method

.method shouldSleepActivities()Z
    .registers 2

    .line 2014
    const/4 v0, 0x0

    return v0
.end method

.method shouldSleepOrShutDownActivities()Z
    .registers 2

    .line 1606
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_f

    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mShuttingDown:Z

    if-eqz v0, :cond_d

    goto :goto_f

    :cond_d
    const/4 v0, 0x0

    goto :goto_10

    :cond_f
    :goto_f
    const/4 v0, 0x1

    :goto_10
    return v0
.end method

.method sleepIfPossible(Z)Z
    .registers 12
    .param p1, "shuttingDown"  # Z

    .line 832
    const/4 v0, 0x1

    .line 833
    .local v0, "shouldSleep":Z
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v1, :cond_26

    .line 835
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_1e

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .local v1, "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x3ae234a6

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v1, v7, v4

    invoke-static {v5, v6, v4, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 836
    .end local v1  # "protoLogParam0":Ljava/lang/String;
    :cond_1e
    const-string/jumbo v1, "sleep"

    invoke-virtual {p0, v4, v3, v2, v1}, Lcom/android/server/wm/TaskFragment;->startPausing(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    .line 838
    const/4 v0, 0x0

    goto :goto_41

    .line 839
    :cond_26
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v1, :cond_41

    .line 841
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_40

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .restart local v1  # "protoLogParam0":Ljava/lang/String;
    sget-object v5, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v6, 0x71fb40de

    new-array v7, v3, [Ljava/lang/Object;

    aput-object v1, v7, v4

    invoke-static {v5, v6, v4, v2, v7}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 842
    .end local v1  # "protoLogParam0":Ljava/lang/String;
    :cond_40
    const/4 v0, 0x0

    .line 845
    :cond_41
    :goto_41
    if-nez p1, :cond_6c

    .line 846
    invoke-direct {p0}, Lcom/android/server/wm/TaskFragment;->containsStoppingActivity()Z

    move-result v1

    if-eqz v1, :cond_6c

    .line 848
    sget-boolean v1, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v1, :cond_66

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v1, v1, Lcom/android/server/wm/ActivityTaskSupervisor;->mStoppingActivities:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    int-to-long v5, v1

    .local v5, "protoLogParam0":J
    sget-object v1, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v7, 0x27e5a3e1

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v8, v4

    invoke-static {v1, v7, v3, v2, v8}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 851
    .end local v5  # "protoLogParam0":J
    :cond_66
    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->scheduleIdle()V

    .line 852
    const/4 v0, 0x0

    .line 856
    :cond_6c
    if-eqz v0, :cond_71

    .line 857
    invoke-virtual {p0, v2, v4, v4, v3}, Lcom/android/server/wm/TaskFragment;->updateActivityVisibilities(Lcom/android/server/wm/ActivityRecord;IZZ)V

    .line 861
    :cond_71
    return v0
.end method

.method smallerThanMinDimension(Lcom/android/server/wm/ActivityRecord;)Z
    .registers 9
    .param p1, "activity"  # Lcom/android/server/wm/ActivityRecord;

    .line 599
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    .line 600
    .local v0, "taskFragBounds":Landroid/graphics/Rect;
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    .line 603
    .local v1, "task":Lcom/android/server/wm/Task;
    const/4 v2, 0x0

    if-eqz v1, :cond_2f

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getBounds()Landroid/graphics/Rect;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/graphics/Rect;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_16

    goto :goto_2f

    .line 606
    :cond_16
    invoke-virtual {p1}, Lcom/android/server/wm/ActivityRecord;->getMinDimensions()Landroid/graphics/Point;

    move-result-object v3

    .line 607
    .local v3, "minDimensions":Landroid/graphics/Point;
    if-nez v3, :cond_1d

    .line 608
    return v2

    .line 610
    :cond_1d
    iget v4, v3, Landroid/graphics/Point;->x:I

    .line 611
    .local v4, "minWidth":I
    iget v5, v3, Landroid/graphics/Point;->y:I

    .line 612
    .local v5, "minHeight":I
    invoke-virtual {v0}, Landroid/graphics/Rect;->width()I

    move-result v6

    if-lt v6, v4, :cond_2d

    .line 613
    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v6

    if-ge v6, v5, :cond_2e

    :cond_2d
    const/4 v2, 0x1

    .line 612
    :cond_2e
    return v2

    .line 604
    .end local v3  # "minDimensions":Landroid/graphics/Point;
    .end local v4  # "minWidth":I
    .end local v5  # "minHeight":I
    :cond_2f
    :goto_2f
    return v2
.end method

.method final startPausing(ZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .registers 5
    .param p1, "uiSleeping"  # Z
    .param p2, "resuming"  # Lcom/android/server/wm/ActivityRecord;
    .param p3, "reason"  # Ljava/lang/String;

    .line 1634
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mUserLeaving:Z

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/android/server/wm/TaskFragment;->startPausing(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method startPausing(ZZLcom/android/server/wm/ActivityRecord;Ljava/lang/String;)Z
    .registers 22
    .param p1, "userLeaving"  # Z
    .param p2, "uiSleeping"  # Z
    .param p3, "resuming"  # Lcom/android/server/wm/ActivityRecord;
    .param p4, "reason"  # Ljava/lang/String;

    .line 1653
    move-object/from16 v6, p0

    move/from16 v7, p1

    move-object/from16 v8, p3

    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->hasDirectChildActivities()Z

    move-result v0

    const/4 v9, 0x0

    if-nez v0, :cond_e

    .line 1654
    return v9

    .line 1657
    :cond_e
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    const/4 v1, 0x2

    const/4 v10, 0x1

    const/4 v11, 0x0

    if-eqz v0, :cond_2d

    invoke-static/range {p0 .. p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .local v0, "protoLogParam0":Ljava/lang/String;
    iget-object v2, v6, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam1":Ljava/lang/String;
    sget-object v3, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v4, -0xed3cc31

    new-array v5, v1, [Ljava/lang/Object;

    aput-object v0, v5, v9

    aput-object v2, v5, v10

    invoke-static {v3, v4, v9, v11, v5}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1660
    .end local v0  # "protoLogParam0":Ljava/lang/String;
    .end local v2  # "protoLogParam1":Ljava/lang/String;
    :cond_2d
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    const-string v2, "ActivityTaskManager"

    if-eqz v0, :cond_64

    .line 1661
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Going to pause when pause is already pending for "

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v6, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " state="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, v6, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1662
    invoke-virtual {v3}, Lcom/android/server/wm/ActivityRecord;->getState()Lcom/android/server/wm/ActivityRecord$State;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1661
    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    invoke-virtual/range {p0 .. p0}, Lcom/android/server/wm/TaskFragment;->shouldSleepActivities()Z

    move-result v0

    if-nez v0, :cond_64

    .line 1667
    invoke-virtual {v6, v9, v8}, Lcom/android/server/wm/TaskFragment;->completePause(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1670
    :cond_64
    iget-object v12, v6, Lcom/android/server/wm/TaskFragment;->mResumedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1672
    .local v12, "prev":Lcom/android/server/wm/ActivityRecord;
    if-nez v12, :cond_75

    .line 1673
    if-nez v8, :cond_74

    .line 1674
    const-string v0, "Trying to pause when nothing is resumed"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1675
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 1677
    :cond_74
    return v9

    .line 1680
    :cond_75
    if-ne v12, v8, :cond_7d

    .line 1681
    const-string v0, "Trying to pause activity that is in process of being resumed"

    invoke-static {v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1682
    return v9

    .line 1686
    :cond_7d
    sget-object v0, Lcom/android/server/wm/TaskFragment;->mActivityTrigger:Lcom/android/internal/app/ActivityTrigger;

    if-eqz v0, :cond_8c

    .line 1687
    iget-object v3, v12, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    iget-object v4, v12, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v12, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget-object v5, v5, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v0, v3, v4, v5}, Lcom/android/internal/app/ActivityTrigger;->activityPauseTrigger(Landroid/content/Intent;Landroid/content/pm/ActivityInfo;Landroid/content/pm/ApplicationInfo;)V

    .line 1692
    :cond_8c
    iget-boolean v0, v12, Lcom/android/server/wm/ActivityRecord;->mIsCastMode:Z

    if-eqz v0, :cond_a9

    .line 1693
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "current activity should not stop, activity:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v12, Lcom/android/server/wm/ActivityRecord;->shortComponentName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1694
    return v9

    .line 1698
    :cond_a9
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_bd

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .restart local v0  # "protoLogParam0":Ljava/lang/String;
    sget-object v2, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v3, -0x390b96d7

    new-array v4, v10, [Ljava/lang/Object;

    aput-object v0, v4, v9

    invoke-static {v2, v3, v9, v11, v4}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1699
    .end local v0  # "protoLogParam0":Ljava/lang/String;
    :cond_bd
    iput-object v12, v6, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1700
    iput-object v12, v6, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1701
    iget-boolean v0, v12, Lcom/android/server/wm/ActivityRecord;->finishing:Z

    if-nez v0, :cond_dc

    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->isNoHistory()Z

    move-result v0

    if-eqz v0, :cond_dc

    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    .line 1702
    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_dc

    .line 1703
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1705
    :cond_dc
    sget-object v0, Lcom/android/server/wm/ActivityRecord$State;->PAUSING:Lcom/android/server/wm/ActivityRecord$State;

    const-string/jumbo v2, "startPausingLocked"

    invoke-virtual {v12, v0, v2}, Lcom/android/server/wm/ActivityRecord;->setState(Lcom/android/server/wm/ActivityRecord$State;Ljava/lang/String;)V

    .line 1706
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/Task;->touchActiveTime()V

    .line 1708
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->updateCpuStats()V

    .line 1710
    const/4 v0, 0x0

    .line 1711
    .local v0, "pauseImmediately":Z
    const/4 v2, 0x0

    .line 1712
    .local v2, "shouldAutoPip":Z
    if-eqz v8, :cond_11c

    .line 1716
    const-string/jumbo v3, "shouldAutoPipWhilePausing"

    invoke-virtual {v12, v3, v7}, Lcom/android/server/wm/ActivityRecord;->checkEnterPictureInPictureState(Ljava/lang/String;Z)Z

    move-result v3

    .line 1718
    .local v3, "lastResumedCanPip":Z
    if-eqz v7, :cond_10b

    if-eqz v3, :cond_10b

    iget-object v4, v12, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    .line 1719
    invoke-virtual {v4}, Landroid/app/PictureInPictureParams;->isAutoEnterEnabled()Z

    move-result v4

    if-eqz v4, :cond_10b

    .line 1720
    const/4 v2, 0x1

    move v13, v0

    move v14, v2

    goto :goto_11e

    .line 1721
    :cond_10b
    if-nez v3, :cond_11c

    .line 1724
    iget-object v4, v8, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    iget v4, v4, Landroid/content/pm/ActivityInfo;->flags:I

    and-int/lit16 v4, v4, 0x4000

    if-eqz v4, :cond_117

    move v4, v10

    goto :goto_118

    :cond_117
    move v4, v9

    :goto_118
    move v0, v4

    move v13, v0

    move v14, v2

    goto :goto_11e

    .line 1730
    .end local v3  # "lastResumedCanPip":Z
    :cond_11c
    move v13, v0

    move v14, v2

    .end local v0  # "pauseImmediately":Z
    .end local v2  # "shouldAutoPip":Z
    .local v13, "pauseImmediately":Z
    .local v14, "shouldAutoPip":Z
    :goto_11e
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->attachedToProcess()Z

    move-result v0

    if-eqz v0, :cond_159

    .line 1731
    if-eqz v14, :cond_14c

    .line 1732
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-object v2, v12, Lcom/android/server/wm/ActivityRecord;->pictureInPictureArgs:Landroid/app/PictureInPictureParams;

    invoke-virtual {v0, v12, v2}, Lcom/android/server/wm/ActivityTaskManagerService;->enterPictureInPictureMode(Lcom/android/server/wm/ActivityRecord;Landroid/app/PictureInPictureParams;)Z

    move-result v0

    .line 1734
    .local v0, "didAutoPip":Z
    sget-boolean v2, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v2, :cond_14b

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .local v2, "protoLogParam0":Ljava/lang/String;
    move v3, v0

    .local v3, "protoLogParam1":Z
    sget-object v4, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v5, -0x41a8563f

    const/16 v15, 0xc

    new-array v1, v1, [Ljava/lang/Object;

    aput-object v2, v1, v9

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v16

    aput-object v16, v1, v10

    invoke-static {v4, v5, v15, v11, v1}, Lcom/android/internal/protolog/ProtoLogImpl;->d(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1736
    .end local v0  # "didAutoPip":Z
    .end local v2  # "protoLogParam0":Ljava/lang/String;
    .end local v3  # "protoLogParam1":Z
    :cond_14b
    goto :goto_164

    .line 1737
    :cond_14c
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object v1, v12

    move/from16 v2, p1

    move v3, v13

    move-object/from16 v5, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/server/wm/TaskFragment;->schedulePauseActivity(Lcom/android/server/wm/ActivityRecord;ZZZLjava/lang/String;)V

    goto :goto_164

    .line 1741
    :cond_159
    iput-object v11, v6, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1742
    iput-object v11, v6, Lcom/android/server/wm/TaskFragment;->mLastPausedActivity:Lcom/android/server/wm/ActivityRecord;

    .line 1743
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    iget-object v0, v0, Lcom/android/server/wm/ActivityTaskSupervisor;->mNoHistoryActivities:Ljava/util/ArrayList;

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1748
    :goto_164
    if-nez p2, :cond_173

    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->isSleepingOrShuttingDownLocked()Z

    move-result v0

    if-nez v0, :cond_173

    .line 1749
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->acquireLaunchWakelock()V

    .line 1753
    :cond_173
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mPausingActivity:Lcom/android/server/wm/ActivityRecord;

    if-eqz v0, :cond_19b

    .line 1758
    if-nez p2, :cond_17d

    .line 1759
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->pauseKeyDispatchingLocked()V

    goto :goto_18c

    .line 1761
    :cond_17d
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_18c

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x61575dd9

    move-object v2, v11

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v9, v11, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1764
    :cond_18c
    :goto_18c
    if-eqz v13, :cond_192

    .line 1767
    invoke-virtual {v6, v9, v8}, Lcom/android/server/wm/TaskFragment;->completePause(ZLcom/android/server/wm/ActivityRecord;)V

    .line 1768
    return v9

    .line 1771
    :cond_192
    invoke-virtual {v12}, Lcom/android/server/wm/ActivityRecord;->schedulePauseTimeout()V

    .line 1773
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mTransitionController:Lcom/android/server/wm/TransitionController;

    invoke-virtual {v0, v6, v9}, Lcom/android/server/wm/TransitionController;->setReady(Lcom/android/server/wm/WindowContainer;Z)V

    .line 1774
    return v10

    .line 1780
    :cond_19b
    sget-boolean v0, Lcom/android/server/wm/ProtoLogCache;->WM_DEBUG_STATES_enabled:Z

    if-eqz v0, :cond_1aa

    sget-object v0, Lcom/android/internal/protolog/ProtoLogGroup;->WM_DEBUG_STATES:Lcom/android/internal/protolog/ProtoLogGroup;

    const v1, -0x26ad4e02

    move-object v2, v11

    check-cast v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v9, v11, v11}, Lcom/android/internal/protolog/ProtoLogImpl;->v(Lcom/android/internal/protolog/common/IProtoLogGroup;IILjava/lang/String;[Ljava/lang/Object;)V

    .line 1781
    :cond_1aa
    if-nez v8, :cond_1b1

    .line 1782
    iget-object v0, v6, Lcom/android/server/wm/TaskFragment;->mRootWindowContainer:Lcom/android/server/wm/RootWindowContainer;

    invoke-virtual {v0}, Lcom/android/server/wm/RootWindowContainer;->resumeFocusedTasksTopActivities()Z

    .line 1784
    :cond_1b1
    return v9
.end method

.method supportsMultiWindow()Z
    .registers 2

    .line 2060
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getDisplayArea()Lcom/android/server/wm/TaskDisplayArea;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z

    move-result v0

    return v0
.end method

.method supportsMultiWindowInDisplayArea(Lcom/android/server/wm/TaskDisplayArea;)Z
    .registers 7
    .param p1, "tda"  # Lcom/android/server/wm/TaskDisplayArea;

    .line 2068
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mAtmService:Lcom/android/server/wm/ActivityTaskManagerService;

    iget-boolean v0, v0, Lcom/android/server/wm/ActivityTaskManagerService;->mSupportsMultiWindow:Z

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 2069
    return v1

    .line 2071
    :cond_8
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v0

    .line 2072
    .local v0, "task":Lcom/android/server/wm/Task;
    if-nez v0, :cond_f

    .line 2073
    return v1

    .line 2075
    :cond_f
    if-nez p1, :cond_12

    .line 2076
    return v1

    .line 2078
    :cond_12
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wm/Task;->isResizeable()Z

    move-result v2

    if-nez v2, :cond_23

    invoke-virtual {p1}, Lcom/android/server/wm/TaskDisplayArea;->supportsNonResizableMultiWindow()Z

    move-result v2

    if-nez v2, :cond_23

    .line 2080
    return v1

    .line 2083
    :cond_23
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->getTask()Lcom/android/server/wm/Task;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/server/wm/Task;->getRootActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v1

    .line 2084
    .local v1, "rootActivity":Lcom/android/server/wm/ActivityRecord;
    iget v2, p0, Lcom/android/server/wm/TaskFragment;->mMinWidth:I

    iget v3, p0, Lcom/android/server/wm/TaskFragment;->mMinHeight:I

    .line 2085
    if-eqz v1, :cond_34

    iget-object v4, v1, Lcom/android/server/wm/ActivityRecord;->info:Landroid/content/pm/ActivityInfo;

    goto :goto_35

    :cond_34
    const/4 v4, 0x0

    .line 2084
    :goto_35
    invoke-virtual {p1, v2, v3, v4}, Lcom/android/server/wm/TaskDisplayArea;->supportsActivityMinWidthHeightMultiWindow(IILandroid/content/pm/ActivityInfo;)Z

    move-result v2

    return v2
.end method

.method topRunningActivity()Lcom/android/server/wm/ActivityRecord;
    .registers 2

    .line 947
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(Z)Lcom/android/server/wm/ActivityRecord;
    .registers 3
    .param p1, "focusableOnly"  # Z

    .line 951
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity(ZZ)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method topRunningActivity(ZZ)Lcom/android/server/wm/ActivityRecord;
    .registers 4
    .param p1, "focusableOnly"  # Z
    .param p2, "includingEmbeddedTask"  # Z

    .line 962
    if-eqz p1, :cond_18

    .line 963
    if-eqz p2, :cond_e

    .line 964
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda9;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 966
    :cond_e
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda10;-><init>(Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 970
    :cond_18
    if-eqz p2, :cond_24

    .line 971
    new-instance v0, Lcom/android/server/wm/Task$$ExternalSyntheticLambda21;

    invoke-direct {v0}, Lcom/android/server/wm/Task$$ExternalSyntheticLambda21;-><init>()V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0

    .line 973
    :cond_24
    new-instance v0, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Lcom/android/server/wm/TaskFragment$$ExternalSyntheticLambda11;-><init>(Lcom/android/server/wm/TaskFragment;)V

    invoke-virtual {p0, v0}, Lcom/android/server/wm/TaskFragment;->getActivity(Ljava/util/function/Predicate;)Lcom/android/server/wm/ActivityRecord;

    move-result-object v0

    return-object v0
.end method

.method final updateActivityVisibilities(Lcom/android/server/wm/ActivityRecord;IZZ)V
    .registers 7
    .param p1, "starting"  # Lcom/android/server/wm/ActivityRecord;
    .param p2, "configChanges"  # I
    .param p3, "preserveWindows"  # Z
    .param p4, "notifyClients"  # Z

    .line 1135
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->beginActivityVisibilityUpdate()V

    .line 1137
    :try_start_5
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mEnsureActivitiesVisibleHelper:Lcom/android/server/wm/EnsureActivitiesVisibleHelper;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/server/wm/EnsureActivitiesVisibleHelper;->process(Lcom/android/server/wm/ActivityRecord;IZZ)V
    :try_end_a
    .catchall {:try_start_5 .. :try_end_a} :catchall_11

    .line 1140
    iget-object v0, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 1141
    nop

    .line 1142
    return-void

    .line 1140
    :catchall_11
    move-exception v0

    iget-object v1, p0, Lcom/android/server/wm/TaskFragment;->mTaskSupervisor:Lcom/android/server/wm/ActivityTaskSupervisor;

    invoke-virtual {v1}, Lcom/android/server/wm/ActivityTaskSupervisor;->endActivityVisibilityUpdate()V

    .line 1141
    throw v0
.end method

.method writeIdentifierToProto(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 10
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 2852
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 2853
    .local v0, "token":J
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2854
    invoke-virtual {p0}, Lcom/android/server/wm/TaskFragment;->topRunningActivity()Lcom/android/server/wm/ActivityRecord;

    move-result-object v2

    .line 2855
    .local v2, "topActivity":Lcom/android/server/wm/ActivityRecord;
    if-eqz v2, :cond_19

    iget v3, v2, Lcom/android/server/wm/ActivityRecord;->mUserId:I

    goto :goto_1b

    :cond_19
    const/16 v3, -0x2710

    :goto_1b
    const-wide v4, 0x10500000002L

    invoke-virtual {p1, v4, v5, v3}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 2856
    const-wide v3, 0x10900000003L

    if-eqz v2, :cond_35

    .line 2857
    iget-object v5, v2, Lcom/android/server/wm/ActivityRecord;->intent:Landroid/content/Intent;

    .line 2856
    invoke-virtual {v5}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v5

    .line 2857
    invoke-virtual {v5}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v5

    goto :goto_37

    :cond_35
    const-string v5, "TaskFragment"

    .line 2856
    :goto_37
    invoke-virtual {p1, v3, v4, v5}, Landroid/util/proto/ProtoOutputStream;->write(JLjava/lang/String;)V

    .line 2858
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 2859
    return-void
.end method
