.class public final Lcom/android/internal/app/ProcessStats$ProcessState;
.super Lcom/android/internal/app/ProcessStats$DurationsTable;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ProcessState"
.end annotation


# instance fields
.field mActive:Z

.field mAvgCachedKillPss:J

.field public mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

.field mCurState:I

.field mDead:Z

.field mLastPssState:I

.field mLastPssTime:J

.field mMaxCachedKillPss:J

.field mMinCachedKillPss:J

.field mMultiPackage:Z

.field mNumActiveServices:I

.field mNumCachedKill:I

.field mNumExcessiveCpu:I

.field mNumExcessiveWake:I

.field mNumStartedServices:I

.field public final mPackage:Ljava/lang/String;

.field mPssTable:[I

.field mPssTableSize:I

.field mStartTime:J

.field mTmpFoundSubProc:Lcom/android/internal/app/ProcessStats$ProcessState;

.field mTmpNumInUse:I

.field public mTmpTotalTime:J

.field public final mUid:I

.field public final mVersion:I


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;IILjava/lang/String;J)V
    .locals 2
    .param p1, "commonProcess"    # Lcom/android/internal/app/ProcessStats$ProcessState;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # I
    .param p5, "name"    # Ljava/lang/String;
    .param p6, "now"    # J

    .prologue
    const/4 v1, -0x1

    .line 2923
    iget-object v0, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    invoke-direct {p0, v0, p5}, Lcom/android/internal/app/ProcessStats$DurationsTable;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;)V

    .line 2877
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    .line 2880
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssState:I

    .line 2924
    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2925
    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    .line 2926
    iput p3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    .line 2927
    iput p4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    .line 2928
    iget v0, p1, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    .line 2929
    iput-wide p6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    .line 2922
    return-void
.end method

.method public constructor <init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;IILjava/lang/String;)V
    .locals 1
    .param p1, "processStats"    # Lcom/android/internal/app/ProcessStats;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "uid"    # I
    .param p4, "vers"    # I
    .param p5, "name"    # Ljava/lang/String;

    .prologue
    const/4 v0, -0x1

    .line 2909
    invoke-direct {p0, p1, p5}, Lcom/android/internal/app/ProcessStats$DurationsTable;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;)V

    .line 2877
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    .line 2880
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssState:I

    .line 2910
    iput-object p0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 2911
    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    .line 2912
    iput p3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    .line 2913
    iput p4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    .line 2908
    return-void
.end method

.method private addCachedKill(IJJJ)V
    .locals 4
    .param p1, "num"    # I
    .param p2, "minPss"    # J
    .param p4, "avgPss"    # J
    .param p6, "maxPss"    # J

    .prologue
    .line 3309
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-gtz v0, :cond_0

    .line 3310
    iput p1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    .line 3311
    iput-wide p2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    .line 3312
    iput-wide p4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    .line 3313
    iput-wide p6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    .line 3308
    :goto_0
    return-void

    .line 3315
    :cond_0
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    cmp-long v0, p2, v0

    if-gez v0, :cond_1

    .line 3316
    iput-wide p2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    .line 3318
    :cond_1
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    cmp-long v0, p6, v0

    if-lez v0, :cond_2

    .line 3319
    iput-wide p6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    .line 3321
    :cond_2
    iget-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    long-to-double v0, v0

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    long-to-double v2, p4

    add-double/2addr v0, v2

    .line 3322
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    add-int/2addr v2, p1

    int-to-double v2, v2

    .line 3321
    div-double/2addr v0, v2

    double-to-long v0, v0

    iput-wide v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    .line 3323
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    goto :goto_0
.end method

