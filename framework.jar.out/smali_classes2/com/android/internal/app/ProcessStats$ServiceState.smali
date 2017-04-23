.class public final Lcom/android/internal/app/ProcessStats$ServiceState;
.super Lcom/android/internal/app/ProcessStats$DurationsTable;
.source "ProcessStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ProcessStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ServiceState"
.end annotation


# static fields
.field public static final SERVICE_BOUND:I = 0x2

.field static final SERVICE_COUNT:I = 0x4

.field public static final SERVICE_EXEC:I = 0x3

.field public static final SERVICE_RUN:I = 0x0

.field public static final SERVICE_STARTED:I = 0x1


# instance fields
.field mBoundCount:I

.field mBoundStartTime:J

.field public mBoundState:I

.field mExecCount:I

.field mExecStartTime:J

.field public mExecState:I

.field mOwner:Ljava/lang/Object;

.field public final mPackage:Ljava/lang/String;

.field mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

.field public final mProcessName:Ljava/lang/String;

.field mRestarting:Z

.field mRunCount:I

.field mRunStartTime:J

.field public mRunState:I

.field mStarted:Z

.field mStartedCount:I

.field mStartedStartTime:J

.field public mStartedState:I


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/app/ProcessStats$ServiceState;IIJIJ)J
    .locals 2
    .param p1, "opType"    # I
    .param p2, "curState"    # I
    .param p3, "startTime"    # J
    .param p5, "memFactor"    # I
    .param p6, "now"    # J

    .prologue
    invoke-direct/range {p0 .. p7}, Lcom/android/internal/app/ProcessStats$ServiceState;->getDuration(IIJIJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public constructor <init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/app/ProcessStats$ProcessState;)V
    .locals 1
    .param p1, "processStats"    # Lcom/android/internal/app/ProcessStats;
    .param p2, "pkg"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "processName"    # Ljava/lang/String;
    .param p5, "proc"    # Lcom/android/internal/app/ProcessStats$ProcessState;

    .prologue
    const/4 v0, -0x1

    .line 3493
    invoke-direct {p0, p1, p3}, Lcom/android/internal/app/ProcessStats$DurationsTable;-><init>(Lcom/android/internal/app/ProcessStats;Ljava/lang/String;)V

    .line 3474
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    .line 3480
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    .line 3484
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    .line 3488
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    .line 3494
    iput-object p2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    .line 3495
    iput-object p4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProcessName:Ljava/lang/String;

    .line 3496
    iput-object p5, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 3492
    return-void
.end method

.method private getDuration(IIJIJ)J
    .locals 6
    .param p1, "opType"    # I
    .param p2, "curState"    # I
    .param p3, "startTime"    # J
    .param p5, "memFactor"    # I
    .param p6, "now"    # J

    .prologue
    .line 3733
    mul-int/lit8 v1, p5, 0x4

    add-int v0, p1, v1

    .line 3734
    .local v0, "state":I
    invoke-virtual {p0, v0, p6, p7}, Lcom/android/internal/app/ProcessStats$ServiceState;->getDuration(IJ)J

    move-result-wide v2

    .line 3735
    .local v2, "time":J
    if-ne p2, p5, :cond_0

    .line 3736
    sub-long v4, p6, p3

    add-long/2addr v2, v4

    .line 3738
    :cond_0
    return-wide v2
.end method

.method private updateRunning(IJ)V
    .locals 4
    .param p1, "memFactor"    # I
    .param p2, "now"    # J

    .prologue
    const/4 v2, -0x1

    .line 3638
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-ne v1, v2, :cond_0

    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-eq v1, v2, :cond_3

    .line 3639
    :cond_0
    move v0, p1

    .line 3640
    .local v0, "state":I
    :goto_0
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    if-eq v1, v0, :cond_2

    .line 3641
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    if-eq v1, v2, :cond_4

    .line 3642
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x0

    .line 3643
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    sub-long v2, p2, v2

    .line 3642
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    .line 3647
    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    .line 3648
    iput-wide p2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    .line 3637
    :cond_2
    return-void

    .line 3639
    .end local v0    # "state":I
    :cond_3
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-ne v1, v2, :cond_0

    const/4 v0, -0x1

    .restart local v0    # "state":I
    goto :goto_0

    .line 3644
    :cond_4
    if-eq v0, v2, :cond_1

    .line 3645
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    goto :goto_1
.end method


