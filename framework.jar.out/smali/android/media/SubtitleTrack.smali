.class public abstract Landroid/media/SubtitleTrack;
.super Ljava/lang/Object;
.source "SubtitleTrack.java"

# interfaces
.implements Landroid/media/MediaTimeProvider$OnMediaTimeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/SubtitleTrack$CueList;,
        Landroid/media/SubtitleTrack$Cue;,
        Landroid/media/SubtitleTrack$Run;,
        Landroid/media/SubtitleTrack$RenderingWidget;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "SubtitleTrack"


# instance fields
.field public DEBUG:Z

.field protected final mActiveCues:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;"
        }
    .end annotation
.end field

.field protected mCues:Landroid/media/SubtitleTrack$CueList;

.field private mFormat:Landroid/media/MediaFormat;

.field protected mHandler:Landroid/os/Handler;

.field private mLastTimeMs:J

.field private mLastUpdateTimeMs:J

.field private mNextScheduledTimeMs:J

.field private mRunnable:Ljava/lang/Runnable;

.field protected final mRunsByEndTime:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/media/SubtitleTrack$Run;",
            ">;"
        }
    .end annotation
.end field

.field protected final mRunsByID:Landroid/util/LongSparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LongSparseArray",
            "<",
            "Landroid/media/SubtitleTrack$Run;",
            ">;"
        }
    .end annotation
.end field

.field protected mTimeProvider:Landroid/media/MediaTimeProvider;

.field protected mVisible:Z


# direct methods
.method static synthetic -set0(Landroid/media/SubtitleTrack;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0

    iput-object p1, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    return-object p1
.end method

.method public constructor <init>(Landroid/media/MediaFormat;)V
    .locals 4
    .param p1, "format"    # Landroid/media/MediaFormat;

    .prologue
    const-wide/16 v2, -0x1

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    .line 50
    new-instance v0, Landroid/util/LongSparseArray;

    invoke-direct {v0}, Landroid/util/LongSparseArray;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    .line 55
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    .line 60
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    .line 63
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mHandler:Landroid/os/Handler;

    .line 79
    iput-wide v2, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    .line 68
    iput-object p1, p0, Landroid/media/SubtitleTrack;->mFormat:Landroid/media/MediaFormat;

    .line 69
    new-instance v0, Landroid/media/SubtitleTrack$CueList;

    invoke-direct {v0}, Landroid/media/SubtitleTrack$CueList;-><init>()V

    iput-object v0, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    .line 70
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->clearActiveCues()V

    .line 71
    iput-wide v2, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    .line 67
    return-void
.end method

.method private removeRunsByEndTimeIndex(I)V
    .locals 8
    .param p1, "ix"    # I

    .prologue
    const/4 v5, 0x0

    .line 172
    iget-object v4, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v4, p1}, Landroid/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/media/SubtitleTrack$Run;

    .line 173
    .local v3, "run":Landroid/media/SubtitleTrack$Run;
    :goto_0
    if-eqz v3, :cond_1

    .line 174
    iget-object v0, v3, Landroid/media/SubtitleTrack$Run;->mFirstCue:Landroid/media/SubtitleTrack$Cue;

    .line 175
    .local v0, "cue":Landroid/media/SubtitleTrack$Cue;
    :goto_1
    if-eqz v0, :cond_0

    .line 176
    iget-object v4, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    invoke-virtual {v4, v0}, Landroid/media/SubtitleTrack$CueList;->remove(Landroid/media/SubtitleTrack$Cue;)V

    .line 177
    iget-object v1, v0, Landroid/media/SubtitleTrack$Cue;->mNextInRun:Landroid/media/SubtitleTrack$Cue;

    .line 178
    .local v1, "nextCue":Landroid/media/SubtitleTrack$Cue;
    iput-object v5, v0, Landroid/media/SubtitleTrack$Cue;->mNextInRun:Landroid/media/SubtitleTrack$Cue;

    .line 179
    move-object v0, v1

    goto :goto_1

    .line 181
    .end local v1    # "nextCue":Landroid/media/SubtitleTrack$Cue;
    :cond_0
    iget-object v4, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    iget-wide v6, v3, Landroid/media/SubtitleTrack$Run;->mRunID:J

    invoke-virtual {v4, v6, v7}, Landroid/util/LongSparseArray;->remove(J)V

    .line 182
    iget-object v2, v3, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 183
    .local v2, "nextRun":Landroid/media/SubtitleTrack$Run;
    iput-object v5, v3, Landroid/media/SubtitleTrack$Run;->mPrevRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 184
    iput-object v5, v3, Landroid/media/SubtitleTrack$Run;->mNextRunAtEndTimeMs:Landroid/media/SubtitleTrack$Run;

    .line 185
    move-object v3, v2

    goto :goto_0

    .line 187
    .end local v0    # "cue":Landroid/media/SubtitleTrack$Cue;
    .end local v2    # "nextRun":Landroid/media/SubtitleTrack$Run;
    :cond_1
    iget-object v4, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v4, p1}, Landroid/util/LongSparseArray;->removeAt(I)V

    .line 171
    return-void
