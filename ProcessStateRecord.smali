# classes.dex

.class final Lcom/android/server/am/ProcessStateRecord;
.super Ljava/lang/Object;
.source "ProcessStateRecord.java"


# static fields
.field private static final VALUE_FALSE:I = 0x0

.field private static final VALUE_INVALID:I = -0x1

.field private static final VALUE_TRUE:I = 0x1


# instance fields
.field private mAdjSeq:I

.field private mAdjSource:Ljava/lang/Object;

.field private mAdjSourceProcState:I

.field private mAdjTarget:Ljava/lang/Object;

.field private mAdjType:Ljava/lang/String;

.field private mAdjTypeCode:I

.field private final mApp:Lcom/android/server/am/ProcessRecord;

.field private mBackgroundRestricted:Z

.field private mCacheOomRankerRss:J

.field private mCacheOomRankerRssTimeMs:J

.field private mCacheOomRankerUseCount:I

.field private mCached:Z

.field private mCachedAdj:I

.field private mCachedCompatChanges:[I

.field private mCachedForegroundActivities:Z

.field private mCachedHasActivities:I

.field private mCachedHasRecentTasks:I

.field private mCachedHasVisibleActivities:I

.field private mCachedIsHeavyWeight:I

.field private mCachedIsHomeProcess:I

.field private mCachedIsPreviousProcess:I

.field private mCachedIsReceivingBroadcast:I

.field private mCachedProcState:I

.field private mCachedSchedGroup:I

.field private mCompletedAdjSeq:I

.field private mContainsCycle:Z

.field private mCurAdj:I

.field private mCurBoundByNonBgRestrictedApp:Z

.field private mCurCapability:I

.field private mCurProcState:I

.field private mCurRawAdj:I

.field private mCurRawProcState:I

.field private mCurSchedGroup:I

.field private mEmpty:Z

.field private mFgInteractionTime:J

.field private mForcingToImportant:Ljava/lang/Object;

.field private mHasForegroundActivities:Z

.field private mHasOverlayUi:Z

.field private mHasShownUi:Z

.field private mHasStartedServices:Z

.field private mHasTopUi:Z

.field private mInteractionEventTime:J

.field private mLastCanKillOnBgRestrictedAndIdleTime:J

.field private mLastInvisibleTime:J

.field private mLastStateTime:J

.field private mLastSwitchToTopTime:J

.field private mLastTopTime:J

.field private mMaxAdj:I

.field mMaxProcState:I

.field private mNoKillOnBgRestrictedAndIdle:Z

.field private mNotCachedSinceIdle:Z

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private mProcStateChanged:Z

.field private mReachable:Z

.field private mRepForegroundActivities:Z

.field private mRepProcState:I

.field private mReportedInteraction:Z

.field private mRunningRemoteAnimation:Z

.field private mSavedPriority:I

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mServiceB:Z

.field private mServiceHighRam:Z

.field private mSetAdj:I

.field private mSetBoundByNonBgRestrictedApp:Z

.field private mSetCached:Z

.field private mSetCapability:I

.field private mSetNoKillOnBgRestrictedAndIdle:Z

.field private mSetProcState:I

.field private mSetRawAdj:I

.field private mSetSchedGroup:I

.field private mSystemNoUi:Z

.field private mVerifiedAdj:I

.field private mWhenUnimportant:J


# direct methods
.method constructor <init>(Lcom/android/server/am/ProcessRecord;)V
    .registers 5
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 470
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    const/16 v0, 0x3e9

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 61
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 67
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    .line 73
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 79
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 85
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    .line 92
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 98
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    .line 104
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 110
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    .line 123
    const/16 v2, 0x14

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 129
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 135
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 141
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 319
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    .line 325
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    .line 331
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    .line 436
    const/4 v2, -0x1

    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    .line 438
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    .line 440
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 442
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    .line 444
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 446
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    .line 448
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    .line 454
    const/4 v2, 0x3

    new-array v2, v2, [I

    fill-array-data v2, :array_58

    iput-object v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    .line 461
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    .line 463
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    .line 465
    const/16 v0, 0x13

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    .line 467
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    .line 471
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 472
    iget-object v0, p1, Lcom/android/server/am/ProcessRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iput-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 473
    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    iput-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 474
    return-void

    :array_58
    .array-data 4
        -0x1
        -0x1
        -0x1
    .end array-data
.end method


# virtual methods
.method computeOomAdjFromActivitiesIfNecessary(Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;IZZIIIII)V
    .registers 22
    .param p1, "callback"  # Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;
    .param p2, "adj"  # I
    .param p3, "foregroundActivities"  # Z
    .param p4, "hasVisibleActivities"  # Z
    .param p5, "procState"  # I
    .param p6, "schedGroup"  # I
    .param p7, "appUid"  # I
    .param p8, "logUid"  # I
    .param p9, "processCurTop"  # I

    .line 1130
    move-object v0, p0

    move-object v11, p1

    iget v1, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    const/16 v2, -0x2710

    if-eq v1, v2, :cond_9

    .line 1131
    return-void

    .line 1133
    :cond_9
    iget-object v2, v0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    move-object v1, p1

    move v3, p2

    move v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-virtual/range {v1 .. v10}, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->initialize(Lcom/android/server/am/ProcessRecord;IZZIIIII)V

    .line 1135
    const/16 v1, 0x63

    iget-object v2, v0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 1136
    invoke-virtual {v2}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/android/server/wm/WindowProcessController;->computeOomAdjFromActivities(Lcom/android/server/wm/WindowProcessController$ComputeOomAdjCallback;)I

    move-result v2

    .line 1135
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 1138
    .local v1, "minLayer":I
    iget v2, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->adj:I

    iput v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    .line 1139
    iget-boolean v2, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->foregroundActivities:Z

    iput-boolean v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    .line 1140
    iget-boolean v2, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->mHasVisibleActivities:Z

    iput v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 1141
    iget v2, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->procState:I

    iput v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    .line 1142
    iget v2, v11, Lcom/android/server/am/OomAdjuster$ComputeOomAdjWindowCallback;->schedGroup:I

    iput v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    .line 1144
    iget v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    const/16 v3, 0x64

    if-ne v2, v3, :cond_4a

    .line 1145
    add-int/2addr v2, v1

    iput v2, v0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    .line 1147
    :cond_4a
    return-void
.end method

.method containsCycle()Z
    .registers 2

    .line 886
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    return v0
.end method

.method decAdjSeq()V
    .registers 2

    .line 856
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 857
    return-void
.end method

.method decCompletedAdjSeq()V
    .registers 2

    .line 871
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    .line 872
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;J)V
    .registers 13
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "prefix"  # Ljava/lang/String;
    .param p3, "nowUptime"  # J

    .line 1318
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_c

    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_45

    .line 1319
    :cond_c
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "reportedInteraction="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1320
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1321
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_2e

    .line 1322
    const-string v0, " time="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1323
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1325
    :cond_2e
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    cmp-long v0, v3, v1

    if-eqz v0, :cond_42

    .line 1326
    const-string v0, " fgInteractionTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1327
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    invoke-static {v3, v4, v5, v6, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1329
    :cond_42
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1331
    :cond_45
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "adjSeq="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1332
    const-string v0, " lruSeq="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getLruSeq()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1333
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "oom adj: max="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1334
    const-string v0, " curRaw="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1335
    const-string v0, " setRaw="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1336
    const-string v0, " cur="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1337
    const-string v0, " set="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(I)V

    .line 1338
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "mCurSchedGroup="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1339
    const-string v0, " setSchedGroup="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1340
    const-string v0, " systemNoUi="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1341
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curProcState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getCurProcState()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1343
    const-string v0, " mMaxProcState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxProcState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1344
    const-string v0, " mRepProcState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1345
    const-string v0, " setProcState="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 1346
    const-string v0, " lastStateTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1347
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->getLastStateTime()J

    move-result-wide v3

    invoke-static {v3, v4, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1348
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1349
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "curCapability="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1350
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    invoke-static {p1, v0}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 1351
    const-string v0, " setCapability="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1352
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    invoke-static {p1, v0}, Landroid/app/ActivityManager;->printCapabilitiesFull(Ljava/io/PrintWriter;I)V

    .line 1353
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1354
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    if-eqz v0, :cond_126

    .line 1355
    const-string v0, " backgroundRestricted="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1356
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1357
    const-string v0, " boundByNonBgRestrictedApp="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1358
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1360
    :cond_126
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1361
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    if-nez v0, :cond_137

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->hasPendingUiClean()Z

    move-result v0

    if-eqz v0, :cond_155

    .line 1362
    :cond_137
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "hasShownUi="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1363
    const-string v0, " pendingUiClean="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->hasPendingUiClean()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1365
    :cond_155
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "cached="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCached:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1366
    const-string v0, " empty="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mEmpty:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1367
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    if-eqz v0, :cond_188

    .line 1368
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "serviceb="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1369
    const-string v0, " serviceHighRam="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceHighRam:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1371
    :cond_188
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    if-eqz v0, :cond_1aa

    .line 1372
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "notCachedSinceIdle="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1373
    const-string v0, " initialIdlePss="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessProfileRecord;->getInitialIdlePss()J

    move-result-wide v3

    invoke-virtual {p1, v3, v4}, Ljava/io/PrintWriter;->println(J)V

    .line 1375
    :cond_1aa
    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v0

    if-nez v0, :cond_1ba

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result v0

    if-nez v0, :cond_1ba

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-eqz v0, :cond_1e0

    .line 1376
    :cond_1ba
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "hasTopUi="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasTopUi()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1377
    const-string v0, " hasOverlayUi="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/server/am/ProcessStateRecord;->hasOverlayUi()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1378
    const-string v0, " runningRemoteAnimation="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1380
    :cond_1e0
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    if-nez v0, :cond_1e8

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    if-eqz v0, :cond_204

    .line 1381
    :cond_1e8
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1382
    const-string v0, "foregroundActivities="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 1383
    const-string v0, " (rep="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    const-string v0, ")"

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1385
    :cond_204
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    const/16 v3, 0xa

    if-le v0, v3, :cond_21c

    .line 1386
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1387
    const-string/jumbo v0, "whenUnimportant="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1388
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mWhenUnimportant:J

    sub-long/2addr v3, p3

    invoke-static {v3, v4, p1}, Landroid/util/TimeUtils;->formatDuration(JLjava/io/PrintWriter;)V

    .line 1389
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1391
    :cond_21c
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_233

    .line 1392
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastTopTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1393
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    invoke-static {v3, v4, p3, p4, p1}, Landroid/util/TimeUtils;->formatDuration(JJLjava/io/PrintWriter;)V

    .line 1394
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1396
    :cond_233
    iget-wide v3, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    cmp-long v0, v3, v1

    if-lez v0, :cond_25e

    const-wide v0, 0x7fffffffffffffffL

    cmp-long v0, v3, v0

    if-gez v0, :cond_25e

    .line 1397
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "lastInvisibleTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1398
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 1399
    .local v0, "elapsedRealtimeNow":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 1400
    .local v2, "currentTimeNow":J
    sub-long v4, v2, v0

    iget-wide v6, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    add-long/2addr v4, v6

    .line 1402
    .local v4, "lastInvisibleCurrentTime":J
    invoke-static {p1, v4, v5, v2, v3}, Landroid/util/TimeUtils;->dumpTimeWithDelta(Ljava/io/PrintWriter;JJ)V

    .line 1403
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 1405
    .end local v0  # "elapsedRealtimeNow":J
    .end local v2  # "currentTimeNow":J
    .end local v4  # "lastInvisibleCurrentTime":J
    :cond_25e
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    if-eqz v0, :cond_270

    .line 1406
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string/jumbo v0, "hasStartedServices="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 1408
    :cond_270
    return-void
.end method

.method forceProcessStateUpTo(I)V
    .registers 5
    .param p1, "newState"  # I

    .line 633
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    if-le v0, p1, :cond_2b

    .line 634
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_7
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 635
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 636
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->setCurProcState(I)V

    .line 637
    invoke-virtual {p0, p1}, Lcom/android/server/am/ProcessStateRecord;->setCurRawProcState(I)V

    .line 638
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v1

    new-instance v2, Lcom/android/server/am/ProcessStateRecord$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0}, Lcom/android/server/am/ProcessStateRecord$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessStateRecord;)V

    invoke-virtual {v1, v2}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/BiConsumer;)V

    .line 644
    monitor-exit v0
    :try_end_21
    .catchall {:try_start_7 .. :try_end_21} :catchall_25

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    goto :goto_2b

    :catchall_25
    move-exception v1

    :try_start_26
    monitor-exit v0
    :try_end_27
    .catchall {:try_start_26 .. :try_end_27} :catchall_25

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1

    .line 646
    :cond_2b
    :goto_2b
    return-void
