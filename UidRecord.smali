# classes.dex

.class public final Lcom/android/server/am/UidRecord;
.super Ljava/lang/Object;
.source "UidRecord.java"


# static fields
.field static final CHANGE_ACTIVE:I = 0x4

.field static final CHANGE_CACHED:I = 0x8

.field static final CHANGE_CAPABILITY:I = 0x20

.field static final CHANGE_GONE:I = 0x1

.field static final CHANGE_IDLE:I = 0x2

.field static final CHANGE_PROCADJ:I = 0x40

.field static final CHANGE_PROCSTATE:I = -0x80000000

.field static final CHANGE_UNCACHED:I = 0x10

.field private static ORIG_ENUMS:[I

.field private static PROTO_ENUMS:[I


# instance fields
.field curProcStateSeq:J

.field volatile hasInternetPermission:Z

.field lastNetworkUpdatedProcStateSeq:J

.field private mCurAllowList:Z

.field private mCurCapability:I

.field private mCurProcState:I

.field private mEphemeral:Z

.field private mForegroundServices:Z

.field private mIdle:Z

.field private mLastBackgroundTime:J

.field private mLastReportedChange:I

.field private mNumProcs:I

.field private mProcAdjChanged:Z

.field private final mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

.field private mProcRecords:Landroid/util/ArraySet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArraySet<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Lcom/android/server/am/ActivityManagerService;

.field private mSetAllowList:Z

.field private mSetCapability:I

.field private mSetIdle:Z

.field private mSetProcState:I

.field private final mUid:I

.field final networkStateLock:Ljava/lang/Object;

.field final pendingChange:Lcom/android/server/am/UidObserverController$ChangeRecord;

.field volatile procStateSeqWaitingForNetwork:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 129
    const/4 v0, 0x7

    new-array v1, v0, [I

    fill-array-data v1, :array_10

    sput-object v1, Lcom/android/server/am/UidRecord;->ORIG_ENUMS:[I

    .line 138
    new-array v0, v0, [I

    fill-array-data v0, :array_22

    sput-object v0, Lcom/android/server/am/UidRecord;->PROTO_ENUMS:[I

    return-void

    :array_10
    .array-data 4
        0x1
        0x2
        0x4
        0x8
        0x10
        0x20
        -0x80000000
    .end array-data

    :array_22
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
    .end array-data
.end method

.method public constructor <init>(ILcom/android/server/am/ActivityManagerService;)V
    .registers 4
    .param p1, "uid"  # I
    .param p2, "service"  # Lcom/android/server/am/ActivityManagerService;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 47
    const/16 v0, 0x14

    iput v0, p0, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 83
    new-instance v0, Landroid/util/ArraySet;

    invoke-direct {v0}, Landroid/util/ArraySet;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    .line 114
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidRecord;->networkStateLock:Ljava/lang/Object;

    .line 149
    new-instance v0, Lcom/android/server/am/UidObserverController$ChangeRecord;

    invoke-direct {v0}, Lcom/android/server/am/UidObserverController$ChangeRecord;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/UidRecord;->pendingChange:Lcom/android/server/am/UidObserverController$ChangeRecord;

    .line 155
    iput p1, p0, Lcom/android/server/am/UidRecord;->mUid:I

    .line 156
    iput-object p2, p0, Lcom/android/server/am/UidRecord;->mService:Lcom/android/server/am/ActivityManagerService;

    .line 157
    if-eqz p2, :cond_25

    iget-object v0, p2, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    goto :goto_26

    :cond_25
    const/4 v0, 0x0

    :goto_26
    iput-object v0, p0, Lcom/android/server/am/UidRecord;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    .line 158
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 159
    invoke-virtual {p0}, Lcom/android/server/am/UidRecord;->reset()V

    .line 160
    return-void
.end method


# virtual methods
.method addProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 3
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 316
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->add(Ljava/lang/Object;)Z

    .line 317
    return-void
.end method

.method clearProcAdjChanged()V
    .registers 2

    .line 193
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    .line 194
    return-void
.end method

.method dumpDebug(Landroid/util/proto/ProtoOutputStream;J)V
    .registers 16
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J

    .line 342
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v0

    .line 343
    .local v0, "token":J
    iget v2, p0, Lcom/android/server/am/UidRecord;->mUid:I

    const-wide v3, 0x10500000001L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 344
    iget v2, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    invoke-static {v2}, Lcom/android/server/am/ProcessList;->makeProcStateProtoEnum(I)I

    move-result v2

    const-wide v3, 0x10e00000002L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 345
    iget-boolean v2, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    const-wide v3, 0x10800000003L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 346
    iget-boolean v2, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    const-wide v3, 0x10800000004L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 347
    iget-boolean v2, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    const-wide v3, 0x10800000005L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 348
    iget-wide v8, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    .line 349
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 348
    const-wide v6, 0x10b00000006L

    move-object v5, p1

    invoke-static/range {v5 .. v11}, Landroid/util/proto/ProtoUtils;->toDuration(Landroid/util/proto/ProtoOutputStream;JJJ)V

    .line 350
    iget-boolean v2, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    const-wide v3, 0x10800000007L

    invoke-virtual {p1, v3, v4, v2}, Landroid/util/proto/ProtoOutputStream;->write(JZ)V

    .line 351
    iget v8, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    if-eqz v8, :cond_64

    .line 352
    const-wide v6, 0x20e00000008L

    sget-object v9, Lcom/android/server/am/UidRecord;->ORIG_ENUMS:[I

    sget-object v10, Lcom/android/server/am/UidRecord;->PROTO_ENUMS:[I

    move-object v5, p1

    invoke-static/range {v5 .. v10}, Landroid/util/proto/ProtoUtils;->writeBitWiseFlagsToProtoEnum(Landroid/util/proto/ProtoOutputStream;JI[I[I)V

    .line 355
    :cond_64
    const-wide v2, 0x10500000009L

    iget v4, p0, Lcom/android/server/am/UidRecord;->mNumProcs:I

    invoke-virtual {p1, v2, v3, v4}, Landroid/util/proto/ProtoOutputStream;->write(JI)V

    .line 357
    const-wide v2, 0x10b0000000aL

    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 358
    .local v2, "seqToken":J
    const-wide v4, 0x10300000001L

    iget-wide v6, p0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 359
    const-wide v4, 0x10300000002L

    iget-wide v6, p0, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    invoke-virtual {p1, v4, v5, v6, v7}, Landroid/util/proto/ProtoOutputStream;->write(JJ)V

    .line 361
    invoke-virtual {p1, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 363
    invoke-virtual {p1, v0, v1}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 364
    return-void
.end method

.method forEachProcess(Ljava/util/function/Consumer;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "Lcom/android/server/am/ProcessRecord;",
            ">;)V"
        }
    .end annotation

    .line 298
    .local p1, "callback":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lcom/android/server/am/ProcessRecord;>;"
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_18

    .line 299
    iget-object v1, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    invoke-interface {p1, v1}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 298
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 301
    .end local v0  # "i":I
    :cond_18
    return-void
.end method

.method getCurCapability()I
    .registers 2

    .line 203
    iget v0, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    return v0
.end method

.method getCurProcState()I
    .registers 2

    .line 168
    iget v0, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    return v0
.end method

.method getLastBackgroundTime()J
    .registers 3

    .line 223
    iget-wide v0, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    return-wide v0
.end method

.method getNumOfProcs()I
    .registers 2

    .line 293
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    return v0
.end method

.method getProcAdjChanged()Z
    .registers 2

    .line 198
    iget-boolean v0, p0, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    return v0
.end method

.method getProcessInPackage(Ljava/lang/String;)Lcom/android/server/am/ProcessRecord;
    .registers 5
    .param p1, "packageName"  # Ljava/lang/String;

    .line 305
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0}, Landroid/util/ArraySet;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .local v0, "i":I
    :goto_8
    if-ltz v0, :cond_22

    .line 306
    iget-object v1, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v1, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/am/ProcessRecord;

    .line 307
    .local v1, "app":Lcom/android/server/am/ProcessRecord;
    if-eqz v1, :cond_1f

    iget-object v2, v1, Lcom/android/server/am/ProcessRecord;->info:Landroid/content/pm/ApplicationInfo;

    iget-object v2, v2, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1f

    .line 308
    return-object v1

    .line 305
    .end local v1  # "app":Lcom/android/server/am/ProcessRecord;
    :cond_1f
    add-int/lit8 v0, v0, -0x1

    goto :goto_8

    .line 311
    .end local v0  # "i":I
    :cond_22
    const/4 v0, 0x0

    return-object v0
.end method

.method getSetCapability()I
    .registers 2

    .line 213
    iget v0, p0, Lcom/android/server/am/UidRecord;->mSetCapability:I

    return v0
.end method

.method getSetProcState()I
    .registers 2

    .line 178
    iget v0, p0, Lcom/android/server/am/UidRecord;->mSetProcState:I

    return v0
.end method

.method getUid()I
    .registers 2

    .line 163
    iget v0, p0, Lcom/android/server/am/UidRecord;->mUid:I

    return v0
.end method

.method hasForegroundServices()Z
    .registers 2

    .line 243
    iget-boolean v0, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    return v0
.end method

.method isCurAllowListed()Z
    .registers 2

    .line 253
    iget-boolean v0, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    return v0
.end method

.method isEphemeral()Z
    .registers 2

    .line 233
    iget-boolean v0, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    return v0
.end method

.method isIdle()Z
    .registers 2

    .line 273
    iget-boolean v0, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    return v0
.end method

.method isSetAllowListed()Z
    .registers 2

    .line 263
    iget-boolean v0, p0, Lcom/android/server/am/UidRecord;->mSetAllowList:Z

    return v0
.end method

.method isSetIdle()Z
    .registers 2

    .line 283
    iget-boolean v0, p0, Lcom/android/server/am/UidRecord;->mSetIdle:Z

    return v0
.end method

.method noteProcAdjChanged()V
    .registers 2

    .line 188
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->mProcAdjChanged:Z

    .line 189
    return-void
.end method

.method removeProcess(Lcom/android/server/am/ProcessRecord;)V
    .registers 3
    .param p1, "app"  # Lcom/android/server/am/ProcessRecord;

    .line 321
    iget-object v0, p0, Lcom/android/server/am/UidRecord;->mProcRecords:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    .line 322
    return-void
.end method

.method reset()V
    .registers 2

    .line 331
    const/16 v0, 0x13

    invoke-virtual {p0, v0}, Lcom/android/server/am/UidRecord;->setCurProcState(I)V

    .line 332
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    .line 333
    iput v0, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 334
    return-void
.end method

.method setCurAllowListed(Z)V
    .registers 2
    .param p1, "curAllowList"  # Z

    .line 258
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    .line 259
    return-void
.end method

.method setCurCapability(I)V
    .registers 2
    .param p1, "curCapability"  # I

    .line 208
    iput p1, p0, Lcom/android/server/am/UidRecord;->mCurCapability:I

    .line 209
    return-void
.end method

.method setCurProcState(I)V
    .registers 2
    .param p1, "curProcState"  # I

    .line 173
    iput p1, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    .line 174
    return-void
.end method

.method setEphemeral(Z)V
    .registers 2
    .param p1, "ephemeral"  # Z

    .line 238
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    .line 239
    return-void
.end method

.method setForegroundServices(Z)V
    .registers 2
    .param p1, "foregroundServices"  # Z

    .line 248
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    .line 249
    return-void
.end method

.method setIdle(Z)V
    .registers 2
    .param p1, "idle"  # Z

    .line 278
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    .line 279
    return-void
.end method

.method setLastBackgroundTime(J)V
    .registers 3
    .param p1, "lastBackgroundTime"  # J

    .line 228
    iput-wide p1, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    .line 229
    return-void
.end method

.method setLastReportedChange(I)V
    .registers 2
    .param p1, "lastReportedChange"  # I

    .line 326
    iput p1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    .line 327
    return-void
.end method

.method setSetAllowListed(Z)V
    .registers 2
    .param p1, "setAllowlist"  # Z

    .line 268
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mSetAllowList:Z

    .line 269
    return-void
.end method

.method setSetCapability(I)V
    .registers 2
    .param p1, "setCapability"  # I

    .line 218
    iput p1, p0, Lcom/android/server/am/UidRecord;->mSetCapability:I

    .line 219
    return-void
.end method

.method setSetIdle(Z)V
    .registers 2
    .param p1, "setIdle"  # Z

    .line 288
    iput-boolean p1, p0, Lcom/android/server/am/UidRecord;->mSetIdle:Z

    .line 289
    return-void
.end method

.method setSetProcState(I)V
    .registers 2
    .param p1, "setProcState"  # I

    .line 183
    iput p1, p0, Lcom/android/server/am/UidRecord;->mSetProcState:I

    .line 184
    return-void
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    .line 367
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 368
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "UidRecord{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 369
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 370
    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 371
    iget v2, p0, Lcom/android/server/am/UidRecord;->mUid:I

    invoke-static {v0, v2}, Landroid/os/UserHandle;->formatUid(Ljava/lang/StringBuilder;I)V

    .line 372
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 373
    iget v1, p0, Lcom/android/server/am/UidRecord;->mCurProcState:I

    invoke-static {v1}, Lcom/android/server/am/ProcessList;->makeProcStateString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 374
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mEphemeral:Z

    if-eqz v1, :cond_36

    .line 375
    const-string v1, " ephemeral"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 377
    :cond_36
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mForegroundServices:Z

    if-eqz v1, :cond_3f

    .line 378
    const-string v1, " fgServices"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 380
    :cond_3f
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mCurAllowList:Z

    if-eqz v1, :cond_48

    .line 381
    const-string v1, " allowlist"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 383
    :cond_48
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_5f

    .line 384
    const-string v1, " bg:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 385
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/server/am/UidRecord;->mLastBackgroundTime:J

    sub-long/2addr v1, v3

    invoke-static {v1, v2, v0}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 387
    :cond_5f
    iget-boolean v1, p0, Lcom/android/server/am/UidRecord;->mIdle:Z

    if-eqz v1, :cond_68

    .line 388
    const-string v1, " idle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 390
    :cond_68
    iget v1, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    if-eqz v1, :cond_ea

    .line 391
    const-string v1, " change:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 392
    const/4 v1, 0x0

    .line 393
    .local v1, "printed":Z
    iget v2, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v2, v2, 0x1

    if-eqz v2, :cond_7f

    .line 394
    const/4 v1, 0x1

    .line 395
    const-string/jumbo v2, "gone"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 397
    :cond_7f
    iget v2, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v2, v2, 0x2

    const-string/jumbo v3, "|"

    if-eqz v2, :cond_94

    .line 398
    if-eqz v1, :cond_8d

    .line 399
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 401
    :cond_8d
    const/4 v1, 0x1

    .line 402
    const-string/jumbo v2, "idle"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 404
    :cond_94
    iget v2, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v2, v2, 0x4

    if-eqz v2, :cond_a5

    .line 405
    if-eqz v1, :cond_9f

    .line 406
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 408
    :cond_9f
    const/4 v1, 0x1

    .line 409
    const-string v2, "active"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 411
    :cond_a5
    iget v2, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v2, v2, 0x8

    if-eqz v2, :cond_b6

    .line 412
    if-eqz v1, :cond_b0

    .line 413
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_b0
    const/4 v1, 0x1

    .line 416
    const-string v2, "cached"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 418
    :cond_b6
    iget v2, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v2, v2, 0x10

    if-eqz v2, :cond_c7

    .line 419
    if-eqz v1, :cond_c1

    .line 420
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 422
    :cond_c1
    const-string/jumbo v2, "uncached"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 424
    :cond_c7
    iget v2, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    const/high16 v4, -0x80000000

    and-int/2addr v2, v4

    if-eqz v2, :cond_d9

    .line 425
    if-eqz v1, :cond_d3

    .line 426
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 428
    :cond_d3
    const-string/jumbo v2, "procstate"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 430
    :cond_d9
    iget v2, p0, Lcom/android/server/am/UidRecord;->mLastReportedChange:I

    and-int/lit8 v2, v2, 0x40

    if-eqz v2, :cond_ea

    .line 431
    if-eqz v1, :cond_e4

    .line 432
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 434
    :cond_e4
    const-string/jumbo v2, "procadj"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 437
    .end local v1  # "printed":Z
    :cond_ea
    const-string v1, " procs:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 438
    iget v1, p0, Lcom/android/server/am/UidRecord;->mNumProcs:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 439
    const-string v1, " seq("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 440
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->curProcStateSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 441
    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 442
    iget-wide v1, p0, Lcom/android/server/am/UidRecord;->lastNetworkUpdatedProcStateSeq:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 443
    const-string v1, ")}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 444
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public updateHasInternetPermission()V
    .registers 3

    .line 337
    iget v0, p0, Lcom/android/server/am/UidRecord;->mUid:I

    const-string v1, "android.permission.INTERNET"

    invoke-static {v1, v0}, Landroid/app/ActivityManager;->checkUidPermission(Ljava/lang/String;I)I

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    iput-boolean v0, p0, Lcom/android/server/am/UidRecord;->hasInternetPermission:Z

    .line 339
    return-void
.end method
