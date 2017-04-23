.class Landroid/media/MediaSync$1;
.super Ljava/lang/Object;
.source "MediaSync.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/MediaSync;->postRenderAudio(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/MediaSync;


# direct methods
.method constructor <init>(Landroid/media/MediaSync;)V
    .locals 0
    .param p1, "this$0"    # Landroid/media/MediaSync;

    .prologue
    .line 529
    iput-object p1, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    const-wide/16 v12, -0x1

    .line 531
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get1(Landroid/media/MediaSync;)Ljava/lang/Object;

    move-result-object v7

    monitor-enter v7

    .line 532
    :try_start_0
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get6(Landroid/media/MediaSync;)F
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v6

    float-to-double v8, v6

    const-wide/16 v10, 0x0

    cmpl-double v6, v8, v10

    if-nez v6, :cond_0

    monitor-exit v7

    .line 533
    return-void

    .line 536
    :cond_0
    :try_start_1
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get0(Landroid/media/MediaSync;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v6

    if-eqz v6, :cond_1

    monitor-exit v7

    .line 537
    return-void

    .line 540
    :cond_1
    :try_start_2
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get0(Landroid/media/MediaSync;)Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/MediaSync$AudioBuffer;

    .line 541
    .local v0, "audioBuffer":Landroid/media/MediaSync$AudioBuffer;
    iget-object v6, v0, Landroid/media/MediaSync$AudioBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v4

    .line 543
    .local v4, "size":I
    if-lez v4, :cond_2

    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get2(Landroid/media/MediaSync;)Landroid/media/AudioTrack;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioTrack;->getPlayState()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v6

    const/4 v8, 0x3

    if-eq v6, v8, :cond_2

    .line 545
    :try_start_3
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get2(Landroid/media/MediaSync;)Landroid/media/AudioTrack;

    move-result-object v6

    invoke-virtual {v6}, Landroid/media/AudioTrack;->play()V
    :try_end_3
    .catch Ljava/lang/IllegalStateException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 550
    :cond_2
    :goto_0
    :try_start_4
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get2(Landroid/media/MediaSync;)Landroid/media/AudioTrack;

    move-result-object v6

    .line 551
    iget-object v8, v0, Landroid/media/MediaSync$AudioBuffer;->mByteBuffer:Ljava/nio/ByteBuffer;

    .line 553
    const/4 v9, 0x1

    .line 550
    invoke-virtual {v6, v8, v4, v9}, Landroid/media/AudioTrack;->write(Ljava/nio/ByteBuffer;II)I

    move-result v5

    .line 554
    .local v5, "sizeWritten":I
    if-lez v5, :cond_5

    .line 555
    iget-wide v8, v0, Landroid/media/MediaSync$AudioBuffer;->mPresentationTimeUs:J

    cmp-long v6, v8, v12

    if-eqz v6, :cond_3

    .line 556
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    .line 557
    iget-wide v8, v0, Landroid/media/MediaSync$AudioBuffer;->mPresentationTimeUs:J

    .line 556
    invoke-static {v6, v4, v8, v9}, Landroid/media/MediaSync;->-wrap1(Landroid/media/MediaSync;IJ)V

    .line 558
    const-wide/16 v8, -0x1

    iput-wide v8, v0, Landroid/media/MediaSync$AudioBuffer;->mPresentationTimeUs:J

    .line 561
    :cond_3
    if-ne v5, v4, :cond_5

    .line 562
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6, v0}, Landroid/media/MediaSync;->-wrap3(Landroid/media/MediaSync;Landroid/media/MediaSync$AudioBuffer;)V

    .line 563
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get0(Landroid/media/MediaSync;)Ljava/util/List;

    move-result-object v6

    const/4 v8, 0x0

    invoke-interface {v6, v8}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 564
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v6}, Landroid/media/MediaSync;->-get0(Landroid/media/MediaSync;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    .line 565
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    const-wide/16 v8, 0x0

    invoke-static {v6, v8, v9}, Landroid/media/MediaSync;->-wrap2(Landroid/media/MediaSync;J)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :cond_4
    monitor-exit v7

    .line 567
    return-void

    .line 546
    .end local v5    # "sizeWritten":I
    :catch_0
    move-exception v1

    .line 547
    .local v1, "e":Ljava/lang/IllegalStateException;
    :try_start_5
    const-string/jumbo v6, "MediaSync"

    const-string/jumbo v8, "could not start audio track"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 531
    .end local v0    # "audioBuffer":Landroid/media/MediaSync$AudioBuffer;
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .end local v4    # "size":I
    :catchall_0
    move-exception v6

    monitor-exit v7

    throw v6

    .line 570
    .restart local v0    # "audioBuffer":Landroid/media/MediaSync$AudioBuffer;
    .restart local v4    # "size":I
    .restart local v5    # "sizeWritten":I
    :cond_5
    :try_start_6
    sget-object v6, Ljava/util/concurrent/TimeUnit;->MICROSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 571
    iget-object v8, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    invoke-static {v8}, Landroid/media/MediaSync;->-wrap0(Landroid/media/MediaSync;)J

    move-result-wide v8

    .line 570
    invoke-virtual {v6, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    .line 573
    .local v2, "pendingTimeMs":J
    const-wide/16 v8, 0x190

    cmp-long v6, v2, v8

    if-lez v6, :cond_6

    .line 574
    const-string/jumbo v6, "MediaSync"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "pendingTimeMs is too large = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    const-wide/16 v8, 0x3

    div-long v8, v2, v8

    invoke-static {v6, v8, v9}, Landroid/media/MediaSync;->-wrap2(Landroid/media/MediaSync;J)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :goto_1
    monitor-exit v7

    .line 530
    return-void

    .line 577
    :cond_6
    :try_start_7
    iget-object v6, p0, Landroid/media/MediaSync$1;->this$0:Landroid/media/MediaSync;

    const-wide/16 v8, 0x2

    div-long v8, v2, v8

    invoke-static {v6, v8, v9}, Landroid/media/MediaSync;->-wrap2(Landroid/media/MediaSync;J)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_1
.end method