.end method

.method getAdjSeq()I
    .registers 2

    .line 861
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    return v0
.end method

.method getAdjSource()Ljava/lang/Object;
    .registers 2

    .line 984
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    return-object v0
.end method

.method getAdjSourceProcState()I
    .registers 2

    .line 994
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSourceProcState:I

    return v0
.end method

.method getAdjTarget()Ljava/lang/Object;
    .registers 2

    .line 1004
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    return-object v0
.end method

.method getAdjType()Ljava/lang/String;
    .registers 2

    .line 964
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    return-object v0
.end method

.method getAdjTypeCode()I
    .registers 2

    .line 974
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTypeCode:I

    return v0
.end method

.method public getCacheOomRankerRss()J
    .registers 3

    .line 1308
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRss:J

    return-wide v0
.end method

.method public getCacheOomRankerRssTimeMs()J
    .registers 3

    .line 1313
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRssTimeMs:J

    return-wide v0
.end method

.method getCacheOomRankerUseCount()I
    .registers 2

    .line 944
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    return v0
.end method

.method getCachedAdj()I
    .registers 2

    .line 1151
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    return v0
.end method

.method getCachedCompatChange(I)Z
    .registers 7
    .param p1, "cachedCompatChangeId"  # I

    .line 1118
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    aget v1, v0, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, -0x1

    if-ne v1, v4, :cond_1d

    .line 1119
    nop

    .line 1120
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mOomAdjuster:Lcom/android/server/am/OomAdjuster;

    iget-object v4, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v4, v4, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v1, p1, v4, v2}, Lcom/android/server/am/OomAdjuster;->isChangeEnabled(ILandroid/content/pm/ApplicationInfo;Z)Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 1121
    move v1, v3

    goto :goto_1b

    :cond_1a
    move v1, v2

    :goto_1b
    aput v1, v0, p1

    .line 1123
    :cond_1d
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    aget v0, v0, p1

    if-ne v0, v3, :cond_24

    move v2, v3

    :cond_24
    return v2
