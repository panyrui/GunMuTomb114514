# classes.dex

.class public final Lcom/android/server/am/ProcessStatsService;
.super Lcom/android/internal/app/procstats/IProcessStats$Stub;
.source "ProcessStatsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/am/ProcessStatsService$LocalService;
    }
.end annotation


# static fields
.field static final DEBUG:Z = false

.field static final MAX_HISTORIC_STATES:I = 0x8

.field static final STATE_FILE_CHECKIN_SUFFIX:Ljava/lang/String; = ".ci"

.field static final STATE_FILE_PREFIX:Ljava/lang/String; = "state-"

.field static final STATE_FILE_SUFFIX:Ljava/lang/String; = ".bin"

.field static final TAG:Ljava/lang/String; = "ProcessStatsService"

.field static WRITE_PERIOD:J


# instance fields
.field final mAm:Lcom/android/server/am/ActivityManagerService;

.field final mBaseDir:Ljava/io/File;

.field mCommitPending:Z

.field mFile:Landroid/util/AtomicFile;

.field final mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

.field mInjectedScreenState:Ljava/lang/Boolean;

.field mLastMemOnlyState:I

.field mLastWriteTime:J

.field final mLock:Ljava/lang/Object;

.field mMemFactorLowered:Z

.field mPendingWrite:Landroid/os/Parcel;

.field mPendingWriteCommitted:Z

.field mPendingWriteFile:Landroid/util/AtomicFile;

.field final mPendingWriteLock:Ljava/lang/Object;

.field final mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

.field mShuttingDown:Z


# direct methods
.method static bridge synthetic -$$Nest$mgetUidProcStateStatsOverTime(Lcom/android/server/am/ProcessStatsService;J)Landroid/util/SparseArray;
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessStatsService;->getUidProcStateStatsOverTime(J)Landroid/util/SparseArray;

    move-result-object p0

    return-object p0
.end method

