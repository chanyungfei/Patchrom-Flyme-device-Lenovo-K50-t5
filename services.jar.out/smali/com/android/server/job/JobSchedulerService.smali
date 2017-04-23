.class public Lcom/android/server/job/JobSchedulerService;
.super Lcom/android/server/SystemService;
.source "JobSchedulerService.java"

# interfaces
.implements Lcom/android/server/job/StateChangedListener;
.implements Lcom/android/server/job/JobCompletedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobSchedulerService$JobHandler;,
        Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;,
        Lcom/android/server/job/JobSchedulerService$1;
    }
.end annotation


# static fields
.field public static final DEBUG:Z

.field private static final MAX_JOB_CONTEXTS_COUNT:I

.field static final MIN_CHARGING_COUNT:I = 0x1

.field static final MIN_CONNECTIVITY_COUNT:I = 0x1

.field static final MIN_IDLE_COUNT:I = 0x1

.field static final MIN_READY_JOBS_COUNT:I = 0x2

.field static final MSG_CHECK_JOB:I = 0x1

.field static final MSG_JOB_EXPIRED:I = 0x0

.field static final TAG:Ljava/lang/String; = "JobSchedulerService"


# instance fields
.field final mActiveServices:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/JobServiceContext;",
            ">;"
        }
    .end annotation
.end field

.field mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mControllers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/job/controllers/StateController;",
            ">;"
        }
    .end annotation
.end field

.field mDeviceIdleMode:Z

.field final mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

.field final mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

.field final mJobs:Lcom/android/server/job/JobStore;

.field final mPendingJobs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/server/job/controllers/JobStatus;",
            ">;"
        }
    .end annotation
.end field

.field mPowerManager:Landroid/os/PowerManager;

.field mReadyToRock:Z