.end method

.method private declared-synchronized takeTime(J)V
    .locals 1
    .param p1, "timeMs"    # J

    .prologue
    monitor-enter p0

    .line 202
    :try_start_0
    iput-wide p1, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 201
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method protected addCue(Landroid/media/SubtitleTrack$Cue;)Z
    .locals 12
    .param p1, "cue"    # Landroid/media/SubtitleTrack$Cue;

    .prologue
    .line 324
    monitor-enter p0

    .line 325
    :try_start_0
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    invoke-virtual {v7, p1}, Landroid/media/SubtitleTrack$CueList;->add(Landroid/media/SubtitleTrack$Cue;)V

    .line 327
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-eqz v7, :cond_1

    .line 328
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    invoke-virtual {v7, v8, v9}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/SubtitleTrack$Run;

    .line 329
    .local v1, "run":Landroid/media/SubtitleTrack$Run;
    if-nez v1, :cond_6

    .line 330
    new-instance v1, Landroid/media/SubtitleTrack$Run;

    .end local v1    # "run":Landroid/media/SubtitleTrack$Run;
    const/4 v7, 0x0

    invoke-direct {v1, v7}, Landroid/media/SubtitleTrack$Run;-><init>(Landroid/media/SubtitleTrack$Run;)V

    .line 331
    .restart local v1    # "run":Landroid/media/SubtitleTrack$Run;
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    invoke-virtual {v7, v8, v9, v1}, Landroid/util/LongSparseArray;->put(JLjava/lang/Object;)V

    .line 332
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iput-wide v8, v1, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    .line 338
    :cond_0
    :goto_0
    iget-object v7, v1, Landroid/media/SubtitleTrack$Run;->mFirstCue:Landroid/media/SubtitleTrack$Cue;

    iput-object v7, p1, Landroid/media/SubtitleTrack$Cue;->mNextInRun:Landroid/media/SubtitleTrack$Cue;

    .line 339
    iput-object p1, v1, Landroid/media/SubtitleTrack$Run;->mFirstCue:Landroid/media/SubtitleTrack$Cue;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "run":Landroid/media/SubtitleTrack$Run;
    :cond_1
    monitor-exit p0

    .line 344
    const-wide/16 v2, -0x1

    .line 345
    .local v2, "nowMs":J
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v7, :cond_2

    .line 347
    :try_start_1
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    .line 348
    const/4 v8, 0x0

    const/4 v9, 0x1

    .line 347
    invoke-interface {v7, v8, v9}, Landroid/media/MediaTimeProvider;->getCurrentTimeUs(ZZ)J

    move-result-wide v8

    .line 348
    const-wide/16 v10, 0x3e8

    .line 347
    div-long v2, v8, v10
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 354
    :cond_2
    :goto_1
    iget-boolean v7, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v7, :cond_3

    const-string/jumbo v7, "SubtitleTrack"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "mVisible="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-boolean v9, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 355
    iget-wide v10, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    .line 354
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 355
    const-string/jumbo v9, " <= "

    .line 354
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 355
    const-string/jumbo v9, ", "

    .line 354
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 356
    iget-wide v10, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    .line 354
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 356
    const-string/jumbo v9, " >= "

    .line 354
    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 356
    iget-wide v10, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    .line 354
    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    :cond_3
    monitor-enter p0

    .line 359
    :try_start_2
    iget-boolean v7, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    if-eqz v7, :cond_8

    .line 360
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    cmp-long v7, v8, v2

    if-gtz v7, :cond_8

    .line 362
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iget-wide v10, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_8

    .line 363
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    if-eqz v7, :cond_4

    .line 364
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    invoke-virtual {v7, v8}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 366
    :cond_4
    move-object v6, p0

    .line 367
    .local v6, "track":Landroid/media/SubtitleTrack;
    move-wide v4, v2

    .line 368
    .local v4, "thenMs":J
    new-instance v7, Landroid/media/SubtitleTrack$1;

    invoke-direct {v7, p0, v6, v4, v5}, Landroid/media/SubtitleTrack$1;-><init>(Landroid/media/SubtitleTrack;Landroid/media/SubtitleTrack;J)V

    iput-object v7, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    .line 382
    iget-object v7, p0, Landroid/media/SubtitleTrack;->mHandler:Landroid/os/Handler;

    iget-object v8, p0, Landroid/media/SubtitleTrack;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v10, 0xa

    invoke-virtual {v7, v8, v10, v11}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 383
    iget-boolean v7, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string/jumbo v7, "SubtitleTrack"

    const-string/jumbo v8, "scheduling update"

    invoke-static {v7, v8}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 387
    :cond_5
    :goto_2
    const/4 v7, 0x1

    monitor-exit p0

    return v7

    .line 333
    .end local v2    # "nowMs":J
    .end local v4    # "thenMs":J
    .end local v6    # "track":Landroid/media/SubtitleTrack;
    .restart local v1    # "run":Landroid/media/SubtitleTrack$Run;
    :cond_6
    :try_start_3
    iget-wide v8, v1, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    iget-wide v10, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    cmp-long v7, v8, v10

    if-gez v7, :cond_0

    .line 334
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iput-wide v8, v1, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto/16 :goto_0

    .line 324
    .end local v1    # "run":Landroid/media/SubtitleTrack$Run;
    :catchall_0
    move-exception v7

    monitor-exit p0

    throw v7

    .line 385
    .restart local v2    # "nowMs":J
    .restart local v4    # "thenMs":J
    .restart local v6    # "track":Landroid/media/SubtitleTrack;
    :cond_7
    :try_start_4
    iget-boolean v7, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v7, :cond_5

    const-string/jumbo v7, "SubtitleTrack"

    const-string/jumbo v8, "failed to schedule subtitle view update"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_2

    .line 358
    .end local v4    # "thenMs":J
    .end local v6    # "track":Landroid/media/SubtitleTrack;
    :catchall_1
    move-exception v7

    monitor-exit p0

    throw v7

    .line 390
    :cond_8
    :try_start_5
    iget-boolean v7, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    if-eqz v7, :cond_a

    .line 391
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iget-wide v10, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_a

    .line 392
    iget-wide v8, p1, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    iget-wide v10, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    cmp-long v7, v8, v10

    if-ltz v7, :cond_9

    .line 393
    iget-wide v8, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    const-wide/16 v10, 0x0

    cmp-long v7, v8, v10

    if-gez v7, :cond_a

    .line 394
    :cond_9
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->scheduleTimedEvents()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 397
    :cond_a
    const/4 v7, 0x0

    monitor-exit p0

    return v7

    .line 349
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/lang/IllegalStateException;
    goto/16 :goto_1