.end method

.method getCachedForegroundActivities()Z
    .registers 2

    .line 1156
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    return v0
.end method

.method getCachedHasActivities()Z
    .registers 5

    .line 1034
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_2b

    .line 1035
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasActivities()Z

    move-result v0

    if-eqz v0, :cond_15

    move v0, v2

    goto :goto_16

    .line 1036
    :cond_15
    move v0, v1

    :goto_16
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    .line 1037
    const/16 v3, 0x10

    if-ne v0, v2, :cond_24

    .line 1038
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    goto :goto_2b

    .line 1040
    :cond_24
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    .line 1043
    :cond_2b
    :goto_2b
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    if-ne v0, v2, :cond_30

    move v1, v2

    :cond_30
    return v1
.end method

.method getCachedHasRecentTasks()Z
    .registers 5

    .line 1092
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_18

    .line 1093
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasRecentTasks()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1094
    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    .line 1096
    :cond_18
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    if-ne v0, v2, :cond_1d

    move v1, v2

    :cond_1d
    return v1
.end method

.method getCachedHasVisibleActivities()Z
    .registers 5

    .line 1057
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_18

    .line 1058
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->hasVisibleActivities()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1059
    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 1061
    :cond_18
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    if-ne v0, v2, :cond_1d

    move v1, v2

    :cond_1d
    return v1
.end method