.method private ensureNotDead()V
    .locals 4

    .prologue
    .line 3001
    iget-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    if-nez v0, :cond_0

    .line 3002
    return-void

    .line 3005
    :cond_0
    const-string/jumbo v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ProcessState dead: name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3006
    const-string/jumbo v2, " pkg="

    .line 3005
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3006
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    .line 3005
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3006
    const-string/jumbo v2, " uid="

    .line 3005
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3006
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    .line 3005
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3006
    const-string/jumbo v2, " common.name="

    .line 3005
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3006
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v2, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    .line 3005
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 3006
    new-instance v2, Ljava/lang/RuntimeException;

    const-string/jumbo v3, "here"

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    move-result-object v2

    .line 3005
    invoke-static {v0, v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3000
    return-void
.end method

.method private pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;
    .locals 9
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessStateHolder;",
            ">;I)",
            "Lcom/android/internal/app/ProcessStats$ProcessState;"
        }
    .end annotation

    .prologue
    .line 3366
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessStateHolder;>;"
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;

    .line 3367
    .local v0, "holder":Lcom/android/internal/app/ProcessStats$ProcessStateHolder;
    iget-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 3368
    .local v2, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    iget-boolean v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    if-eqz v4, :cond_0

    iget-object v4, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v4, v2, :cond_0

    .line 3373
    const-string/jumbo v4, "ProcessStats"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Pulling dead proc: name="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " pkg="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3374
    const-string/jumbo v6, " uid="

    .line 3373
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3374
    iget v6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    .line 3373
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3374
    const-string/jumbo v6, " common.name="

    .line 3373
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3374
    iget-object v6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v6, v6, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    .line 3373
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 3375
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v5, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    iget v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    iget v7, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    .line 3376
    iget-object v8, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    .line 3375
    invoke-virtual {v4, v5, v6, v7, v8}, Lcom/android/internal/app/ProcessStats;->getProcessStateLocked(Ljava/lang/String;IILjava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v2

    .line 3378
    :cond_0
    iget-boolean v4, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v4, :cond_4

    .line 3382
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v5, v4, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3383
    iget v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    .line 3382
    invoke-virtual {v5, v4, v6}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/util/SparseArray;

    .line 3384
    .local v3, "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    if-nez v3, :cond_1

    .line 3385
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No existing package "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3386
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3385
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3386
    const-string/jumbo v6, "/"

    .line 3385
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3386
    iget v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    .line 3385
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3387
    const-string/jumbo v6, " for multi-proc "

    .line 3385
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3387
    iget-object v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    .line 3385
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3389
    :cond_1
    iget v4, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    invoke-virtual {v3, v4}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 3390
    .local v1, "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    if-nez v1, :cond_2

    .line 3391
    new-instance v5, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "No existing package "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3392
    invoke-virtual {p1, p2}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 3391
    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3392
    const-string/jumbo v6, "/"

    .line 3391
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3392
    iget v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    .line 3391
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3393
    const-string/jumbo v6, " for multi-proc "

    .line 3391
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3393
    iget-object v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    .line 3391
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3393
    const-string/jumbo v6, " version "

    .line 3391
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3393
    iget v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    .line 3391
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3395
    :cond_2
    iget-object v4, v1, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v5, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    check-cast v2, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 3396
    .restart local v2    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v2, :cond_3

    .line 3397
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Didn\'t create per-package process "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3398
    iget-object v6, v2, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    .line 3397
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3398
    const-string/jumbo v6, " in pkg "

    .line 3397
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3398
    iget-object v6, v1, Lcom/android/internal/app/ProcessStats$PackageState;->mPackageName:Ljava/lang/String;

    .line 3397
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3398
    const-string/jumbo v6, "/"

    .line 3397
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 3398
    iget v6, v1, Lcom/android/internal/app/ProcessStats$PackageState;->mUid:I

    .line 3397
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 3400
    :cond_3
    iput-object v2, v0, Lcom/android/internal/app/ProcessStats$ProcessStateHolder;->state:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 3402
    .end local v1    # "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v3    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_4
    return-object v2
.end method


# virtual methods
.method add(Lcom/android/internal/app/ProcessStats$ProcessState;)V
    .locals 19
    .param p1, "other"    # Lcom/android/internal/app/ProcessStats$ProcessState;

    .prologue
    .line 2963
    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/app/ProcessStats$ProcessState;->addDurations(Lcom/android/internal/app/ProcessStats$DurationsTable;)V

    .line 2964
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_0
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    move/from16 v0, v18

    if-ge v0, v3, :cond_0

    .line 2965
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v3, v18

    .line 2966
    .local v2, "ent":I
    sget v3, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v3, v2, v3

    sget v5, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v4, v3, v5

    .line 2967
    .local v4, "state":I
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v5, 0x0

    invoke-virtual {v3, v2, v5}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v6

    long-to-int v5, v6

    .line 2968
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v6, 0x1

    invoke-virtual {v3, v2, v6}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v6

    .line 2969
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v8, 0x2

    invoke-virtual {v3, v2, v8}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v8

    .line 2970
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v10, 0x3

    invoke-virtual {v3, v2, v10}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v10

    .line 2971
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v12, 0x4

    invoke-virtual {v3, v2, v12}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v12

    .line 2972
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v14, 0x5

    invoke-virtual {v3, v2, v14}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v14

    .line 2973
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/16 v16, 0x6

    move/from16 v0, v16

    invoke-virtual {v3, v2, v0}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v16

    move-object/from16 v3, p0

    .line 2967
    invoke-virtual/range {v3 .. v17}, Lcom/android/internal/app/ProcessStats$ProcessState;->addPss(IIJJJJJJ)V

    .line 2964
    add-int/lit8 v18, v18, 0x1

    goto :goto_0

    .line 2975
    .end local v2    # "ent":I
    .end local v4    # "state":I
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    .line 2976
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    move-object/from16 v0, p1

    iget v5, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    add-int/2addr v3, v5

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    .line 2977
    move-object/from16 v0, p1

    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-lez v3, :cond_1

    .line 2978
    move-object/from16 v0, p1

    iget v7, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    move-object/from16 v0, p1

    iget-wide v8, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    .line 2979
    move-object/from16 v0, p1

    iget-wide v10, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    move-object/from16 v6, p0

    .line 2978
    invoke-direct/range {v6 .. v13}, Lcom/android/internal/app/ProcessStats$ProcessState;->addCachedKill(IJJJ)V

    .line 2962
    :cond_1
    return-void
.end method

.method addPss(IIJJJJJJ)V
    .locals 15
    .param p1, "state"    # I
    .param p2, "inCount"    # I
    .param p3, "minPss"    # J
    .param p5, "avgPss"    # J
    .param p7, "maxPss"    # J
    .param p9, "minUss"    # J
    .param p11, "avgUss"    # J
    .param p13, "maxUss"    # J

    .prologue
    .line 3239
    iget-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v8, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    move/from16 v0, p1

    invoke-static {v7, v8, v0}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v4

    .line 3241
    .local v4, "idx":I
    if-ltz v4, :cond_1

    .line 3242
    iget-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v6, v7, v4

    .line 3250
    .local v6, "off":I
    :goto_0
    iget-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v7, v7, Lcom/android/internal/app/ProcessStats;->mLongs:Ljava/util/ArrayList;

    sget v8, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_SHIFT:I

    shr-int v8, v6, v8

    sget v9, Lcom/android/internal/app/ProcessStats;->OFFSET_ARRAY_MASK:I

    and-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [J

    .line 3251
    .local v5, "longs":[J
    sget v7, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_SHIFT:I

    shr-int v7, v6, v7

    sget v8, Lcom/android/internal/app/ProcessStats;->OFFSET_INDEX_MASK:I

    and-int v4, v7, v8

    .line 3252
    add-int/lit8 v7, v4, 0x0

    aget-wide v2, v5, v7

    .line 3253
    .local v2, "count":J
    const-wide/16 v8, 0x0

    cmp-long v7, v2, v8

    if-nez v7, :cond_2

    .line 3254
    add-int/lit8 v7, v4, 0x0

    move/from16 v0, p2

    int-to-long v8, v0

    aput-wide v8, v5, v7

    .line 3255
    add-int/lit8 v7, v4, 0x1

    aput-wide p3, v5, v7

    .line 3256
    add-int/lit8 v7, v4, 0x2

    aput-wide p5, v5, v7

    .line 3257
    add-int/lit8 v7, v4, 0x3

    aput-wide p7, v5, v7

    .line 3258
    add-int/lit8 v7, v4, 0x4

    aput-wide p9, v5, v7

    .line 3259
    add-int/lit8 v7, v4, 0x5

    aput-wide p11, v5, v7

    .line 3260
    add-int/lit8 v7, v4, 0x6

    aput-wide p13, v5, v7

    .line 3238
    :cond_0
    :goto_1
    return-void

    .line 3244
    .end local v2    # "count":J
    .end local v5    # "longs":[J
    .end local v6    # "off":I
    :cond_1
    iget-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v8, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iput-object v8, v7, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    .line 3245
    iget-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget v8, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    iput v8, v7, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    .line 3246
    iget-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    not-int v8, v4

    const/4 v9, 0x7

    move/from16 v0, p1

    invoke-virtual {v7, v8, v0, v9}, Lcom/android/internal/app/ProcessStats;->addLongData(III)I

    move-result v6

    .line 3247
    .restart local v6    # "off":I
    iget-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v7, v7, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    iput-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    .line 3248
    iget-object v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget v7, v7, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    iput v7, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    goto :goto_0

    .line 3262
    .restart local v2    # "count":J
    .restart local v5    # "longs":[J
    :cond_2
    add-int/lit8 v7, v4, 0x0

    move/from16 v0, p2

    int-to-long v8, v0

    add-long/2addr v8, v2

    aput-wide v8, v5, v7

    .line 3263
    add-int/lit8 v7, v4, 0x1

    aget-wide v8, v5, v7

    cmp-long v7, v8, p3

    if-lez v7, :cond_3

    .line 3264
    add-int/lit8 v7, v4, 0x1

    aput-wide p3, v5, v7

    .line 3266
    :cond_3
    add-int/lit8 v7, v4, 0x2

    .line 3267
    add-int/lit8 v8, v4, 0x2

    aget-wide v8, v5, v8

    long-to-double v8, v8

    long-to-double v10, v2

    mul-double/2addr v8, v10

    move-wide/from16 v0, p5

    long-to-double v10, v0

    move/from16 v0, p2

    int-to-double v12, v0

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    .line 3268
    move/from16 v0, p2

    int-to-long v10, v0

    add-long/2addr v10, v2

    long-to-double v10, v10

    .line 3266
    div-double/2addr v8, v10

    double-to-long v8, v8

    aput-wide v8, v5, v7

    .line 3269
    add-int/lit8 v7, v4, 0x3

    aget-wide v8, v5, v7

    cmp-long v7, v8, p7

    if-gez v7, :cond_4

    .line 3270
    add-int/lit8 v7, v4, 0x3

    aput-wide p7, v5, v7

    .line 3272
    :cond_4
    add-int/lit8 v7, v4, 0x4

    aget-wide v8, v5, v7

    cmp-long v7, v8, p9

    if-lez v7, :cond_5

    .line 3273
    add-int/lit8 v7, v4, 0x4

    aput-wide p9, v5, v7

    .line 3275
    :cond_5
    add-int/lit8 v7, v4, 0x5

    .line 3276
    add-int/lit8 v8, v4, 0x5

    aget-wide v8, v5, v8

    long-to-double v8, v8

    long-to-double v10, v2

    mul-double/2addr v8, v10

    move-wide/from16 v0, p11

    long-to-double v10, v0

    move/from16 v0, p2

    int-to-double v12, v0

    mul-double/2addr v10, v12

    add-double/2addr v8, v10

    .line 3277
    move/from16 v0, p2

    int-to-long v10, v0

    add-long/2addr v10, v2

    long-to-double v10, v10

    .line 3275
    div-double/2addr v8, v10

    double-to-long v8, v8

    aput-wide v8, v5, v7

    .line 3278
    add-int/lit8 v7, v4, 0x6

    aget-wide v8, v5, v7

    cmp-long v7, v8, p13

    if-gez v7, :cond_0

    .line 3279
    add-int/lit8 v7, v4, 0x6

    aput-wide p13, v5, v7

    goto/16 :goto_1
.end method

.method public addPss(JJZLandroid/util/ArrayMap;)V
    .locals 19
    .param p1, "pss"    # J
    .param p3, "uss"    # J
    .param p5, "always"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJZ",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3210
    .local p6, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessStateHolder;>;"
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    .line 3211
    if-nez p5, :cond_0

    .line 3212
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssState:I

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    if-ne v3, v4, :cond_0

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 3213
    move-object/from16 v0, p0

    iget-wide v6, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssTime:J

    const-wide/16 v8, 0x7530

    add-long/2addr v6, v8

    .line 3212
    cmp-long v3, v4, v6

    if-gez v3, :cond_0

    .line 3214
    return-void

    .line 3217
    :cond_0
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    move-object/from16 v0, p0

    iput v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssState:I

    .line 3218
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move-object/from16 v0, p0

    iput-wide v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssTime:J

    .line 3219
    move-object/from16 v0, p0

    iget v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 3221
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v5, 0x1

    move-wide/from16 v6, p1

    move-wide/from16 v8, p1

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p3

    move-wide/from16 v16, p3

    invoke-virtual/range {v3 .. v17}, Lcom/android/internal/app/ProcessStats$ProcessState;->addPss(IIJJJJJJ)V

    .line 3224
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-boolean v3, v3, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-nez v3, :cond_1

    .line 3225
    return-void

    .line 3228
    :cond_1
    if-eqz p6, :cond_2

    .line 3229
    invoke-virtual/range {p6 .. p6}, Landroid/util/ArrayMap;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "ip":I
    :goto_0
    if-ltz v2, :cond_2

    .line 3230
    move-object/from16 v0, p0

    move-object/from16 v1, p6

    invoke-direct {v0, v1, v2}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v5, 0x1

    move-wide/from16 v6, p1

    move-wide/from16 v8, p1

    move-wide/from16 v10, p1

    move-wide/from16 v12, p3

    move-wide/from16 v14, p3

    move-wide/from16 v16, p3

    invoke-virtual/range {v3 .. v17}, Lcom/android/internal/app/ProcessStats$ProcessState;->addPss(IIJJJJJJ)V

    .line 3229
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 3209
    .end local v2    # "ip":I
    :cond_2
    return-void
.end method

.method clone(Ljava/lang/String;J)Lcom/android/internal/app/ProcessStats$ProcessState;
    .locals 14
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "now"    # J

    .prologue
    .line 2933
    new-instance v0, Lcom/android/internal/app/ProcessStats$ProcessState;

    iget v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    iget v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    iget-object v5, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    move-object v1, p0

    move-object v2, p1

    move-wide/from16 v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ProcessStats$ProcessState;-><init>(Lcom/android/internal/app/ProcessStats$ProcessState;Ljava/lang/String;IILjava/lang/String;J)V

    .line 2934
    .local v0, "pnew":Lcom/android/internal/app/ProcessStats$ProcessState;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->copyDurationsTo(Lcom/android/internal/app/ProcessStats$DurationsTable;)V

    .line 2935
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    if-eqz v1, :cond_2

    .line 2936
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    array-length v2, v2

    new-array v2, v2, [I

    iput-object v2, v1, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    .line 2937
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v2, 0x0

    iput v2, v1, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    .line 2938
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-ge v8, v1, :cond_1

    .line 2939
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v11, v1, v8

    .line 2940
    .local v11, "origEnt":I
    sget v1, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_SHIFT:I

    shr-int v1, v11, v1

    sget v2, Lcom/android/internal/app/ProcessStats;->OFFSET_TYPE_MASK:I

    and-int v12, v1, v2

    .line 2941
    .local v12, "type":I
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    const/4 v2, 0x7

    invoke-virtual {v1, v8, v12, v2}, Lcom/android/internal/app/ProcessStats;->addLongData(III)I

    move-result v10

    .line 2942
    .local v10, "newOff":I
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    or-int v2, v10, v12

    aput v2, v1, v8

    .line 2943
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_1
    const/4 v1, 0x7

    if-ge v9, v1, :cond_0

    .line 2944
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    invoke-virtual {v2, v11, v9}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v2

    invoke-virtual {v1, v10, v9, v2, v3}, Lcom/android/internal/app/ProcessStats;->setLong(IIJ)V

    .line 2943
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .line 2938
    :cond_0
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 2947
    .end local v9    # "j":I
    .end local v10    # "newOff":I
    .end local v11    # "origEnt":I
    .end local v12    # "type":I
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v1, v1, Lcom/android/internal/app/ProcessStats;->mAddLongTable:[I

    iput-object v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    .line 2948
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget v1, v1, Lcom/android/internal/app/ProcessStats;->mAddLongTableSize:I

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    .line 2950
    .end local v8    # "i":I
    :cond_2
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    .line 2951
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    .line 2952
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    .line 2953
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    iput-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    .line 2954
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    iput-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    .line 2955
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    iput-wide v2, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    .line 2956
    iget-boolean v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    iput-boolean v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    .line 2957
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    .line 2958
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    iput v1, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    .line 2959
    return-object v0
.end method

.method commitStateTime(J)V
    .locals 5
    .param p1, "now"    # J

    .prologue
    .line 3128
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 3129
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    sub-long v0, p1, v2

    .line 3130
    .local v0, "dur":J
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 3131
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    invoke-virtual {p0, v2, v0, v1}, Lcom/android/internal/app/ProcessStats$ProcessState;->addDuration(IJ)V

    .line 3134
    .end local v0    # "dur":J
    :cond_0
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    .line 3127
    return-void
.end method

.method decActiveServices(Ljava/lang/String;)V
    .locals 4
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3157
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v0, p0, :cond_0

    .line 3158
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ProcessStats$ProcessState;->decActiveServices(Ljava/lang/String;)V

    .line 3160
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    .line 3161
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    if-gez v0, :cond_1

    .line 3163
    const-string/jumbo v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Proc active services underrun: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3164
    const-string/jumbo v2, " uid="

    .line 3163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3164
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    .line 3163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3164
    const-string/jumbo v2, " proc="

    .line 3163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3164
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    .line 3163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3164
    const-string/jumbo v2, " service="

    .line 3163
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3166
    iput v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    .line 3150
    :cond_1
    return-void
.end method

.method decStartedServices(IJLjava/lang/String;)V
    .locals 4
    .param p1, "memFactor"    # I
    .param p2, "now"    # J
    .param p4, "serviceName"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3193
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v0, p0, :cond_0

    .line 3194
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ProcessState;->decStartedServices(IJLjava/lang/String;)V

    .line 3196
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    .line 3197
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    if-nez v0, :cond_2

    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    rem-int/lit8 v0, v0, 0xe

    const/4 v1, 0x7

    if-ne v0, v1, :cond_2

    .line 3198
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IJ)V

    .line 3186
    :cond_1
    :goto_0
    return-void

    .line 3199
    :cond_2
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    if-gez v0, :cond_1

    .line 3201
    const-string/jumbo v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Proc started services underrun: pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3202
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    .line 3201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3202
    const-string/jumbo v2, " uid="

    .line 3201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3202
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    .line 3201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3202
    const-string/jumbo v2, " name="

    .line 3201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3202
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    .line 3201
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3204
    iput v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    goto :goto_0
.end method

.method getDuration(IJ)J
    .locals 4
    .param p1, "state"    # I
    .param p2, "now"    # J

    .prologue
    .line 3406
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/app/ProcessStats$DurationsTable;->getDuration(IJ)J

    move-result-wide v0

    .line 3407
    .local v0, "time":J
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    if-ne v2, p1, :cond_0

    .line 3408
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    sub-long v2, p2, v2

    add-long/2addr v0, v2

    .line 3410
    :cond_0
    return-wide v0
.end method

.method getPssAverage(I)J
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 3424
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 3425
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x2

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method getPssMaximum(I)J
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 3429
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 3430
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method getPssMinimum(I)J
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 3419
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 3420
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method getPssSampleCount(I)J
    .locals 4
    .param p1, "state"    # I

    .prologue
    const/4 v3, 0x0

    .line 3414
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 3415
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method getPssUssAverage(I)J
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 3439
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 3440
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x5

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method getPssUssMaximum(I)J
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 3444
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 3445
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x6

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method getPssUssMinimum(I)J
    .locals 4
    .param p1, "state"    # I

    .prologue
    .line 3434
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-static {v1, v2, p1}, Lcom/android/internal/app/ProcessStats;->binarySearch([III)I

    move-result v0

    .line 3435
    .local v0, "idx":I
    if-ltz v0, :cond_0

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v2, v2, v0

    const/4 v3, 0x4

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/app/ProcessStats;->getLong(II)J

    move-result-wide v2

    :goto_0
    return-wide v2

    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0
.end method

.method incActiveServices(Ljava/lang/String;)V
    .locals 1
    .param p1, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 3144
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v0, p0, :cond_0

    .line 3145
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v0, p1}, Lcom/android/internal/app/ProcessStats$ProcessState;->incActiveServices(Ljava/lang/String;)V

    .line 3147
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    .line 3137
    return-void
.end method

.method incStartedServices(IJLjava/lang/String;)V
    .locals 2
    .param p1, "memFactor"    # I
    .param p2, "now"    # J
    .param p4, "serviceName"    # Ljava/lang/String;

    .prologue
    .line 3177
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v0, p0, :cond_0

    .line 3178
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ProcessState;->incStartedServices(IJLjava/lang/String;)V

    .line 3180
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    .line 3181
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 3182
    mul-int/lit8 v0, p1, 0xe

    add-int/lit8 v0, v0, 0x7

    invoke-virtual {p0, v0, p2, p3}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IJ)V

    .line 3170
    :cond_1
    return-void
.end method

.method public isInUse()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 3082
    iget-boolean v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumActiveServices:I

    if-lez v2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    if-gtz v2, :cond_0

    .line 3083
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method public makeActive()V
    .locals 3

    .prologue
    .line 3059
    const-string/jumbo v0, "com.android.systemui"

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3060
    const-string/jumbo v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "ProcessState makeActive : name="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " pkg="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3063
    :cond_0
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    .line 3064
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    .line 3057
    return-void
.end method

.method makeDead()V
    .locals 1

    .prologue
    .line 2997
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mDead:Z

    .line 2996
    return-void
.end method

.method public makeInactive()V
    .locals 4

    .prologue
    .line 3070
    const-string/jumbo v1, "com.android.systemui"

    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3071
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "here"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 3072
    .local v0, "here":Ljava/lang/RuntimeException;
    invoke-virtual {v0}, Ljava/lang/RuntimeException;->fillInStackTrace()Ljava/lang/Throwable;

    .line 3073
    const-string/jumbo v1, "ProcessStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ProcessState makeInactive : name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3074
    const-string/jumbo v3, " pkg="

    .line 3073
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3074
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    .line 3073
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3074
    const-string/jumbo v3, " uid="

    .line 3073
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3074
    iget v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    .line 3073
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3074
    const-string/jumbo v3, " common.name="

    .line 3073
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3074
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v3, v3, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    .line 3073
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3078
    .end local v0    # "here":Ljava/lang/RuntimeException;
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mActive:Z

    .line 3067
    return-void
.end method

.method pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;
    .locals 6
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 3340
    iget-boolean v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v3, :cond_3

    .line 3344
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v3, v3, Lcom/android/internal/app/ProcessStats;->mPackages:Lcom/android/internal/app/ProcessMap;

    iget v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/app/ProcessMap;->get(Ljava/lang/String;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/util/SparseArray;

    .line 3345
    .local v2, "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    if-nez v2, :cond_0

    .line 3346
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Didn\'t find package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3347
    const-string/jumbo v5, " / "

    .line 3346
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3347
    iget v5, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    .line 3346
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3349
    :cond_0
    iget v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ProcessStats$PackageState;

    .line 3350
    .local v0, "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    if-nez v0, :cond_1

    .line 3351
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Didn\'t find package "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3352
    const-string/jumbo v5, " / "

    .line 3351
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3352
    iget v5, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    .line 3351
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3352
    const-string/jumbo v5, " vers "

    .line 3351
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3352
    iget v5, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    .line 3351
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3354
    :cond_1
    iget-object v3, v0, Lcom/android/internal/app/ProcessStats$PackageState;->mProcesses:Landroid/util/ArrayMap;

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 3355
    .local v1, "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    if-nez v1, :cond_2

    .line 3356
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Didn\'t create per-package process "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3357
    iget-object v5, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    .line 3356
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3357
    const-string/jumbo v5, " in pkg "

    .line 3356
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3357
    const-string/jumbo v5, " / "

    .line 3356
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3357
    iget v5, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    .line 3356
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3357
    const-string/jumbo v5, " vers "

    .line 3356
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 3357
    iget v5, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mVersion:I

    .line 3356
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3359
    :cond_2
    return-object v1

    .line 3361
    .end local v0    # "pkg":Lcom/android/internal/app/ProcessStats$PackageState;
    .end local v1    # "proc":Lcom/android/internal/app/ProcessStats$ProcessState;
    .end local v2    # "vpkg":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Lcom/android/internal/app/ProcessStats$PackageState;>;"
    :cond_3
    return-object p0
.end method

.method readFromParcel(Landroid/os/Parcel;Z)Z
    .locals 8
    .param p1, "in"    # Landroid/os/Parcel;
    .param p2, "fully"    # Z

    .prologue
    const-wide/16 v6, 0x0

    const/4 v1, 0x0

    .line 3030
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    if-eqz v2, :cond_1

    const/4 v0, 0x1

    .line 3031
    .local v0, "multiPackage":Z
    :goto_0
    if-eqz p2, :cond_0

    .line 3032
    iput-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    .line 3035
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$ProcessState;->readDurationsFromParcel(Landroid/os/Parcel;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3036
    return v1

    .line 3030
    .end local v0    # "multiPackage":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "multiPackage":Z
    goto :goto_0

    .line 3039
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStats:Lcom/android/internal/app/ProcessStats;

    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    const-string/jumbo v4, "pss"

    invoke-static {v2, p1, v3, v4}, Lcom/android/internal/app/ProcessStats;->-wrap0(Lcom/android/internal/app/ProcessStats;Landroid/os/Parcel;Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    .line 3040
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    sget-object v3, Lcom/android/internal/app/ProcessStats;->BAD_TABLE:[I

    if-ne v2, v3, :cond_3

    .line 3041
    return v1

    .line 3043
    :cond_3
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    if-eqz v2, :cond_4

    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    array-length v1, v1

    :cond_4
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    .line 3044
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    .line 3045
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    .line 3046
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    .line 3047
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-lez v1, :cond_5

    .line 3048
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    .line 3049
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    .line 3050
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    .line 3054
    :goto_1
    const/4 v1, 0x1

    return v1

    .line 3052
    :cond_5
    iput-wide v6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    iput-wide v6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    iput-wide v6, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    goto :goto_1
.end method

.method public reportCachedKill(Landroid/util/ArrayMap;J)V
    .locals 10
    .param p2, "pss"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessStateHolder;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessStateHolder;>;"
    const/4 v1, 0x1

    .line 3328
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    .line 3329
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->addCachedKill(IJJJ)V

    .line 3330
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-boolean v0, v0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-nez v0, :cond_0

    .line 3331
    return-void

    .line 3334
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v8, v0, -0x1

    .local v8, "ip":I
    :goto_0
    if-ltz v8, :cond_1

    .line 3335
    invoke-direct {p0, p1, v8}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v0

    move-wide v2, p2

    move-wide v4, p2

    move-wide v6, p2

    invoke-direct/range {v0 .. v7}, Lcom/android/internal/app/ProcessStats$ProcessState;->addCachedKill(IJJJ)V

    .line 3334
    add-int/lit8 v8, v8, -0x1

    goto :goto_0

    .line 3327
    :cond_1
    return-void
.end method

.method public reportExcessiveCpu(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3297
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessStateHolder;>;"
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    .line 3298
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    .line 3299
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-boolean v1, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-nez v1, :cond_0

    .line 3300
    return-void

    .line 3303
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "ip":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3304
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v1

    iget v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    .line 3303
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3296
    :cond_1
    return-void
.end method

.method public reportExcessiveWake(Landroid/util/ArrayMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3285
    .local p1, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessStateHolder;>;"
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    .line 3286
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    .line 3287
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-boolean v1, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-nez v1, :cond_0

    .line 3288
    return-void

    .line 3291
    :cond_0
    invoke-virtual {p1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "ip":I
    :goto_0
    if-ltz v0, :cond_1

    .line 3292
    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v1

    iget v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    add-int/lit8 v2, v2, 0x1

    iput v2, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    .line 3291
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 3284
    :cond_1
    return-void
.end method

.method resetSafely(J)V
    .locals 5
    .param p1, "now"    # J

    .prologue
    const-wide/16 v2, 0x0

    const/4 v1, 0x0

    .line 2984
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->resetDurationsSafely()V

    .line 2985
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mStartTime:J

    .line 2986
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssState:I

    .line 2987
    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mLastPssTime:J

    .line 2988
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    .line 2989
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    .line 2990
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    .line 2991
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    .line 2992
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    .line 2993
    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    iput-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    .line 2983
    return-void
.end method

.method public setState(IIJLandroid/util/ArrayMap;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "memFactor"    # I
    .param p3, "now"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIJ",
            "Landroid/util/ArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/android/internal/app/ProcessStats$ProcessStateHolder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3096
    .local p5, "pkgList":Landroid/util/ArrayMap;, "Landroid/util/ArrayMap<Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessStateHolder;>;"
    if-gez p1, :cond_1

    .line 3097
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumStartedServices:I

    if-lez v1, :cond_0

    .line 3098
    mul-int/lit8 v1, p2, 0xe

    add-int/lit8 p1, v1, 0x7

    .line 3104
    :goto_0
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IJ)V

    .line 3107
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-boolean v1, v1, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-nez v1, :cond_2

    .line 3108
    return-void

    .line 3098
    :cond_0
    const/4 p1, -0x1

    goto :goto_0

    .line 3100
    :cond_1
    sget-object v1, Lcom/android/internal/app/ProcessStats;->PROCESS_STATE_TO_STATE:[I

    aget v1, v1, p1

    mul-int/lit8 v2, p2, 0xe

    add-int p1, v1, v2

    goto :goto_0

    .line 3111
    :cond_2
    if-eqz p5, :cond_3

    .line 3112
    invoke-virtual {p5}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "ip":I
    :goto_1
    if-ltz v0, :cond_3

    .line 3113
    invoke-direct {p0, p5, v0}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Landroid/util/ArrayMap;I)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v1

    invoke-virtual {v1, p1, p3, p4}, Lcom/android/internal/app/ProcessStats$ProcessState;->setState(IJ)V

    .line 3112
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 3095
    .end local v0    # "ip":I
    :cond_3
    return-void
.end method

.method setState(IJ)V
    .locals 2
    .param p1, "state"    # I
    .param p2, "now"    # J

    .prologue
    .line 3119
    invoke-direct {p0}, Lcom/android/internal/app/ProcessStats$ProcessState;->ensureNotDead()V

    .line 3120
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    if-eq v0, p1, :cond_0

    .line 3122
    invoke-virtual {p0, p2, p3}, Lcom/android/internal/app/ProcessStats$ProcessState;->commitStateTime(J)V

    .line 3123
    iput p1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCurState:I

    .line 3118
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 3449
    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 3450
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "ProcessState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3451
    const-string/jumbo v2, " "

    .line 3450
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3451
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mName:Ljava/lang/String;

    .line 3450
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3451
    const-string/jumbo v2, "/"

    .line 3450
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3451
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mUid:I

    .line 3450
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3452
    const-string/jumbo v2, " pkg="

    .line 3450
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 3452
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPackage:Ljava/lang/String;

    .line 3450
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3453
    iget-boolean v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v1, :cond_0

    const-string/jumbo v1, " (multi)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3454
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mCommonProcess:Lcom/android/internal/app/ProcessStats$ProcessState;

    if-eq v1, p0, :cond_1

    const-string/jumbo v1, " (sub)"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3455
    :cond_1
    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3456
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method writeToParcel(Landroid/os/Parcel;J)V
    .locals 4
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J

    .prologue
    const/4 v1, 0x0

    .line 3011
    iget-boolean v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMultiPackage:Z

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3012
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$ProcessState;->writeDurationsToParcel(Landroid/os/Parcel;)V

    .line 3013
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3014
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTableSize:I

    if-ge v0, v1, :cond_1

    .line 3017
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mPssTable:[I

    aget v1, v1, v0

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3014
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3019
    :cond_1
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveWake:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3020
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumExcessiveCpu:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3021
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    invoke-virtual {p1, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3022
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mNumCachedKill:I

    if-lez v1, :cond_2

    .line 3023
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMinCachedKillPss:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3024
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mAvgCachedKillPss:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3025
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ProcessState;->mMaxCachedKillPss:J

    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 3010
    :cond_2
    return-void
.end method