.end method

.method protected declared-synchronized clearActiveCues()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 207
    :try_start_0
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SubtitleTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Clearing "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " active cues"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    :cond_0
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 209
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 206
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected finalize()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 193
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v2}, Landroid/util/LongSparseArray;->size()I

    move-result v1

    .line 194
    .local v1, "size":I
    add-int/lit8 v0, v1, -0x1

    .local v0, "ix":I
    :goto_0
    if-ltz v0, :cond_0

    .line 195
    invoke-direct {p0, v0}, Landroid/media/SubtitleTrack;->removeRunsByEndTimeIndex(I)V

    .line 194
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 198
    :cond_0
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 191
    return-void
.end method

.method protected finishedRun(J)V
    .locals 5
    .param p1, "runID"    # J

    .prologue
    .line 617
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    .line 618
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/SubtitleTrack$Run;

    .line 619
    .local v0, "run":Landroid/media/SubtitleTrack$Run;
    if-eqz v0, :cond_0

    .line 620
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack$Run;->storeByEndTimeMs(Landroid/util/LongSparseArray;)V

    .line 616
    .end local v0    # "run":Landroid/media/SubtitleTrack$Run;
    :cond_0
    return-void
.end method

.method public final getFormat()Landroid/media/MediaFormat;
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mFormat:Landroid/media/MediaFormat;

    return-object v0