.method getCachedIsHeavyWeight()Z
    .registers 5

    .line 1048
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_18

    .line 1049
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isHeavyWeightProcess()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 1050
    move v0, v2

    goto :goto_16

    :cond_15
    move v0, v1

    :goto_16
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    .line 1052
    :cond_18
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    if-ne v0, v2, :cond_1d

    move v1, v2

    :cond_1d
    return v1
.end method

.method getCachedIsHomeProcess()Z
    .registers 5

    .line 1066
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1e

    .line 1067
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isHomeProcess()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1068
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    .line 1069
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iput-boolean v2, v0, Lcom/android/server/am/AppProfiler;->mHasHomeProcess:Z

    goto :goto_1e

    .line 1071
    :cond_1c
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    .line 1074
    :cond_1e
    :goto_1e
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    if-ne v0, v2, :cond_23

    move v1, v2

    :cond_23
    return v1
.end method

.method getCachedIsPreviousProcess()Z
    .registers 5

    .line 1079
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1e

    .line 1080
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/wm/WindowProcessController;->isPreviousProcess()Z

    move-result v0

    if-eqz v0, :cond_1c

    .line 1081
    iput v2, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 1082
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    iput-boolean v2, v0, Lcom/android/server/am/AppProfiler;->mHasPreviousProcess:Z

    goto :goto_1e

    .line 1084
    :cond_1c
    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 1087
    :cond_1e
    :goto_1e
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    if-ne v0, v2, :cond_23

    move v1, v2

    :cond_23
    return v1
.end method

.method getCachedIsReceivingBroadcast(Landroid/util/ArraySet;)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/BroadcastQueue;",
            ">;)Z"
        }
    .end annotation

    .line 1101
    .local p1, "tmpQueue":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/am/BroadcastQueue;>;"
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    if-ne v0, v3, :cond_3b

    .line 1102
    invoke-virtual {p1}, Landroid/util/ArraySet;->clear()V

    .line 1103
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v3, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0, v3, p1}, Lcom/android/server/am/ActivityManagerService;->isReceivingBroadcastLocked(Lcom/android/server/am/ProcessRecord;Landroid/util/ArraySet;)Z

    move-result v0

    if-eqz v0, :cond_16

    .line 1104
    move v0, v2

    goto :goto_17

    :cond_16
    move v0, v1

    :goto_17
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    .line 1105
    const/16 v3, 0x20

    if-ne v0, v2, :cond_34

    .line 1106
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mFgBroadcastQueue:Lcom/android/server/am/BroadcastQueue;

    invoke-virtual {p1, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_29

    .line 1107
    const/4 v0, 0x2

    goto :goto_2a

    :cond_29
    move v0, v1

    :goto_2a
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    .line 1108
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    goto :goto_3b

    .line 1110
    :cond_34
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v0, v0, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v0, v3}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    .line 1113
    :cond_3b
    :goto_3b
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    if-ne v0, v2, :cond_40

    move v1, v2

    :cond_40
    return v1
.end method

.method getCachedProcState()I
    .registers 2

    .line 1161
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    return v0
.end method

.method getCachedSchedGroup()I
    .registers 2

    .line 1166
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    return v0
.end method

.method getCompletedAdjSeq()I
    .registers 2

    .line 876
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    return v0
.end method

.method getCurAdj()I
    .registers 2

    .line 519
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    return v0
.end method

.method getCurCapability()I
    .registers 2

    .line 559
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    return v0
.end method

.method getCurProcState()I
    .registers 2

    .line 601
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    return v0
.end method

.method getCurRawAdj()I
    .registers 2

    .line 499
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    return v0
.end method

.method getCurRawProcState()I
    .registers 2

    .line 611
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    return v0
.end method

.method getCurrentSchedulingGroup()I
    .registers 2

    .line 580
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    return v0
.end method

.method getFgInteractionTime()J
    .registers 3

    .line 836
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    return-wide v0
.end method

.method getForcingToImportant()Ljava/lang/Object;
    .registers 2

    .line 846
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    return-object v0
.end method

.method getInteractionEventTime()J
    .registers 3

    .line 825
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    return-wide v0
.end method

.method getLastCanKillOnBgRestrictedAndIdleTime()J
    .registers 3

    .line 1298
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastCanKillOnBgRestrictedAndIdleTime:J

    return-wide v0
.end method

.method getLastInvisibleTime()J
    .registers 3

    .line 1257
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    return-wide v0
.end method

.method getLastStateTime()J
    .registers 3

    .line 669
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    return-wide v0
.end method

.method getLastSwitchToTopTime()J
    .registers 3

    .line 918
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastSwitchToTopTime:J

    return-wide v0
.end method

.method getLastTopTime()J
    .registers 3

    .line 907
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    return-wide v0
.end method

.method getMaxAdj()I
    .registers 2

    .line 487
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    return v0
.end method

.method getReportedProcState()I
    .registers 2

    .line 628
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    return v0
.end method

.method getSavedPriority()I
    .registers 2

    .line 679
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSavedPriority:I

    return v0
.end method

.method getSetAdj()I
    .registers 2

    .line 529
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    return v0
.end method

.method getSetAdjWithServices()I
    .registers 3

    .line 534
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    const/16 v1, 0x384

    if-lt v0, v1, :cond_d

    .line 535
    iget-boolean v1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    if-eqz v1, :cond_d

    .line 536
    const/16 v0, 0x320

    return v0

    .line 539
    :cond_d
    return v0
.end method

.method getSetCapability()I
    .registers 2

    .line 569
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    return v0
.end method