.field final mStartedUsers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -wrap0(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/android/server/job/JobSchedulerService;Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 1
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v0

    return v0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 79
    const-string/jumbo v0, "log.tag.JobScheduler"

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 78
    sput-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    .line 82
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 81
    :goto_0
    sput v0, Lcom/android/server/job/JobSchedulerService;->MAX_JOB_CONTEXTS_COUNT:I

    .line 75
    return-void

    .line 82
    :cond_0
    const/4 v0, 0x3

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 317
    invoke-direct {p0, p1}, Lcom/android/server/SystemService;-><init>(Landroid/content/Context;)V

    .line 117
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    .line 124
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    .line 126
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:Ljava/util/ArrayList;

    .line 148
    new-instance v0, Lcom/android/server/job/JobSchedulerService$1;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$1;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 319
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    .line 320
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-static {p0}, Lcom/android/server/job/controllers/ConnectivityController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/ConnectivityController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 321
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-static {p0}, Lcom/android/server/job/controllers/TimeController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/TimeController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 322
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-static {p0}, Lcom/android/server/job/controllers/IdleController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/IdleController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-static {p0}, Lcom/android/server/job/controllers/BatteryController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/BatteryController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 324
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-static {p0}, Lcom/android/server/job/controllers/AppIdleController;->get(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/controllers/AppIdleController;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;-><init>(Lcom/android/server/job/JobSchedulerService;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    .line 327
    new-instance v0, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    invoke-direct {v0, p0}, Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;-><init>(Lcom/android/server/job/JobSchedulerService;)V

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    .line 328
    invoke-static {p0}, Lcom/android/server/job/JobStore;->initAndGet(Lcom/android/server/job/JobSchedulerService;)Lcom/android/server/job/JobStore;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    .line 316
    return-void
.end method

.method private cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 3
    .param p1, "cancelled"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 261
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 262
    const-string/jumbo v0, "JobSchedulerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Cancelling: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 264
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)Z

    .line 265
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v1

    .line 267
    :try_start_0
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 269
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 260
    return-void

    .line 265
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private getRescheduleJobForFailure(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .locals 14
    .param p1, "failureToReschedule"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 458
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v10

    .line 459
    .local v10, "elapsedNowMillis":J
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v7

    .line 461
    .local v7, "job":Landroid/app/job/JobInfo;
    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getInitialBackoffMillis()J

    move-result-wide v12

    .line 462
    .local v12, "initialBackoffMillis":J
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getNumFailures()I

    move-result v0

    add-int/lit8 v6, v0, 0x1

    .line 465
    .local v6, "backoffAttempts":I
    invoke-virtual {v7}, Landroid/app/job/JobInfo;->getBackoffPolicy()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 470
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 471
    const-string/jumbo v0, "JobSchedulerService"

    const-string/jumbo v1, "Unrecognised back-off policy, defaulting to exponential."

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 475
    :cond_0
    :pswitch_0
    long-to-float v0, v12

    add-int/lit8 v1, v6, -0x1

    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    float-to-long v8, v0

    .line 479
    .local v8, "delayMillis":J
    :goto_0
    const-wide/32 v0, 0x112a880

    invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    .line 480
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    add-long v2, v10, v8

    .line 481
    const-wide v4, 0x7fffffffffffffffL

    move-object v1, p1

    .line 480
    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJI)V

    return-object v0

    .line 467
    .end local v8    # "delayMillis":J
    :pswitch_1
    int-to-long v0, v6

    mul-long v8, v12, v0

    .line 468
    .restart local v8    # "delayMillis":J
    goto :goto_0

    .line 465
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .locals 14
    .param p1, "periodicToReschedule"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 495
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    .line 497
    .local v8, "elapsedNow":J
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v0

    sub-long/2addr v0, v8

    const-wide/16 v6, 0x0

    invoke-static {v0, v1, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v12

    .line 498
    .local v12, "runEarly":J
    add-long v2, v8, v12

    .line 499
    .local v2, "newEarliestRunTimeElapsed":J
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/job/JobInfo;->getIntervalMillis()J

    move-result-wide v10

    .line 500
    .local v10, "period":J
    add-long v4, v2, v10

    .line 502
    .local v4, "newLatestRuntimeElapsed":J
    sget-boolean v0, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v0, :cond_0

    .line 503
    const-string/jumbo v0, "JobSchedulerService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Rescheduling executed periodic. New execution window ["

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 504
    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    .line 503
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 504
    const-string/jumbo v6, ", "

    .line 503
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 504
    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    .line 503
    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 504
    const-string/jumbo v6, "]s"

    .line 503
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 506
    :cond_0
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    .line 507
    const/4 v6, 0x0

    move-object v1, p1

    .line 506
    invoke-direct/range {v0 .. v6}, Lcom/android/server/job/controllers/JobStatus;-><init>(Lcom/android/server/job/controllers/JobStatus;JJI)V

    return-object v0
.end method

.method private isCurrentlyActiveLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 438
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 439
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 440
    .local v2, "serviceContext":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    .line 441
    .local v1, "running":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v1, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 442
    const/4 v3, 0x1

    return v3

    .line 438
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 445
    .end local v1    # "running":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "serviceContext":Lcom/android/server/job/JobServiceContext;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private startTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 6
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 384
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v5

    .line 385
    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v4, p1}, Lcom/android/server/job/JobStore;->add(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v3

    .line 386
    .local v3, "update":Z
    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v2, "rocking":Z
    monitor-exit v5

    .line 388
    if-eqz v2, :cond_1

    .line 389
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_1

    .line 390
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    .line 391
    .local v0, "controller":Lcom/android/server/job/controllers/StateController;
    if-eqz v3, :cond_0

    .line 392
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 394
    :cond_0
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 389
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 384
    .end local v0    # "controller":Lcom/android/server/job/controllers/StateController;
    .end local v1    # "i":I
    .end local v2    # "rocking":Z
    .end local v3    # "update":Z
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 381
    .restart local v2    # "rocking":Z
    .restart local v3    # "update":Z
    :cond_1
    return-void
.end method

.method private stopJobOnServiceContextLocked(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 5
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 421
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_1

    .line 422
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/JobServiceContext;

    .line 423
    .local v2, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    .line 424
    .local v0, "executing":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v4

    invoke-virtual {v0, v3, v4}, Lcom/android/server/job/controllers/JobStatus;->matches(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 425
    invoke-virtual {v2}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJob()V

    .line 426
    const/4 v3, 0x1

    return v3

    .line 421
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 429
    .end local v0    # "executing":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jsc":Lcom/android/server/job/JobServiceContext;
    :cond_1
    const/4 v3, 0x0

    return v3
.end method

.method private stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 6
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 406
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v5

    .line 408
    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v4, p1}, Lcom/android/server/job/JobStore;->remove(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    .line 409
    .local v2, "removed":Z
    iget-boolean v3, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v3, "rocking":Z
    monitor-exit v5

    .line 411
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 412
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v1, v4, :cond_0

    .line 413
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    .line 414
    .local v0, "controller":Lcom/android/server/job/controllers/StateController;
    invoke-virtual {v0, p1}, Lcom/android/server/job/controllers/StateController;->maybeStopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 412
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 406
    .end local v0    # "controller":Lcom/android/server/job/controllers/StateController;
    .end local v1    # "i":I
    .end local v2    # "removed":Z
    .end local v3    # "rocking":Z
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 417
    .restart local v2    # "removed":Z
    .restart local v3    # "rocking":Z
    :cond_0
    return v2
.end method


# virtual methods
.method public cancelJob(II)V
    .locals 3
    .param p1, "uid"    # I
    .param p2, "jobId"    # I

    .prologue
    .line 252
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v2

    .line 253
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v1, p1, p2}, Lcom/android/server/job/JobStore;->getJobByUidAndJobId(II)Lcom/android/server/job/controllers/JobStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .local v0, "toCancel":Lcom/android/server/job/controllers/JobStatus;
    monitor-exit v2

    .line 255
    if-eqz v0, :cond_0

    .line 256
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerService;->cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;)V

    .line 250
    :cond_0
    return-void

    .line 252
    .end local v0    # "toCancel":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public cancelJobsForUid(I)V
    .locals 5
    .param p1, "uid"    # I

    .prologue
    .line 234
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v4

    .line 235
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, p1}, Lcom/android/server/job/JobStore;->getJobsByUid(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    monitor-exit v4

    .line 237
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 238
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 239
    .local v2, "toRemove":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v2}, Lcom/android/server/job/JobSchedulerService;->cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;)V

    .line 237
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 234
    .end local v0    # "i":I
    .end local v1    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2    # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 232
    .restart local v0    # "i":I
    .restart local v1    # "jobsForUid":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    return-void
.end method

.method cancelJobsForUser(I)V
    .locals 5
    .param p1, "userHandle"    # I

    .prologue
    .line 217
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v4

    .line 218
    :try_start_0
    iget-object v3, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v3, p1}, Lcom/android/server/job/JobStore;->getJobsByUser(I)Ljava/util/List;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v1

    .local v1, "jobsForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    monitor-exit v4

    .line 220
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 221
    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/job/controllers/JobStatus;

    .line 222
    .local v2, "toRemove":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v2}, Lcom/android/server/job/JobSchedulerService;->cancelJobImpl(Lcom/android/server/job/controllers/JobStatus;)V

    .line 220
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    .end local v0    # "i":I
    .end local v1    # "jobsForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    .end local v2    # "toRemove":Lcom/android/server/job/controllers/JobStatus;
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 215
    .restart local v0    # "i":I
    .restart local v1    # "jobsForUser":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_0
    return-void