.end method

.method public abstract getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;
.end method

.method public getTrackType()I
    .locals 1

    .prologue
    .line 638
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v0

    if-nez v0, :cond_0

    .line 639
    const/4 v0, 0x3

    .line 638
    :goto_0
    return v0

    .line 640
    :cond_0
    const/4 v0, 0x4

    goto :goto_0
.end method

.method public hide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 302
    iget-boolean v1, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    if-nez v1, :cond_0

    .line 303
    return-void

    .line 306
    :cond_0
    const-string/jumbo v1, "ro.mtk_subtitle_support"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 307
    instance-of v1, p0, Landroid/media/VobSubTrack;

    .line 306
    if-eqz v1, :cond_1

    move-object v1, p0

    .line 308
    check-cast v1, Landroid/media/VobSubTrack;

    invoke-virtual {v1}, Landroid/media/VobSubTrack;->finalizedSubParser()V

    .line 311
    :cond_1
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v1, :cond_2

    .line 312
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-interface {v1, p0}, Landroid/media/MediaTimeProvider;->cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    .line 314
    :cond_2
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v0

    .line 315
    .local v0, "renderingWidget":Landroid/media/SubtitleTrack$RenderingWidget;
    if-eqz v0, :cond_3

    .line 316
    invoke-interface {v0, v2}, Landroid/media/SubtitleTrack$RenderingWidget;->setVisible(Z)V

    .line 318
    :cond_3
    iput-boolean v2, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    .line 301
    return-void
.end method