.method static bridge synthetic -$$Nest$mperformWriteState(Lcom/android/server/am/ProcessStatsService;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessStatsService;->performWriteState(J)V

    return-void
.end method

.method static bridge synthetic -$$Nest$mwriteStateLocked(Lcom/android/server/am/ProcessStatsService;ZZ)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    return-void
.end method

.method static constructor <clinit>()V
    .registers 2

    .line 75
    const-wide/32 v0, 0x1b7740

    sput-wide v0, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    return-void
.end method

.method public constructor <init>(Lcom/android/server/am/ActivityManagerService;Ljava/io/File;)V
    .registers 6
    .param p1, "am"  # Lcom/android/server/am/ActivityManagerService;
    .param p2, "file"  # Ljava/io/File;

    .line 124
    invoke-direct {p0}, Lcom/android/internal/app/procstats/IProcessStats$Stub;-><init>()V

    .line 84
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    .line 87
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    .line 90
    new-instance v1, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {v1}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 104
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 125
    iput-object p1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    .line 126
    iput-object p2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    .line 127
    invoke-virtual {p2}, Ljava/io/File;->mkdirs()Z

    .line 128
    monitor-enter v0

    .line 129
    :try_start_23
    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    iput-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    .line 130
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFileLocked()V

    .line 131
    monitor-exit v0
    :try_end_2f
    .catchall {:try_start_23 .. :try_end_2f} :catchall_38

    .line 132
    new-instance v0, Lcom/android/server/am/ProcessStatsService$1;

    invoke-direct {v0, p0}, Lcom/android/server/am/ProcessStatsService$1;-><init>(Lcom/android/server/am/ProcessStatsService;)V

    invoke-static {v0}, Landroid/os/SystemProperties;->addChangeCallback(Ljava/lang/Runnable;)V

    .line 143
    return-void

    .line 131
    :catchall_38
    move-exception v1

    :try_start_39
    monitor-exit v0
    :try_end_3a
    .catchall {:try_start_39 .. :try_end_3a} :catchall_38

    throw v1
.end method

.method private dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V
    .registers 13
    .param p1, "proto"  # Landroid/util/proto/ProtoOutputStream;
    .param p2, "fieldId"  # J
    .param p4, "aggregateHours"  # I
    .param p5, "now"  # J

    .line 1372
    mul-int/lit8 v0, p4, 0x3c

    mul-int/lit8 v0, v0, 0x3c

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    sget-wide v2, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v4, 0x2

    div-long/2addr v2, v4

    sub-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 1374
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v0, :cond_14

    .line 1375
    return-void

    .line 1377
    :cond_14
    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 1378
    .local v1, "stats":Lcom/android/internal/app/procstats/ProcessStats;
    new-instance v2, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v2, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 1379
    .local v2, "stream":Ljava/io/InputStream;
    invoke-virtual {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 1380
    iget-object v3, v1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_27

    .line 1381
    return-void

    .line 1383
    :cond_27
    invoke-virtual {p1, p2, p3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v3

    .line 1384
    .local v3, "token":J
    const/16 v5, 0x1f

    invoke-virtual {v1, p1, p5, p6, v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1385
    invoke-virtual {p1, v3, v4}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1386
    return-void
.end method

.method private dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V
    .registers 29
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "aggregateHours"  # J
    .param p4, "now"  # J
    .param p6, "reqPackage"  # Ljava/lang/String;
    .param p7, "isCompact"  # Z
    .param p8, "dumpDetails"  # Z
    .param p9, "dumpFullDetails"  # Z
    .param p10, "dumpAll"  # Z
    .param p11, "activeOnly"  # Z
    .param p12, "section"  # I

    .line 851
    move-object/from16 v10, p1

    const-wide/16 v0, 0x3c

    mul-long v2, p2, v0

    mul-long/2addr v2, v0

    const-wide/16 v0, 0x3e8

    mul-long/2addr v2, v0

    sget-wide v0, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    const-wide/16 v4, 0x2

    div-long/2addr v0, v4

    sub-long/2addr v2, v0

    move-object/from16 v11, p0

    invoke-virtual {v11, v2, v3}, Lcom/android/server/am/ProcessStatsService;->getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v12

    .line 853
    .local v12, "pfd":Landroid/os/ParcelFileDescriptor;
    if-nez v12, :cond_1e

    .line 854
    const-string v0, "Unable to build stats!"

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 855
    return-void

    .line 857
    :cond_1e
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    move-object v13, v0

    .line 858
    .local v13, "stats":Lcom/android/internal/app/procstats/ProcessStats;
    new-instance v0, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v0, v12}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    move-object v14, v0

    .line 859
    .local v14, "stream":Ljava/io/InputStream;
    invoke-virtual {v13, v14}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 860
    iget-object v0, v13, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v0, :cond_3d

    .line 861
    const-string v0, "Failure reading: "

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v0, v13, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v10, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 862
    return-void

    .line 864
    :cond_3d
    if-eqz p7, :cond_47

    .line 865
    move-object/from16 v15, p6

    move/from16 v9, p12

    invoke-virtual {v13, v10, v15, v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    goto :goto_71

    .line 867
    :cond_47
    move-object/from16 v15, p6

    move/from16 v9, p12

    if-nez p8, :cond_5d

    if-eqz p9, :cond_50

    goto :goto_5d

    .line 871
    :cond_50
    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-wide/from16 v3, p4

    move/from16 v5, p11

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    goto :goto_71

    .line 868
    :cond_5d
    :goto_5d
    xor-int/lit8 v5, p9, 0x1

    move-object v0, v13

    move-object/from16 v1, p1

    move-object/from16 v2, p6

    move-wide/from16 v3, p4

    move/from16 v6, p8

    move/from16 v7, p10

    move/from16 v8, p11

    move/from16 v9, p12

    invoke-virtual/range {v0 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    .line 874
    :goto_71
    return-void
.end method

.method private dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z
    .registers 32
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "header"  # Ljava/lang/String;
    .param p3, "sepScreenStates"  # Z
    .param p4, "screenStates"  # [I
    .param p5, "sepMemStates"  # Z
    .param p6, "memStates"  # [I
    .param p7, "sepProcStates"  # Z
    .param p8, "procStates"  # [I
    .param p9, "now"  # J
    .param p11, "reqPackage"  # Ljava/lang/String;

    .line 496
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v9, 0x0

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    move-object/from16 v4, p8

    move-object/from16 v5, p8

    move-wide/from16 v6, p9

    move-object/from16 v8, p11

    invoke-virtual/range {v1 .. v9}, Lcom/android/internal/app/procstats/ProcessStats;->collectProcessesLocked([I[I[I[IJLjava/lang/String;Z)Ljava/util/ArrayList;

    move-result-object v1

    .line 498
    .local v1, "procs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/android/internal/app/procstats/ProcessState;>;"
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_36

    .line 499
    if-eqz p2, :cond_20

    .line 500
    invoke-virtual/range {p1 .. p2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 502
    :cond_20
    move-object/from16 v10, p1

    move-object v11, v1

    move/from16 v12, p3

    move-object/from16 v13, p4

    move/from16 v14, p5

    move-object/from16 v15, p6

    move/from16 v16, p7

    move-object/from16 v17, p8

    move-wide/from16 v18, p9

    invoke-static/range {v10 .. v19}, Lcom/android/internal/app/procstats/DumpUtils;->dumpProcessListCsv(Ljava/io/PrintWriter;Ljava/util/ArrayList;Z[IZ[IZ[IJ)V

    .line 504
    const/4 v2, 0x1

    return v2

    .line 506
    :cond_36
    const/4 v2, 0x0

    return v2
.end method

.method private static dumpHelp(Ljava/io/PrintWriter;)V
    .registers 2
    .param p0, "pw"  # Ljava/io/PrintWriter;

    .line 877
    const-string v0, "Process stats (procstats) dump options:"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 878
    const-string v0, "    [--checkin|-c|--csv] [--csv-screen] [--csv-proc] [--csv-mem]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 879
    const-string v0, "    [--details] [--full-details] [--current] [--hours N] [--last N]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 880
    const-string v0, "    [--max N] --active] [--commit] [--reset] [--clear] [--write] [-h]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 881
    const-string v0, "    [--start-testing] [--stop-testing] "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 882
    const-string v0, "    [--pretend-screen-on] [--pretend-screen-off] [--stop-pretend-screen]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 883
    const-string v0, "    [<package.name>]"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 884
    const-string v0, "  --checkin: perform a checkin: print and delete old committed states."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 885
    const-string v0, "  -c: print only state in checkin format."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 886
    const-string v0, "  --csv: output data suitable for putting in a spreadsheet."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 887
    const-string v0, "  --csv-screen: on, off."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 888
    const-string v0, "  --csv-mem: norm, mod, low, crit."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 889
    const-string v0, "  --csv-proc: pers, top, fore, vis, precept, backup,"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 890
    const-string v0, "    service, home, prev, cached"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 891
    const-string v0, "  --details: dump per-package details, not just summary."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 892
    const-string v0, "  --full-details: dump all timing and active state details."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 893
    const-string v0, "  --current: only dump current state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 894
    const-string v0, "  --hours: aggregate over about N last hours."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 895
    const-string v0, "  --last: only show the last committed stats at index N (starting at 1)."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 896
    const-string v0, "  --max: for -a, max num of historical batches to print."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 897
    const-string v0, "  --active: only show currently active processes/services."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 898
    const-string v0, "  --commit: commit current stats to disk and reset to start new stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 899
    const-string v0, "  --section: proc|pkg-proc|pkg-svc|pkg-asc|pkg-all|all "

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 900
    const-string v0, "    options can be combined to select desired stats"

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 901
    const-string v0, "  --reset: reset current stats, without committing."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 902
    const-string v0, "  --clear: clear all stats; does both --reset and deletes old stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 903
    const-string v0, "  --write: write current in-memory stats to disk."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 904
    const-string v0, "  --read: replace current stats with last-written stats."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 905
    const-string v0, "  --start-testing: clear all stats and starting high frequency pss sampling."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 906
    const-string v0, "  --stop-testing: stop high frequency pss sampling."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 907
    const-string v0, "  --pretend-screen-on: pretend screen is on."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 908
    const-string v0, "  --pretend-screen-off: pretend screen is off."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 909
    const-string v0, "  --stop-pretend-screen: forget \"pretend screen\" and use the real state."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 910
    const-string v0, "  -a: print everything."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 911
    const-string v0, "  -h: print this help text."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 912
    const-string v0, "  <package.name>: optional name of package to filter output by."

    invoke-virtual {p0, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 913
    return-void
.end method

.method private dumpInner(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 48
    .param p1, "pw"  # Ljava/io/PrintWriter;
    .param p2, "args"  # [Ljava/lang/String;
    .annotation build Ldalvik/annotation/optimization/NeverCompile;
    .end annotation

    .line 939
    move-object/from16 v14, p0

    move-object/from16 v15, p1

    move-object/from16 v13, p2

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v16

    .line 941
    .local v16, "now":J
    const/4 v0, 0x0

    .line 942
    .local v0, "isCheckin":Z
    const/4 v1, 0x0

    .line 943
    .local v1, "isCompact":Z
    const/4 v2, 0x0

    .line 944
    .local v2, "isCsv":Z
    const/4 v3, 0x0

    .line 945
    .local v3, "currentOnly":Z
    const/4 v4, 0x0

    .line 946
    .local v4, "dumpDetails":Z
    const/4 v5, 0x0

    .line 947
    .local v5, "dumpFullDetails":Z
    const/4 v6, 0x0

    .line 948
    .local v6, "dumpAll":Z
    const/4 v7, 0x0

    .line 949
    .local v7, "quit":Z
    const/4 v8, 0x0

    .line 950
    .local v8, "aggregateHours":I
    const/4 v9, 0x0

    .line 951
    .local v9, "lastIndex":I
    const/4 v10, 0x2

    .line 952
    .local v10, "maxNum":I
    const/4 v11, 0x0

    .line 953
    .local v11, "activeOnly":Z
    const/4 v12, 0x0

    .line 954
    .local v12, "reqPackage":Ljava/lang/String;
    const/16 v18, 0x0

    .line 955
    .local v18, "csvSepScreenStats":Z
    move/from16 v19, v0

    .end local v0  # "isCheckin":Z
    .local v19, "isCheckin":Z
    const/4 v0, 0x2

    new-array v0, v0, [I

    fill-array-data v0, :array_958

    .line 956
    .local v0, "csvScreenStats":[I
    const/16 v20, 0x0

    .line 957
    .local v20, "csvSepMemStats":Z
    move/from16 v21, v8

    .end local v8  # "aggregateHours":I
    .local v21, "aggregateHours":I
    const/4 v8, 0x1

    move-object/from16 v22, v0

    .end local v0  # "csvScreenStats":[I
    .local v22, "csvScreenStats":[I
    new-array v0, v8, [I

    const/16 v23, 0x3

    move/from16 v24, v7

    .end local v7  # "quit":Z
    .local v24, "quit":Z
    const/4 v7, 0x0

    aput v23, v0, v7

    .line 958
    .local v0, "csvMemStats":[I
    const/16 v23, 0x1

    .line 959
    .local v23, "csvSepProcStats":Z
    sget-object v25, Lcom/android/internal/app/procstats/ProcessStats;->ALL_PROC_STATES:[I

    .line 960
    .local v25, "csvProcStats":[I
    const/16 v26, 0x1f

    .line 961
    .local v26, "section":I
    if-eqz v13, :cond_4dc

    .line 962
    const/16 v27, 0x0

    move/from16 v7, v27

    move/from16 v27, v26

    move-object/from16 v26, v25

    move/from16 v25, v23

    move/from16 v23, v20

    move/from16 v20, v18

    move-object/from16 v18, v12

    move v12, v11

    move v11, v10

    move v10, v9

    move v9, v6

    move v6, v5

    move v5, v4

    move v4, v3

    move v3, v2

    move v2, v1

    move-object v1, v0

    .end local v0  # "csvMemStats":[I
    .local v1, "csvMemStats":[I
    .local v2, "isCompact":Z
    .local v3, "isCsv":Z
    .local v4, "currentOnly":Z
    .local v5, "dumpDetails":Z
    .local v6, "dumpFullDetails":Z
    .local v7, "i":I
    .local v9, "dumpAll":Z
    .local v10, "lastIndex":I
    .local v11, "maxNum":I
    .local v12, "activeOnly":Z
    .local v18, "reqPackage":Ljava/lang/String;
    .local v20, "csvSepScreenStats":Z
    .local v23, "csvSepMemStats":Z
    .local v25, "csvSepProcStats":Z
    .local v26, "csvProcStats":[I
    .local v27, "section":I
    :goto_53
    array-length v0, v13

    if-ge v7, v0, :cond_4b4

    .line 963
    aget-object v8, v13, v7

    .line 964
    .local v8, "arg":Ljava/lang/String;
    const-string v0, "--checkin"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_64

    .line 965
    const/16 v19, 0x1

    goto/16 :goto_4b0

    .line 966
    :cond_64
    const-string v0, "-c"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6f

    .line 967
    const/4 v2, 0x1

    goto/16 :goto_4b0

    .line 968
    :cond_6f
    const-string v0, "--csv"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    .line 969
    const/4 v3, 0x1

    goto/16 :goto_4b0

    .line 970
    :cond_7a
    const-string v0, "--csv-screen"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_de

    .line 971
    add-int/lit8 v7, v7, 0x1

    .line 972
    array-length v0, v13

    if-lt v7, v0, :cond_90

    .line 973
    const-string v0, "Error: argument required for --csv-screen"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 974
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 975
    return-void

    .line 977
    :cond_90
    move-object/from16 v30, v1

    const/4 v1, 0x1

    .end local v1  # "csvMemStats":[I
    .local v30, "csvMemStats":[I
    new-array v0, v1, [Z

    .line 978
    .local v0, "sep":[Z
    move/from16 v31, v2

    .end local v2  # "isCompact":Z
    .local v31, "isCompact":Z
    new-array v2, v1, [Ljava/lang/String;

    .line 979
    .local v2, "error":[Ljava/lang/String;
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_SCREEN_NAMES_CSV:[Ljava/lang/String;

    move/from16 v32, v3

    .end local v3  # "isCsv":Z
    .local v32, "isCsv":Z
    const/4 v3, 0x4

    move/from16 v33, v4

    .end local v4  # "currentOnly":Z
    .local v33, "currentOnly":Z
    aget-object v4, v13, v7

    invoke-static {v1, v3, v4, v0, v2}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v22

    .line 981
    if-nez v22, :cond_d1

    .line 982
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v13, v7

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 983
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 984
    return-void

    .line 986
    :cond_d1
    const/4 v3, 0x0

    aget-boolean v20, v0, v3

    .line 987
    .end local v0  # "sep":[Z
    .end local v2  # "error":[Ljava/lang/String;
    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_4b0

    .end local v30  # "csvMemStats":[I
    .end local v31  # "isCompact":Z
    .end local v32  # "isCsv":Z
    .end local v33  # "currentOnly":Z
    .restart local v1  # "csvMemStats":[I
    .local v2, "isCompact":Z
    .restart local v3  # "isCsv":Z
    .restart local v4  # "currentOnly":Z
    :cond_de
    move-object/from16 v30, v1

    move/from16 v31, v2

    move/from16 v32, v3

    move/from16 v33, v4

    .end local v1  # "csvMemStats":[I
    .end local v2  # "isCompact":Z
    .end local v3  # "isCsv":Z
    .end local v4  # "currentOnly":Z
    .restart local v30  # "csvMemStats":[I
    .restart local v31  # "isCompact":Z
    .restart local v32  # "isCsv":Z
    .restart local v33  # "currentOnly":Z
    const-string v0, "--csv-mem"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_140

    .line 988
    add-int/lit8 v7, v7, 0x1

    .line 989
    array-length v0, v13

    if-lt v7, v0, :cond_fc

    .line 990
    const-string v0, "Error: argument required for --csv-mem"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 991
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 992
    return-void

    .line 994
    :cond_fc
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 995
    .restart local v0  # "sep":[Z
    new-array v2, v1, [Ljava/lang/String;

    .line 996
    .local v2, "error":[Ljava/lang/String;
    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->ADJ_MEM_NAMES_CSV:[Ljava/lang/String;

    aget-object v4, v13, v7

    invoke-static {v3, v1, v4, v0, v2}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v3

    .line 998
    .end local v30  # "csvMemStats":[I
    .local v3, "csvMemStats":[I
    if-nez v3, :cond_134

    .line 999
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error in \""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v4, v13, v7

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "\": "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v4, 0x0

    aget-object v4, v2, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1000
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1001
    return-void

    .line 1003
    :cond_134
    const/4 v4, 0x0

    aget-boolean v23, v0, v4

    .line 1004
    .end local v0  # "sep":[Z
    .end local v2  # "error":[Ljava/lang/String;
    move-object v1, v3

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_4b0

    .end local v3  # "csvMemStats":[I
    .restart local v30  # "csvMemStats":[I
    :cond_140
    const-string v0, "--csv-proc"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_19b

    .line 1005
    add-int/lit8 v7, v7, 0x1

    .line 1006
    array-length v0, v13

    if-lt v7, v0, :cond_156

    .line 1007
    const-string v0, "Error: argument required for --csv-proc"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1008
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1009
    return-void

    .line 1011
    :cond_156
    const/4 v1, 0x1

    new-array v0, v1, [Z

    .line 1012
    .restart local v0  # "sep":[Z
    new-array v2, v1, [Ljava/lang/String;

    .line 1013
    .restart local v2  # "error":[Ljava/lang/String;
    sget-object v3, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget-object v4, v13, v7

    invoke-static {v3, v1, v4, v0, v2}, Lcom/android/server/am/ProcessStatsService;->parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I

    move-result-object v26

    .line 1015
    if-nez v26, :cond_18e

    .line 1016
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v3, v13, v7

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\": "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1017
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1018
    return-void

    .line 1020
    :cond_18e
    const/4 v3, 0x0

    aget-boolean v25, v0, v3

    .line 1021
    .end local v0  # "sep":[Z
    .end local v2  # "error":[Ljava/lang/String;
    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_4b0

    :cond_19b
    const-string v0, "--details"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1ae

    .line 1022
    const/4 v5, 0x1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_4b0

    .line 1023
    :cond_1ae
    const-string v0, "--full-details"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1c1

    .line 1024
    const/4 v6, 0x1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_4b0

    .line 1025
    :cond_1c1
    const-string v0, "--hours"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_206

    .line 1026
    add-int/lit8 v7, v7, 0x1

    .line 1027
    array-length v0, v13

    if-lt v7, v0, :cond_1d7

    .line 1028
    const-string v0, "Error: argument required for --hours"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1029
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1030
    return-void

    .line 1033
    :cond_1d7
    :try_start_1d7
    aget-object v0, v13, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_1dd
    .catch Ljava/lang/NumberFormatException; {:try_start_1d7 .. :try_end_1dd} :catch_1e9

    move/from16 v21, v0

    .line 1038
    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_4b0

    .line 1034
    :catch_1e9
    move-exception v0

    .line 1035
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: --hours argument not an int -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v13, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1036
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1037
    return-void

    .line 1039
    .end local v0  # "e":Ljava/lang/NumberFormatException;
    :cond_206
    const-string v0, "--last"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_24a

    .line 1040
    add-int/lit8 v7, v7, 0x1

    .line 1041
    array-length v0, v13

    if-lt v7, v0, :cond_21c

    .line 1042
    const-string v0, "Error: argument required for --last"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1043
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1044
    return-void

    .line 1047
    :cond_21c
    :try_start_21c
    aget-object v0, v13, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_222
    .catch Ljava/lang/NumberFormatException; {:try_start_21c .. :try_end_222} :catch_22d

    move v10, v0

    .line 1052
    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_4b0

    .line 1048
    :catch_22d
    move-exception v0

    .line 1049
    .restart local v0  # "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: --last argument not an int -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v13, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1050
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1051
    return-void

    .line 1053
    .end local v0  # "e":Ljava/lang/NumberFormatException;
    :cond_24a
    const-string v0, "--max"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_28e

    .line 1054
    add-int/lit8 v7, v7, 0x1

    .line 1055
    array-length v0, v13

    if-lt v7, v0, :cond_260

    .line 1056
    const-string v0, "Error: argument required for --max"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1057
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1058
    return-void

    .line 1061
    :cond_260
    :try_start_260
    aget-object v0, v13, v7

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0
    :try_end_266
    .catch Ljava/lang/NumberFormatException; {:try_start_260 .. :try_end_266} :catch_271

    move v11, v0

    .line 1066
    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_4b0

    .line 1062
    :catch_271
    move-exception v0

    .line 1063
    .restart local v0  # "e":Ljava/lang/NumberFormatException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: --max argument not an int -- "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    aget-object v2, v13, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1064
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1065
    return-void

    .line 1067
    .end local v0  # "e":Ljava/lang/NumberFormatException;
    :cond_28e
    const-string v0, "--active"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2a0

    .line 1068
    const/4 v12, 0x1

    .line 1069
    const/4 v4, 0x1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    .end local v33  # "currentOnly":Z
    .restart local v4  # "currentOnly":Z
    goto/16 :goto_4b0

    .line 1070
    .end local v4  # "currentOnly":Z
    .restart local v33  # "currentOnly":Z
    :cond_2a0
    const-string v0, "--current"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2b1

    .line 1071
    const/4 v4, 0x1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    .end local v33  # "currentOnly":Z
    .restart local v4  # "currentOnly":Z
    goto/16 :goto_4b0

    .line 1072
    .end local v4  # "currentOnly":Z
    .restart local v33  # "currentOnly":Z
    :cond_2b1
    const-string v0, "--commit"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2dc

    .line 1073
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1074
    :try_start_2bc
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    const/4 v3, 0x1

    or-int/2addr v2, v3

    iput v2, v0, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 1075
    invoke-direct {v14, v3, v3}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    .line 1076
    const-string v0, "Process stats committed."

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1077
    const/16 v24, 0x1

    .line 1078
    monitor-exit v1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_4b0

    :catchall_2d9
    move-exception v0

    monitor-exit v1
    :try_end_2db
    .catchall {:try_start_2bc .. :try_end_2db} :catchall_2d9

    throw v0

    .line 1079
    :cond_2dc
    const-string v0, "--section"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_302

    .line 1080
    add-int/lit8 v7, v7, 0x1

    .line 1081
    array-length v0, v13

    if-lt v7, v0, :cond_2f2

    .line 1082
    const-string v0, "Error: argument required for --section"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1083
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1084
    return-void

    .line 1086
    :cond_2f2
    aget-object v0, v13, v7

    invoke-static {v0}, Lcom/android/server/am/ProcessStatsService;->parseSectionOptions(Ljava/lang/String;)I

    move-result v27

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_4b0

    .line 1087
    :cond_302
    const-string v0, "--clear"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_35d

    .line 1088
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1089
    :try_start_30d
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    .line 1090
    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v14, v3, v2}, Lcom/android/server/am/ProcessStatsService;->scheduleRequestPssAllProcs(ZZ)V

    .line 1091
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_31c
    .catchall {:try_start_30d .. :try_end_31c} :catchall_35a

    .line 1093
    :try_start_31c
    invoke-direct {v14, v2, v3, v3}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 1094
    .local v0, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v0, :cond_33a

    .line 1095
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v3

    .local v2, "fi":I
    :goto_327
    if-ltz v2, :cond_33a

    .line 1096
    new-instance v3, Ljava/io/File;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->delete()Z
    :try_end_337
    .catchall {:try_start_31c .. :try_end_337} :catchall_352

    .line 1095
    add-int/lit8 v2, v2, -0x1

    goto :goto_327

    .line 1100
    .end local v0  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2  # "fi":I
    :cond_33a
    :try_start_33a
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1101
    nop

    .line 1102
    const-string v0, "All process stats cleared."

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1103
    const/16 v24, 0x1

    .line 1104
    monitor-exit v1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_4b0

    .line 1100
    :catchall_352
    move-exception v0

    iget-object v2, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1101
    nop

    .end local v5  # "dumpDetails":Z
    .end local v6  # "dumpFullDetails":Z
    .end local v7  # "i":I
    .end local v8  # "arg":Ljava/lang/String;
    .end local v9  # "dumpAll":Z
    .end local v10  # "lastIndex":I
    .end local v11  # "maxNum":I
    .end local v12  # "activeOnly":Z
    .end local v16  # "now":J
    .end local v18  # "reqPackage":Ljava/lang/String;
    .end local v19  # "isCheckin":Z
    .end local v20  # "csvSepScreenStats":Z
    .end local v21  # "aggregateHours":I
    .end local v22  # "csvScreenStats":[I
    .end local v23  # "csvSepMemStats":Z
    .end local v24  # "quit":Z
    .end local v25  # "csvSepProcStats":Z
    .end local v26  # "csvProcStats":[I
    .end local v27  # "section":I
    .end local v30  # "csvMemStats":[I
    .end local v31  # "isCompact":Z
    .end local v32  # "isCsv":Z
    .end local v33  # "currentOnly":Z
    .end local p0  # "this":Lcom/android/server/am/ProcessStatsService;
    .end local p1  # "pw":Ljava/io/PrintWriter;
    .end local p2  # "args":[Ljava/lang/String;
    throw v0

    .line 1104
    .restart local v5  # "dumpDetails":Z
    .restart local v6  # "dumpFullDetails":Z
    .restart local v7  # "i":I
    .restart local v8  # "arg":Ljava/lang/String;
    .restart local v9  # "dumpAll":Z
    .restart local v10  # "lastIndex":I
    .restart local v11  # "maxNum":I
    .restart local v12  # "activeOnly":Z
    .restart local v16  # "now":J
    .restart local v18  # "reqPackage":Ljava/lang/String;
    .restart local v19  # "isCheckin":Z
    .restart local v20  # "csvSepScreenStats":Z
    .restart local v21  # "aggregateHours":I
    .restart local v22  # "csvScreenStats":[I
    .restart local v23  # "csvSepMemStats":Z
    .restart local v24  # "quit":Z
    .restart local v25  # "csvSepProcStats":Z
    .restart local v26  # "csvProcStats":[I
    .restart local v27  # "section":I
    .restart local v30  # "csvMemStats":[I
    .restart local v31  # "isCompact":Z
    .restart local v32  # "isCsv":Z
    .restart local v33  # "currentOnly":Z
    .restart local p0  # "this":Lcom/android/server/am/ProcessStatsService;
    .restart local p1  # "pw":Ljava/io/PrintWriter;
    .restart local p2  # "args":[Ljava/lang/String;
    :catchall_35a
    move-exception v0

    monitor-exit v1
    :try_end_35c
    .catchall {:try_start_33a .. :try_end_35c} :catchall_35a

    throw v0

    .line 1105
    :cond_35d
    const-string v0, "--write"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_380

    .line 1106
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1107
    :try_start_368
    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    .line 1108
    const-string v0, "Process stats written."

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1109
    const/16 v24, 0x1

    .line 1110
    monitor-exit v1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_4b0

    :catchall_37d
    move-exception v0

    monitor-exit v1
    :try_end_37f
    .catchall {:try_start_368 .. :try_end_37f} :catchall_37d

    throw v0

    .line 1111
    :cond_380
    const-string v0, "--read"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3ba

    .line 1112
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1113
    :try_start_38b
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V
    :try_end_390
    .catchall {:try_start_38b .. :try_end_390} :catchall_3b7

    .line 1115
    :try_start_390
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v2, v14, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-direct {v14, v0, v2}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 1116
    const-string v0, "Process stats read."

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_39c
    .catchall {:try_start_390 .. :try_end_39c} :catchall_3af

    .line 1117
    const/16 v24, 0x1

    .line 1119
    :try_start_39e
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1120
    nop

    .line 1121
    monitor-exit v1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_4b0

    .line 1119
    :catchall_3af
    move-exception v0

    iget-object v2, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1120
    nop

    .end local v5  # "dumpDetails":Z
    .end local v6  # "dumpFullDetails":Z
    .end local v7  # "i":I
    .end local v8  # "arg":Ljava/lang/String;
    .end local v9  # "dumpAll":Z
    .end local v10  # "lastIndex":I
    .end local v11  # "maxNum":I
    .end local v12  # "activeOnly":Z
    .end local v16  # "now":J
    .end local v18  # "reqPackage":Ljava/lang/String;
    .end local v19  # "isCheckin":Z
    .end local v20  # "csvSepScreenStats":Z
    .end local v21  # "aggregateHours":I
    .end local v22  # "csvScreenStats":[I
    .end local v23  # "csvSepMemStats":Z
    .end local v24  # "quit":Z
    .end local v25  # "csvSepProcStats":Z
    .end local v26  # "csvProcStats":[I
    .end local v27  # "section":I
    .end local v30  # "csvMemStats":[I
    .end local v31  # "isCompact":Z
    .end local v32  # "isCsv":Z
    .end local v33  # "currentOnly":Z
    .end local p0  # "this":Lcom/android/server/am/ProcessStatsService;
    .end local p1  # "pw":Ljava/io/PrintWriter;
    .end local p2  # "args":[Ljava/lang/String;
    throw v0

    .line 1121
    .restart local v5  # "dumpDetails":Z
    .restart local v6  # "dumpFullDetails":Z
    .restart local v7  # "i":I
    .restart local v8  # "arg":Ljava/lang/String;
    .restart local v9  # "dumpAll":Z
    .restart local v10  # "lastIndex":I
    .restart local v11  # "maxNum":I
    .restart local v12  # "activeOnly":Z
    .restart local v16  # "now":J
    .restart local v18  # "reqPackage":Ljava/lang/String;
    .restart local v19  # "isCheckin":Z
    .restart local v20  # "csvSepScreenStats":Z
    .restart local v21  # "aggregateHours":I
    .restart local v22  # "csvScreenStats":[I
    .restart local v23  # "csvSepMemStats":Z
    .restart local v24  # "quit":Z
    .restart local v25  # "csvSepProcStats":Z
    .restart local v26  # "csvProcStats":[I
    .restart local v27  # "section":I
    .restart local v30  # "csvMemStats":[I
    .restart local v31  # "isCompact":Z
    .restart local v32  # "isCsv":Z
    .restart local v33  # "currentOnly":Z
    .restart local p0  # "this":Lcom/android/server/am/ProcessStatsService;
    .restart local p1  # "pw":Ljava/io/PrintWriter;
    .restart local p2  # "args":[Ljava/lang/String;
    :catchall_3b7
    move-exception v0

    monitor-exit v1
    :try_end_3b9
    .catchall {:try_start_39e .. :try_end_3b9} :catchall_3b7

    throw v0

    .line 1122
    :cond_3ba
    const-string v0, "--start-testing"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3db

    .line 1123
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler;->setTestPssMode(Z)V

    .line 1124
    const-string v0, "Started high frequency sampling."

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1125
    const/16 v24, 0x1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_4b0

    .line 1126
    :cond_3db
    const-string v0, "--stop-testing"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3fc

    .line 1127
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/am/AppProfiler;->setTestPssMode(Z)V

    .line 1128
    const-string v0, "Stopped high frequency sampling."

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1129
    const/16 v24, 0x1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_4b0

    .line 1130
    :cond_3fc
    const-string v0, "--pretend-screen-on"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_41e

    .line 1131
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1132
    const/4 v2, 0x1

    :try_start_408
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 1133
    monitor-exit v1

    .line 1134
    const/16 v24, 0x1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_4b0

    .line 1133
    :catchall_41b
    move-exception v0

    monitor-exit v1
    :try_end_41d
    .catchall {:try_start_408 .. :try_end_41d} :catchall_41b

    throw v0

    .line 1135
    :cond_41e
    const-string v0, "--pretend-screen-off"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_440

    .line 1136
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1137
    const/4 v2, 0x0

    :try_start_42a
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 1138
    monitor-exit v1

    .line 1139
    const/16 v24, 0x1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto/16 :goto_4b0

    .line 1138
    :catchall_43d
    move-exception v0

    monitor-exit v1
    :try_end_43f
    .catchall {:try_start_42a .. :try_end_43f} :catchall_43d

    throw v0

    .line 1140
    :cond_440
    const-string v0, "--stop-pretend-screen"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_45d

    .line 1141
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1142
    const/4 v0, 0x0

    :try_start_44c
    iput-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    .line 1143
    monitor-exit v1

    .line 1144
    const/16 v24, 0x1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto :goto_4b0

    .line 1143
    :catchall_45a
    move-exception v0

    monitor-exit v1
    :try_end_45c
    .catchall {:try_start_44c .. :try_end_45c} :catchall_45a

    throw v0

    .line 1145
    :cond_45d
    const-string v0, "-h"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_469

    .line 1146
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1147
    return-void

    .line 1148
    :cond_469
    const-string v0, "-a"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_47c

    .line 1149
    const/4 v5, 0x1

    .line 1150
    const/4 v9, 0x1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    goto :goto_4b0

    .line 1151
    :cond_47c
    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_4a5

    const/4 v1, 0x0

    invoke-virtual {v8, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v1, 0x2d

    if-ne v0, v1, :cond_4a5

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unknown option: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1153
    invoke-static/range {p1 .. p1}, Lcom/android/server/am/ProcessStatsService;->dumpHelp(Ljava/io/PrintWriter;)V

    .line 1154
    return-void

    .line 1157
    :cond_4a5
    move-object/from16 v18, v8

    .line 1162
    const/4 v5, 0x1

    move-object/from16 v1, v30

    move/from16 v2, v31

    move/from16 v3, v32

    move/from16 v4, v33

    .line 962
    .end local v8  # "arg":Ljava/lang/String;
    .end local v30  # "csvMemStats":[I
    .end local v31  # "isCompact":Z
    .end local v32  # "isCsv":Z
    .end local v33  # "currentOnly":Z
    .restart local v1  # "csvMemStats":[I
    .local v2, "isCompact":Z
    .local v3, "isCsv":Z
    .restart local v4  # "currentOnly":Z
    :goto_4b0
    const/4 v8, 0x1

    add-int/2addr v7, v8

    goto/16 :goto_53

    :cond_4b4
    move-object/from16 v30, v1

    move/from16 v31, v2

    move/from16 v32, v3

    move/from16 v33, v4

    .end local v1  # "csvMemStats":[I
    .end local v2  # "isCompact":Z
    .end local v3  # "isCsv":Z
    .end local v4  # "currentOnly":Z
    .restart local v30  # "csvMemStats":[I
    .restart local v31  # "isCompact":Z
    .restart local v32  # "isCsv":Z
    .restart local v33  # "currentOnly":Z
    move-object/from16 v8, v18

    move-object/from16 v7, v26

    move/from16 v18, v5

    move/from16 v26, v23

    move/from16 v23, v12

    move-object/from16 v12, v22

    move/from16 v22, v11

    move/from16 v11, v21

    move/from16 v21, v9

    move v9, v10

    move-object/from16 v10, v30

    move/from16 v44, v20

    move/from16 v20, v6

    move/from16 v6, v27

    move/from16 v27, v25

    move/from16 v25, v44

    goto :goto_4fc

    .line 961
    .end local v7  # "i":I
    .end local v27  # "section":I
    .end local v30  # "csvMemStats":[I
    .end local v31  # "isCompact":Z
    .end local v32  # "isCsv":Z
    .end local v33  # "currentOnly":Z
    .local v0, "csvMemStats":[I
    .local v1, "isCompact":Z
    .local v2, "isCsv":Z
    .local v3, "currentOnly":Z
    .local v4, "dumpDetails":Z
    .local v5, "dumpFullDetails":Z
    .local v6, "dumpAll":Z
    .local v9, "lastIndex":I
    .local v10, "maxNum":I
    .local v11, "activeOnly":Z
    .local v12, "reqPackage":Ljava/lang/String;
    .local v18, "csvSepScreenStats":Z
    .local v20, "csvSepMemStats":Z
    .local v23, "csvSepProcStats":Z
    .local v25, "csvProcStats":[I
    .local v26, "section":I
    :cond_4dc
    move/from16 v31, v1

    move/from16 v32, v2

    move/from16 v33, v3

    move-object v8, v12

    move-object/from16 v12, v22

    move/from16 v27, v23

    move-object/from16 v7, v25

    move/from16 v22, v10

    move/from16 v23, v11

    move/from16 v25, v18

    move/from16 v11, v21

    move-object v10, v0

    move/from16 v18, v4

    move/from16 v21, v6

    move/from16 v6, v26

    move/from16 v26, v20

    move/from16 v20, v5

    .line 1167
    .end local v0  # "csvMemStats":[I
    .end local v1  # "isCompact":Z
    .end local v2  # "isCsv":Z
    .end local v3  # "currentOnly":Z
    .end local v4  # "dumpDetails":Z
    .end local v5  # "dumpFullDetails":Z
    .local v6, "section":I
    .local v7, "csvProcStats":[I
    .local v8, "reqPackage":Ljava/lang/String;
    .local v10, "csvMemStats":[I
    .local v11, "aggregateHours":I
    .local v12, "csvScreenStats":[I
    .local v18, "dumpDetails":Z
    .local v20, "dumpFullDetails":Z
    .local v21, "dumpAll":Z
    .local v22, "maxNum":I
    .local v23, "activeOnly":Z
    .local v25, "csvSepScreenStats":Z
    .local v26, "csvSepMemStats":Z
    .local v27, "csvSepProcStats":Z
    .restart local v31  # "isCompact":Z
    .restart local v32  # "isCsv":Z
    .restart local v33  # "currentOnly":Z
    :goto_4fc
    if-eqz v24, :cond_4ff

    .line 1168
    return-void

    .line 1171
    :cond_4ff
    if-eqz v32, :cond_574

    .line 1172
    const-string v0, "Processes running summed over"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1173
    if-nez v25, :cond_519

    .line 1174
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_509
    array-length v1, v12

    if-ge v0, v1, :cond_519

    .line 1175
    const-string v1, " "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1176
    aget v1, v12, v0

    invoke-static {v15, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printScreenLabelCsv(Ljava/io/PrintWriter;I)V

    .line 1174
    add-int/lit8 v0, v0, 0x1

    goto :goto_509

    .line 1179
    .end local v0  # "i":I
    :cond_519
    if-nez v26, :cond_52c

    .line 1180
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_51c
    array-length v1, v10

    if-ge v0, v1, :cond_52c

    .line 1181
    const-string v1, " "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1182
    aget v1, v10, v0

    invoke-static {v15, v1}, Lcom/android/internal/app/procstats/DumpUtils;->printMemLabelCsv(Ljava/io/PrintWriter;I)V

    .line 1180
    add-int/lit8 v0, v0, 0x1

    goto :goto_51c

    .line 1185
    .end local v0  # "i":I
    :cond_52c
    if-nez v27, :cond_543

    .line 1186
    const/4 v0, 0x0

    .restart local v0  # "i":I
    :goto_52f
    array-length v1, v7

    if-ge v0, v1, :cond_543

    .line 1187
    const-string v1, " "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1188
    sget-object v1, Lcom/android/internal/app/procstats/DumpUtils;->STATE_NAMES_CSV:[Ljava/lang/String;

    aget v2, v7, v0

    aget-object v1, v1, v2

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1186
    add-int/lit8 v0, v0, 0x1

    goto :goto_52f

    .line 1191
    .end local v0  # "i":I
    :cond_543
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1192
    iget-object v5, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 1193
    const/4 v3, 0x0

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move/from16 v4, v25

    move-object/from16 v30, v5

    move-object v5, v12

    move/from16 v34, v6

    .end local v6  # "section":I
    .local v34, "section":I
    move/from16 v6, v26

    move-object/from16 v35, v7

    .end local v7  # "csvProcStats":[I
    .local v35, "csvProcStats":[I
    move-object v7, v10

    move-object/from16 v36, v8

    .end local v8  # "reqPackage":Ljava/lang/String;
    .local v36, "reqPackage":Ljava/lang/String;
    move/from16 v8, v27

    move/from16 v37, v9

    .end local v9  # "lastIndex":I
    .local v37, "lastIndex":I
    move-object/from16 v9, v35

    move-object/from16 v39, v10

    move/from16 v38, v11

    .end local v10  # "csvMemStats":[I
    .end local v11  # "aggregateHours":I
    .local v38, "aggregateHours":I
    .local v39, "csvMemStats":[I
    move-wide/from16 v10, v16

    move-object/from16 v40, v12

    .end local v12  # "csvScreenStats":[I
    .local v40, "csvScreenStats":[I
    move-object/from16 v12, v36

    :try_start_56c
    invoke-direct/range {v1 .. v12}, Lcom/android/server/am/ProcessStatsService;->dumpFilteredProcessesCsvLocked(Ljava/io/PrintWriter;Ljava/lang/String;Z[IZ[IZ[IJLjava/lang/String;)Z

    .line 1213
    monitor-exit v30

    .line 1214
    return-void

    .line 1213
    :catchall_571
    move-exception v0

    monitor-exit v30
    :try_end_573
    .catchall {:try_start_56c .. :try_end_573} :catchall_571

    throw v0

    .line 1215
    .end local v34  # "section":I
    .end local v35  # "csvProcStats":[I
    .end local v36  # "reqPackage":Ljava/lang/String;
    .end local v37  # "lastIndex":I
    .end local v38  # "aggregateHours":I
    .end local v39  # "csvMemStats":[I
    .end local v40  # "csvScreenStats":[I
    .restart local v6  # "section":I
    .restart local v7  # "csvProcStats":[I
    .restart local v8  # "reqPackage":Ljava/lang/String;
    .restart local v9  # "lastIndex":I
    .restart local v10  # "csvMemStats":[I
    .restart local v11  # "aggregateHours":I
    .restart local v12  # "csvScreenStats":[I
    :cond_574
    move/from16 v34, v6

    move-object/from16 v35, v7

    move-object/from16 v36, v8

    move/from16 v37, v9

    move-object/from16 v39, v10

    move/from16 v38, v11

    move-object/from16 v40, v12

    .end local v6  # "section":I
    .end local v7  # "csvProcStats":[I
    .end local v8  # "reqPackage":Ljava/lang/String;
    .end local v9  # "lastIndex":I
    .end local v10  # "csvMemStats":[I
    .end local v11  # "aggregateHours":I
    .end local v12  # "csvScreenStats":[I
    .restart local v34  # "section":I
    .restart local v35  # "csvProcStats":[I
    .restart local v36  # "reqPackage":Ljava/lang/String;
    .restart local v37  # "lastIndex":I
    .restart local v38  # "aggregateHours":I
    .restart local v39  # "csvMemStats":[I
    .restart local v40  # "csvScreenStats":[I
    move/from16 v12, v38

    .end local v38  # "aggregateHours":I
    .local v12, "aggregateHours":I
    if-eqz v12, :cond_5ae

    .line 1216
    const-string v0, "AGGREGATED OVER LAST "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v12}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, " HOURS:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1217
    int-to-long v3, v12

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v5, v16

    move-object/from16 v7, v36

    move/from16 v8, v31

    move/from16 v9, v18

    move/from16 v10, v20

    move/from16 v11, v21

    move/from16 v30, v12

    .end local v12  # "aggregateHours":I
    .local v30, "aggregateHours":I
    move/from16 v12, v23

    move/from16 v13, v34

    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    .line 1219
    return-void

    .line 1220
    .end local v30  # "aggregateHours":I
    .restart local v12  # "aggregateHours":I
    :cond_5ae
    move/from16 v30, v12

    .end local v12  # "aggregateHours":I
    .restart local v30  # "aggregateHours":I
    move/from16 v13, v37

    .end local v37  # "lastIndex":I
    .local v13, "lastIndex":I
    if-lez v13, :cond_6be

    .line 1221
    const-string v0, "LAST STATS AT INDEX "

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v15, v13}, Ljava/io/PrintWriter;->print(I)V

    const-string v0, ":"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1227
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1229
    const/4 v1, 0x0

    const/4 v8, 0x1

    :try_start_5c8
    invoke-direct {v14, v1, v1, v8}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v0

    .line 1230
    .local v0, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1
    :try_end_5d0
    .catchall {:try_start_5c8 .. :try_end_5d0} :catchall_6b3

    if-lt v13, v1, :cond_5f0

    .line 1231
    :try_start_5d2
    const-string v1, "Only have "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(I)V

    const-string v1, " data sets"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_5e3
    .catchall {:try_start_5d2 .. :try_end_5e3} :catchall_5e9

    .line 1238
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1232
    return-void

    .line 1238
    .end local v0  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :catchall_5e9
    move-exception v0

    move/from16 v10, v34

    move-object/from16 v9, v36

    goto/16 :goto_6b8

    .line 1234
    .restart local v0  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5f0
    :try_start_5f0
    new-instance v1, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    move-object v11, v1

    .line 1235
    .local v11, "file":Landroid/util/AtomicFile;
    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    move-object v12, v1

    .line 1236
    .local v12, "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-direct {v14, v12, v11}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z
    :try_end_60b
    .catchall {:try_start_5f0 .. :try_end_60b} :catchall_6b3

    .line 1238
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1239
    nop

    .line 1242
    iget-object v1, v12, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v1, :cond_637

    .line 1243
    if-nez v19, :cond_619

    if-eqz v31, :cond_61e

    :cond_619
    const-string v1, "err,"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1244
    :cond_61e
    const-string v1, "Failure reading "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1245
    const-string v1, "; "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v1, v12, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1246
    return-void

    .line 1248
    :cond_637
    invoke-virtual {v11}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 1249
    .local v10, "fileStr":Ljava/lang/String;
    const-string v1, ".ci"

    invoke-virtual {v10, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v28

    .line 1250
    .local v28, "checkedIn":Z
    if-nez v19, :cond_6a9

    if-eqz v31, :cond_64d

    move-object/from16 v29, v10

    goto/16 :goto_6ab

    .line 1254
    :cond_64d
    const-string v1, "COMMITTED STATS FROM "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1255
    iget-object v1, v12, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1256
    if-eqz v28, :cond_65e

    const-string v1, " (checked in)"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1257
    :cond_65e
    const-string v1, ":"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1258
    if-nez v18, :cond_67b

    if-eqz v20, :cond_668

    goto :goto_67b

    .line 1265
    :cond_668
    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, v36

    move-wide/from16 v4, v16

    move/from16 v6, v23

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V

    move-object/from16 v29, v10

    move/from16 v10, v34

    move-object/from16 v9, v36

    goto :goto_6b2

    .line 1259
    :cond_67b
    :goto_67b
    xor-int/lit8 v6, v20, 0x1

    move-object v1, v12

    move-object/from16 v2, p1

    move-object/from16 v3, v36

    move-wide/from16 v4, v16

    move/from16 v7, v18

    move/from16 v8, v21

    move/from16 v9, v23

    move-object/from16 v29, v10

    .end local v10  # "fileStr":Ljava/lang/String;
    .local v29, "fileStr":Ljava/lang/String;
    move/from16 v10, v34

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    .line 1261
    if-eqz v21, :cond_6a4

    .line 1262
    const-string v1, "  mFile="

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ProcessStatsService;->getCurrentFile()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    move/from16 v10, v34

    move-object/from16 v9, v36

    goto :goto_6b2

    .line 1261
    :cond_6a4
    move/from16 v10, v34

    move-object/from16 v9, v36

    goto :goto_6b2

    .line 1250
    .end local v29  # "fileStr":Ljava/lang/String;
    .restart local v10  # "fileStr":Ljava/lang/String;
    :cond_6a9
    move-object/from16 v29, v10

    .line 1252
    .end local v10  # "fileStr":Ljava/lang/String;
    .restart local v29  # "fileStr":Ljava/lang/String;
    :goto_6ab
    move/from16 v10, v34

    move-object/from16 v9, v36

    .end local v34  # "section":I
    .end local v36  # "reqPackage":Ljava/lang/String;
    .local v9, "reqPackage":Ljava/lang/String;
    .local v10, "section":I
    invoke-virtual {v12, v15, v9, v10}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 1268
    :goto_6b2
    return-void

    .line 1238
    .end local v0  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v9  # "reqPackage":Ljava/lang/String;
    .end local v10  # "section":I
    .end local v11  # "file":Landroid/util/AtomicFile;
    .end local v12  # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v28  # "checkedIn":Z
    .end local v29  # "fileStr":Ljava/lang/String;
    .restart local v34  # "section":I
    .restart local v36  # "reqPackage":Ljava/lang/String;
    :catchall_6b3
    move-exception v0

    move/from16 v10, v34

    move-object/from16 v9, v36

    .end local v34  # "section":I
    .end local v36  # "reqPackage":Ljava/lang/String;
    .restart local v9  # "reqPackage":Ljava/lang/String;
    .restart local v10  # "section":I
    :goto_6b8
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1239
    throw v0

    .line 1271
    .end local v9  # "reqPackage":Ljava/lang/String;
    .end local v10  # "section":I
    .restart local v34  # "section":I
    .restart local v36  # "reqPackage":Ljava/lang/String;
    :cond_6be
    move/from16 v10, v34

    move-object/from16 v9, v36

    const/4 v8, 0x1

    .end local v34  # "section":I
    .end local v36  # "reqPackage":Ljava/lang/String;
    .restart local v9  # "reqPackage":Ljava/lang/String;
    .restart local v10  # "section":I
    const/4 v1, 0x0

    .line 1272
    .local v1, "sepNeeded":Z
    if-nez v21, :cond_6cf

    if-eqz v19, :cond_6c9

    goto :goto_6cf

    :cond_6c9
    move/from16 v36, v8

    const/16 v34, 0x0

    goto/16 :goto_891

    :cond_6cf
    :goto_6cf
    if-nez v33, :cond_88d

    .line 1273
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 1275
    if-nez v19, :cond_6da

    move v0, v8

    goto :goto_6db

    :cond_6da
    const/4 v0, 0x0

    :goto_6db
    const/4 v2, 0x0

    :try_start_6dc
    invoke-direct {v14, v2, v2, v0}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v0

    move-object v11, v0

    .line 1276
    .local v11, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v11, :cond_87b

    .line 1277
    if-eqz v19, :cond_6e7

    const/4 v3, 0x0

    goto :goto_6ed

    :cond_6e7
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0

    sub-int v3, v0, v22

    :goto_6ed
    move v0, v3

    .line 1278
    .local v0, "start":I
    if-gez v0, :cond_6f3

    .line 1279
    const/4 v0, 0x0

    move v12, v0

    goto :goto_6f4

    .line 1278
    :cond_6f3
    move v12, v0

    .line 1281
    .end local v0  # "start":I
    .local v12, "start":I
    :goto_6f4
    move v0, v12

    move v7, v0

    .local v7, "i":I
    :goto_6f6
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v0
    :try_end_6fa
    .catchall {:try_start_6dc .. :try_end_6fa} :catchall_886

    if-ge v7, v0, :cond_875

    .line 1284
    :try_start_6fc
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v2, Ljava/io/File;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v2}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 1285
    .local v0, "file":Landroid/util/AtomicFile;
    new-instance v2, Lcom/android/internal/app/procstats/ProcessStats;
    :try_end_70e
    .catchall {:try_start_6fc .. :try_end_70e} :catchall_855

    const/4 v6, 0x0

    :try_start_70f
    invoke-direct {v2, v6}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    move-object v4, v2

    .line 1286
    .local v4, "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-direct {v14, v4, v0}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 1287
    iget-object v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;
    :try_end_718
    .catchall {:try_start_70f .. :try_end_718} :catchall_84d

    if-eqz v2, :cond_759

    .line 1288
    if-nez v19, :cond_71e

    if-eqz v31, :cond_723

    :cond_71e
    :try_start_71e
    const-string v2, "err,"

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1289
    :cond_723
    const-string v2, "Failure reading "

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1290
    const-string v2, "; "

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1292
    new-instance v2, Ljava/io/File;

    invoke-virtual {v11, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_749
    .catchall {:try_start_71e .. :try_end_749} :catchall_750

    .line 1293
    move/from16 v34, v6

    move v2, v7

    move/from16 v36, v8

    goto/16 :goto_86f

    .line 1325
    .end local v0  # "file":Landroid/util/AtomicFile;
    .end local v4  # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    :catchall_750
    move-exception v0

    move/from16 v34, v6

    move/from16 v43, v7

    move/from16 v36, v8

    goto/16 :goto_85c

    .line 1295
    .restart local v0  # "file":Landroid/util/AtomicFile;
    .restart local v4  # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    :cond_759
    :try_start_759
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    move-object v5, v2

    .line 1296
    .local v5, "fileStr":Ljava/lang/String;
    const-string v2, ".ci"

    invoke-virtual {v5, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2
    :try_end_768
    .catchall {:try_start_759 .. :try_end_768} :catchall_84d

    move/from16 v28, v2

    .line 1297
    .restart local v28  # "checkedIn":Z
    if-nez v19, :cond_80b

    if-eqz v31, :cond_77e

    move-object/from16 v38, v4

    move-object/from16 v41, v5

    move/from16 v34, v6

    move/from16 v43, v7

    move/from16 v36, v8

    move-object/from16 v37, v9

    move/from16 v42, v10

    goto/16 :goto_819

    .line 1301
    :cond_77e
    if-eqz v1, :cond_786

    .line 1302
    :try_start_780
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_783
    .catchall {:try_start_780 .. :try_end_783} :catchall_750

    move/from16 v29, v1

    goto :goto_789

    .line 1304
    :cond_786
    const/4 v1, 0x1

    move/from16 v29, v1

    .line 1306
    .end local v1  # "sepNeeded":Z
    .local v29, "sepNeeded":Z
    :goto_789
    :try_start_789
    const-string v1, "COMMITTED STATS FROM "

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1307
    iget-object v1, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_793
    .catchall {:try_start_789 .. :try_end_793} :catchall_801

    .line 1308
    if-eqz v28, :cond_7a6

    :try_start_795
    const-string v1, " (checked in)"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V
    :try_end_79a
    .catchall {:try_start_795 .. :try_end_79a} :catchall_79b

    goto :goto_7a6

    .line 1325
    .end local v0  # "file":Landroid/util/AtomicFile;
    .end local v4  # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v5  # "fileStr":Ljava/lang/String;
    .end local v28  # "checkedIn":Z
    :catchall_79b
    move-exception v0

    move/from16 v34, v6

    move/from16 v43, v7

    move/from16 v36, v8

    move/from16 v1, v29

    goto/16 :goto_85c

    .line 1309
    .restart local v0  # "file":Landroid/util/AtomicFile;
    .restart local v4  # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v5  # "fileStr":Ljava/lang/String;
    .restart local v28  # "checkedIn":Z
    :cond_7a6
    :goto_7a6
    :try_start_7a6
    const-string v1, ":"

    invoke-virtual {v15, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_7ab
    .catchall {:try_start_7a6 .. :try_end_7ab} :catchall_801

    .line 1313
    if-eqz v20, :cond_7d5

    .line 1314
    const/16 v34, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    move-object v1, v4

    move-object/from16 v2, p1

    move-object v3, v9

    move-object/from16 v38, v4

    move-object/from16 v41, v5

    .end local v4  # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v5  # "fileStr":Ljava/lang/String;
    .local v38, "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .local v41, "fileStr":Ljava/lang/String;
    move-wide/from16 v4, v16

    move/from16 v42, v6

    move/from16 v6, v34

    move/from16 v43, v7

    move/from16 v34, v42

    .end local v7  # "i":I
    .local v43, "i":I
    move/from16 v7, v36

    move/from16 v36, v8

    move/from16 v8, v37

    move-object/from16 v37, v9

    .end local v9  # "reqPackage":Ljava/lang/String;
    .local v37, "reqPackage":Ljava/lang/String;
    move/from16 v9, v23

    move/from16 v42, v10

    .end local v10  # "section":I
    .local v42, "section":I
    :try_start_7d1
    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V

    goto :goto_7f0

    .line 1317
    .end local v37  # "reqPackage":Ljava/lang/String;
    .end local v38  # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v41  # "fileStr":Ljava/lang/String;
    .end local v42  # "section":I
    .end local v43  # "i":I
    .restart local v4  # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v5  # "fileStr":Ljava/lang/String;
    .restart local v7  # "i":I
    .restart local v9  # "reqPackage":Ljava/lang/String;
    .restart local v10  # "section":I
    :cond_7d5
    move-object/from16 v38, v4

    move-object/from16 v41, v5

    move/from16 v34, v6

    move/from16 v43, v7

    move/from16 v36, v8

    move-object/from16 v37, v9

    move/from16 v42, v10

    .end local v4  # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v5  # "fileStr":Ljava/lang/String;
    .end local v7  # "i":I
    .end local v9  # "reqPackage":Ljava/lang/String;
    .end local v10  # "section":I
    .restart local v37  # "reqPackage":Ljava/lang/String;
    .restart local v38  # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v41  # "fileStr":Ljava/lang/String;
    .restart local v42  # "section":I
    .restart local v43  # "i":I
    move-object/from16 v1, v38

    move-object/from16 v2, p1

    move-object/from16 v3, v37

    move-wide/from16 v4, v16

    move/from16 v6, v23

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_7f0
    .catchall {:try_start_7d1 .. :try_end_7f0} :catchall_7f9

    .line 1320
    :goto_7f0
    move/from16 v1, v29

    move-object/from16 v9, v37

    move-object/from16 v2, v38

    move/from16 v10, v42

    goto :goto_822

    .line 1325
    .end local v0  # "file":Landroid/util/AtomicFile;
    .end local v28  # "checkedIn":Z
    .end local v38  # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v41  # "fileStr":Ljava/lang/String;
    :catchall_7f9
    move-exception v0

    move/from16 v1, v29

    move-object/from16 v9, v37

    move/from16 v10, v42

    goto :goto_85c

    .end local v37  # "reqPackage":Ljava/lang/String;
    .end local v42  # "section":I
    .end local v43  # "i":I
    .restart local v7  # "i":I
    .restart local v9  # "reqPackage":Ljava/lang/String;
    .restart local v10  # "section":I
    :catchall_801
    move-exception v0

    move/from16 v34, v6

    move/from16 v43, v7

    move/from16 v36, v8

    move/from16 v1, v29

    .end local v7  # "i":I
    .end local v9  # "reqPackage":Ljava/lang/String;
    .end local v10  # "section":I
    .restart local v37  # "reqPackage":Ljava/lang/String;
    .restart local v42  # "section":I
    .restart local v43  # "i":I
    goto :goto_85c

    .line 1297
    .end local v29  # "sepNeeded":Z
    .end local v37  # "reqPackage":Ljava/lang/String;
    .end local v42  # "section":I
    .end local v43  # "i":I
    .restart local v0  # "file":Landroid/util/AtomicFile;
    .restart local v1  # "sepNeeded":Z
    .restart local v4  # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v5  # "fileStr":Ljava/lang/String;
    .restart local v7  # "i":I
    .restart local v9  # "reqPackage":Ljava/lang/String;
    .restart local v10  # "section":I
    .restart local v28  # "checkedIn":Z
    :cond_80b
    move-object/from16 v38, v4

    move-object/from16 v41, v5

    move/from16 v34, v6

    move/from16 v43, v7

    move/from16 v36, v8

    move-object/from16 v37, v9

    move/from16 v42, v10

    .line 1299
    .end local v4  # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v5  # "fileStr":Ljava/lang/String;
    .end local v7  # "i":I
    .end local v9  # "reqPackage":Ljava/lang/String;
    .end local v10  # "section":I
    .restart local v37  # "reqPackage":Ljava/lang/String;
    .restart local v38  # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v41  # "fileStr":Ljava/lang/String;
    .restart local v42  # "section":I
    .restart local v43  # "i":I
    :goto_819
    move-object/from16 v9, v37

    move-object/from16 v2, v38

    move/from16 v10, v42

    .end local v37  # "reqPackage":Ljava/lang/String;
    .end local v38  # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v42  # "section":I
    .local v2, "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .restart local v9  # "reqPackage":Ljava/lang/String;
    .restart local v10  # "section":I
    :try_start_81f
    invoke-virtual {v2, v15, v9, v10}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    .line 1320
    :goto_822
    if-eqz v19, :cond_846

    .line 1322
    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v3

    new-instance v4, Ljava/io/File;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v6, v41

    .end local v41  # "fileStr":Ljava/lang/String;
    .local v6, "fileStr":Ljava/lang/String;
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, ".ci"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_845
    .catchall {:try_start_81f .. :try_end_845} :catchall_84b

    goto :goto_848

    .line 1320
    .end local v6  # "fileStr":Ljava/lang/String;
    .restart local v41  # "fileStr":Ljava/lang/String;
    :cond_846
    move-object/from16 v6, v41

    .line 1328
    .end local v0  # "file":Landroid/util/AtomicFile;
    .end local v2  # "processStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v28  # "checkedIn":Z
    .end local v41  # "fileStr":Ljava/lang/String;
    :goto_848
    move/from16 v2, v43

    goto :goto_86f

    .line 1325
    :catchall_84b
    move-exception v0

    goto :goto_85c

    .end local v43  # "i":I
    .restart local v7  # "i":I
    :catchall_84d
    move-exception v0

    move/from16 v34, v6

    move/from16 v43, v7

    move/from16 v36, v8

    goto :goto_85c

    :catchall_855
    move-exception v0

    move/from16 v43, v7

    move/from16 v36, v8

    const/16 v34, 0x0

    .line 1326
    .end local v7  # "i":I
    .local v0, "e":Ljava/lang/Throwable;
    .restart local v43  # "i":I
    :goto_85c
    :try_start_85c
    const-string v2, "**** FAILURE DUMPING STATE: "

    invoke-virtual {v15, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move/from16 v2, v43

    .end local v43  # "i":I
    .local v2, "i":I
    invoke-virtual {v11, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v15, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1327
    invoke-virtual {v0, v15}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V
    :try_end_86f
    .catchall {:try_start_85c .. :try_end_86f} :catchall_886

    .line 1281
    .end local v0  # "e":Ljava/lang/Throwable;
    :goto_86f
    add-int/lit8 v7, v2, 0x1

    move/from16 v8, v36

    .end local v2  # "i":I
    .restart local v7  # "i":I
    goto/16 :goto_6f6

    :cond_875
    move v2, v7

    move/from16 v36, v8

    const/16 v34, 0x0

    .end local v7  # "i":I
    .restart local v2  # "i":I
    goto :goto_87f

    .line 1276
    .end local v2  # "i":I
    .end local v12  # "start":I
    :cond_87b
    move/from16 v36, v8

    const/16 v34, 0x0

    .line 1332
    .end local v11  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_87f
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1333
    move v11, v1

    goto :goto_892

    .line 1332
    :catchall_886
    move-exception v0

    iget-object v2, v14, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 1333
    throw v0

    .line 1272
    :cond_88d
    move/from16 v36, v8

    const/16 v34, 0x0

    .line 1335
    :goto_891
    move v11, v1

    .end local v1  # "sepNeeded":Z
    .local v11, "sepNeeded":Z
    :goto_892
    if-nez v19, :cond_950

    .line 1336
    iget-object v12, v14, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v12

    .line 1337
    if-eqz v31, :cond_8af

    .line 1338
    :try_start_899
    iget-object v0, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, v15, v9, v10}, Lcom/android/internal/app/procstats/ProcessStats;->dumpCheckinLocked(Ljava/io/PrintWriter;Ljava/lang/String;I)V

    move-object/from16 v28, v9

    move/from16 v29, v10

    move/from16 v34, v11

    goto/16 :goto_900

    .line 1355
    :catchall_8a6
    move-exception v0

    move-object/from16 v28, v9

    move/from16 v29, v10

    move/from16 v36, v13

    goto/16 :goto_94c

    .line 1340
    :cond_8af
    if-eqz v11, :cond_8b4

    .line 1341
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V
    :try_end_8b4
    .catchall {:try_start_899 .. :try_end_8b4} :catchall_8a6

    .line 1343
    :cond_8b4
    :try_start_8b4
    const-string v0, "CURRENT STATS:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V
    :try_end_8b9
    .catchall {:try_start_8b4 .. :try_end_8b9} :catchall_945

    .line 1344
    if-nez v18, :cond_8cf

    if-eqz v20, :cond_8be

    goto :goto_8cf

    .line 1351
    :cond_8be
    :try_start_8be
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object/from16 v2, p1

    move-object v3, v9

    move-wide/from16 v4, v16

    move/from16 v6, v23

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/app/procstats/ProcessStats;->dumpSummaryLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZ)V
    :try_end_8ca
    .catchall {:try_start_8be .. :try_end_8ca} :catchall_8a6

    move-object/from16 v28, v9

    move/from16 v29, v10

    goto :goto_8fd

    .line 1345
    :cond_8cf
    :goto_8cf
    :try_start_8cf
    iget-object v1, v14, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;
    :try_end_8d1
    .catchall {:try_start_8cf .. :try_end_8d1} :catchall_945

    if-nez v20, :cond_8d6

    move/from16 v6, v36

    goto :goto_8d8

    :cond_8d6
    move/from16 v6, v34

    :goto_8d8
    move-object/from16 v2, p1

    move-object v3, v9

    move-wide/from16 v4, v16

    move/from16 v7, v18

    move/from16 v8, v21

    move-object/from16 v28, v9

    .end local v9  # "reqPackage":Ljava/lang/String;
    .local v28, "reqPackage":Ljava/lang/String;
    move/from16 v9, v23

    move/from16 v29, v10

    .end local v10  # "section":I
    .local v29, "section":I
    :try_start_8e7
    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/app/procstats/ProcessStats;->dumpLocked(Ljava/io/PrintWriter;Ljava/lang/String;JZZZZI)V
    :try_end_8ea
    .catchall {:try_start_8e7 .. :try_end_8ea} :catchall_941

    .line 1347
    if-eqz v21, :cond_8fd

    .line 1348
    :try_start_8ec
    const-string v0, "  mFile="

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-direct/range {p0 .. p0}, Lcom/android/server/am/ProcessStatsService;->getCurrentFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V
    :try_end_8f8
    .catchall {:try_start_8ec .. :try_end_8f8} :catchall_8f9

    goto :goto_8fd

    .line 1355
    :catchall_8f9
    move-exception v0

    move/from16 v36, v13

    goto :goto_94c

    .line 1353
    :cond_8fd
    :goto_8fd
    const/4 v11, 0x1

    move/from16 v34, v11

    .line 1355
    .end local v11  # "sepNeeded":Z
    .local v34, "sepNeeded":Z
    :goto_900
    :try_start_900
    monitor-exit v12
    :try_end_901
    .catchall {:try_start_900 .. :try_end_901} :catchall_93b

    .line 1356
    if-nez v33, :cond_936

    .line 1357
    if-eqz v34, :cond_908

    .line 1358
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1360
    :cond_908
    const-string v0, "AGGREGATED OVER LAST 24 HOURS:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1361
    const-wide/16 v3, 0x18

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-wide/from16 v5, v16

    move-object/from16 v7, v28

    move/from16 v8, v31

    move/from16 v9, v18

    move/from16 v10, v20

    move/from16 v11, v21

    move/from16 v12, v23

    move/from16 v36, v13

    .end local v13  # "lastIndex":I
    .local v36, "lastIndex":I
    move/from16 v13, v29

    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    .line 1363
    invoke-virtual/range {p1 .. p1}, Ljava/io/PrintWriter;->println()V

    .line 1364
    const-string v0, "AGGREGATED OVER LAST 3 HOURS:"

    invoke-virtual {v15, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1365
    const-wide/16 v3, 0x3

    invoke-direct/range {v1 .. v13}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Ljava/io/PrintWriter;JJLjava/lang/String;ZZZZZI)V

    goto :goto_938

    .line 1356
    .end local v36  # "lastIndex":I
    .restart local v13  # "lastIndex":I
    :cond_936
    move/from16 v36, v13

    .line 1369
    .end local v13  # "lastIndex":I
    .restart local v36  # "lastIndex":I
    :goto_938
    move/from16 v11, v34

    goto :goto_956

    .line 1355
    .end local v36  # "lastIndex":I
    .restart local v13  # "lastIndex":I
    :catchall_93b
    move-exception v0

    move/from16 v36, v13

    move/from16 v11, v34

    .end local v13  # "lastIndex":I
    .restart local v36  # "lastIndex":I
    goto :goto_94c

    .end local v34  # "sepNeeded":Z
    .end local v36  # "lastIndex":I
    .restart local v11  # "sepNeeded":Z
    .restart local v13  # "lastIndex":I
    :catchall_941
    move-exception v0

    move/from16 v36, v13

    .end local v13  # "lastIndex":I
    .restart local v36  # "lastIndex":I
    goto :goto_94c

    .end local v28  # "reqPackage":Ljava/lang/String;
    .end local v29  # "section":I
    .end local v36  # "lastIndex":I
    .restart local v9  # "reqPackage":Ljava/lang/String;
    .restart local v10  # "section":I
    .restart local v13  # "lastIndex":I
    :catchall_945
    move-exception v0

    move-object/from16 v28, v9

    move/from16 v29, v10

    move/from16 v36, v13

    .end local v9  # "reqPackage":Ljava/lang/String;
    .end local v10  # "section":I
    .end local v13  # "lastIndex":I
    .restart local v28  # "reqPackage":Ljava/lang/String;
    .restart local v29  # "section":I
    .restart local v36  # "lastIndex":I
    :goto_94c
    :try_start_94c
    monitor-exit v12
    :try_end_94d
    .catchall {:try_start_94c .. :try_end_94d} :catchall_94e

    throw v0

    :catchall_94e
    move-exception v0

    goto :goto_94c

    .line 1335
    .end local v28  # "reqPackage":Ljava/lang/String;
    .end local v29  # "section":I
    .end local v36  # "lastIndex":I
    .restart local v9  # "reqPackage":Ljava/lang/String;
    .restart local v10  # "section":I
    .restart local v13  # "lastIndex":I
    :cond_950
    move-object/from16 v28, v9

    move/from16 v29, v10

    move/from16 v36, v13

    .line 1369
    .end local v9  # "reqPackage":Ljava/lang/String;
    .end local v10  # "section":I
    .end local v13  # "lastIndex":I
    .restart local v28  # "reqPackage":Ljava/lang/String;
    .restart local v29  # "section":I
    .restart local v36  # "lastIndex":I
    :goto_956
    return-void

    nop

    :array_958
    .array-data 4
        0x0
        0x4
    .end array-data
.end method

.method private dumpProto(Ljava/io/FileDescriptor;)V
    .registers 12
    .param p1, "fd"  # Ljava/io/FileDescriptor;

    .line 1389
    new-instance v0, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v0, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    .line 1393
    .local v0, "proto":Landroid/util/proto/ProtoOutputStream;
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1394
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    move-wide v8, v2

    .line 1395
    .local v8, "now":J
    const-wide v2, 0x10b00000001L

    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->start(J)J

    move-result-wide v2

    .line 1396
    .local v2, "token":J
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/16 v5, 0x1f

    invoke-virtual {v4, v0, v8, v9, v5}, Lcom/android/internal/app/procstats/ProcessStats;->dumpDebug(Landroid/util/proto/ProtoOutputStream;JI)V

    .line 1397
    invoke-virtual {v0, v2, v3}, Landroid/util/proto/ProtoOutputStream;->end(J)V

    .line 1398
    .end local v2  # "token":J
    monitor-exit v1
    :try_end_21
    .catchall {:try_start_8 .. :try_end_21} :catchall_3b

    .line 1401
    const-wide v3, 0x10b00000002L

    const/4 v5, 0x3

    move-object v1, p0

    move-object v2, v0

    move-wide v6, v8

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 1404
    const-wide v3, 0x10b00000003L

    const/16 v5, 0x18

    invoke-direct/range {v1 .. v7}, Lcom/android/server/am/ProcessStatsService;->dumpAggregatedStats(Landroid/util/proto/ProtoOutputStream;JIJ)V

    .line 1406
    invoke-virtual {v0}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1407
    return-void

    .line 1398
    .end local v8  # "now":J
    :catchall_3b
    move-exception v2

    :try_start_3c
    monitor-exit v1
    :try_end_3d
    .catchall {:try_start_3c .. :try_end_3d} :catchall_3b

    throw v2
.end method

.method private dumpProtoForStatsd(Ljava/io/FileDescriptor;)V
    .registers 12
    .param p1, "fd"  # Ljava/io/FileDescriptor;

    .line 1413
    const/4 v0, 0x1

    new-array v0, v0, [Landroid/util/proto/ProtoOutputStream;

    new-instance v1, Landroid/util/proto/ProtoOutputStream;

    invoke-direct {v1, p1}, Landroid/util/proto/ProtoOutputStream;-><init>(Ljava/io/FileDescriptor;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 1415
    .local v0, "protos":[Landroid/util/proto/ProtoOutputStream;
    new-instance v1, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v1, v2}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 1416
    .local v1, "procStats":Lcom/android/internal/app/procstats/ProcessStats;
    const-wide/16 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v8, 0x0

    move-object v3, p0

    move-object v9, v1

    invoke-virtual/range {v3 .. v9}, Lcom/android/server/am/ProcessStatsService;->getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J

    .line 1417
    const-wide/32 v3, 0xf423f

    invoke-virtual {v1, v0, v3, v4}, Lcom/android/internal/app/procstats/ProcessStats;->dumpAggregatedProtoForStatsd([Landroid/util/proto/ProtoOutputStream;J)V

    .line 1419
    aget-object v2, v0, v2

    invoke-virtual {v2}, Landroid/util/proto/ProtoOutputStream;->flush()V

    .line 1420
    return-void
.end method

.method private getCommittedFilesLF(IZZ)Ljava/util/ArrayList;
    .registers 11
    .param p1, "minNum"  # I
    .param p2, "inclCurrent"  # Z
    .param p3, "inclCheckedIn"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IZZ)",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 454
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v0

    .line 455
    .local v0, "files":[Ljava/io/File;
    if-eqz v0, :cond_44

    array-length v1, v0

    if-gt v1, p1, :cond_c

    goto :goto_44

    .line 458
    :cond_c
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 459
    .local v1, "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v2}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    .line 461
    .local v2, "currentFile":Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1d
    array-length v4, v0

    if-ge v3, v4, :cond_40

    .line 462
    aget-object v4, v0, v3

    .line 463
    .local v4, "file":Ljava/io/File;
    invoke-virtual {v4}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    .line 465
    .local v5, "fileStr":Ljava/lang/String;
    if-nez p3, :cond_31

    const-string v6, ".ci"

    invoke-virtual {v5, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_31

    .line 467
    goto :goto_3d

    .line 469
    :cond_31
    if-nez p2, :cond_3a

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3a

    .line 471
    goto :goto_3d

    .line 473
    :cond_3a
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 461
    .end local v4  # "file":Ljava/io/File;
    .end local v5  # "fileStr":Ljava/lang/String;
    :goto_3d
    add-int/lit8 v3, v3, 0x1

    goto :goto_1d

    .line 475
    .end local v3  # "i":I
    :cond_40
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 476
    return-object v1

    .line 456
    .end local v1  # "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v2  # "currentFile":Ljava/lang/String;
    :cond_44
    :goto_44
    const/4 v1, 0x0

    return-object v1
.end method

.method private getCurrentFile()Ljava/io/File;
    .registers 3

    .line 341
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 343
    :try_start_5
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;

    invoke-virtual {v0}, Landroid/util/AtomicFile;->getBaseFile()Ljava/io/File;

    move-result-object v0
    :try_end_b
    .catchall {:try_start_5 .. :try_end_b} :catchall_11

    .line 345
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 343
    return-object v0

    .line 345
    :catchall_11
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 346
    throw v0
.end method

.method private getUidProcStateStatsOverTime(J)Landroid/util/SparseArray;
    .registers 14
    .param p1, "minTime"  # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Landroid/util/SparseArray<",
            "[J>;"
        }
    .end annotation

    .line 792
    new-instance v0, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v0}, Lcom/android/internal/app/procstats/ProcessStats;-><init>()V

    .line 794
    .local v0, "stats":Lcom/android/internal/app/procstats/ProcessStats;
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 795
    :try_start_8
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 796
    .local v2, "now":J
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 797
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 798
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, v4}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    .line 799
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v4, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v6, v6, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v4, v6

    .line 800
    .end local v2  # "now":J
    .local v4, "curTime":J
    monitor-exit v1
    :try_end_27
    .catchall {:try_start_8 .. :try_end_27} :catchall_cd

    .line 801
    cmp-long v1, v4, p1

    if-gez v1, :cond_aa

    .line 803
    :try_start_2b
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 805
    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v1, v1, v2}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v3

    .line 806
    .local v3, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v3, :cond_9d

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-lez v6, :cond_9d

    .line 807
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v2

    .line 808
    .local v6, "i":I
    :goto_43
    if-ltz v6, :cond_9d

    iget-wide v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v9, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v7, v9

    cmp-long v2, v7, p1

    if-gez v2, :cond_9d

    .line 810
    new-instance v2, Landroid/util/AtomicFile;

    new-instance v7, Ljava/io/File;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-direct {v7, v8}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v7}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 811
    .local v2, "file":Landroid/util/AtomicFile;
    add-int/lit8 v6, v6, -0x1

    .line 812
    new-instance v7, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v7, v1}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 813
    .local v7, "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-direct {p0, v7, v2}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 814
    iget-object v8, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-nez v8, :cond_70

    .line 815
    invoke-virtual {v0, v7}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    .line 821
    .end local v2  # "file":Landroid/util/AtomicFile;
    .end local v7  # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    goto :goto_43

    .line 817
    .restart local v2  # "file":Landroid/util/AtomicFile;
    .restart local v7  # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    :cond_70
    const-string v8, "ProcessStatsService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure reading "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    add-int/lit8 v10, v6, 0x1

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "; "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, v7, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9c
    .catchall {:try_start_2b .. :try_end_9c} :catchall_a3

    .line 819
    goto :goto_43

    .line 824
    .end local v2  # "file":Landroid/util/AtomicFile;
    .end local v3  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6  # "i":I
    .end local v7  # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    :cond_9d
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 825
    goto :goto_aa

    .line 824
    :catchall_a3
    move-exception v1

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 825
    throw v1

    .line 827
    :cond_aa
    :goto_aa
    iget-object v1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mUidStates:Landroid/util/SparseArray;

    .line 828
    .local v1, "uidStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/UidState;>;"
    new-instance v2, Landroid/util/SparseArray;

    invoke-direct {v2}, Landroid/util/SparseArray;-><init>()V

    .line 829
    .local v2, "results":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[J>;"
    const/4 v3, 0x0

    .local v3, "i":I
    invoke-virtual {v1}, Landroid/util/SparseArray;->size()I

    move-result v6

    .local v6, "size":I
    :goto_b6
    if-ge v3, v6, :cond_cc

    .line 830
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v7

    .line 831
    .local v7, "uid":I
    invoke-virtual {v1, v3}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/internal/app/procstats/UidState;

    .line 832
    .local v8, "uidState":Lcom/android/internal/app/procstats/UidState;
    invoke-virtual {v8}, Lcom/android/internal/app/procstats/UidState;->getAggregatedDurationsInStates()[J

    move-result-object v9

    invoke-virtual {v2, v7, v9}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 829
    .end local v7  # "uid":I
    .end local v8  # "uidState":Lcom/android/internal/app/procstats/UidState;
    add-int/lit8 v3, v3, 0x1

    goto :goto_b6

    .line 834
    .end local v3  # "i":I
    .end local v6  # "size":I
    :cond_cc
    return-object v2

    .line 800
    .end local v1  # "uidStates":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/procstats/UidState;>;"
    .end local v2  # "results":Landroid/util/SparseArray;, "Landroid/util/SparseArray<[J>;"
    .end local v4  # "curTime":J
    :catchall_cd
    move-exception v2

    :try_start_ce
    monitor-exit v1
    :try_end_cf
    .catchall {:try_start_ce .. :try_end_cf} :catchall_cd

    throw v2
.end method

.method static parseSectionOptions(Ljava/lang/String;)I
    .registers 10
    .param p0, "optionsStr"  # Ljava/lang/String;

    .line 551
    const-string v0, ","

    .line 552
    .local v0, "sep":Ljava/lang/String;
    const-string v1, ","

    invoke-virtual {p0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 553
    .local v1, "sectionsStr":[Ljava/lang/String;
    array-length v2, v1

    if-nez v2, :cond_e

    .line 554
    const/16 v2, 0x1f

    return v2

    .line 556
    :cond_e
    const/4 v2, 0x0

    .line 557
    .local v2, "res":I
    sget-object v3, Lcom/android/internal/app/procstats/ProcessStats;->OPTIONS_STR:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    .line 558
    .local v3, "optionStrList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v4, v1

    const/4 v5, 0x0

    :goto_17
    if-ge v5, v4, :cond_2a

    aget-object v6, v1, v5

    .line 559
    .local v6, "sectionStr":Ljava/lang/String;
    invoke-interface {v3, v6}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v7

    .line 560
    .local v7, "optionIndex":I
    const/4 v8, -0x1

    if-eq v7, v8, :cond_27

    .line 561
    sget-object v8, Lcom/android/internal/app/procstats/ProcessStats;->OPTIONS:[I

    aget v8, v8, v7

    or-int/2addr v2, v8

    .line 558
    .end local v6  # "sectionStr":Ljava/lang/String;
    .end local v7  # "optionIndex":I
    :cond_27
    add-int/lit8 v5, v5, 0x1

    goto :goto_17

    .line 564
    :cond_2a
    return v2
.end method

.method static parseStateList([Ljava/lang/String;ILjava/lang/String;[Z[Ljava/lang/String;)[I
    .registers 15
    .param p0, "states"  # [Ljava/lang/String;
    .param p1, "mult"  # I
    .param p2, "arg"  # Ljava/lang/String;
    .param p3, "outSep"  # [Z
    .param p4, "outError"  # [Ljava/lang/String;

    .line 511
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 512
    .local v0, "res":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 513
    .local v1, "lastPos":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    if-gt v2, v3, :cond_84

    .line 514
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_19

    invoke-virtual {p2, v2}, Ljava/lang/String;->charAt(I)C

    move-result v3

    goto :goto_1a

    :cond_19
    move v3, v4

    .line 515
    .local v3, "c":C
    :goto_1a
    const/16 v5, 0x2c

    if-eq v3, v5, :cond_29

    const/16 v6, 0x2b

    if-eq v3, v6, :cond_29

    const/16 v6, 0x20

    if-eq v3, v6, :cond_29

    if-eqz v3, :cond_29

    .line 516
    goto :goto_81

    .line 518
    :cond_29
    if-ne v3, v5, :cond_2d

    const/4 v5, 0x1

    goto :goto_2e

    :cond_2d
    move v5, v4

    .line 519
    .local v5, "isSep":Z
    :goto_2e
    const/4 v6, 0x0

    if-nez v1, :cond_34

    .line 521
    aput-boolean v5, p3, v4

    goto :goto_40

    .line 522
    :cond_34
    if-eqz v3, :cond_40

    aget-boolean v7, p3, v4

    if-eq v7, v5, :cond_40

    .line 523
    const-string/jumbo v7, "inconsistent separators (can\'t mix \',\' with \'+\')"

    aput-object v7, p4, v4

    .line 524
    return-object v6

    .line 526
    :cond_40
    :goto_40
    add-int/lit8 v7, v2, -0x1

    if-ge v1, v7, :cond_7f

    .line 527
    invoke-virtual {p2, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 528
    .local v7, "str":Ljava/lang/String;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_49
    array-length v9, p0

    if-ge v8, v9, :cond_60

    .line 529
    aget-object v9, p0, v8

    invoke-virtual {v7, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5d

    .line 530
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 531
    const/4 v7, 0x0

    .line 532
    goto :goto_60

    .line 528
    :cond_5d
    add-int/lit8 v8, v8, 0x1

    goto :goto_49

    .line 535
    .end local v8  # "j":I
    :cond_60
    :goto_60
    if-eqz v7, :cond_7f

    .line 536
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "invalid word \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, p4, v4

    .line 537
    return-object v6

    .line 540
    .end local v7  # "str":Ljava/lang/String;
    :cond_7f
    add-int/lit8 v1, v2, 0x1

    .line 513
    .end local v3  # "c":C
    .end local v5  # "isSep":Z
    :goto_81
    add-int/lit8 v2, v2, 0x1

    goto :goto_7

    .line 543
    .end local v2  # "i":I
    :cond_84
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [I

    .line 544
    .local v2, "finalRes":[I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_8b
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v3, v4, :cond_a1

    .line 545
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    mul-int/2addr v4, p1

    aput v4, v2, v3

    .line 544
    add-int/lit8 v3, v3, 0x1

    goto :goto_8b

    .line 547
    .end local v3  # "i":I
    :cond_a1
    return-object v2
.end method

.method private performWriteState(J)V
    .registers 11
    .param p1, "initialTime"  # J

    .line 353
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 354
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 355
    .local v1, "data":Landroid/os/Parcel;
    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 356
    .local v2, "file":Landroid/util/AtomicFile;
    const/4 v3, 0x0

    iput-boolean v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    .line 357
    if-nez v1, :cond_e

    .line 358
    monitor-exit v0

    return-void

    .line 360
    :cond_e
    const/4 v3, 0x0

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 361
    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 362
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 363
    monitor-exit v0
    :try_end_19
    .catchall {:try_start_3 .. :try_end_19} :catchall_63

    .line 365
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    .line 366
    .local v3, "startTime":J
    const/4 v0, 0x0

    .line 368
    .local v0, "stream":Ljava/io/FileOutputStream;
    :try_start_1e
    invoke-virtual {v2}, Landroid/util/AtomicFile;->startWrite()Ljava/io/FileOutputStream;

    move-result-object v5

    move-object v0, v5

    .line 369
    invoke-virtual {v1}, Landroid/os/Parcel;->marshall()[B

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/io/FileOutputStream;->write([B)V

    .line 370
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 371
    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->finishWrite(Ljava/io/FileOutputStream;)V

    .line 372
    const-string/jumbo v5, "procstats"

    .line 373
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v3

    add-long/2addr v6, p1

    .line 372
    invoke-static {v5, v6, v7}, Lcom/android/internal/logging/EventLogTags;->writeCommitSysConfigFile(Ljava/lang/String;J)V
    :try_end_3c
    .catch Ljava/io/IOException; {:try_start_1e .. :try_end_3c} :catch_3f
    .catchall {:try_start_1e .. :try_end_3c} :catchall_3d

    goto :goto_4a

    .line 379
    :catchall_3d
    move-exception v5

    goto :goto_57

    .line 375
    :catch_3f
    move-exception v5

    .line 376
    .local v5, "e":Ljava/io/IOException;
    :try_start_40
    const-string v6, "ProcessStatsService"

    const-string v7, "Error writing process statistics"

    invoke-static {v6, v7, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 377
    invoke-virtual {v2, v0}, Landroid/util/AtomicFile;->failWrite(Ljava/io/FileOutputStream;)V
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_3d

    .line 379
    .end local v5  # "e":Ljava/io/IOException;
    :goto_4a
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 380
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLF()V

    .line 381
    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 382
    nop

    .line 383
    return-void

    .line 379
    :goto_57
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 380
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->trimHistoricStatesWriteLF()V

    .line 381
    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 382
    throw v5

    .line 363
    .end local v0  # "stream":Ljava/io/FileOutputStream;
    .end local v1  # "data":Landroid/os/Parcel;
    .end local v2  # "file":Landroid/util/AtomicFile;
    .end local v3  # "startTime":J
    :catchall_63
    move-exception v1

    :try_start_64
    monitor-exit v0
    :try_end_65
    .catchall {:try_start_64 .. :try_end_65} :catchall_63

    throw v1
.end method

.method private static protoToParcelFileDescriptor(Lcom/android/internal/app/procstats/ProcessStats;I)Landroid/os/ParcelFileDescriptor;
    .registers 5
    .param p0, "stats"  # Lcom/android/internal/app/procstats/ProcessStats;
    .param p1, "section"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 693
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 694
    .local v0, "fds":[Landroid/os/ParcelFileDescriptor;
    new-instance v1, Lcom/android/server/am/ProcessStatsService$3;

    const-string v2, "ProcessStats pipe output"

    invoke-direct {v1, v2, v0, p0, p1}, Lcom/android/server/am/ProcessStatsService$3;-><init>(Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;Lcom/android/internal/app/procstats/ProcessStats;I)V

    .line 707
    .local v1, "thr":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 708
    const/4 v2, 0x0

    aget-object v2, v0, v2

    return-object v2
.end method

.method private readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z
    .registers 8
    .param p1, "stats"  # Lcom/android/internal/app/procstats/ProcessStats;
    .param p2, "file"  # Landroid/util/AtomicFile;

    .line 388
    const-string v0, "ProcessStatsService"

    const/4 v1, 0x0

    :try_start_3
    invoke-virtual {p2}, Landroid/util/AtomicFile;->openRead()Ljava/io/FileInputStream;

    move-result-object v2

    .line 389
    .local v2, "stream":Ljava/io/FileInputStream;
    invoke-virtual {p1, v2}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 390
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 391
    iget-object v3, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v3, :cond_2a

    .line 392
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Ignoring existing stats; "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_29
    .catchall {:try_start_3 .. :try_end_29} :catchall_2d

    .line 441
    return v1

    .line 447
    .end local v2  # "stream":Ljava/io/FileInputStream;
    :cond_2a
    nop

    .line 448
    const/4 v0, 0x1

    return v0

    .line 443
    :catchall_2d
    move-exception v2

    .line 444
    .local v2, "e":Ljava/lang/Throwable;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "caught exception: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p1, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    .line 445
    const-string v3, "Error reading process statistics"

    invoke-static {v0, v3, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 446
    return v1
.end method

.method private scheduleRequestPssAllProcs(ZZ)V
    .registers 5
    .param p1, "always"  # Z
    .param p2, "memLowered"  # Z

    .line 320
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mHandler:Lcom/android/server/am/ActivityManagerService$MainHandler;

    new-instance v1, Lcom/android/server/am/ProcessStatsService$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p1, p2}, Lcom/android/server/am/ProcessStatsService$$ExternalSyntheticLambda0;-><init>(Lcom/android/server/am/ProcessStatsService;ZZ)V

    invoke-virtual {v0, v1}, Lcom/android/server/am/ActivityManagerService$MainHandler;->post(Ljava/lang/Runnable;)Z

    .line 326
    return-void
.end method

.method private trimHistoricStatesWriteLF()V
    .registers 7

    .line 481
    const/16 v0, 0x8

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {p0, v0, v1, v2}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 482
    .local v2, "filesArray":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v2, :cond_b

    .line 483
    return-void

    .line 485
    :cond_b
    :goto_b
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-le v3, v0, :cond_38

    .line 486
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 487
    .local v3, "file":Ljava/lang/String;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Pruning old procstats: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v5, "ProcessStatsService"

    invoke-static {v5, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    new-instance v4, Ljava/io/File;

    invoke-direct {v4, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 489
    .end local v3  # "file":Ljava/lang/String;
    goto :goto_b

    .line 490
    :cond_38
    return-void
.end method

.method private updateFileLocked()V
    .registers 6

    .line 330
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 332
    :try_start_5
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mBaseDir:Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "state-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v4, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ".bin"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFile:Landroid/util/AtomicFile;
    :try_end_31
    .catchall {:try_start_5 .. :try_end_31} :catchall_3e

    .line 335
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 336
    nop

    .line 337
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    .line 338
    return-void

    .line 335
    :catchall_3e
    move-exception v0

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 336
    throw v0
.end method

.method private writeStateLocked(Z)V
    .registers 4
    .param p1, "sync"  # Z

    .line 274
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    if-eqz v0, :cond_5

    .line 275
    return-void

    .line 277
    :cond_5
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 278
    .local v0, "commitPending":Z
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 279
    invoke-direct {p0, p1, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(ZZ)V

    .line 280
    return-void
.end method

.method private writeStateLocked(ZZ)V
    .registers 11
    .param p1, "sync"  # Z
    .param p2, "commit"  # Z

    .line 285
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteLock:Ljava/lang/Object;

    monitor-enter v0

    .line 286
    :try_start_3
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 287
    .local v1, "now":J
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_11

    iget-boolean v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    if-nez v3, :cond_40

    .line 288
    :cond_11
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    .line 289
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 290
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v1, v3, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 291
    if-eqz p2, :cond_2c

    .line 292
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/2addr v6, v5

    iput v6, v3, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 294
    :cond_2c
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v6, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWrite:Landroid/os/Parcel;

    invoke-virtual {v3, v6, v4}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 295
    new-instance v3, Landroid/util/AtomicFile;

    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->getCurrentFile()Ljava/io/File;

    move-result-object v6

    invoke-direct {v3, v6}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    iput-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteFile:Landroid/util/AtomicFile;

    .line 296
    iput-boolean p2, p0, Lcom/android/server/am/ProcessStatsService;->mPendingWriteCommitted:Z

    .line 298
    :cond_40
    if-eqz p2, :cond_4d

    .line 299
    iget-object v3, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v3}, Lcom/android/internal/app/procstats/ProcessStats;->resetSafely()V

    .line 300
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->updateFileLocked()V

    .line 301
    invoke-direct {p0, v5, v4}, Lcom/android/server/am/ProcessStatsService;->scheduleRequestPssAllProcs(ZZ)V

    .line 303
    :cond_4d
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    .line 304
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    sub-long/2addr v3, v1

    .line 306
    .local v3, "totalTime":J
    if-nez p1, :cond_68

    .line 307
    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v5

    new-instance v6, Lcom/android/server/am/ProcessStatsService$2;

    invoke-direct {v6, p0, v3, v4}, Lcom/android/server/am/ProcessStatsService$2;-><init>(Lcom/android/server/am/ProcessStatsService;J)V

    invoke-virtual {v5, v6}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 312
    monitor-exit v0

    return-void

    .line 314
    .end local v1  # "now":J
    :cond_68
    monitor-exit v0
    :try_end_69
    .catchall {:try_start_3 .. :try_end_69} :catchall_6d

    .line 316
    invoke-direct {p0, v3, v4}, Lcom/android/server/am/ProcessStatsService;->performWriteState(J)V

    .line 317
    return-void

    .line 314
    .end local v3  # "totalTime":J
    :catchall_6d
    move-exception v1

    :try_start_6e
    monitor-exit v0
    :try_end_6f
    .catchall {:try_start_6e .. :try_end_6f} :catchall_6d

    throw v1
.end method

.method private writeStateSyncLocked()V
    .registers 2

    .line 269
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    .line 270
    return-void
.end method


# virtual methods
.method addSysMemUsageLocked(JJJJJ)V
    .registers 23
    .param p1, "cachedMem"  # J
    .param p3, "freeMem"  # J
    .param p5, "zramMem"  # J
    .param p7, "kernelMem"  # J
    .param p9, "nativeMem"  # J

    .line 230
    move-object v0, p0

    iget-object v1, v0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-wide v2, p1

    move-wide v4, p3

    move-wide/from16 v6, p5

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-virtual/range {v1 .. v11}, Lcom/android/internal/app/procstats/ProcessStats;->addSysMemUsage(JJJJJ)V

    .line 231
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .registers 9
    .param p1, "fd"  # Ljava/io/FileDescriptor;
    .param p2, "pw"  # Ljava/io/PrintWriter;
    .param p3, "args"  # [Ljava/lang/String;

    .line 917
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "ProcessStatsService"

    invoke-static {v0, v1, p2}, Lcom/android/internal/util/DumpUtils;->checkDumpAndUsageStatsPermission(Landroid/content/Context;Ljava/lang/String;Ljava/io/PrintWriter;)Z

    move-result v0

    if-nez v0, :cond_d

    .line 918
    return-void

    .line 920
    :cond_d
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 922
    .local v0, "ident":J
    :try_start_11
    array-length v2, p3

    if-lez v2, :cond_37

    .line 923
    const-string v2, "--proto"

    const/4 v3, 0x0

    aget-object v4, p3, v3

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_26

    .line 924
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessStatsService;->dumpProto(Ljava/io/FileDescriptor;)V
    :try_end_22
    .catchall {:try_start_11 .. :try_end_22} :catchall_3f

    .line 933
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 925
    return-void

    .line 926
    :cond_26
    :try_start_26
    const-string v2, "--statsd"

    aget-object v3, p3, v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_37

    .line 927
    invoke-direct {p0, p1}, Lcom/android/server/am/ProcessStatsService;->dumpProtoForStatsd(Ljava/io/FileDescriptor;)V
    :try_end_33
    .catchall {:try_start_26 .. :try_end_33} :catchall_3f

    .line 933
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 928
    return-void

    .line 931
    :cond_37
    :try_start_37
    invoke-direct {p0, p2, p3}, Lcom/android/server/am/ProcessStatsService;->dumpInner(Ljava/io/PrintWriter;[Ljava/lang/String;)V
    :try_end_3a
    .catchall {:try_start_37 .. :try_end_3a} :catchall_3f

    .line 933
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 934
    nop

    .line 935
    return-void

    .line 933
    :catchall_3f
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 934
    throw v2
.end method

.method public getCommittedStats(JIZLjava/util/List;)J
    .registers 13
    .param p1, "highWaterMarkMs"  # J
    .param p3, "section"  # I
    .param p4, "doAggregate"  # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)J"
        }
    .end annotation

    .line 610
    .local p5, "committedStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    new-instance v6, Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v0, 0x0

    invoke-direct {v6, v0}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    move-object v0, p0

    move-wide v1, p1

    move v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/am/ProcessStatsService;->getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getCommittedStatsMerged(JIZLjava/util/List;Lcom/android/internal/app/procstats/ProcessStats;)J
    .registers 27
    .param p1, "highWaterMarkMs"  # J
    .param p3, "section"  # I
    .param p4, "doAggregate"  # Z
    .param p6, "mergedStats"  # Lcom/android/internal/app/procstats/ProcessStats;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JIZ",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;",
            "Lcom/android/internal/app/procstats/ProcessStats;",
            ")J"
        }
    .end annotation

    .line 625
    .local p5, "committedStats":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    move-object/from16 v1, p0

    move/from16 v2, p3

    move-object/from16 v3, p5

    move-object/from16 v4, p6

    const-string/jumbo v5, "state-"

    const-string v6, "ProcessStatsService"

    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v7, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v8, 0x0

    invoke-virtual {v0, v7, v8}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    move-wide/from16 v7, p1

    .line 629
    .local v7, "newHighWaterMark":J
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 631
    const/4 v0, 0x1

    const/4 v9, 0x0

    :try_start_20
    invoke-direct {v1, v9, v9, v0}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v10

    .line 632
    .local v10, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v10, :cond_125

    .line 633
    const-string/jumbo v11, "yyyy-MM-dd-HH-mm-ss"
    :try_end_29
    .catch Ljava/io/IOException; {:try_start_20 .. :try_end_29} :catch_134
    .catchall {:try_start_20 .. :try_end_29} :catchall_130

    .line 634
    move-wide/from16 v12, p1

    :try_start_2b
    invoke-static {v11, v12, v13}, Landroid/text/format/DateFormat;->format(Ljava/lang/CharSequence;J)Ljava/lang/CharSequence;

    move-result-object v11

    invoke-interface {v11}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v11

    .line 635
    .local v11, "highWaterMarkStr":Ljava/lang/String;
    new-instance v14, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v14, v9}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    move-object v9, v14

    .line 636
    .local v9, "stats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v14

    sub-int/2addr v14, v0

    .local v14, "i":I
    :goto_3e
    if-ltz v14, :cond_10d

    .line 637
    invoke-virtual {v10, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;
    :try_end_46
    .catch Ljava/io/IOException; {:try_start_2b .. :try_end_46} :catch_123
    .catchall {:try_start_2b .. :try_end_46} :catchall_13f

    move-object v15, v0

    .line 639
    .local v15, "fileName":Ljava/lang/String;
    nop

    .line 640
    :try_start_48
    invoke-virtual {v15, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 641
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v16
    :try_end_50
    .catch Ljava/io/IOException; {:try_start_48 .. :try_end_50} :catch_e5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_48 .. :try_end_50} :catch_c7
    .catchall {:try_start_48 .. :try_end_50} :catchall_13f

    add-int v0, v0, v16

    move-object/from16 v16, v5

    :try_start_54
    const-string v5, ".bin"

    .line 642
    invoke-virtual {v15, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    .line 639
    invoke-virtual {v15, v0, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 643
    .local v0, "startTimeStr":Ljava/lang/String;
    invoke-virtual {v0, v11}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v5

    if-lez v5, :cond_bc

    .line 644
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v15}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    move-object/from16 v17, v0

    .end local v0  # "startTimeStr":Ljava/lang/String;
    .local v17, "startTimeStr":Ljava/lang/String;
    const/high16 v0, 0x10000000

    invoke-static {v5, v0}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    .line 647
    .local v0, "pfd":Landroid/os/ParcelFileDescriptor;
    new-instance v5, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;

    invoke-direct {v5, v0}, Landroid/os/ParcelFileDescriptor$AutoCloseInputStream;-><init>(Landroid/os/ParcelFileDescriptor;)V

    .line 648
    .local v5, "is":Ljava/io/InputStream;
    invoke-virtual {v9}, Lcom/android/internal/app/procstats/ProcessStats;->reset()V

    .line 649
    invoke-virtual {v9, v5}, Lcom/android/internal/app/procstats/ProcessStats;->read(Ljava/io/InputStream;)V

    .line 650
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_7f
    .catch Ljava/io/IOException; {:try_start_54 .. :try_end_7f} :catch_c5
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_54 .. :try_end_7f} :catch_c3
    .catchall {:try_start_54 .. :try_end_7f} :catchall_13f

    .line 651
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .end local v10  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11  # "highWaterMarkStr":Ljava/lang/String;
    .local v18, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local v19, "highWaterMarkStr":Ljava/lang/String;
    :try_start_83
    iget-wide v10, v9, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    cmp-long v10, v10, v7

    if-lez v10, :cond_8c

    .line 652
    iget-wide v10, v9, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClock:J

    move-wide v7, v10

    .line 654
    :cond_8c
    if-eqz p4, :cond_92

    .line 655
    invoke-virtual {v4, v9}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    goto :goto_9b

    .line 656
    :cond_92
    if-eqz v3, :cond_9b

    .line 657
    invoke-static {v9, v2}, Lcom/android/server/am/ProcessStatsService;->protoToParcelFileDescriptor(Lcom/android/internal/app/procstats/ProcessStats;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 659
    :cond_9b
    :goto_9b
    iget-object v10, v9, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-eqz v10, :cond_c2

    .line 660
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Failure reading process stats: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v9, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v6, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_b7
    .catch Ljava/io/IOException; {:try_start_83 .. :try_end_b7} :catch_ba
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_83 .. :try_end_b7} :catch_b8
    .catchall {:try_start_83 .. :try_end_b7} :catchall_13f

    .line 661
    goto :goto_103

    .line 666
    .end local v0  # "pfd":Landroid/os/ParcelFileDescriptor;
    .end local v5  # "is":Ljava/io/InputStream;
    .end local v17  # "startTimeStr":Ljava/lang/String;
    :catch_b8
    move-exception v0

    goto :goto_ce

    .line 664
    :catch_ba
    move-exception v0

    goto :goto_ec

    .line 643
    .end local v18  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19  # "highWaterMarkStr":Ljava/lang/String;
    .local v0, "startTimeStr":Ljava/lang/String;
    .restart local v10  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11  # "highWaterMarkStr":Ljava/lang/String;
    :cond_bc
    move-object/from16 v17, v0

    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 668
    .end local v0  # "startTimeStr":Ljava/lang/String;
    .end local v10  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11  # "highWaterMarkStr":Ljava/lang/String;
    .restart local v18  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19  # "highWaterMarkStr":Ljava/lang/String;
    :cond_c2
    goto :goto_103

    .line 666
    .end local v18  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19  # "highWaterMarkStr":Ljava/lang/String;
    .restart local v10  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11  # "highWaterMarkStr":Ljava/lang/String;
    :catch_c3
    move-exception v0

    goto :goto_ca

    .line 664
    :catch_c5
    move-exception v0

    goto :goto_e8

    .line 666
    :catch_c7
    move-exception v0

    move-object/from16 v16, v5

    :goto_ca
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 667
    .end local v10  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11  # "highWaterMarkStr":Ljava/lang/String;
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    .restart local v18  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19  # "highWaterMarkStr":Ljava/lang/String;
    :goto_ce
    :try_start_ce
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure to read and parse commit file "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_103

    .line 664
    .end local v0  # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v18  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19  # "highWaterMarkStr":Ljava/lang/String;
    .restart local v10  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11  # "highWaterMarkStr":Ljava/lang/String;
    :catch_e5
    move-exception v0

    move-object/from16 v16, v5

    :goto_e8
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 665
    .end local v10  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11  # "highWaterMarkStr":Ljava/lang/String;
    .local v0, "e":Ljava/io/IOException;
    .restart local v18  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19  # "highWaterMarkStr":Ljava/lang/String;
    :goto_ec
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Failure opening procstat file "

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v6, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 668
    nop

    .line 636
    .end local v0  # "e":Ljava/io/IOException;
    .end local v15  # "fileName":Ljava/lang/String;
    :goto_103
    add-int/lit8 v14, v14, -0x1

    move-object/from16 v5, v16

    move-object/from16 v10, v18

    move-object/from16 v11, v19

    goto/16 :goto_3e

    .end local v18  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19  # "highWaterMarkStr":Ljava/lang/String;
    .restart local v10  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v11  # "highWaterMarkStr":Ljava/lang/String;
    :cond_10d
    move-object/from16 v18, v10

    move-object/from16 v19, v11

    .line 670
    .end local v10  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v11  # "highWaterMarkStr":Ljava/lang/String;
    .end local v14  # "i":I
    .restart local v18  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v19  # "highWaterMarkStr":Ljava/lang/String;
    if-eqz p4, :cond_11c

    if-eqz v3, :cond_11c

    .line 671
    invoke-static {v4, v2}, Lcom/android/server/am/ProcessStatsService;->protoToParcelFileDescriptor(Lcom/android/internal/app/procstats/ProcessStats;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_11c
    .catch Ljava/io/IOException; {:try_start_ce .. :try_end_11c} :catch_123
    .catchall {:try_start_ce .. :try_end_11c} :catchall_13f

    .line 673
    :cond_11c
    nop

    .line 678
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 673
    return-wide v7

    .line 675
    .end local v9  # "stats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v18  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v19  # "highWaterMarkStr":Ljava/lang/String;
    :catch_123
    move-exception v0

    goto :goto_137

    .line 632
    .restart local v10  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_125
    move-wide/from16 v12, p1

    move-object/from16 v18, v10

    .line 678
    .end local v10  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    nop

    :goto_12a
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 679
    goto :goto_13e

    .line 678
    :catchall_130
    move-exception v0

    move-wide/from16 v12, p1

    goto :goto_140

    .line 675
    :catch_134
    move-exception v0

    move-wide/from16 v12, p1

    .line 676
    .restart local v0  # "e":Ljava/io/IOException;
    :goto_137
    :try_start_137
    const-string v5, "Failure opening procstat file"

    invoke-static {v6, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_13c
    .catchall {:try_start_137 .. :try_end_13c} :catchall_13f

    .line 678
    nop

    .end local v0  # "e":Ljava/io/IOException;
    goto :goto_12a

    .line 680
    :goto_13e
    return-wide v7

    .line 678
    :catchall_13f
    move-exception v0

    :goto_140
    iget-object v5, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v5}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 679
    throw v0
.end method

.method public getCurrentMemoryState()I
    .registers 3

    .line 786
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 787
    :try_start_3
    iget v1, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    monitor-exit v0

    return v1

    .line 788
    :catchall_7
    move-exception v1

    monitor-exit v0
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_7

    throw v1
.end method

.method public getCurrentStats(Ljava/util/List;)[B
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/os/ParcelFileDescriptor;",
            ">;)[B"
        }
    .end annotation

    .line 569
    .local p1, "historic":Ljava/util/List;, "Ljava/util/List<Landroid/os/ParcelFileDescriptor;>;"
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 571
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 572
    .local v0, "current":Landroid/os/Parcel;
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 573
    :try_start_11
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 574
    .local v2, "now":J
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    iput-wide v5, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 575
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v2, v4, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 576
    iget-object v4, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v5, 0x0

    invoke-virtual {v4, v0, v2, v3, v5}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 577
    .end local v2  # "now":J
    monitor-exit v1
    :try_end_28
    .catchall {:try_start_11 .. :try_end_28} :catchall_86

    .line 578
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 580
    if-eqz p1, :cond_7b

    .line 581
    const/4 v1, 0x1

    :try_start_30
    invoke-direct {p0, v5, v5, v1}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v2

    .line 582
    .local v2, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v2, :cond_7b

    .line 583
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3
    :try_end_3a
    .catchall {:try_start_30 .. :try_end_3a} :catchall_74

    sub-int/2addr v3, v1

    .local v3, "i":I
    :goto_3b
    if-ltz v3, :cond_7b

    .line 585
    :try_start_3d
    new-instance v1, Ljava/io/File;

    .line 586
    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/high16 v4, 0x10000000

    .line 585
    invoke-static {v1, v4}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 587
    .local v1, "pfd":Landroid/os/ParcelFileDescriptor;
    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_51
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_51} :catch_52
    .catchall {:try_start_3d .. :try_end_51} :catchall_74

    .line 590
    .end local v1  # "pfd":Landroid/os/ParcelFileDescriptor;
    goto :goto_71

    .line 588
    :catch_52
    move-exception v1

    .line 589
    .local v1, "e":Ljava/io/IOException;
    :try_start_53
    const-string v4, "ProcessStatsService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Failure opening procstat file "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_71
    .catchall {:try_start_53 .. :try_end_71} :catchall_74

    .line 583
    .end local v1  # "e":Ljava/io/IOException;
    :goto_71
    add-int/lit8 v3, v3, -0x1

    goto :goto_3b

    .line 595
    .end local v2  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v3  # "i":I
    :catchall_74
    move-exception v1

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 596
    throw v1

    .line 595
    :cond_7b
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 596
    nop

    .line 597
    invoke-virtual {v0}, Landroid/os/Parcel;->marshall()[B

    move-result-object v1

    return-object v1

    .line 577
    :catchall_86
    move-exception v2

    :try_start_87
    monitor-exit v1
    :try_end_88
    .catchall {:try_start_87 .. :try_end_88} :catchall_86

    throw v2
.end method

.method getMemFactorLocked()I
    .registers 3

    .line 224
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_c

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    goto :goto_d

    :cond_c
    const/4 v0, 0x0

    :goto_d
    return v0
.end method

.method public getMinAssociationDumpDuration()J
    .registers 3

    .line 688
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mConstants:Lcom/android/server/am/ActivityManagerConstants;

    sget-wide v0, Lcom/android/server/am/ActivityManagerConstants;->MIN_ASSOC_LOG_DURATION:J

    return-wide v0
.end method

.method getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;
    .registers 12
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "versionCode"  # J
    .param p5, "processName"  # Ljava/lang/String;

    .line 168
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object v1, p1

    move v2, p2

    move-wide v3, p3

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IJLjava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    return-object v0
.end method

.method getServiceState(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;
    .registers 15
    .param p1, "packageName"  # Ljava/lang/String;
    .param p2, "uid"  # I
    .param p3, "versionCode"  # J
    .param p5, "processName"  # Ljava/lang/String;
    .param p6, "className"  # Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 174
    :try_start_3
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    move-object v2, p1

    move v3, p2

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/app/procstats/ProcessStats;->getServiceStateLocked(Ljava/lang/String;IJLjava/lang/String;Ljava/lang/String;)Lcom/android/internal/app/procstats/ServiceState;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 176
    :catchall_10
    move-exception v1

    monitor-exit v0
    :try_end_12
    .catchall {:try_start_3 .. :try_end_12} :catchall_10

    throw v1
.end method

.method public getStatsOverTime(J)Landroid/os/ParcelFileDescriptor;
    .registers 19
    .param p1, "minTime"  # J

    .line 713
    move-object/from16 v1, p0

    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.PACKAGE_USAGE_STATS"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 717
    .local v2, "current":Landroid/os/Parcel;
    iget-object v4, v1, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 718
    :try_start_13
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v5

    .line 719
    .local v5, "now":J
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    iput-wide v7, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    .line 720
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide v5, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndUptime:J

    .line 721
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    const/4 v7, 0x0

    invoke-virtual {v0, v2, v5, v6, v7}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;JI)V

    .line 722
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v8, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v10, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v8, v10

    .line 724
    .end local v5  # "now":J
    .local v8, "curTime":J
    monitor-exit v4
    :try_end_33
    .catchall {:try_start_13 .. :try_end_33} :catchall_119

    .line 725
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 727
    cmp-long v0, v8, p1

    if-gez v0, :cond_e4

    .line 729
    const/4 v0, 0x1

    :try_start_3d
    invoke-direct {v1, v7, v7, v0}, Lcom/android/server/am/ProcessStatsService;->getCommittedFilesLF(IZZ)Ljava/util/ArrayList;

    move-result-object v4

    .line 730
    .local v4, "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v4, :cond_e4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-lez v5, :cond_e4

    .line 731
    invoke-virtual {v2, v7}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 732
    sget-object v5, Lcom/android/internal/app/procstats/ProcessStats;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/app/procstats/ProcessStats;

    .line 733
    .local v5, "stats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 734
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v6

    sub-int/2addr v6, v0

    .line 735
    .local v6, "i":I
    :goto_5c
    if-ltz v6, :cond_dc

    iget-wide v10, v5, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v12, v5, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v10, v12

    cmp-long v0, v10, p1

    if-gez v0, :cond_dc

    .line 737
    new-instance v0, Landroid/util/AtomicFile;

    new-instance v10, Ljava/io/File;

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    invoke-direct {v10, v11}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v10}, Landroid/util/AtomicFile;-><init>(Ljava/io/File;)V

    .line 738
    .local v0, "file":Landroid/util/AtomicFile;
    add-int/lit8 v6, v6, -0x1

    .line 739
    new-instance v10, Lcom/android/internal/app/procstats/ProcessStats;

    invoke-direct {v10, v7}, Lcom/android/internal/app/procstats/ProcessStats;-><init>(Z)V

    .line 740
    .local v10, "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    invoke-direct {v1, v10, v0}, Lcom/android/server/am/ProcessStatsService;->readLF(Lcom/android/internal/app/procstats/ProcessStats;Landroid/util/AtomicFile;)Z

    .line 741
    iget-object v11, v10, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    if-nez v11, :cond_af

    .line 742
    invoke-virtual {v5, v10}, Lcom/android/internal/app/procstats/ProcessStats;->add(Lcom/android/internal/app/procstats/ProcessStats;)V

    .line 743
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    .line 744
    .local v11, "sb":Ljava/lang/StringBuilder;
    const-string v12, "Added stats: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 745
    iget-object v12, v10, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartClockStr:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    const-string v12, ", over "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 747
    iget-wide v12, v10, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodEndRealtime:J

    iget-wide v14, v10, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sub-long/2addr v12, v14

    invoke-static {v12, v13, v11}, Landroid/util/TimeUtils;->formatDuration(JLjava/lang/StringBuilder;)V

    .line 749
    const-string v12, "ProcessStatsService"

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    nop

    .line 755
    .end local v0  # "file":Landroid/util/AtomicFile;
    .end local v10  # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v11  # "sb":Ljava/lang/StringBuilder;
    goto :goto_5c

    .line 751
    .restart local v0  # "file":Landroid/util/AtomicFile;
    .restart local v10  # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    :cond_af
    const-string v11, "ProcessStatsService"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Failure reading "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    add-int/lit8 v13, v6, 0x1

    invoke-virtual {v4, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "; "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-object v13, v10, Lcom/android/internal/app/procstats/ProcessStats;->mReadError:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 753
    goto :goto_5c

    .line 756
    .end local v0  # "file":Landroid/util/AtomicFile;
    .end local v10  # "moreStats":Lcom/android/internal/app/procstats/ProcessStats;
    :cond_dc
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    move-object v2, v0

    .line 757
    invoke-virtual {v5, v2, v7}, Lcom/android/internal/app/procstats/ProcessStats;->writeToParcel(Landroid/os/Parcel;I)V

    .line 760
    .end local v4  # "files":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v5  # "stats":Lcom/android/internal/app/procstats/ProcessStats;
    .end local v6  # "i":I
    :cond_e4
    invoke-virtual {v2}, Landroid/os/Parcel;->marshall()[B

    move-result-object v0

    .line 761
    .local v0, "outData":[B
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 762
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v4

    .line 763
    .local v4, "fds":[Landroid/os/ParcelFileDescriptor;
    new-instance v5, Lcom/android/server/am/ProcessStatsService$4;

    const-string v6, "ProcessStats pipe output"

    invoke-direct {v5, v1, v6, v4, v0}, Lcom/android/server/am/ProcessStatsService$4;-><init>(Lcom/android/server/am/ProcessStatsService;Ljava/lang/String;[Landroid/os/ParcelFileDescriptor;[B)V

    .line 774
    .local v5, "thr":Ljava/lang/Thread;
    invoke-virtual {v5}, Ljava/lang/Thread;->start()V

    .line 775
    aget-object v3, v4, v7
    :try_end_fb
    .catch Ljava/io/IOException; {:try_start_3d .. :try_end_fb} :catch_103
    .catchall {:try_start_3d .. :try_end_fb} :catchall_101

    .line 779
    iget-object v6, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v6}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 775
    return-object v3

    .line 779
    .end local v0  # "outData":[B
    .end local v4  # "fds":[Landroid/os/ParcelFileDescriptor;
    .end local v5  # "thr":Ljava/lang/Thread;
    :catchall_101
    move-exception v0

    goto :goto_113

    .line 776
    :catch_103
    move-exception v0

    .line 777
    .local v0, "e":Ljava/io/IOException;
    :try_start_104
    const-string v4, "ProcessStatsService"

    const-string v5, "Failed building output pipe"

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_10b
    .catchall {:try_start_104 .. :try_end_10b} :catchall_101

    .line 779
    nop

    .end local v0  # "e":Ljava/io/IOException;
    iget-object v0, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v0}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 780
    nop

    .line 781
    return-object v3

    .line 779
    :goto_113
    iget-object v3, v1, Lcom/android/server/am/ProcessStatsService;->mFileLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 780
    throw v0

    .line 724
    .end local v8  # "curTime":J
    :catchall_119
    move-exception v0

    :try_start_11a
    monitor-exit v4
    :try_end_11b
    .catchall {:try_start_11a .. :try_end_11b} :catchall_119

    throw v0
.end method

.method isMemFactorLowered()Z
    .registers 2

    .line 180
    iget-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    return v0
.end method

.method synthetic lambda$scheduleRequestPssAllProcs$0$com-android-server-am-ProcessStatsService(ZZ)V
    .registers 7
    .param p1, "always"  # Z
    .param p2, "memLowered"  # Z

    .line 321
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v0, v0, Lcom/android/server/am/ActivityManagerService;->mProcLock:Lcom/android/server/am/ActivityManagerGlobalLock;

    monitor-enter v0

    :try_start_5
    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->boostPriorityForProcLockedSection()V

    .line 322
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mAm:Lcom/android/server/am/ActivityManagerService;

    iget-object v1, v1, Lcom/android/server/am/ActivityManagerService;->mAppProfiler:Lcom/android/server/am/AppProfiler;

    .line 323
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 322
    invoke-virtual {v1, v2, v3, p1, p2}, Lcom/android/server/am/AppProfiler;->requestPssAllProcsLPr(JZZ)V

    .line 324
    monitor-exit v0
    :try_end_14
    .catchall {:try_start_5 .. :try_end_14} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    .line 325
    return-void

    .line 324
    :catchall_18
    move-exception v1

    :try_start_19
    monitor-exit v0
    :try_end_1a
    .catchall {:try_start_19 .. :try_end_1a} :catchall_18

    invoke-static {}, Lcom/android/server/am/ActivityManagerService;->resetPriorityAfterProcLockedSection()V

    throw v1
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .registers 8
    .param p1, "code"  # I
    .param p2, "data"  # Landroid/os/Parcel;
    .param p3, "reply"  # Landroid/os/Parcel;
    .param p4, "flags"  # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 149
    :try_start_0
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/internal/app/procstats/IProcessStats$Stub;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v0
    :try_end_4
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_4} :catch_5

    return v0

    .line 150
    :catch_5
    move-exception v0

    .line 151
    .local v0, "e":Ljava/lang/RuntimeException;
    instance-of v1, v0, Ljava/lang/SecurityException;

    if-nez v1, :cond_11

    .line 152
    const-string v1, "ProcessStatsService"

    const-string v2, "Process Stats Crash"

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 154
    :cond_11
    throw v0
.end method

.method publish()V
    .registers 4

    .line 838
    const-class v0, Lcom/android/internal/app/procstats/ProcessStatsInternal;

    new-instance v1, Lcom/android/server/am/ProcessStatsService$LocalService;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/am/ProcessStatsService$LocalService;-><init>(Lcom/android/server/am/ProcessStatsService;Lcom/android/server/am/ProcessStatsService$LocalService-IA;)V

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 839
    return-void
.end method

.method setMemFactorLocked(IZJ)Z
    .registers 16
    .param p1, "memFactor"  # I
    .param p2, "screenOn"  # Z
    .param p3, "now"  # J

    .line 185
    iget v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ge p1, v0, :cond_8

    move v0, v2

    goto :goto_9

    :cond_8
    move v0, v1

    :goto_9
    iput-boolean v0, p0, Lcom/android/server/am/ProcessStatsService;->mMemFactorLowered:Z

    .line 186
    iput p1, p0, Lcom/android/server/am/ProcessStatsService;->mLastMemOnlyState:I

    .line 187
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mInjectedScreenState:Ljava/lang/Boolean;

    if-eqz v0, :cond_15

    .line 188
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    .line 190
    :cond_15
    if-eqz p2, :cond_19

    .line 191
    add-int/lit8 p1, p1, 0x4

    .line 193
    :cond_19
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    if-eq p1, v0, :cond_90

    .line 194
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_39

    .line 195
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactorDurations:[J

    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v1, v1, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    aget-wide v3, v0, v1

    iget-object v5, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v5, v5, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    sub-long v5, p3, v5

    add-long/2addr v3, v5

    aput-wide v3, v0, v1

    .line 198
    :cond_39
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput p1, v0, Lcom/android/internal/app/procstats/ProcessStats;->mMemFactor:I

    .line 199
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iput-wide p3, v0, Lcom/android/internal/app/procstats/ProcessStats;->mStartTime:J

    .line 200
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v0, v0, Lcom/android/internal/app/procstats/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    .line 201
    invoke-virtual {v0}, Lcom/android/internal/app/ProcessMap;->getMap()Landroid/util/ArrayMap;

    move-result-object v0

    .line 202
    .local v0, "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v1

    sub-int/2addr v1, v2

    .local v1, "ipkg":I
    :goto_4e
    if-ltz v1, :cond_8f

    .line 203
    nop

    .line 204
    invoke-virtual {v0, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 205
    .local v3, "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    invoke-virtual {v3}, Landroid/util/SparseArray;->size()I

    move-result v4

    sub-int/2addr v4, v2

    .local v4, "iuid":I
    :goto_5c
    if-ltz v4, :cond_8c

    .line 206
    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/util/LongSparseArray;

    .line 207
    .local v5, "vers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    invoke-virtual {v5}, Landroid/util/LongSparseArray;->size()I

    move-result v6

    sub-int/2addr v6, v2

    .local v6, "iver":I
    :goto_69
    if-ltz v6, :cond_89

    .line 208
    invoke-virtual {v5, v6}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 209
    .local v7, "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    iget-object v8, v7, Lcom/android/internal/app/procstats/ProcessStats$PackageState;->mServices:Landroid/util/ArrayMap;

    .line 210
    .local v8, "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ServiceState;>;"
    invoke-virtual {v8}, Landroid/util/ArrayMap;->size()I

    move-result v9

    sub-int/2addr v9, v2

    .local v9, "isvc":I
    :goto_78
    if-ltz v9, :cond_86

    .line 211
    invoke-virtual {v8, v9}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/android/internal/app/procstats/ServiceState;

    .line 212
    .local v10, "service":Lcom/android/internal/app/procstats/ServiceState;
    invoke-virtual {v10, p1, p3, p4}, Lcom/android/internal/app/procstats/ServiceState;->setMemFactor(IJ)V

    .line 210
    .end local v10  # "service":Lcom/android/internal/app/procstats/ServiceState;
    add-int/lit8 v9, v9, -0x1

    goto :goto_78

    .line 207
    .end local v7  # "pkg":Lcom/android/internal/app/procstats/ProcessStats$PackageState;
    .end local v8  # "services":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/procstats/ServiceState;>;"
    .end local v9  # "isvc":I
    :cond_86
    add-int/lit8 v6, v6, -0x1

    goto :goto_69

    .line 205
    .end local v5  # "vers":Landroid/util/LongSparseArray;, "Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;"
    .end local v6  # "iver":I
    :cond_89
    add-int/lit8 v4, v4, -0x1

    goto :goto_5c

    .line 202
    .end local v3  # "uids":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;"
    .end local v4  # "iuid":I
    :cond_8c
    add-int/lit8 v1, v1, -0x1

    goto :goto_4e

    .line 217
    .end local v1  # "ipkg":I
    :cond_8f
    return v2

    .line 219
    .end local v0  # "pmap":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Landroid/util/SparseArray<Landroid/util/LongSparseArray<Lcom/android/internal/app/procstats/ProcessStats$PackageState;>;>;>;"
    :cond_90
    return v1
.end method

.method shouldWriteNowLocked(J)Z
    .registers 11
    .param p1, "now"  # J

    .line 240
    iget-wide v0, p0, Lcom/android/server/am/ProcessStatsService;->mLastWriteTime:J

    sget-wide v2, Lcom/android/server/am/ProcessStatsService;->WRITE_PERIOD:J

    add-long/2addr v0, v2

    cmp-long v0, p1, v0

    if-lez v0, :cond_2b

    .line 241
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-object v2, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v2, v2, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartRealtime:J

    sget-wide v4, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_PERIOD:J

    add-long/2addr v2, v4

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-lez v0, :cond_2a

    .line 243
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-wide v4, v0, Lcom/android/internal/app/procstats/ProcessStats;->mTimePeriodStartUptime:J

    sget-wide v6, Lcom/android/internal/app/procstats/ProcessStats;->COMMIT_UPTIME_PERIOD:J

    add-long/2addr v4, v6

    cmp-long v0, v2, v4

    if-lez v0, :cond_2a

    .line 245
    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mCommitPending:Z

    .line 247
    :cond_2a
    return v1

    .line 249
    :cond_2b
    const/4 v0, 0x0

    return v0
.end method

.method shutdown()V
    .registers 4

    .line 253
    const-string v0, "ProcessStatsService"

    const-string v1, "Writing process stats before shutdown..."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 255
    :try_start_a
    iget-object v1, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    or-int/lit8 v2, v2, 0x2

    iput v2, v1, Lcom/android/internal/app/procstats/ProcessStats;->mFlags:I

    .line 256
    invoke-direct {p0}, Lcom/android/server/am/ProcessStatsService;->writeStateSyncLocked()V

    .line 257
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/am/ProcessStatsService;->mShuttingDown:Z

    .line 258
    monitor-exit v0

    .line 259
    return-void

    .line 258
    :catchall_1a
    move-exception v1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_a .. :try_end_1c} :catchall_1a

    throw v1
.end method

.method updateProcessStateHolderLocked(Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;Ljava/lang/String;IJLjava/lang/String;)V
    .registers 9
    .param p1, "holder"  # Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;
    .param p2, "packageName"  # Ljava/lang/String;
    .param p3, "uid"  # I
    .param p4, "versionCode"  # J
    .param p6, "processName"  # Ljava/lang/String;

    .line 161
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, p2, p3, p4, p5}, Lcom/android/internal/app/procstats/ProcessStats;->getPackageStateLocked(Ljava/lang/String;IJ)Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    .line 162
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    iget-object v1, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->pkg:Lcom/android/internal/app/procstats/ProcessStats$PackageState;

    invoke-virtual {v0, v1, p6}, Lcom/android/internal/app/procstats/ProcessStats;->getProcessStateLocked(Lcom/android/internal/app/procstats/ProcessStats$PackageState;Ljava/lang/String;)Lcom/android/internal/app/procstats/ProcessState;

    move-result-object v0

    iput-object v0, p1, Lcom/android/internal/app/procstats/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/procstats/ProcessState;

    .line 163
    return-void
.end method

.method updateTrackingAssociationsLocked(IJ)V
    .registers 5
    .param p1, "curSeq"  # I
    .param p2, "now"  # J

    .line 235
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mProcessStats:Lcom/android/internal/app/procstats/ProcessStats;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/app/procstats/ProcessStats;->updateTrackingAssociationsLocked(IJ)V

    .line 236
    return-void
.end method

.method writeStateAsync()V
    .registers 3

    .line 262
    iget-object v0, p0, Lcom/android/server/am/ProcessStatsService;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 263
    const/4 v1, 0x0

    :try_start_4
    invoke-direct {p0, v1}, Lcom/android/server/am/ProcessStatsService;->writeStateLocked(Z)V

    .line 264
    monitor-exit v0

    .line 265
    return-void

    .line 264
    :catchall_9
    move-exception v1

    monitor-exit v0
    :try_end_b
    .catchall {:try_start_4 .. :try_end_b} :catchall_9

    throw v1
.end method