.end method

.method dumpInternal(Ljava/io/PrintWriter;)V
    .locals 14
    .param p1, "pw"    # Ljava/io/PrintWriter;

    .prologue
    .line 894
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    .line 895
    .local v4, "now":J
    iget-object v9, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v9

    .line 896
    :try_start_0
    const-string/jumbo v8, "Started users: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 897
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_0

    .line 898
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "u"

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v10, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:Ljava/util/ArrayList;

    invoke-virtual {v10, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v10, " "

    invoke-virtual {v8, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 897
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 900
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 901
    const-string/jumbo v8, "Registered jobs:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 902
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v8}, Lcom/android/server/job/JobStore;->size()I

    move-result v8

    if-lez v8, :cond_1

    .line 903
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v8}, Lcom/android/server/job/JobStore;->getJobs()Landroid/util/ArraySet;

    move-result-object v2

    .line 904
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v8

    if-ge v0, v8, :cond_2

    .line 905
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 906
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    const-string/jumbo v8, "  "

    invoke-virtual {v1, p1, v8}, Lcom/android/server/job/controllers/JobStatus;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V

    .line 904
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 909
    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :cond_1
    const-string/jumbo v8, "  None."

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 911
    :cond_2
    const/4 v0, 0x0

    :goto_2
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_3

    .line 912
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 913
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v8, p1}, Lcom/android/server/job/controllers/StateController;->dumpControllerState(Ljava/io/PrintWriter;)V

    .line 911
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 915
    :cond_3
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 916
    const-string/jumbo v8, "Pending:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 917
    const/4 v0, 0x0

    :goto_3
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v0, v8, :cond_4

    .line 918
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mPendingJobs:Ljava/util/ArrayList;

    invoke-virtual {v8, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v8}, Lcom/android/server/job/controllers/JobStatus;->hashCode()I

    move-result v8

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(I)V

    .line 917
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 920
    :cond_4
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 921
    const-string/jumbo v8, "Active jobs:"

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 922
    const/4 v0, 0x0

    :goto_4
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v0, v8, :cond_6

    .line 923
    iget-object v8, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobServiceContext;

    .line 924
    .local v3, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->isAvailable()Z

    move-result v8

    if-eqz v8, :cond_5

    .line 922
    :goto_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 927
    :cond_5
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getTimeoutElapsed()J

    move-result-wide v6

    .line 928
    .local v6, "timeout":J
    const-string/jumbo v8, "Running for: "

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 929
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getExecutionStartTimeElapsed()J

    move-result-wide v10

    sub-long v10, v4, v10

    const-wide/16 v12, 0x3e8

    div-long/2addr v10, v12

    invoke-virtual {p1, v10, v11}, Ljava/io/PrintWriter;->print(J)V

    .line 930
    const-string/jumbo v8, "s timeout="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 931
    invoke-virtual {p1, v6, v7}, Ljava/io/PrintWriter;->print(J)V

    .line 932
    const-string/jumbo v8, " fromnow="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 933
    sub-long v10, v6, v4

    invoke-virtual {p1, v10, v11}, Ljava/io/PrintWriter;->println(J)V

    .line 934
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v8

    const-string/jumbo v10, "  "

    invoke-virtual {v8, p1, v10}, Lcom/android/server/job/controllers/JobStatus;->dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_5

    .line 895
    .end local v0    # "i":I
    .end local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    .end local v6    # "timeout":J
    :catchall_0
    move-exception v8

    monitor-exit v9

    throw v8

    .line 937
    .restart local v0    # "i":I
    :cond_6
    :try_start_1
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 938
    const-string/jumbo v8, "mReadyToRock="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Z)V

    .line 939
    const-string/jumbo v8, "mDeviceIdleMode="

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-boolean v8, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleMode:Z

    invoke-virtual {p1, v8}, Ljava/io/PrintWriter;->println(Z)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v9

    .line 941
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 893
    return-void
