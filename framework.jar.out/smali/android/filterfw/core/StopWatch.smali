.class Landroid/filterfw/core/StopWatch;
.super Ljava/lang/Object;
.source "StopWatchMap.java"


# instance fields
.field private STOP_WATCH_LOGGING_PERIOD:I

.field private TAG:Ljava/lang/String;

.field private mName:Ljava/lang/String;

.field private mNumCalls:I

.field private mStartTime:J

.field private mTotalTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    const/16 v2, 0xc8

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput v2, p0, Landroid/filterfw/core/StopWatch;->STOP_WATCH_LOGGING_PERIOD:I

    .line 36
    const-string/jumbo v0, "MFF"

    iput-object v0, p0, Landroid/filterfw/core/StopWatch;->TAG:Ljava/lang/String;

    .line 44
    iput-object p1, p0, Landroid/filterfw/core/StopWatch;->mName:Ljava/lang/String;

    .line 45
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    .line 46
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/filterfw/core/StopWatch;->mTotalTime:J

    .line 47
    const/4 v0, 0x0

    iput v0, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    .line 49
    const-string/jumbo v0, "debug.swm.period"

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Landroid/filterfw/core/StopWatch;->STOP_WATCH_LOGGING_PERIOD:I

    .line 50
    iget-object v0, p0, Landroid/filterfw/core/StopWatch;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "StopWatch param: period= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/filterfw/core/StopWatch;->STOP_WATCH_LOGGING_PERIOD:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    return-void
.end method


# virtual methods
.method public start()V
    .locals 4

    .prologue
    .line 54
    iget-wide v0, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 55
    new-instance v0, Ljava/lang/RuntimeException;

    .line 56
    const-string/jumbo v1, "Calling start with StopWatch already running"

    .line 55
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 58
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    .line 53
    return-void
.end method

.method public stop()V
    .locals 9

    .prologue
    const-wide/16 v6, -0x1

    const/4 v8, 0x0

    .line 62
    iget-wide v2, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    cmp-long v2, v2, v6

    if-nez v2, :cond_0

    .line 63
    new-instance v2, Ljava/lang/RuntimeException;

    .line 64
    const-string/jumbo v3, "Calling stop with StopWatch already stopped"

    .line 63
    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 66
    :cond_0
    invoke-static {}, Landroid/filterfw/core/Frame;->wait3DReady()V

    .line 68
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 69
    .local v0, "stopTime":J
    iget-wide v2, p0, Landroid/filterfw/core/StopWatch;->mTotalTime:J

    iget-wide v4, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    sub-long v4, v0, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Landroid/filterfw/core/StopWatch;->mTotalTime:J

    .line 70
    iget v2, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    .line 71
    iput-wide v6, p0, Landroid/filterfw/core/StopWatch;->mStartTime:J

    .line 72
    iget v2, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    iget v3, p0, Landroid/filterfw/core/StopWatch;->STOP_WATCH_LOGGING_PERIOD:I

    rem-int/2addr v2, v3

    if-nez v2, :cond_1

    .line 73
    iget-object v2, p0, Landroid/filterfw/core/StopWatch;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "AVG ms/call "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/filterfw/core/StopWatch;->mName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 74
    const-string/jumbo v4, "%.1f"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-wide v6, p0, Landroid/filterfw/core/StopWatch;->mTotalTime:J

    long-to-float v6, v6

    const/high16 v7, 0x3f800000    # 1.0f

    mul-float/2addr v6, v7

    iget v7, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    int-to-float v7, v7

    div-float/2addr v6, v7

    invoke-static {v6}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    aput-object v6, v5, v8

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 73
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 75
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Landroid/filterfw/core/StopWatch;->mTotalTime:J

    .line 76
    iput v8, p0, Landroid/filterfw/core/StopWatch;->mNumCalls:I

    .line 61
    :cond_1
    return-void
.end method