.method getSetProcState()I
    .registers 2

    .line 659
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    return v0
.end method

.method getSetRawAdj()I
    .registers 2

    .line 509
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    return v0
.end method

.method getSetSchedGroup()I
    .registers 2

    .line 590
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    return v0
.end method

.method getVerifiedAdj()I
    .registers 2

    .line 549
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    return v0
.end method

.method getWhenUnimportant()J
    .registers 3

    .line 897
    iget-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mWhenUnimportant:J

    return-wide v0
.end method

.method hasForegroundActivities()Z
    .registers 2

    .line 734
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    return v0
.end method

.method hasOverlayUi()Z
    .registers 2

    .line 776
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasOverlayUi:Z

    return v0
.end method

.method hasProcStateChanged()Z
    .registers 2

    .line 804
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mProcStateChanged:Z

    return v0
.end method

.method hasRepForegroundActivities()Z
    .registers 2

    .line 744
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    return v0
.end method

.method hasReportedInteraction()Z
    .registers 2

    .line 814
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    return v0
.end method

.method hasShownUi()Z
    .registers 2

    .line 754
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    return v0
.end method

.method hasStartedServices()Z
    .registers 2

    .line 724
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    return v0
.end method

.method hasTopUi()Z
    .registers 2

    .line 765
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasTopUi:Z

    return v0
.end method

.method init(J)V
    .registers 3
    .param p1, "now"  # J

    .line 477
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    .line 478
    return-void
.end method

.method isAllowedStartFgs()Z
    .registers 3

    .line 1212
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    const/4 v1, 0x5

    if-gt v0, v1, :cond_7

    const/4 v0, 0x1

    goto :goto_8

    :cond_7
    const/4 v0, 0x0

    :goto_8
    return v0
.end method

.method isBackgroundRestricted()Z
    .registers 2

    .line 1217
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    return v0
.end method

.method isCached()Z
    .registers 2

    .line 939
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCached:Z

    return v0
.end method

.method isCurBoundByNonBgRestrictedApp()Z
    .registers 2

    .line 1227
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    return v0
.end method

.method isEmpty()Z
    .registers 2

    .line 929
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mEmpty:Z

    return v0
.end method

.method isNotCachedSinceIdle()Z
    .registers 2

    .line 709
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    return v0
.end method

.method isReachable()Z
    .registers 2

    .line 1009
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    return v0
.end method

.method isRunningRemoteAnimation()Z
    .registers 2

    .line 781
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    return v0
.end method

.method isServiceB()Z
    .registers 2

    .line 689
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    return v0
.end method

.method isServiceHighRam()Z
    .registers 2

    .line 699
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceHighRam:Z

    return v0
.end method

.method isSetBoundByNonBgRestrictedApp()Z
    .registers 2

    .line 1237
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    return v0
.end method

.method isSetCached()Z
    .registers 2

    .line 1277
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCached:Z

    return v0
.end method

.method isSetNoKillOnBgRestrictedAndIdle()Z
    .registers 2

    .line 1287
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetNoKillOnBgRestrictedAndIdle:Z

    return v0
.end method

.method isSystemNoUi()Z
    .registers 2

    .line 954
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    return v0
.end method

