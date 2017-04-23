.class Landroid/widget/VideoView$2;
.super Ljava/lang/Object;
.source "VideoView.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnPreparedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/VideoView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/VideoView;


# direct methods
.method constructor <init>(Landroid/widget/VideoView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/VideoView;

    .prologue
    .line 509
    iput-object p1, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPrepared(Landroid/media/MediaPlayer;)V
    .locals 8
    .param p1, "mp"    # Landroid/media/MediaPlayer;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x3

    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 511
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iput v7, v3, Landroid/widget/VideoView;->mCurrentState:I

    .line 514
    invoke-virtual {p1, v5, v5}, Landroid/media/MediaPlayer;->getMetadata(ZZ)Landroid/media/Metadata;

    move-result-object v0

    .line 517
    .local v0, "data":Landroid/media/Metadata;
    if-eqz v0, :cond_7

    .line 518
    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0, v4}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 519
    invoke-virtual {v0, v4}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    .line 518
    :goto_0
    iput-boolean v3, v5, Landroid/widget/VideoView;->mCanPause:Z

    .line 520
    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0, v7}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 521
    invoke-virtual {v0, v7}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    .line 520
    :goto_1
    iput-boolean v3, v5, Landroid/widget/VideoView;->mCanSeekBack:Z

    .line 522
    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v0, v6}, Landroid/media/Metadata;->has(I)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 523
    invoke-virtual {v0, v6}, Landroid/media/Metadata;->getBoolean(I)Z

    move-result v3

    .line 522
    :goto_2
    iput-boolean v3, v5, Landroid/widget/VideoView;->mCanSeekForward:Z

    .line 528
    :goto_3
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v3, v3, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    if-eqz v3, :cond_0

    .line 529
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v3, v3, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v5, v5, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-interface {v3, v5}, Landroid/media/MediaPlayer$OnPreparedListener;->onPrepared(Landroid/media/MediaPlayer;)V

    .line 531
    :cond_0
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v3, v3, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v3, :cond_1

    .line 532
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v3, v3, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v3, v4}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 537
    :cond_1
    :try_start_0
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoWidth()I

    move-result v4

    iput v4, v3, Landroid/widget/VideoView;->mVideoWidth:I

    .line 538
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->getVideoHeight()I

    move-result v4

    iput v4, v3, Landroid/widget/VideoView;->mVideoHeight:I

    .line 540
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v2, v3, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    .line 541
    .local v2, "seekToPosition":I
    if-eqz v2, :cond_2

    .line 542
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v3, v2}, Landroid/widget/VideoView;->seekTo(I)V

    .line 544
    :cond_2
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v3, v3, Landroid/widget/VideoView;->mVideoWidth:I

    if-eqz v3, :cond_a

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v3, v3, Landroid/widget/VideoView;->mVideoHeight:I

    if-eqz v3, :cond_a

    .line 546
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v4, v4, Landroid/widget/VideoView;->mVideoWidth:I

    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v5, v5, Landroid/widget/VideoView;->mVideoHeight:I

    invoke-interface {v3, v4, v5}, Landroid/view/SurfaceHolder;->setFixedSize(II)V

    .line 547
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v3, v3, Landroid/widget/VideoView;->mSurfaceWidth:I

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v4, v4, Landroid/widget/VideoView;->mVideoWidth:I

    if-ne v3, v4, :cond_3

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v3, v3, Landroid/widget/VideoView;->mSurfaceHeight:I

    iget-object v4, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v4, v4, Landroid/widget/VideoView;->mVideoHeight:I

    if-ne v3, v4, :cond_3

    .line 551
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v3, v3, Landroid/widget/VideoView;->mTargetState:I

    if-ne v3, v6, :cond_8

    .line 552
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->start()V

    .line 553
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v3, v3, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v3, :cond_3

    .line 554
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v3, v3, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v3}, Landroid/widget/MediaController;->show()V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 510
    .end local v2    # "seekToPosition":I
    :cond_3
    :goto_4
    return-void

    :cond_4
    move v3, v4

    .line 518
    goto/16 :goto_0

    :cond_5
    move v3, v4

    .line 520
    goto/16 :goto_1

    :cond_6
    move v3, v4

    .line 522
    goto/16 :goto_2

    .line 525
    :cond_7
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iput-boolean v4, v5, Landroid/widget/VideoView;->mCanSeekForward:Z

    iget-object v5, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iput-boolean v4, v5, Landroid/widget/VideoView;->mCanSeekBack:Z

    iput-boolean v4, v3, Landroid/widget/VideoView;->mCanPause:Z

    goto/16 :goto_3

    .line 556
    .restart local v2    # "seekToPosition":I
    :cond_8
    :try_start_1
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->isPlaying()Z

    move-result v3

    if-nez v3, :cond_3

    .line 557
    if-nez v2, :cond_9

    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->getCurrentPosition()I

    move-result v3

    if-lez v3, :cond_3

    .line 558
    :cond_9
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v3, v3, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v3, :cond_3

    .line 560
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget-object v3, v3, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/MediaController;->show(I)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_4

    .line 571
    .end local v2    # "seekToPosition":I
    :catch_0
    move-exception v1

    .line 572
    .local v1, "e":Ljava/lang/IllegalStateException;
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-static {v3}, Landroid/widget/VideoView;->-get0(Landroid/widget/VideoView;)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "onPrepared IllegalStateException"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 573
    invoke-virtual {v1}, Ljava/lang/IllegalStateException;->printStackTrace()V

    goto :goto_4

    .line 567
    .end local v1    # "e":Ljava/lang/IllegalStateException;
    .restart local v2    # "seekToPosition":I
    :cond_a
    :try_start_2
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    iget v3, v3, Landroid/widget/VideoView;->mTargetState:I

    if-ne v3, v6, :cond_3

    .line 568
    iget-object v3, p0, Landroid/widget/VideoView$2;->this$0:Landroid/widget/VideoView;

    invoke-virtual {v3}, Landroid/widget/VideoView;->start()V
    :try_end_2
    .catch Ljava/lang/IllegalStateException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_4
.end method