# virtual methods
.method add(Lcom/android/internal/app/ProcessStats$ServiceState;)V
    .locals 2
    .param p1, "other"    # Lcom/android/internal/app/ProcessStats$ServiceState;

    .prologue
    .line 3582
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDurations(Lcom/android/internal/app/ProcessStats$DurationsTable;)V

    .line 3583
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    iget v1, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    .line 3584
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    iget v1, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    .line 3585
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    iget v1, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    .line 3586
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    iget v1, p1, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    add-int/2addr v0, v1

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    .line 3581
    return-void
.end method

.method public applyNewOwner(Ljava/lang/Object;)V
    .locals 5
    .param p1, "newOwner"    # Ljava/lang/Object;

    .prologue
    const/4 v4, -0x1

    const/4 v3, 0x0

    .line 3500
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-eq v2, p1, :cond_0

    .line 3501
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v2, :cond_1

    .line 3502
    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    .line 3503
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->incActiveServices(Ljava/lang/String;)V

    .line 3499
    :cond_0
    :goto_0
    return-void

    .line 3507
    :cond_1
    iput-object p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    .line 3508
    iget-boolean v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    if-nez v2, :cond_2

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-eq v2, v4, :cond_5

    .line 3509
    :cond_2
    :goto_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3510
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    if-eqz v2, :cond_3

    .line 3514
    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 3516
    :cond_3
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-eq v2, v4, :cond_4

    .line 3520
    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    .line 3522
    :cond_4
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v2, v4, :cond_0

    .line 3526
    invoke-virtual {p0, v3, v3, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    goto :goto_0

    .line 3508
    .end local v0    # "now":J
    :cond_5
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v2, v4, :cond_0

    goto :goto_1
.end method

.method public clearCurrentOwner(Ljava/lang/Object;Z)V
    .locals 7
    .param p1, "owner"    # Ljava/lang/Object;
    .param p2, "silently"    # Z

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 3534
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-ne v2, p1, :cond_7

    .line 3535
    iget-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/android/internal/app/ProcessStats$ProcessState;->decActiveServices(Ljava/lang/String;)V

    .line 3536
    iget-boolean v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    if-nez v2, :cond_0

    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-eq v2, v6, :cond_8

    .line 3537
    :cond_0
    :goto_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3538
    .local v0, "now":J
    iget-boolean v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    if-eqz v2, :cond_2

    .line 3539
    if-nez p2, :cond_1

    .line 3541
    const-string/jumbo v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Service owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3542
    const-string/jumbo v4, " cleared while started: pkg="

    .line 3541
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3542
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    .line 3541
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3542
    const-string/jumbo v4, " service="

    .line 3541
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3543
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    .line 3541
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3543
    const-string/jumbo v4, " proc="

    .line 3541
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3543
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 3541
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3546
    :cond_1
    invoke-virtual {p0, v5, v5, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setStarted(ZIJ)V

    .line 3548
    :cond_2
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-eq v2, v6, :cond_4

    .line 3549
    if-nez p2, :cond_3

    .line 3551
    const-string/jumbo v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Service owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3552
    const-string/jumbo v4, " cleared while bound: pkg="

    .line 3551
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3552
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    .line 3551
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3552
    const-string/jumbo v4, " service="

    .line 3551
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3553
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    .line 3551
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3553
    const-string/jumbo v4, " proc="

    .line 3551
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3553
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 3551
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3556
    :cond_3
    invoke-virtual {p0, v5, v5, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setBound(ZIJ)V

    .line 3558
    :cond_4
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v2, v6, :cond_6

    .line 3559
    if-nez p2, :cond_5

    .line 3561
    const-string/jumbo v2, "ProcessStats"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Service owner "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3562
    const-string/jumbo v4, " cleared while exec: pkg="

    .line 3561
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3562
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    .line 3561
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3562
    const-string/jumbo v4, " service="

    .line 3561
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3563
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    .line 3561
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3563
    const-string/jumbo v4, " proc="

    .line 3561
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3563
    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 3561
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3566
    :cond_5
    invoke-virtual {p0, v5, v5, v0, v1}, Lcom/android/internal/app/ProcessStats$ServiceState;->setExecuting(ZIJ)V

    .line 3569
    .end local v0    # "now":J
    :cond_6
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    .line 3533
    :cond_7
    return-void

    .line 3536
    :cond_8
    iget v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v2, v6, :cond_6

    goto/16 :goto_0
.end method

.method commitStateTime(J)V
    .locals 5
    .param p1, "now"    # J

    .prologue
    const/4 v1, -0x1

    .line 3618
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    if-eq v0, v1, :cond_0

    .line 3619
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x0

    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    sub-long v2, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    .line 3620
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    .line 3622
    :cond_0
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-eq v0, v1, :cond_1

    .line 3623
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x1

    .line 3624
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    sub-long v2, p1, v2

    .line 3623
    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    .line 3625
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    .line 3627
    :cond_1
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-eq v0, v1, :cond_2

    .line 3628
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x2

    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    sub-long v2, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    .line 3629
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    .line 3631
    :cond_2
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v0, v1, :cond_3

    .line 3632
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    mul-int/lit8 v0, v0, 0x4

    add-int/lit8 v0, v0, 0x3

    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    sub-long v2, p1, v2

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    .line 3633
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    .line 3617
    :cond_3
    return-void
.end method

.method public isInUse()Z
    .locals 1

    .prologue
    .line 3574
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isRestarting()Z
    .locals 1

    .prologue
    .line 3578
    iget-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    return v0
.end method

.method readFromParcel(Landroid/os/Parcel;)Z
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 3607
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$ServiceState;->readDurationsFromParcel(Landroid/os/Parcel;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3608
    const/4 v0, 0x0

    return v0

    .line 3610
    :cond_0
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    .line 3611
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    .line 3612
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    .line 3613
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    .line 3614
    const/4 v0, 0x1

    return v0
.end method

.method resetSafely(J)V
    .locals 5
    .param p1, "now"    # J

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 3590
    invoke-virtual {p0}, Lcom/android/internal/app/ProcessStats$ServiceState;->resetDurationsSafely()V

    .line 3591
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunState:I

    if-eq v0, v3, :cond_0

    move v0, v1

    :goto_0
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    .line 3592
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-eq v0, v3, :cond_1

    move v0, v1

    :goto_1
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    .line 3593
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-eq v0, v3, :cond_2

    move v0, v1

    :goto_2
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    .line 3594
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v0, v3, :cond_3

    :goto_3
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    .line 3595
    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    iput-wide p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunStartTime:J

    .line 3589
    return-void

    :cond_0
    move v0, v2

    .line 3591
    goto :goto_0

    :cond_1
    move v0, v2

    .line 3592
    goto :goto_1

    :cond_2
    move v0, v2

    .line 3593
    goto :goto_2

    :cond_3
    move v1, v2

    .line 3594
    goto :goto_3
.end method

.method public setBound(ZIJ)V
    .locals 5
    .param p1, "bound"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    .prologue
    .line 3693
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 3695
    const-string/jumbo v1, "ProcessStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Binding service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " without owner"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3698
    :cond_0
    if-eqz p1, :cond_3

    move v0, p2

    .line 3699
    .local v0, "state":I
    :goto_0
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    if-eq v1, v0, :cond_2

    .line 3700
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 3701
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x2

    .line 3702
    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    sub-long v2, p3, v2

    .line 3701
    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    .line 3706
    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundState:I

    .line 3707
    iput-wide p3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundStartTime:J

    .line 3708
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ServiceState;->updateRunning(IJ)V

    .line 3692
    :cond_2
    return-void

    .line 3698
    .end local v0    # "state":I
    :cond_3
    const/4 v0, -0x1

    .restart local v0    # "state":I
    goto :goto_0

    .line 3703
    :cond_4
    if-eqz p1, :cond_1

    .line 3704
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    goto :goto_1
.end method

.method public setExecuting(ZIJ)V
    .locals 5
    .param p1, "executing"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    .prologue
    .line 3713
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 3715
    const-string/jumbo v1, "ProcessStats"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Executing service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " without owner"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3718
    :cond_0
    if-eqz p1, :cond_3

    move v0, p2

    .line 3719
    .local v0, "state":I
    :goto_0
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    if-eq v1, v0, :cond_2

    .line 3720
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    const/4 v2, -0x1

    if-eq v1, v2, :cond_4

    .line 3721
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    mul-int/lit8 v1, v1, 0x4

    add-int/lit8 v1, v1, 0x3

    iget-wide v2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    sub-long v2, p3, v2

    invoke-virtual {p0, v1, v2, v3}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    .line 3725
    :cond_1
    :goto_1
    iput v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecState:I

    .line 3726
    iput-wide p3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecStartTime:J

    .line 3727
    invoke-direct {p0, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ServiceState;->updateRunning(IJ)V

    .line 3712
    :cond_2
    return-void

    .line 3718
    .end local v0    # "state":I
    :cond_3
    const/4 v0, -0x1

    .restart local v0    # "state":I
    goto :goto_0

    .line 3722
    :cond_4
    if-eqz p1, :cond_1

    .line 3723
    iget v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    goto :goto_1
.end method

.method public setRestarting(ZIJ)V
    .locals 1
    .param p1, "restarting"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    .prologue
    .line 3663
    iput-boolean p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    .line 3664
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ServiceState;->updateStartedState(IJ)V

    .line 3662
    return-void
.end method

.method public setStarted(ZIJ)V
    .locals 3
    .param p1, "started"    # Z
    .param p2, "memFactor"    # I
    .param p3, "now"    # J

    .prologue
    .line 3653
    iget-object v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mOwner:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 3655
    const-string/jumbo v0, "ProcessStats"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Starting service "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " without owner"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3658
    :cond_0
    iput-boolean p1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    .line 3659
    invoke-virtual {p0, p2, p3, p4}, Lcom/android/internal/app/ProcessStats$ServiceState;->updateStartedState(IJ)V

    .line 3652
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3742
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "ServiceState{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3743
    const-string/jumbo v1, " "

    .line 3742
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3743
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    .line 3742
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3743
    const-string/jumbo v1, " pkg="

    .line 3742
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3743
    iget-object v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    .line 3742
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3743
    const-string/jumbo v1, " proc="

    .line 3742
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3744
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 3742
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 3744
    const-string/jumbo v1, "}"

    .line 3742
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method updateStartedState(IJ)V
    .locals 6
    .param p1, "memFactor"    # I
    .param p2, "now"    # J

    .prologue
    const/4 v4, -0x1

    .line 3668
    iget v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-eq v3, v4, :cond_3

    const/4 v2, 0x1

    .line 3669
    .local v2, "wasStarted":Z
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStarted:Z

    if-nez v3, :cond_4

    iget-boolean v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRestarting:Z

    .line 3670
    :goto_1
    if-eqz v0, :cond_5

    move v1, p1

    .line 3671
    .local v1, "state":I
    :goto_2
    iget v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-eq v3, v1, :cond_2

    .line 3672
    iget v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    if-eq v3, v4, :cond_6

    .line 3673
    iget v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    mul-int/lit8 v3, v3, 0x4

    add-int/lit8 v3, v3, 0x1

    .line 3674
    iget-wide v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    sub-long v4, p2, v4

    .line 3673
    invoke-virtual {p0, v3, v4, v5}, Lcom/android/internal/app/ProcessStats$ServiceState;->addDuration(IJ)V

    .line 3678
    :cond_0
    :goto_3
    iput v1, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedState:I

    .line 3679
    iput-wide p2, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedStartTime:J

    .line 3680
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mPackage:Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/android/internal/app/ProcessStats$ProcessState;->pullFixedProc(Ljava/lang/String;)Lcom/android/internal/app/ProcessStats$ProcessState;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    .line 3681
    if-eq v2, v0, :cond_1

    .line 3682
    if-eqz v0, :cond_7

    .line 3683
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/android/internal/app/ProcessStats$ProcessState;->incStartedServices(IJLjava/lang/String;)V

    .line 3688
    :cond_1
    :goto_4
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/app/ProcessStats$ServiceState;->updateRunning(IJ)V

    .line 3667
    :cond_2
    return-void

    .line 3668
    .end local v1    # "state":I
    .end local v2    # "wasStarted":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "wasStarted":Z
    goto :goto_0

    .line 3669
    :cond_4
    const/4 v0, 0x1

    .local v0, "started":Z
    goto :goto_1

    .line 3670
    .end local v0    # "started":Z
    :cond_5
    const/4 v1, -0x1

    .restart local v1    # "state":I
    goto :goto_2

    .line 3675
    :cond_6
    if-eqz v0, :cond_0

    .line 3676
    iget v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    goto :goto_3

    .line 3685
    :cond_7
    iget-object v3, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mProc:Lcom/android/internal/app/ProcessStats$ProcessState;

    iget-object v4, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mName:Ljava/lang/String;

    invoke-virtual {v3, p1, p2, p3, v4}, Lcom/android/internal/app/ProcessStats$ProcessState;->decStartedServices(IJLjava/lang/String;)V

    goto :goto_4
.end method

.method writeToParcel(Landroid/os/Parcel;J)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "now"    # J

    .prologue
    .line 3599
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ProcessStats$ServiceState;->writeDurationsToParcel(Landroid/os/Parcel;)V

    .line 3600
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mRunCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3601
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mStartedCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3602
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mBoundCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3603
    iget v0, p0, Lcom/android/internal/app/ProcessStats$ServiceState;->mExecCount:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3598
    return-void
.end method