.method protected onData(Landroid/media/SubtitleData;)V
    .locals 6
    .param p1, "data"    # Landroid/media/SubtitleData;

    .prologue
    .line 82
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v2

    const-wide/16 v4, 0x1

    add-long v0, v2, v4

    .line 83
    .local v0, "runID":J
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getData()[B

    move-result-object v2

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3, v0, v1}, Landroid/media/SubtitleTrack;->onData([BZJ)V

    .line 86
    invoke-virtual {p1}, Landroid/media/SubtitleData;->getStartTimeUs()J

    move-result-wide v2

    invoke-virtual {p1}, Landroid/media/SubtitleData;->getDurationUs()J

    move-result-wide v4

    add-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    .line 84
    invoke-virtual {p0, v0, v1, v2, v3}, Landroid/media/SubtitleTrack;->setRunDiscardTimeMs(JJ)V

    .line 81
    return-void
.end method

.method public abstract onData([BZJ)V
.end method

.method public onSeek(J)V
    .locals 5
    .param p1, "timeUs"    # J

    .prologue
    .line 245
    iget-boolean v2, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SubtitleTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onSeek "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    :cond_0
    monitor-enter p0

    .line 247
    const-wide/16 v2, 0x3e8

    :try_start_0
    div-long v0, p1, v2

    .line 248
    .local v0, "timeMs":J
    const/4 v2, 0x1

    invoke-virtual {p0, v2, v0, v1}, Landroid/media/SubtitleTrack;->updateActiveCues(ZJ)V

    .line 249
    invoke-direct {p0, v0, v1}, Landroid/media/SubtitleTrack;->takeTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 251
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {p0, v2}, Landroid/media/SubtitleTrack;->updateView(Ljava/util/Vector;)V

    .line 252
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->scheduleTimedEvents()V

    .line 244
    return-void

    .line 246
    .end local v0    # "timeMs":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onStop()V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    .line 260
    monitor-enter p0

    .line 261
    :try_start_0
    iget-boolean v2, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SubtitleTrack"

    const-string/jumbo v3, "onStop"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    :cond_0
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->clearActiveCues()V

    .line 263
    const-wide/16 v2, -0x1

    iput-wide v2, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    .line 265
    const-string/jumbo v2, "ro.mtk_subtitle_support"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 266
    instance-of v2, p0, Landroid/media/VobSubTrack;

    .line 265
    if-eqz v2, :cond_1

    .line 267
    move-object v0, p0

    check-cast v0, Landroid/media/VobSubTrack;

    move-object v2, v0

    invoke-virtual {v2}, Landroid/media/VobSubTrack;->finalizedSubParser()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    .line 271
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {p0, v2}, Landroid/media/SubtitleTrack;->updateView(Ljava/util/Vector;)V

    .line 272
    iput-wide v4, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    .line 273
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-interface {v2, v4, v5, p0}, Landroid/media/MediaTimeProvider;->notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    .line 259
    return-void

    .line 260
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public onTimedEvent(J)V
    .locals 5
    .param p1, "timeUs"    # J

    .prologue
    .line 230
    iget-boolean v2, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v2, :cond_0

    const-string/jumbo v2, "SubtitleTrack"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "onTimedEvent "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    :cond_0
    monitor-enter p0

    .line 232
    const-wide/16 v2, 0x3e8

    :try_start_0
    div-long v0, p1, v2

    .line 233
    .local v0, "timeMs":J
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0, v1}, Landroid/media/SubtitleTrack;->updateActiveCues(ZJ)V

    .line 234
    invoke-direct {p0, v0, v1}, Landroid/media/SubtitleTrack;->takeTime(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 236
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {p0, v2}, Landroid/media/SubtitleTrack;->updateView(Ljava/util/Vector;)V

    .line 237
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->scheduleTimedEvents()V

    .line 229
    return-void

    .line 231
    .end local v0    # "timeMs":J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method protected scheduleTimedEvents()V
    .locals 6

    .prologue
    .line 215
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v0, :cond_1

    .line 216
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    iget-wide v2, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    invoke-virtual {v0, v2, v3}, Landroid/media/SubtitleTrack$CueList;->nextTimeAfter(J)J

    move-result-wide v0

    iput-wide v0, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    .line 217
    iget-boolean v0, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "SubtitleTrack"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sched @"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " after "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Landroid/media/SubtitleTrack;->mLastTimeMs:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    :cond_0
    iget-object v2, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    .line 219
    iget-wide v0, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-ltz v0, :cond_2

    .line 220
    iget-wide v0, p0, Landroid/media/SubtitleTrack;->mNextScheduledTimeMs:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v0, v4

    .line 218
    :goto_0
    invoke-interface {v2, v0, v1, p0}, Landroid/media/MediaTimeProvider;->notifyAt(JLandroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    .line 213
    :cond_1
    return-void

    .line 220
    :cond_2
    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method public setRunDiscardTimeMs(JJ)V
    .locals 5
    .param p1, "runID"    # J
    .param p3, "timeMs"    # J

    .prologue
    .line 627
    const-wide/16 v2, 0x0

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    const-wide/16 v2, -0x1

    cmp-long v1, p1, v2

    if-eqz v1, :cond_0

    .line 628
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByID:Landroid/util/LongSparseArray;

    invoke-virtual {v1, p1, p2}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/SubtitleTrack$Run;

    .line 629
    .local v0, "run":Landroid/media/SubtitleTrack$Run;
    if-eqz v0, :cond_0

    .line 630
    iput-wide p3, v0, Landroid/media/SubtitleTrack$Run;->mEndTimeMs:J

    .line 631
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v0, v1}, Landroid/media/SubtitleTrack$Run;->storeByEndTimeMs(Landroid/util/LongSparseArray;)V

    .line 626
    .end local v0    # "run":Landroid/media/SubtitleTrack$Run;
    :cond_0
    return-void
.end method

.method public declared-synchronized setTimeProvider(Landroid/media/MediaTimeProvider;)V
    .locals 1
    .param p1, "timeProvider"    # Landroid/media/MediaTimeProvider;

    .prologue
    monitor-enter p0

    .line 404
    :try_start_0
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    monitor-exit p0

    .line 405
    return-void

    .line 407
    :cond_0
    :try_start_1
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v0, :cond_1

    .line 408
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-interface {v0, p0}, Landroid/media/MediaTimeProvider;->cancelNotifications(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    .line 410
    :cond_1
    iput-object p1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    .line 411
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v0, :cond_2

    .line 412
    iget-object v0, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-interface {v0, p0}, Landroid/media/MediaTimeProvider;->scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    monitor-exit p0

    .line 403
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public show()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 281
    iget-boolean v1, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    if-eqz v1, :cond_0

    .line 282
    return-void

    .line 285
    :cond_0
    const-string/jumbo v1, "ro.mtk_subtitle_support"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 286
    instance-of v1, p0, Landroid/media/VobSubTrack;

    .line 285
    if-eqz v1, :cond_1

    move-object v1, p0

    .line 287
    check-cast v1, Landroid/media/VobSubTrack;

    invoke-virtual {v1}, Landroid/media/VobSubTrack;->setUpSubParser()V

    .line 290
    :cond_1
    iput-boolean v3, p0, Landroid/media/SubtitleTrack;->mVisible:Z

    .line 291
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->getRenderingWidget()Landroid/media/SubtitleTrack$RenderingWidget;

    move-result-object v0

    .line 292
    .local v0, "renderingWidget":Landroid/media/SubtitleTrack$RenderingWidget;
    if-eqz v0, :cond_2

    .line 293
    invoke-interface {v0, v3}, Landroid/media/SubtitleTrack$RenderingWidget;->setVisible(Z)V

    .line 295
    :cond_2
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    if-eqz v1, :cond_3

    .line 296
    iget-object v1, p0, Landroid/media/SubtitleTrack;->mTimeProvider:Landroid/media/MediaTimeProvider;

    invoke-interface {v1, p0}, Landroid/media/MediaTimeProvider;->scheduleUpdate(Landroid/media/MediaTimeProvider$OnMediaTimeListener;)V

    .line 280
    :cond_3
    return-void
.end method

.method protected declared-synchronized updateActiveCues(ZJ)V
    .locals 8
    .param p1, "rebuild"    # Z
    .param p2, "timeMs"    # J

    .prologue
    monitor-enter p0

    .line 133
    if-nez p1, :cond_0

    :try_start_0
    iget-wide v4, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J

    cmp-long v3, v4, p2

    if-lez v3, :cond_1

    .line 134
    :cond_0
    invoke-virtual {p0}, Landroid/media/SubtitleTrack;->clearActiveCues()V

    .line 138
    :cond_1
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mCues:Landroid/media/SubtitleTrack$CueList;

    iget-wide v4, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J

    invoke-virtual {v3, v4, v5, p2, p3}, Landroid/media/SubtitleTrack$CueList;->entriesBetween(JJ)Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;>;"
    :cond_2
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    .line 137
    if-eqz v3, :cond_8

    .line 139
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 140
    .local v1, "event":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;"
    iget-object v0, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Landroid/media/SubtitleTrack$Cue;

    .line 142
    .local v0, "cue":Landroid/media/SubtitleTrack$Cue;
    iget-wide v4, v0, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_4

    .line 144
    iget-boolean v3, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v3, :cond_3

    const-string/jumbo v3, "SubtitleTrack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Removing "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_3
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->remove(Ljava/lang/Object;)Z

    .line 146
    iget-wide v4, v0, Landroid/media/SubtitleTrack$Cue;->mRunID:J

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-nez v3, :cond_2

    .line 147
    invoke-interface {v2}, Ljava/util/Iterator;->remove()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .end local v0    # "cue":Landroid/media/SubtitleTrack$Cue;
    .end local v1    # "event":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;"
    .end local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;>;"
    :catchall_0
    move-exception v3

    monitor-exit p0

    throw v3

    .line 149
    .restart local v0    # "cue":Landroid/media/SubtitleTrack$Cue;
    .restart local v1    # "event":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;"
    .restart local v2    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;>;"
    :cond_4
    :try_start_1
    iget-wide v4, v0, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    iget-object v3, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    cmp-long v3, v4, v6

    if-nez v3, :cond_7

    .line 152
    iget-boolean v3, p0, Landroid/media/SubtitleTrack;->DEBUG:Z

    if-eqz v3, :cond_5

    const-string/jumbo v3, "SubtitleTrack"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Adding "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    :cond_5
    iget-object v3, v0, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v3, :cond_6

    .line 154
    invoke-virtual {v0, p2, p3}, Landroid/media/SubtitleTrack$Cue;->onTime(J)V

    .line 156
    :cond_6
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mActiveCues:Ljava/util/Vector;

    invoke-virtual {v3, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 157
    :cond_7
    iget-object v3, v0, Landroid/media/SubtitleTrack$Cue;->mInnerTimesMs:[J

    if-eqz v3, :cond_2

    .line 159
    invoke-virtual {v0, p2, p3}, Landroid/media/SubtitleTrack$Cue;->onTime(J)V

    goto/16 :goto_0

    .line 164
    .end local v0    # "cue":Landroid/media/SubtitleTrack$Cue;
    .end local v1    # "event":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Long;Landroid/media/SubtitleTrack$Cue;>;"
    :cond_8
    :goto_1
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    invoke-virtual {v3}, Landroid/util/LongSparseArray;->size()I

    move-result v3

    if-lez v3, :cond_9

    .line 165
    iget-object v3, p0, Landroid/media/SubtitleTrack;->mRunsByEndTime:Landroid/util/LongSparseArray;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/util/LongSparseArray;->keyAt(I)J

    move-result-wide v4

    cmp-long v3, v4, p2

    if-gtz v3, :cond_9

    .line 166
    const/4 v3, 0x0

    invoke-direct {p0, v3}, Landroid/media/SubtitleTrack;->removeRunsByEndTimeIndex(I)V

    goto :goto_1

    .line 168
    :cond_9
    iput-wide p2, p0, Landroid/media/SubtitleTrack;->mLastUpdateTimeMs:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit p0

    .line 130
    return-void
.end method

.method public abstract updateView(Ljava/util/Vector;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector",
            "<",
            "Landroid/media/SubtitleTrack$Cue;",
            ">;)V"
        }
    .end annotation
.end method