.end method

.method public getPendingJobs(I)Ljava/util/List;
    .locals 6
    .param p1, "uid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Landroid/app/job/JobInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 203
    .local v3, "outList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/app/job/JobInfo;>;"
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v5

    .line 204
    :try_start_0
    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v4}, Lcom/android/server/job/JobStore;->getJobs()Landroid/util/ArraySet;

    move-result-object v2

    .line 205
    .local v2, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {v2}, Landroid/util/ArraySet;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 206
    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/job/controllers/JobStatus;

    .line 207
    .local v1, "job":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v4

    if-ne v4, p1, :cond_0

    .line 208
    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 205
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v1    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_1
    monitor-exit v5

    .line 212
    return-object v3

    .line 203
    .end local v0    # "i":I
    .end local v2    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method public onBootPhase(I)V
    .locals 14
    .param p1, "phase"    # I

    .prologue
    .line 338
    const/16 v0, 0x1f4

    if-ne v0, p1, :cond_1

    .line 340
    new-instance v3, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.PACKAGE_REMOVED"

    invoke-direct {v3, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 341
    .local v3, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "package"

    invoke-virtual {v3, v0}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 342
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 343
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x0

    const/4 v5, 0x0

    .line 342
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 344
    new-instance v7, Landroid/content/IntentFilter;

    const-string/jumbo v0, "android.intent.action.USER_REMOVED"

    invoke-direct {v7, v0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 345
    .local v7, "userFilter":Landroid/content/IntentFilter;
    const-string/jumbo v0, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v7, v0}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 346
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 347
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 346
    invoke-virtual/range {v4 .. v9}, Landroid/content/Context;->registerReceiverAsUser(Landroid/content/BroadcastReceiver;Landroid/os/UserHandle;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 348
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mPowerManager:Landroid/os/PowerManager;

    .line 337
    .end local v3    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "userFilter":Landroid/content/IntentFilter;
    :cond_0
    :goto_0
    return-void

    .line 349
    :cond_1
    const/16 v0, 0x258

    if-ne p1, v0, :cond_0

    .line 350
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v1

    .line 352
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z

    .line 354
    const-string/jumbo v0, "batterystats"

    .line 353
    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/app/IBatteryStats$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/app/IBatteryStats;

    move-result-object v0

    iput-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 356
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    sget v0, Lcom/android/server/job/JobSchedulerService;->MAX_JOB_CONTEXTS_COUNT:I

    if-ge v11, v0, :cond_2

    .line 357
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    .line 358
    new-instance v2, Lcom/android/server/job/JobServiceContext;

    iget-object v4, p0, Lcom/android/server/job/JobSchedulerService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 359
    invoke-virtual {p0}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v5

    .line 358
    invoke-direct {v2, p0, v4, v5}, Lcom/android/server/job/JobServiceContext;-><init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/internal/app/IBatteryStats;Landroid/os/Looper;)V

    .line 357
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 362
    :cond_2
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    invoke-virtual {v0}, Lcom/android/server/job/JobStore;->getJobs()Landroid/util/ArraySet;

    move-result-object v13

    .line 363
    .local v13, "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    const/4 v11, 0x0

    :goto_2
    invoke-virtual {v13}, Landroid/util/ArraySet;->size()I

    move-result v0

    if-ge v11, v0, :cond_4

    .line 364
    invoke-virtual {v13, v11}, Landroid/util/ArraySet;->valueAt(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/server/job/controllers/JobStatus;

    .line 365
    .local v12, "job":Lcom/android/server/job/controllers/JobStatus;
    const/4 v10, 0x0

    .local v10, "controller":I
    :goto_3
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v10, v0, :cond_3

    .line 366
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    iget-boolean v2, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleMode:Z

    invoke-virtual {v0, v2}, Lcom/android/server/job/controllers/StateController;->deviceIdleModeChanged(Z)V

    .line 367
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v0, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v0, v12}, Lcom/android/server/job/controllers/StateController;->maybeStartTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 365
    add-int/lit8 v10, v10, 0x1

    goto :goto_3

    .line 363
    :cond_3
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 371
    .end local v10    # "controller":I
    .end local v12    # "job":Lcom/android/server/job/controllers/JobStatus;
    :cond_4
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    goto :goto_0

    .line 350
    .end local v11    # "i":I
    .end local v13    # "jobs":Landroid/util/ArraySet;, "Landroid/util/ArraySet<Lcom/android/server/job/controllers/JobStatus;>;"
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public onControllerStateChanged()V
    .locals 2

    .prologue
    .line 549
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 548
    return-void
.end method

.method public onJobCompleted(Lcom/android/server/job/controllers/JobStatus;Z)V
    .locals 5
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;
    .param p2, "needsReschedule"    # Z

    .prologue
    .line 521
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_0

    .line 522
    const-string/jumbo v2, "JobSchedulerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Completed "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", reschedule="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->stopTrackingJob(Lcom/android/server/job/controllers/JobStatus;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 525
    sget-boolean v2, Lcom/android/server/job/JobSchedulerService;->DEBUG:Z

    if-eqz v2, :cond_1

    .line 526
    const-string/jumbo v2, "JobSchedulerService"

    const-string/jumbo v3, "Could not find job to remove. Was job removed while executing?"

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    :cond_1
    return-void

    .line 530
    :cond_2
    if-eqz p2, :cond_4

    .line 531
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForFailure(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v0

    .line 532
    .local v0, "rescheduled":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerService;->startTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 537
    .end local v0    # "rescheduled":Lcom/android/server/job/controllers/JobStatus;
    :cond_3
    :goto_0
    iget-object v2, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 520
    return-void

    .line 533
    :cond_4
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJob()Landroid/app/job/JobInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/job/JobInfo;->isPeriodic()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 534
    invoke-direct {p0, p1}, Lcom/android/server/job/JobSchedulerService;->getRescheduleJobForPeriodic(Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    .line 535
    .local v1, "rescheduledPeriodic":Lcom/android/server/job/controllers/JobStatus;
    invoke-direct {p0, v1}, Lcom/android/server/job/JobSchedulerService;->startTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    goto :goto_0
.end method

.method public onRunJobNow(Lcom/android/server/job/controllers/JobStatus;)V
    .locals 2
    .param p1, "jobStatus"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    .line 554
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 553
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 333
    const-string/jumbo v0, "jobscheduler"

    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mJobSchedulerStub:Lcom/android/server/job/JobSchedulerService$JobSchedulerStub;

    invoke-virtual {p0, v0, v1}, Lcom/android/server/job/JobSchedulerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 332
    return-void
.end method

.method public onStartUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 176
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 175
    return-void
.end method

.method public onStopUser(I)V
    .locals 2
    .param p1, "userHandle"    # I

    .prologue
    .line 183
    iget-object v0, p0, Lcom/android/server/job/JobSchedulerService;->mStartedUsers:Ljava/util/ArrayList;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 182
    return-void
.end method

.method public schedule(Landroid/app/job/JobInfo;I)I
    .locals 3
    .param p1, "job"    # Landroid/app/job/JobInfo;
    .param p2, "uId"    # I

    .prologue
    const/4 v2, 0x1

    .line 194
    new-instance v0, Lcom/android/server/job/controllers/JobStatus;

    invoke-direct {v0, p1, p2}, Lcom/android/server/job/controllers/JobStatus;-><init>(Landroid/app/job/JobInfo;I)V

    .line 195
    .local v0, "jobStatus":Lcom/android/server/job/controllers/JobStatus;
    invoke-virtual {p1}, Landroid/app/job/JobInfo;->getId()I

    move-result v1

    invoke-virtual {p0, p2, v1}, Lcom/android/server/job/JobSchedulerService;->cancelJob(II)V

    .line 196
    invoke-direct {p0, v0}, Lcom/android/server/job/JobSchedulerService;->startTrackingJob(Lcom/android/server/job/controllers/JobStatus;)V

    .line 197
    iget-object v1, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    invoke-virtual {v1, v2}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 198
    return v2
.end method

.method updateIdleMode(Z)V
    .locals 8
    .param p1, "enabled"    # Z

    .prologue
    .line 274
    const/4 v0, 0x0

    .line 276
    .local v0, "changed":Z
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v6

    .line 277
    :try_start_0
    iget-boolean v5, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleMode:Z

    if-eq v5, p1, :cond_0

    .line 278
    const/4 v0, 0x1

    .line 280
    :cond_0
    iget-boolean v4, p0, Lcom/android/server/job/JobSchedulerService;->mReadyToRock:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .local v4, "rocking":Z
    monitor-exit v6

    .line 282
    if-eqz v0, :cond_5

    .line 283
    if-eqz v4, :cond_1

    .line 284
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_1

    .line 285
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mControllers:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/job/controllers/StateController;

    invoke-virtual {v5, p1}, Lcom/android/server/job/controllers/StateController;->deviceIdleModeChanged(Z)V

    .line 284
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 276
    .end local v2    # "i":I
    .end local v4    # "rocking":Z
    :catchall_0
    move-exception v5

    monitor-exit v6

    throw v5

    .line 288
    .restart local v4    # "rocking":Z
    :cond_1
    iget-object v6, p0, Lcom/android/server/job/JobSchedulerService;->mJobs:Lcom/android/server/job/JobStore;

    monitor-enter v6

    .line 289
    :try_start_1
    iput-boolean p1, p0, Lcom/android/server/job/JobSchedulerService;->mDeviceIdleMode:Z

    .line 290
    if-eqz p1, :cond_3

    .line 292
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v2, v5, :cond_4

    .line 293
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mActiveServices:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/server/job/JobServiceContext;

    .line 294
    .local v3, "jsc":Lcom/android/server/job/JobServiceContext;
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->getRunningJob()Lcom/android/server/job/controllers/JobStatus;

    move-result-object v1

    .line 295
    .local v1, "executing":Lcom/android/server/job/controllers/JobStatus;
    if-eqz v1, :cond_2

    .line 296
    invoke-virtual {v3}, Lcom/android/server/job/JobServiceContext;->cancelExecutingJob()V

    .line 292
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 301
    .end local v1    # "executing":Lcom/android/server/job/controllers/JobStatus;
    .end local v2    # "i":I
    .end local v3    # "jsc":Lcom/android/server/job/JobServiceContext;
    :cond_3
    iget-object v5, p0, Lcom/android/server/job/JobSchedulerService;->mHandler:Lcom/android/server/job/JobSchedulerService$JobHandler;

    const/4 v7, 0x1

    invoke-virtual {v5, v7}, Lcom/android/server/job/JobSchedulerService$JobHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :cond_4
    monitor-exit v6

    .line 273
    :cond_5
    return-void

    .line 288
    :catchall_1
    move-exception v5

    monitor-exit v6

    throw v5
.end method
