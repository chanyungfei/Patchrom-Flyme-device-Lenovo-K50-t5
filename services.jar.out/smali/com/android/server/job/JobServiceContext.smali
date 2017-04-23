.class public Lcom/android/server/job/JobServiceContext;
.super Landroid/app/job/IJobCallback$Stub;
.source "JobServiceContext.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/JobServiceContext$JobServiceHandler;
    }
.end annotation


# static fields
.field private static final DEBUG:Z

.field private static final EXECUTING_TIMESLICE_MILLIS:J = 0x927c0L

.field private static final MSG_CALLBACK:I = 0x1

.field private static final MSG_CANCEL:I = 0x3

.field private static final MSG_SERVICE_BOUND:I = 0x2

.field private static final MSG_SHUTDOWN_EXECUTION:I = 0x4

.field private static final MSG_TIMEOUT:I = 0x0

.field private static final OP_TIMEOUT_MILLIS:J = 0x1f40L

.field private static final TAG:Ljava/lang/String; = "JobServiceContext"

.field static final VERB_BINDING:I = 0x0

.field static final VERB_EXECUTING:I = 0x2

.field static final VERB_STARTING:I = 0x1

.field static final VERB_STOPPING:I = 0x3

.field private static final VERB_STRINGS:[Ljava/lang/String;

.field private static final defaultMaxActiveJobsPerService:I


# instance fields
.field private mAvailable:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = "mLock"
    .end annotation
.end field

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private final mCallbackHandler:Landroid/os/Handler;

.field private mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mCompletedListener:Lcom/android/server/job/JobCompletedListener;

.field private final mContext:Landroid/content/Context;

.field private mExecutionStartTimeElapsed:J

.field private final mLock:Ljava/lang/Object;

.field private mParams:Landroid/app/job/JobParameters;

.field private mRunningJob:Lcom/android/server/job/controllers/JobStatus;

.field private mTimeoutElapsed:J

.field mVerb:I

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field service:Landroid/app/job/IJobService;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()[Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/job/JobServiceContext;)Lcom/android/internal/app/IBatteryStats;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    return-object v0
.end method

.method static synthetic -get3(Lcom/android/server/job/JobServiceContext;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic -get4(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/JobCompletedListener;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCompletedListener:Lcom/android/server/job/JobCompletedListener;

    return-object v0
.end method

.method static synthetic -get5(Lcom/android/server/job/JobServiceContext;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get6(Lcom/android/server/job/JobServiceContext;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get7(Lcom/android/server/job/JobServiceContext;)Landroid/app/job/JobParameters;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    return-object v0
.end method

.method static synthetic -get8(Lcom/android/server/job/JobServiceContext;)Lcom/android/server/job/controllers/JobStatus;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    return-object v0
.end method

.method static synthetic -get9(Lcom/android/server/job/JobServiceContext;)Landroid/os/PowerManager$WakeLock;
    .locals 1

    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/job/JobServiceContext;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    return p1
.end method

.method static synthetic -set1(Lcom/android/server/job/JobServiceContext;Landroid/app/job/JobParameters;)Landroid/app/job/JobParameters;
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    return-object p1
.end method

.method static synthetic -set2(Lcom/android/server/job/JobServiceContext;Lcom/android/server/job/controllers/JobStatus;)Lcom/android/server/job/controllers/JobStatus;
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    return-object p1
.end method

.method static synthetic -set3(Lcom/android/server/job/JobServiceContext;Landroid/os/PowerManager$WakeLock;)Landroid/os/PowerManager$WakeLock;
    .locals 0

    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    return-object p1
.end method

.method static synthetic -wrap0(Lcom/android/server/job/JobServiceContext;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOut()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/job/JobServiceContext;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOut()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v2, 0x3

    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 68
    const-string/jumbo v0, "log.tag.JobServiceContext"

    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 67
    sput-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    .line 72
    invoke-static {}, Landroid/app/ActivityManager;->isLowRamDeviceStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 71
    :goto_0
    sput v0, Lcom/android/server/job/JobServiceContext;->defaultMaxActiveJobsPerService:I

    .line 78
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 79
    const-string/jumbo v3, "VERB_BINDING"

    aput-object v3, v0, v4

    const-string/jumbo v3, "VERB_STARTING"

    aput-object v3, v0, v1

    const-string/jumbo v1, "VERB_EXECUTING"

    const/4 v3, 0x2

    aput-object v1, v0, v3

    const-string/jumbo v1, "VERB_STOPPING"

    aput-object v1, v0, v2

    .line 78
    sput-object v0, Lcom/android/server/job/JobServiceContext;->VERB_STRINGS:[Ljava/lang/String;

    .line 65
    return-void

    :cond_0
    move v0, v2

    .line 72
    goto :goto_0
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobCompletedListener;Landroid/os/Looper;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p3, "completedListener"    # Lcom/android/server/job/JobCompletedListener;
    .param p4, "looper"    # Landroid/os/Looper;

    .prologue
    .line 136
    invoke-direct {p0}, Landroid/app/job/IJobCallback$Stub;-><init>()V

    .line 112
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCancelled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 119
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    .line 138
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    .line 139
    iput-object p2, p0, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 140
    new-instance v0, Lcom/android/server/job/JobServiceContext$JobServiceHandler;

    invoke-direct {v0, p0, p4}, Lcom/android/server/job/JobServiceContext$JobServiceHandler;-><init>(Lcom/android/server/job/JobServiceContext;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    .line 141
    iput-object p3, p0, Lcom/android/server/job/JobServiceContext;->mCompletedListener:Lcom/android/server/job/JobCompletedListener;

    .line 142
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    .line 137
    return-void
.end method

.method constructor <init>(Lcom/android/server/job/JobSchedulerService;Lcom/android/internal/app/IBatteryStats;Landroid/os/Looper;)V
    .locals 1
    .param p1, "service"    # Lcom/android/server/job/JobSchedulerService;
    .param p2, "batteryStats"    # Lcom/android/internal/app/IBatteryStats;
    .param p3, "looper"    # Landroid/os/Looper;

    .prologue
    .line 132
    invoke-virtual {p1}, Lcom/android/server/job/JobSchedulerService;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0, p2, p1, p3}, Lcom/android/server/job/JobServiceContext;-><init>(Landroid/content/Context;Lcom/android/internal/app/IBatteryStats;Lcom/android/server/job/JobCompletedListener;Landroid/os/Looper;)V

    .line 131
    return-void
.end method

.method private removeOpTimeOut()V
    .locals 2

    .prologue
    .line 586
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 585
    return-void
.end method

.method private scheduleOpTimeOut()V
    .locals 8

    .prologue
    .line 570
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOut()V

    .line 572
    iget v1, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    const/4 v4, 0x2

    if-ne v1, v4, :cond_1

    .line 573
    const-wide/32 v2, 0x927c0

    .line 574
    .local v2, "timeoutMillis":J
    :goto_0
    sget-boolean v1, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v1, :cond_0

    .line 575
    const-string/jumbo v1, "JobServiceContext"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Scheduling time out for \'"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 576
    iget-object v5, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v5}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v5

    .line 575
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 576
    const-string/jumbo v5, "\' jId: "

    .line 575
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 577
    iget-object v5, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    invoke-virtual {v5}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v5

    .line 575
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 577
    const-string/jumbo v5, ", in "

    .line 575
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 577
    const-wide/16 v6, 0x3e8

    div-long v6, v2, v6

    .line 575
    invoke-virtual {v4, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 577
    const-string/jumbo v5, " s"

    .line 575
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    :cond_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 580
    .local v0, "m":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 581
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    .line 569
    return-void

    .line 573
    .end local v0    # "m":Landroid/os/Message;
    .end local v2    # "timeoutMillis":J
    :cond_1
    const-wide/16 v2, 0x1f40

    .restart local v2    # "timeoutMillis":J
    goto :goto_0
.end method

.method private verifyCallingUid()Z
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v1

    if-eq v0, v1, :cond_2

    .line 286
    :cond_0
    sget-boolean v0, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v0, :cond_1

    .line 287
    const-string/jumbo v0, "JobServiceContext"

    const-string/jumbo v1, "Stale callback received, ignoring."

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_1
    const/4 v0, 0x0

    return v0

    .line 291
    :cond_2
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method public acknowledgeStartMessage(IZ)V
    .locals 3
    .param p1, "jobId"    # I
    .param p2, "ongoing"    # Z

    .prologue
    const/4 v1, 0x1

    .line 244
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->verifyCallingUid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 245
    return-void

    .line 247
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 243
    return-void

    .line 247
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public acknowledgeStopMessage(IZ)V
    .locals 3
    .param p1, "jobId"    # I
    .param p2, "reschedule"    # Z

    .prologue
    const/4 v1, 0x1

    .line 235
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->verifyCallingUid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 236
    return-void

    .line 238
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 234
    return-void

    .line 238
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method cancelExecutingJob()V
    .locals 2

    .prologue
    .line 204
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 203
    return-void
.end method

.method executeRunnableJob(Lcom/android/server/job/controllers/JobStatus;)Z
    .locals 11
    .param p1, "job"    # Lcom/android/server/job/controllers/JobStatus;

    .prologue
    const/4 v10, 0x0

    .line 152
    iget-object v5, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 153
    :try_start_0
    iget-boolean v4, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z

    if-nez v4, :cond_0

    .line 154
    const-string/jumbo v4, "JobServiceContext"

    const-string/jumbo v6, "Starting new runnable but context is unavailable > Error."

    invoke-static {v4, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 155
    return v10

    .line 158
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 160
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->hasDeadlineConstraint()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 161
    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getLatestRunTimeElapsed()J

    move-result-wide v6

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    cmp-long v4, v6, v8

    if-gez v4, :cond_2

    const/4 v3, 0x1

    .line 162
    .local v3, "isDeadlineExpired":Z
    :goto_0
    new-instance v4, Landroid/app/job/JobParameters;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getJobId()I

    move-result v6

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v7

    invoke-direct {v4, p0, v6, v7, v3}, Landroid/app/job/JobParameters;-><init>(Landroid/os/IBinder;ILandroid/os/PersistableBundle;Z)V

    iput-object v4, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 163
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 165
    const/4 v4, 0x0

    iput v4, p0, Lcom/android/server/job/JobServiceContext;->mVerb:I

    .line 166
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->scheduleOpTimeOut()V

    .line 167
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4}, Landroid/content/Intent;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 168
    .local v2, "intent":Landroid/content/Intent;
    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    .line 170
    new-instance v6, Landroid/os/UserHandle;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUserId()I

    move-result v7

    invoke-direct {v6, v7}, Landroid/os/UserHandle;-><init>(I)V

    .line 169
    const/4 v7, 0x5

    .line 168
    invoke-virtual {v4, v2, p0, v7, v6}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v0

    .line 171
    .local v0, "binding":Z
    if-nez v0, :cond_4

    .line 172
    sget-boolean v4, Lcom/android/server/job/JobServiceContext;->DEBUG:Z

    if-eqz v4, :cond_1

    .line 173
    const-string/jumbo v4, "JobServiceContext"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v7

    invoke-virtual {v7}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " unavailable."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    :cond_1
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    .line 176
    const/4 v4, 0x0

    iput-object v4, p0, Lcom/android/server/job/JobServiceContext;->mParams:Landroid/app/job/JobParameters;

    .line 177
    const-wide/16 v6, 0x0

    iput-wide v6, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    .line 178
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->removeOpTimeOut()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v5

    .line 179
    return v10

    .line 161
    .end local v0    # "binding":Z
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "isDeadlineExpired":Z
    :cond_2
    const/4 v3, 0x0

    .restart local v3    # "isDeadlineExpired":Z
    goto :goto_0

    .line 160
    .end local v3    # "isDeadlineExpired":Z
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "isDeadlineExpired":Z
    goto :goto_0

    .line 182
    .restart local v0    # "binding":Z
    .restart local v2    # "intent":Landroid/content/Intent;
    :cond_4
    :try_start_2
    iget-object v4, p0, Lcom/android/server/job/JobServiceContext;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p1}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v7

    invoke-interface {v4, v6, v7}, Lcom/android/internal/app/IBatteryStats;->noteJobStart(Ljava/lang/String;I)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 186
    :goto_1
    const/4 v4, 0x0

    :try_start_3
    iput-boolean v4, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 187
    const/4 v4, 0x1

    monitor-exit v5

    return v4

    .line 152
    .end local v0    # "binding":Z
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v3    # "isDeadlineExpired":Z
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 183
    .restart local v0    # "binding":Z
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v3    # "isDeadlineExpired":Z
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method getExecutionStartTimeElapsed()J
    .locals 2

    .prologue
    .line 217
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mExecutionStartTimeElapsed:J

    return-wide v0
.end method

.method getRunningJob()Lcom/android/server/job/controllers/JobStatus;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 198
    :try_start_0
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 197
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method getTimeoutElapsed()J
    .locals 2

    .prologue
    .line 221
    iget-wide v0, p0, Lcom/android/server/job/JobServiceContext;->mTimeoutElapsed:J

    return-wide v0
.end method

.method isAvailable()Z
    .locals 2

    .prologue
    .line 211
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mLock:Ljava/lang/Object;

    monitor-enter v0

    .line 212
    :try_start_0
    iget-boolean v1, p0, Lcom/android/server/job/JobServiceContext;->mAvailable:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return v1

    .line 211
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public jobFinished(IZ)V
    .locals 3
    .param p1, "jobId"    # I
    .param p2, "reschedule"    # Z

    .prologue
    const/4 v1, 0x1

    .line 226
    invoke-direct {p0}, Lcom/android/server/job/JobServiceContext;->verifyCallingUid()Z

    move-result v0

    if-nez v0, :cond_0

    .line 227
    return-void

    .line 229
    :cond_0
    iget-object v2, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    if-eqz p2, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v2, v1, p1, v0}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 225
    return-void

    .line 229
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 259
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getServiceComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 261
    return-void

    .line 263
    :cond_0
    invoke-static {p2}, Landroid/app/job/IJobService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/job/IJobService;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/JobServiceContext;->service:Landroid/app/job/IJobService;

    .line 265
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 266
    .local v0, "pm":Landroid/os/PowerManager;
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v1}, Lcom/android/server/job/controllers/JobStatus;->getTag()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 267
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    new-instance v2, Landroid/os/WorkSource;

    iget-object v3, p0, Lcom/android/server/job/JobServiceContext;->mRunningJob:Lcom/android/server/job/controllers/JobStatus;

    invoke-virtual {v3}, Lcom/android/server/job/controllers/JobStatus;->getUid()I

    move-result v3

    invoke-direct {v2, v3}, Landroid/os/WorkSource;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setWorkSource(Landroid/os/WorkSource;)V

    .line 268
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 269
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 270
    iget-object v1, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 258
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 276
    iget-object v0, p0, Lcom/android/server/job/JobServiceContext;->mCallbackHandler:Landroid/os/Handler;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 275
    return-void
.end method