.method synthetic lambda$forceProcessStateUpTo$1$com-android-server-am-ProcessStateRecord(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 11
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "holder"  # Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 639
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 641
    invoke-static {v0}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v5

    iget-wide v6, p2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 639
    const/4 v1, 0x3

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method synthetic lambda$setReportedProcState$0$com-android-server-am-ProcessStateRecord(Ljava/lang/String;Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;)V
    .registers 11
    .param p1, "pkgName"  # Ljava/lang/String;
    .param p2, "holder"  # Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;

    .line 618
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget v2, v0, Lcom/android/server/am/ProcessRecord;->uid:I

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v3, v0, Lcom/android/server/am/ProcessRecord;->processName:Ljava/lang/String;

    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 620
    invoke-static {v0}, Landroid/app/ActivityManager;->processStateAmToProto(I)I

    move-result v5

    iget-wide v6, p2, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->appVersion:J

    .line 618
    const/4 v1, 0x3

    move-object v4, p1

    invoke-static/range {v1 .. v7}, Lcom/android/internal/util/FrameworkStatsLog;->write(IILjava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public makeAdjReason()Ljava/lang/String;
    .registers 5

    .line 1171
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    if-nez v0, :cond_b

    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    if-eqz v0, :cond_9

    goto :goto_b

    .line 1193
    :cond_9
    const/4 v0, 0x0

    return-object v0

    .line 1172
    :cond_b
    :goto_b
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 1173
    .local v0, "sb":Ljava/lang/StringBuilder;
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1174
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    instance-of v2, v1, Landroid/content/ComponentName;

    const-string/jumbo v3, "{null}"

    if-eqz v2, :cond_2a

    .line 1175
    check-cast v1, Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 1176
    :cond_2a
    if-eqz v1, :cond_34

    .line 1177
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_37

    .line 1179
    :cond_34
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1181
    :goto_37
    const-string v1, "<="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1182
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    instance-of v2, v1, Lcom/android/server/am/ProcessRecord;

    if-eqz v2, :cond_59

    .line 1183
    const-string v1, "Proc{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1184
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->toShortString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1185
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_66

    .line 1186
    :cond_59
    if-eqz v1, :cond_63

    .line 1187
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_66

    .line 1189
    :cond_63
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1191
    :goto_66
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method onCleanupApplicationRecordLSP()V
    .registers 4

    .line 1198
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/server/am/ProcessStateRecord;->setHasForegroundActivities(Z)V

    .line 1199
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    .line 1200
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    .line 1201
    const/16 v1, -0x2710

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 1202
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 1203
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 1204
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 1205
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_26
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedCompatChanges:[I

    array-length v2, v1

    if-ge v0, v2, :cond_31

    .line 1206
    const/4 v2, -0x1

    aput v2, v1, v0

    .line 1205
    add-int/lit8 v0, v0, 0x1

    goto :goto_26

    .line 1208
    .end local v0  # "i":I
    :cond_31
    return-void
.end method

.method resetCachedInfo()V
    .registers 3

    .line 1019
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasActivities:I

    .line 1020
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHeavyWeight:I

    .line 1021
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasVisibleActivities:I

    .line 1022
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsHomeProcess:I

    .line 1023
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsPreviousProcess:I

    .line 1024
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedHasRecentTasks:I

    .line 1025
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedIsReceivingBroadcast:I

    .line 1026
    const/16 v0, -0x2710

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedAdj:I

    .line 1027
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedForegroundActivities:Z

    .line 1028
    const/16 v1, 0x13

    iput v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedProcState:I

    .line 1029
    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCachedSchedGroup:I

    .line 1030
    return-void
.end method

.method setAdjSeq(I)V
    .registers 2
    .param p1, "adjSeq"  # I

    .line 851
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSeq:I

    .line 852
    return-void
.end method

.method setAdjSource(Ljava/lang/Object;)V
    .registers 2
    .param p1, "adjSource"  # Ljava/lang/Object;

    .line 979
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSource:Ljava/lang/Object;

    .line 980
    return-void
.end method

.method setAdjSourceProcState(I)V
    .registers 2
    .param p1, "adjSourceProcState"  # I

    .line 989
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjSourceProcState:I

    .line 990
    return-void
.end method

.method setAdjTarget(Ljava/lang/Object;)V
    .registers 2
    .param p1, "adjTarget"  # Ljava/lang/Object;

    .line 999
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTarget:Ljava/lang/Object;

    .line 1000
    return-void
.end method

.method setAdjType(Ljava/lang/String;)V
    .registers 2
    .param p1, "adjType"  # Ljava/lang/String;

    .line 959
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjType:Ljava/lang/String;

    .line 960
    return-void
.end method

.method setAdjTypeCode(I)V
    .registers 2
    .param p1, "adjTypeCode"  # I

    .line 969
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mAdjTypeCode:I

    .line 970
    return-void
.end method

.method setBackgroundRestricted(Z)V
    .registers 2
    .param p1, "restricted"  # Z

    .line 1222
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mBackgroundRestricted:Z

    .line 1223
    return-void
.end method

.method public setCacheOomRankerRss(JJ)V
    .registers 5
    .param p1, "rss"  # J
    .param p3, "rssTimeMs"  # J

    .line 1302
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRss:J

    .line 1303
    iput-wide p3, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerRssTimeMs:J

    .line 1304
    return-void
.end method

.method setCached(Z)V
    .registers 2
    .param p1, "cached"  # Z

    .line 934
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCached:Z

    .line 935
    return-void
.end method

.method setCompletedAdjSeq(I)V
    .registers 2
    .param p1, "completedAdjSeq"  # I

    .line 866
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCompletedAdjSeq:I

    .line 867
    return-void
.end method

.method setContainsCycle(Z)V
    .registers 2
    .param p1, "containsCycle"  # Z

    .line 881
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mContainsCycle:Z

    .line 882
    return-void
.end method

.method setCurAdj(I)V
    .registers 2
    .param p1, "curAdj"  # I

    .line 514
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurAdj:I

    .line 515
    return-void
.end method

.method setCurBoundByNonBgRestrictedApp(Z)V
    .registers 2
    .param p1, "bound"  # Z

    .line 1232
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurBoundByNonBgRestrictedApp:Z

    .line 1233
    return-void
.end method

.method setCurCapability(I)V
    .registers 2
    .param p1, "curCapability"  # I

    .line 554
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurCapability:I

    .line 555
    return-void
.end method

.method setCurProcState(I)V
    .registers 4
    .param p1, "curProcState"  # I

    .line 595
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    .line 596
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    iget v1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurProcState:I

    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setCurrentProcState(I)V

    .line 597
    return-void
.end method

.method setCurRawAdj(I)V
    .registers 4
    .param p1, "curRawAdj"  # I

    .line 492
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawAdj:I

    .line 493
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    const/16 v1, 0xc8

    if-gt p1, v1, :cond_e

    const/4 v1, 0x1

    goto :goto_f

    :cond_e
    const/4 v1, 0x0

    :goto_f
    invoke-virtual {v0, v1}, Lcom/android/server/wm/WindowProcessController;->setPerceptible(Z)V

    .line 495
    return-void
.end method

.method setCurRawProcState(I)V
    .registers 2
    .param p1, "curRawProcState"  # I

    .line 606
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurRawProcState:I

    .line 607
    return-void
.end method

.method setCurrentSchedulingGroup(I)V
    .registers 3
    .param p1, "curSchedGroup"  # I

    .line 574
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mCurSchedGroup:I

    .line 575
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setCurrentSchedulingGroup(I)V

    .line 576
    return-void
.end method

.method setEmpty(Z)V
    .registers 2
    .param p1, "empty"  # Z

    .line 924
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mEmpty:Z

    .line 925
    return-void
.end method

.method setFgInteractionTime(J)V
    .registers 4
    .param p1, "fgInteractionTime"  # J

    .line 830
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mFgInteractionTime:J

    .line 831
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setFgInteractionTime(J)V

    .line 832
    return-void
.end method

.method setForcingToImportant(Ljava/lang/Object;)V
    .registers 2
    .param p1, "forcingToImportant"  # Ljava/lang/Object;

    .line 841
    iput-object p1, p0, Lcom/android/server/am/ProcessStateRecord;->mForcingToImportant:Ljava/lang/Object;

    .line 842
    return-void
.end method

.method setHasForegroundActivities(Z)V
    .registers 2
    .param p1, "hasForegroundActivities"  # Z

    .line 729
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasForegroundActivities:Z

    .line 730
    return-void
.end method

.method setHasOverlayUi(Z)V
    .registers 3
    .param p1, "hasOverlayUi"  # Z

    .line 770
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasOverlayUi:Z

    .line 771
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasOverlayUi(Z)V

    .line 772
    return-void
.end method

.method setHasShownUi(Z)V
    .registers 2
    .param p1, "hasShownUi"  # Z

    .line 749
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasShownUi:Z

    .line 750
    return-void
.end method

.method setHasStartedServices(Z)V
    .registers 4
    .param p1, "hasStartedServices"  # Z

    .line 714
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasStartedServices:Z

    .line 715
    const/16 v0, 0x80

    if-eqz p1, :cond_e

    .line 716
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessProfileRecord;->addHostingComponentType(I)V

    goto :goto_15

    .line 718
    :cond_e
    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    iget-object v1, v1, Lcom/android/server/am/ProcessRecord;->mProfile:Lcom/android/server/am/ProcessProfileRecord;

    invoke-virtual {v1, v0}, Lcom/android/server/am/ProcessProfileRecord;->clearHostingComponentType(I)V

    .line 720
    :goto_15
    return-void
.end method

.method setHasTopUi(Z)V
    .registers 3
    .param p1, "hasTopUi"  # Z

    .line 759
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mHasTopUi:Z

    .line 760
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setHasTopUi(Z)V

    .line 761
    return-void
.end method

.method setInteractionEventTime(J)V
    .registers 4
    .param p1, "interactionEventTime"  # J

    .line 819
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mInteractionEventTime:J

    .line 820
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setInteractionEventTime(J)V

    .line 821
    return-void
.end method

.method setLastCanKillOnBgRestrictedAndIdleTime(J)V
    .registers 3
    .param p1, "now"  # J

    .line 1292
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mLastCanKillOnBgRestrictedAndIdleTime:J

    .line 1293
    return-void
.end method

.method setLastStateTime(J)V
    .registers 3
    .param p1, "lastStateTime"  # J

    .line 664
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mLastStateTime:J

    .line 665
    return-void
.end method

.method setLastSwitchToTopTime(J)V
    .registers 3
    .param p1, "lastSwitchToTopTime"  # J

    .line 913
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mLastSwitchToTopTime:J

    .line 914
    return-void
.end method

.method setLastTopTime(J)V
    .registers 3
    .param p1, "lastTopTime"  # J

    .line 902
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mLastTopTime:J

    .line 903
    return-void
.end method

.method setMaxAdj(I)V
    .registers 2
    .param p1, "maxAdj"  # I

    .line 482
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mMaxAdj:I

    .line 483
    return-void
.end method

.method setNoKillOnBgRestrictedAndIdle(Z)V
    .registers 2
    .param p1, "shouldNotKill"  # Z

    .line 1262
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mNoKillOnBgRestrictedAndIdle:Z

    .line 1263
    return-void
.end method

.method setNotCachedSinceIdle(Z)V
    .registers 2
    .param p1, "notCachedSinceIdle"  # Z

    .line 704
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mNotCachedSinceIdle:Z

    .line 705
    return-void
.end method

.method setProcStateChanged(Z)V
    .registers 2
    .param p1, "procStateChanged"  # Z

    .line 799
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mProcStateChanged:Z

    .line 800
    return-void
.end method

.method setReachable(Z)V
    .registers 2
    .param p1, "reachable"  # Z

    .line 1014
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mReachable:Z

    .line 1015
    return-void
.end method

.method setRepForegroundActivities(Z)V
    .registers 2
    .param p1, "repForegroundActivities"  # Z

    .line 739
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mRepForegroundActivities:Z

    .line 740
    return-void
.end method

.method setReportedInteraction(Z)V
    .registers 2
    .param p1, "reportedInteraction"  # Z

    .line 809
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mReportedInteraction:Z

    .line 810
    return-void
.end method

.method setReportedProcState(I)V
    .registers 4
    .param p1, "repProcState"  # I

    .line 616
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mRepProcState:I

    .line 617
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getPkgList()Lcom/android/server/am/PackageList;

    move-result-object v0

    new-instance v1, Lcom/android/server/am/ProcessStateRecord$$ExternalSyntheticLambda1;

    invoke-direct {v1, p0}, Lcom/android/server/am/ProcessStateRecord$$ExternalSyntheticLambda1;-><init>(Lcom/android/server/am/ProcessStateRecord;)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/PackageList;->forEachPackage(Ljava/util/function/BiConsumer;)V

    .line 623
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/android/server/wm/WindowProcessController;->setReportedProcState(I)V

    .line 624
    return-void
.end method

.method setRunningRemoteAnimation(Z)V
    .registers 5
    .param p1, "runningRemoteAnimation"  # Z

    .line 786
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    if-ne v0, p1, :cond_5

    .line 787
    return-void

    .line 789
    :cond_5
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mRunningRemoteAnimation:Z

    .line 790
    sget-boolean v0, Lcom/android/server/am/ActivityManagerDebugConfig;->DEBUG_OOM_ADJ:Z

    if-eqz v0, :cond_33

    .line 791
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Setting runningRemoteAnimation="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for pid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    .line 792
    invoke-virtual {v1}, Lcom/android/server/am/ProcessRecord;->getPid()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 791
    const-string v1, "ActivityManager"

    invoke-static {v1, v0}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    :cond_33
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    const-string/jumbo v2, "updateOomAdj_uiVisibility"

    invoke-virtual {v0, v1, v2}, Lcom/android/server/am/ActivityManagerService;->updateOomAdjLocked(Lcom/android/server/am/ProcessRecord;Ljava/lang/String;)Z

    .line 795
    return-void
.end method

.method setSavedPriority(I)V
    .registers 2
    .param p1, "savedPriority"  # I

    .line 674
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSavedPriority:I

    .line 675
    return-void
.end method

.method setServiceB(Z)V
    .registers 2
    .param p1, "serviceb"  # Z

    .line 684
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceB:Z

    .line 685
    return-void
.end method

.method setServiceHighRam(Z)V
    .registers 2
    .param p1, "serviceHighRam"  # Z

    .line 694
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mServiceHighRam:Z

    .line 695
    return-void
.end method

.method setSetAdj(I)V
    .registers 2
    .param p1, "setAdj"  # I

    .line 524
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetAdj:I

    .line 525
    return-void
.end method

.method setSetBoundByNonBgRestrictedApp(Z)V
    .registers 2
    .param p1, "bound"  # Z

    .line 1242
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetBoundByNonBgRestrictedApp:Z

    .line 1243
    return-void
.end method

.method setSetCached(Z)V
    .registers 2
    .param p1, "cached"  # Z

    .line 1272
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCached:Z

    .line 1273
    return-void
.end method

.method setSetCapability(I)V
    .registers 2
    .param p1, "setCapability"  # I

    .line 564
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetCapability:I

    .line 565
    return-void
.end method

.method setSetNoKillOnBgRestrictedAndIdle(Z)V
    .registers 2
    .param p1, "shouldNotKill"  # Z

    .line 1282
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetNoKillOnBgRestrictedAndIdle:Z

    .line 1283
    return-void
.end method

.method setSetProcState(I)V
    .registers 3
    .param p1, "setProcState"  # I

    .line 650
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    invoke-static {v0}, Landroid/app/ActivityManager;->isProcStateCached(I)Z

    move-result v0

    if-eqz v0, :cond_14

    .line 651
    invoke-static {p1}, Landroid/app/ActivityManager;->isProcStateCached(I)Z

    move-result v0

    if-nez v0, :cond_14

    .line 652
    iget v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/server/am/ProcessStateRecord;->mCacheOomRankerUseCount:I

    .line 654
    :cond_14
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetProcState:I

    .line 655
    return-void
.end method

.method setSetRawAdj(I)V
    .registers 2
    .param p1, "setRawAdj"  # I

    .line 504
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetRawAdj:I

    .line 505
    return-void
.end method

.method setSetSchedGroup(I)V
    .registers 2
    .param p1, "setSchedGroup"  # I

    .line 585
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSetSchedGroup:I

    .line 586
    return-void
.end method

.method setSystemNoUi(Z)V
    .registers 2
    .param p1, "systemNoUi"  # Z

    .line 949
    iput-boolean p1, p0, Lcom/android/server/am/ProcessStateRecord;->mSystemNoUi:Z

    .line 950
    return-void
.end method

.method setVerifiedAdj(I)V
    .registers 2
    .param p1, "verifiedAdj"  # I

    .line 544
    iput p1, p0, Lcom/android/server/am/ProcessStateRecord;->mVerifiedAdj:I

    .line 545
    return-void
.end method

.method setWhenUnimportant(J)V
    .registers 4
    .param p1, "whenUnimportant"  # J

    .line 891
    iput-wide p1, p0, Lcom/android/server/am/ProcessStateRecord;->mWhenUnimportant:J

    .line 892
    iget-object v0, p0, Lcom/android/server/am/ProcessStateRecord;->mApp:Lcom/android/server/am/ProcessRecord;

    invoke-virtual {v0}, Lcom/android/server/am/ProcessRecord;->getWindowProcessController()Lcom/android/server/wm/WindowProcessController;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/android/server/wm/WindowProcessController;->setWhenUnimportant(J)V

    .line 893
    return-void
.end method

.method shouldNotKillOnBgRestrictedAndIdle()Z
    .registers 2

    .line 1267
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStateRecord;->mNoKillOnBgRestrictedAndIdle:Z

    return v0
.end method

.method updateLastInvisibleTime(Z)V
    .registers 6
    .param p1, "hasVisibleActivities"  # Z

    .line 1247
    const-wide v0, 0x7fffffffffffffffL

    if-eqz p1, :cond_a

    .line 1248
    iput-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    goto :goto_16

    .line 1249
    :cond_a
    iget-wide v2, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    cmp-long v0, v2, v0

    if-nez v0, :cond_16

    .line 1250
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessStateRecord;->mLastInvisibleTime:J

    .line 1252
    :cond_16
    :goto_16
    return-void
.end method
