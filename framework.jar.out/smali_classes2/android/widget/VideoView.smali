.class public Landroid/widget/VideoView;
.super Landroid/view/SurfaceView;
.source "VideoView.java"

# interfaces
.implements Landroid/widget/MediaController$MediaPlayerControl;
.implements Landroid/media/SubtitleController$Anchor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/VideoView$1;,
        Landroid/widget/VideoView$2;,
        Landroid/widget/VideoView$3;,
        Landroid/widget/VideoView$4;,
        Landroid/widget/VideoView$5;,
        Landroid/widget/VideoView$6;,
        Landroid/widget/VideoView$7;
    }
.end annotation


# static fields
.field protected static final STATE_ERROR:I = -0x1

.field protected static final STATE_IDLE:I = 0x0

.field protected static final STATE_PAUSED:I = 0x4

.field protected static final STATE_PLAYBACK_COMPLETED:I = 0x5

.field protected static final STATE_PLAYING:I = 0x3

.field protected static final STATE_PREPARED:I = 0x2

.field protected static final STATE_PREPARING:I = 0x1


# instance fields
.field private TAG:Ljava/lang/String;

.field private mAudioSession:I

.field protected mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

.field protected mCanPause:Z

.field protected mCanSeekBack:Z

.field protected mCanSeekForward:Z

.field protected mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected mCurrentBufferPercentage:I

.field protected mCurrentState:I

.field protected mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field protected mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field protected mMediaController:Landroid/widget/MediaController;

.field protected mMediaPlayer:Landroid/media/MediaPlayer;

.field protected mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

.field protected mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

.field private mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

.field protected mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field protected mPendingSubtitleTracks:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/util/Pair",
            "<",
            "Ljava/io/InputStream;",
            "Landroid/media/MediaFormat;",
            ">;>;"
        }
    .end annotation
.end field

.field protected mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

.field protected mSHCallback:Landroid/view/SurfaceHolder$Callback;

.field protected mSeekWhenPrepared:I

.field protected mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

.field private mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

.field private mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

.field protected mSurfaceHeight:I

.field protected mSurfaceHolder:Landroid/view/SurfaceHolder;

.field protected mSurfaceWidth:I

.field protected mTargetState:I

.field protected mUri:Landroid/net/Uri;

.field protected mVideoHeight:I

.field protected mVideoWidth:I


# direct methods
.method static synthetic -get0(Landroid/widget/VideoView;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Landroid/widget/VideoView;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Landroid/widget/VideoView;)Landroid/media/MediaPlayer$OnInfoListener;
    .locals 1

    iget-object v0, p0, Landroid/widget/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 203
    invoke-direct {p0, p1}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;)V

    .line 77
    const-string/jumbo v0, "VideoView"

    iput-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    .line 125
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 129
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 135
    iput-object v2, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 139
    iput-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 496
    new-instance v0, Landroid/widget/VideoView$1;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$1;-><init>(Landroid/widget/VideoView;)V

    .line 495
    iput-object v0, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 509
    new-instance v0, Landroid/widget/VideoView$2;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$2;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 582
    new-instance v0, Landroid/widget/VideoView$3;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$3;-><init>(Landroid/widget/VideoView;)V

    .line 581
    iput-object v0, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 596
    new-instance v0, Landroid/widget/VideoView$4;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$4;-><init>(Landroid/widget/VideoView;)V

    .line 595
    iput-object v0, p0, Landroid/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 609
    new-instance v0, Landroid/widget/VideoView$5;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$5;-><init>(Landroid/widget/VideoView;)V

    .line 608
    iput-object v0, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 669
    new-instance v0, Landroid/widget/VideoView$6;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$6;-><init>(Landroid/widget/VideoView;)V

    .line 668
    iput-object v0, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 722
    new-instance v0, Landroid/widget/VideoView$7;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$7;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 204
    invoke-virtual {p0}, Landroid/widget/VideoView;->initVideoView()V

    .line 202
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 208
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 209
    invoke-virtual {p0}, Landroid/widget/VideoView;->initVideoView()V

    .line 207
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/widget/VideoView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 212
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 217
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/SurfaceView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 77
    const-string/jumbo v0, "VideoView"

    iput-object v0, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    .line 125
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 129
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 135
    iput-object v2, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    .line 139
    iput-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 496
    new-instance v0, Landroid/widget/VideoView$1;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$1;-><init>(Landroid/widget/VideoView;)V

    .line 495
    iput-object v0, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    .line 509
    new-instance v0, Landroid/widget/VideoView$2;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$2;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 582
    new-instance v0, Landroid/widget/VideoView$3;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$3;-><init>(Landroid/widget/VideoView;)V

    .line 581
    iput-object v0, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 596
    new-instance v0, Landroid/widget/VideoView$4;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$4;-><init>(Landroid/widget/VideoView;)V

    .line 595
    iput-object v0, p0, Landroid/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 609
    new-instance v0, Landroid/widget/VideoView$5;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$5;-><init>(Landroid/widget/VideoView;)V

    .line 608
    iput-object v0, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 669
    new-instance v0, Landroid/widget/VideoView$6;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$6;-><init>(Landroid/widget/VideoView;)V

    .line 668
    iput-object v0, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    .line 722
    new-instance v0, Landroid/widget/VideoView$7;

    invoke-direct {v0, p0}, Landroid/widget/VideoView$7;-><init>(Landroid/widget/VideoView;)V

    iput-object v0, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    .line 218
    invoke-virtual {p0}, Landroid/widget/VideoView;->initVideoView()V

    .line 216
    return-void
.end method

.method private measureAndLayoutSubtitleWidget()V
    .locals 4

    .prologue
    .line 988
    invoke-virtual {p0}, Landroid/widget/VideoView;->getWidth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingLeft()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingRight()I

    move-result v3

    sub-int v1, v2, v3

    .line 989
    .local v1, "width":I
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHeight()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingTop()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingBottom()I

    move-result v3

    sub-int v0, v2, v3

    .line 991
    .local v0, "height":I
    iget-object v2, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v2, v1, v0}, Landroid/media/SubtitleTrack$RenderingWidget;->setSize(II)V

    .line 987
    return-void
.end method


# virtual methods
.method public addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    .locals 5
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "format"    # Landroid/media/MediaFormat;

    .prologue
    .line 370
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-nez v1, :cond_0

    .line 371
    iget-object v1, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-static {p1, p2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 369
    :goto_0
    return-void

    .line 374
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1, p1, p2}, Landroid/media/MediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 375
    :catch_0
    move-exception v0

    .line 376
    .local v0, "e":Ljava/lang/IllegalStateException;
    iget-object v1, p0, Landroid/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 377
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v3, 0x385

    const/4 v4, 0x0

    .line 376
    invoke-interface {v1, v2, v3, v4}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z

    goto :goto_0
.end method

.method protected attachMediaController()V
    .locals 3

    .prologue
    .line 484
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_0

    .line 485
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, p0}, Landroid/widget/MediaController;->setMediaPlayer(Landroid/widget/MediaController$MediaPlayerControl;)V

    .line 486
    invoke-virtual {p0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    instance-of v1, v1, Landroid/view/View;

    if-eqz v1, :cond_1

    .line 487
    invoke-virtual {p0}, Landroid/widget/VideoView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 488
    .local v0, "anchorView":Landroid/view/View;
    :goto_0
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1, v0}, Landroid/widget/MediaController;->setAnchorView(Landroid/view/View;)V

    .line 489
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/MediaController;->setEnabled(Z)V

    .line 483
    .end local v0    # "anchorView":Landroid/view/View;
    :cond_0
    return-void

    .line 487
    :cond_1
    move-object v0, p0

    .restart local v0    # "anchorView":Landroid/view/View;
    goto :goto_0
.end method

.method public canPause()Z
    .locals 1

    .prologue
    .line 920
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanPause:Z

    return v0
.end method

.method public canSeekBackward()Z
    .locals 1

    .prologue
    .line 925
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanSeekBack:Z

    return v0
.end method

.method public canSeekForward()Z
    .locals 1

    .prologue
    .line 930
    iget-boolean v0, p0, Landroid/widget/VideoView;->mCanSeekForward:Z

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 972
    invoke-super {p0, p1}, Landroid/view/SurfaceView;->draw(Landroid/graphics/Canvas;)V

    .line 974
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v1, :cond_0

    .line 975
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    .line 976
    .local v0, "saveCount":I
    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/widget/VideoView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 977
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v1, p1}, Landroid/media/SubtitleTrack$RenderingWidget;->draw(Landroid/graphics/Canvas;)V

    .line 978
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    .line 971
    .end local v0    # "saveCount":I
    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 287
    const-class v0, Landroid/widget/VideoView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAudioSessionId()I
    .locals 2

    .prologue
    .line 935
    iget v1, p0, Landroid/widget/VideoView;->mAudioSession:I

    if-nez v1, :cond_0

    .line 936
    new-instance v0, Landroid/media/MediaPlayer;

    invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V

    .line 937
    .local v0, "foo":Landroid/media/MediaPlayer;
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v1

    iput v1, p0, Landroid/widget/VideoView;->mAudioSession:I

    .line 938
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V

    .line 940
    .end local v0    # "foo":Landroid/media/MediaPlayer;
    :cond_0
    iget v1, p0, Landroid/widget/VideoView;->mAudioSession:I

    return v1
.end method

.method public getBufferPercentage()I
    .locals 1

    .prologue
    .line 903
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v0, :cond_0

    .line 904
    iget v0, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    return v0

    .line 906
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentPosition()I
    .locals 1

    .prologue
    .line 880
    invoke-virtual {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 881
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0

    return v0

    .line 883
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getDuration()I
    .locals 1

    .prologue
    .line 871
    invoke-virtual {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 872
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0

    return v0

    .line 875
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getSubtitleLooper()Landroid/os/Looper;
    .locals 1

    .prologue
    .line 1039
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    return-object v0
.end method

.method protected initVideoView()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 298
    iput v2, p0, Landroid/widget/VideoView;->mVideoWidth:I

    .line 299
    iput v2, p0, Landroid/widget/VideoView;->mVideoHeight:I

    .line 300
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/VideoView;->mSHCallback:Landroid/view/SurfaceHolder$Callback;

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->addCallback(Landroid/view/SurfaceHolder$Callback;)V

    .line 301
    invoke-virtual {p0}, Landroid/widget/VideoView;->getHolder()Landroid/view/SurfaceHolder;

    move-result-object v0

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Landroid/view/SurfaceHolder;->setType(I)V

    .line 302
    invoke-virtual {p0, v3}, Landroid/widget/VideoView;->setFocusable(Z)V

    .line 303
    invoke-virtual {p0, v3}, Landroid/widget/VideoView;->setFocusableInTouchMode(Z)V

    .line 304
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestFocus()Z

    .line 305
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    .line 306
    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 307
    iput v2, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 297
    return-void
.end method

.method public isInPlaybackState()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 912
    iget-object v2, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v2, :cond_1

    .line 913
    iget v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1

    .line 914
    iget v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    if-eqz v2, :cond_1

    .line 915
    iget v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    if-eq v2, v0, :cond_0

    .line 912
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 915
    goto :goto_0

    :cond_1
    move v0, v1

    .line 912
    goto :goto_0
.end method

.method public isPlaying()Z
    .locals 1

    .prologue
    .line 898
    invoke-virtual {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 945
    invoke-super {p0}, Landroid/view/SurfaceView;->onAttachedToWindow()V

    .line 947
    iget-object v0, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_0

    .line 948
    iget-object v0, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v0}, Landroid/media/SubtitleTrack$RenderingWidget;->onAttachedToWindow()V

    .line 944
    :cond_0
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 954
    invoke-super {p0}, Landroid/view/SurfaceView;->onDetachedFromWindow()V

    .line 956
    iget-object v0, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_0

    .line 957
    iget-object v0, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v0}, Landroid/media/SubtitleTrack$RenderingWidget;->onDetachedFromWindow()V

    .line 953
    :cond_0
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x1

    .line 792
    const/4 v1, 0x4

    if-eq p1, v1, :cond_2

    .line 793
    const/16 v1, 0x18

    if-eq p1, v1, :cond_2

    .line 794
    const/16 v1, 0x19

    if-eq p1, v1, :cond_2

    .line 795
    const/16 v1, 0xa4

    if-eq p1, v1, :cond_2

    .line 796
    const/16 v1, 0x52

    if-eq p1, v1, :cond_2

    .line 797
    const/4 v1, 0x5

    if-eq p1, v1, :cond_2

    .line 798
    const/4 v1, 0x6

    if-eq p1, v1, :cond_1

    const/4 v0, 0x1

    .line 799
    .local v0, "isKeyCodeSupported":Z
    :goto_0
    invoke-virtual {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v1

    if-eqz v1, :cond_a

    if-eqz v0, :cond_a

    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v1, :cond_a

    .line 800
    const/16 v1, 0x4f

    if-eq p1, v1, :cond_0

    .line 801
    const/16 v1, 0x55

    if-ne p1, v1, :cond_4

    .line 802
    :cond_0
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 803
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    .line 804
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    .line 809
    :goto_1
    return v2

    .line 798
    .end local v0    # "isKeyCodeSupported":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isKeyCodeSupported":Z
    goto :goto_0

    .line 792
    .end local v0    # "isKeyCodeSupported":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "isKeyCodeSupported":Z
    goto :goto_0

    .line 806
    :cond_3
    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    .line 807
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->hide()V

    goto :goto_1

    .line 810
    :cond_4
    const/16 v1, 0x7e

    if-ne p1, v1, :cond_6

    .line 811
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-nez v1, :cond_5

    .line 812
    invoke-virtual {p0}, Landroid/widget/VideoView;->start()V

    .line 813
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->hide()V

    .line 815
    :cond_5
    return v2

    .line 816
    :cond_6
    const/16 v1, 0x56

    if-eq p1, v1, :cond_7

    .line 817
    const/16 v1, 0x7f

    if-ne p1, v1, :cond_9

    .line 818
    :cond_7
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v1

    if-eqz v1, :cond_8

    .line 819
    invoke-virtual {p0}, Landroid/widget/VideoView;->pause()V

    .line 820
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v1}, Landroid/widget/MediaController;->show()V

    .line 822
    :cond_8
    return v2

    .line 824
    :cond_9
    invoke-virtual {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 828
    :cond_a
    invoke-super {p0, p1, p2}, Landroid/view/SurfaceView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    return v1
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 963
    invoke-super/range {p0 .. p5}, Landroid/view/SurfaceView;->onLayout(ZIIII)V

    .line 965
    iget-object v0, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v0, :cond_0

    .line 966
    invoke-direct {p0}, Landroid/widget/VideoView;->measureAndLayoutSubtitleWidget()V

    .line 962
    :cond_0
    return-void
.end method

.method protected onMeasure(II)V
    .locals 9
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/high16 v8, -0x80000000

    .line 226
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    invoke-static {v6, p1}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v3

    .line 227
    .local v3, "width":I
    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    invoke-static {v6, p2}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v0

    .line 228
    .local v0, "height":I
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    if-lez v6, :cond_0

    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    if-lez v6, :cond_0

    .line 230
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v4

    .line 231
    .local v4, "widthSpecMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v5

    .line 232
    .local v5, "widthSpecSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 233
    .local v1, "heightSpecMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 235
    .local v2, "heightSpecSize":I
    if-ne v4, v7, :cond_2

    if-ne v1, v7, :cond_2

    .line 237
    move v3, v5

    .line 238
    move v0, v2

    .line 241
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v7, v3

    if-ge v6, v7, :cond_1

    .line 243
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    div-int v3, v6, v7

    .line 282
    .end local v1    # "heightSpecMode":I
    .end local v2    # "heightSpecSize":I
    .end local v4    # "widthSpecMode":I
    .end local v5    # "widthSpecSize":I
    :cond_0
    :goto_0
    invoke-virtual {p0, v3, v0}, Landroid/widget/VideoView;->setMeasuredDimension(II)V

    .line 222
    return-void

    .line 244
    .restart local v1    # "heightSpecMode":I
    .restart local v2    # "heightSpecSize":I
    .restart local v4    # "widthSpecMode":I
    .restart local v5    # "widthSpecSize":I
    :cond_1
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v7, v3

    if-le v6, v7, :cond_0

    .line 246
    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v6, v3

    iget v7, p0, Landroid/widget/VideoView;->mVideoWidth:I

    div-int v0, v6, v7

    goto :goto_0

    .line 248
    :cond_2
    if-ne v4, v7, :cond_3

    .line 250
    move v3, v5

    .line 251
    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v6, v3

    iget v7, p0, Landroid/widget/VideoView;->mVideoWidth:I

    div-int v0, v6, v7

    .line 252
    if-ne v1, v8, :cond_0

    if-le v0, v2, :cond_0

    .line 254
    move v0, v2

    goto :goto_0

    .line 256
    :cond_3
    if-ne v1, v7, :cond_4

    .line 258
    move v0, v2

    .line 259
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    div-int v3, v6, v7

    .line 260
    if-ne v4, v8, :cond_0

    if-le v3, v5, :cond_0

    .line 262
    move v3, v5

    goto :goto_0

    .line 266
    :cond_4
    iget v3, p0, Landroid/widget/VideoView;->mVideoWidth:I

    .line 267
    iget v0, p0, Landroid/widget/VideoView;->mVideoHeight:I

    .line 268
    if-ne v1, v8, :cond_5

    if-le v0, v2, :cond_5

    .line 270
    move v0, v2

    .line 271
    iget v6, p0, Landroid/widget/VideoView;->mVideoWidth:I

    mul-int/2addr v6, v0

    iget v7, p0, Landroid/widget/VideoView;->mVideoHeight:I

    div-int v3, v6, v7

    .line 273
    :cond_5
    if-ne v4, v8, :cond_0

    if-le v3, v5, :cond_0

    .line 275
    move v3, v5

    .line 276
    iget v6, p0, Landroid/widget/VideoView;->mVideoHeight:I

    mul-int/2addr v6, v3

    iget v7, p0, Landroid/widget/VideoView;->mVideoWidth:I

    div-int v0, v6, v7

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 775
    invoke-virtual {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 776
    invoke-virtual {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 778
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 783
    invoke-virtual {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 784
    invoke-virtual {p0}, Landroid/widget/VideoView;->toggleMediaControlsVisiblity()V

    .line 786
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected openVideo()V
    .locals 13

    .prologue
    const/4 v12, 0x3

    const/4 v11, 0x0

    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 402
    iget-object v8, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    if-eqz v8, :cond_0

    iget-object v8, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    if-nez v8, :cond_1

    .line 404
    :cond_0
    return-void

    .line 408
    :cond_1
    invoke-virtual {p0, v9}, Landroid/widget/VideoView;->release(Z)V

    .line 410
    iget-object v8, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    const-string/jumbo v9, "audio"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 411
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v11, v12, v10}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    .line 414
    :try_start_0
    new-instance v8, Landroid/media/MediaPlayer;

    invoke-direct {v8}, Landroid/media/MediaPlayer;-><init>()V

    iput-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 417
    invoke-virtual {p0}, Landroid/widget/VideoView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 418
    .local v1, "context":Landroid/content/Context;
    new-instance v2, Landroid/media/SubtitleController;

    .line 419
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getMediaTimeProvider()Landroid/media/MediaTimeProvider;

    move-result-object v8

    iget-object v9, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 418
    invoke-direct {v2, v1, v8, v9}, Landroid/media/SubtitleController;-><init>(Landroid/content/Context;Landroid/media/MediaTimeProvider;Landroid/media/SubtitleController$Listener;)V

    .line 420
    .local v2, "controller":Landroid/media/SubtitleController;
    new-instance v8, Landroid/media/WebVttRenderer;

    invoke-direct {v8, v1}, Landroid/media/WebVttRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 421
    new-instance v8, Landroid/media/TtmlRenderer;

    invoke-direct {v8, v1}, Landroid/media/TtmlRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 422
    new-instance v8, Landroid/media/ClosedCaptionRenderer;

    invoke-direct {v8, v1}, Landroid/media/ClosedCaptionRenderer;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v8}, Landroid/media/SubtitleController;->registerRenderer(Landroid/media/SubtitleController$Renderer;)V

    .line 423
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8, v2, p0}, Landroid/media/MediaPlayer;->setSubtitleAnchor(Landroid/media/SubtitleController;Landroid/media/SubtitleController$Anchor;)V

    .line 425
    iget v8, p0, Landroid/widget/VideoView;->mAudioSession:I

    if-eqz v8, :cond_2

    .line 426
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget v9, p0, Landroid/widget/VideoView;->mAudioSession:I

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setAudioSessionId(I)V

    .line 430
    :goto_0
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v9, p0, Landroid/widget/VideoView;->mPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 431
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v9, p0, Landroid/widget/VideoView;->mSizeChangedListener:Landroid/media/MediaPlayer$OnVideoSizeChangedListener;

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 432
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v9, p0, Landroid/widget/VideoView;->mCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 433
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v9, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 434
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v9, p0, Landroid/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 435
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v9, p0, Landroid/widget/VideoView;->mBufferingUpdateListener:Landroid/media/MediaPlayer$OnBufferingUpdateListener;

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 436
    const/4 v8, 0x0

    iput v8, p0, Landroid/widget/VideoView;->mCurrentBufferPercentage:I

    .line 437
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v9, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    iget-object v10, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    iget-object v11, p0, Landroid/widget/VideoView;->mHeaders:Ljava/util/Map;

    invoke-virtual {v8, v9, v10, v11}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 438
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v9, p0, Landroid/widget/VideoView;->mSurfaceHolder:Landroid/view/SurfaceHolder;

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setDisplay(Landroid/view/SurfaceHolder;)V

    .line 439
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v9, 0x3

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setAudioStreamType(I)V

    .line 440
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Landroid/media/MediaPlayer;->setScreenOnWhilePlaying(Z)V

    .line 441
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->prepareAsync()V

    .line 443
    iget-object v8, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-interface {v8}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "pending$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/util/Pair;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 445
    .local v6, "pending":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/io/InputStream;Landroid/media/MediaFormat;>;"
    :try_start_1
    iget-object v10, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    iget-object v8, v6, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/io/InputStream;

    iget-object v9, v6, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v9, Landroid/media/MediaFormat;

    invoke-virtual {v10, v8, v9}, Landroid/media/MediaPlayer;->addSubtitleSource(Ljava/io/InputStream;Landroid/media/MediaFormat;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 446
    :catch_0
    move-exception v3

    .line 447
    .local v3, "e":Ljava/lang/IllegalStateException;
    :try_start_2
    iget-object v8, p0, Landroid/widget/VideoView;->mInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 448
    iget-object v9, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/16 v10, 0x385

    const/4 v11, 0x0

    .line 447
    invoke-interface {v8, v9, v10, v11}, Landroid/media/MediaPlayer$OnInfoListener;->onInfo(Landroid/media/MediaPlayer;II)Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 456
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "controller":Landroid/media/SubtitleController;
    .end local v3    # "e":Ljava/lang/IllegalStateException;
    .end local v6    # "pending":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/io/InputStream;Landroid/media/MediaFormat;>;"
    .end local v7    # "pending$iterator":Ljava/util/Iterator;
    :catch_1
    move-exception v4

    .line 457
    .local v4, "ex":Ljava/io/IOException;
    :try_start_3
    iget-object v8, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to open content: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 460
    iget-object v8, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v9, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 469
    iget-object v8, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->clear()V

    .line 461
    return-void

    .line 428
    .end local v4    # "ex":Ljava/io/IOException;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "controller":Landroid/media/SubtitleController;
    :cond_2
    :try_start_4
    iget-object v8, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v8}, Landroid/media/MediaPlayer;->getAudioSessionId()I

    move-result v8

    iput v8, p0, Landroid/widget/VideoView;->mAudioSession:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_0

    .line 462
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "controller":Landroid/media/SubtitleController;
    :catch_2
    move-exception v5

    .line 463
    .local v5, "ex":Ljava/lang/IllegalArgumentException;
    :try_start_5
    iget-object v8, p0, Landroid/widget/VideoView;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Unable to open content: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 466
    iget-object v8, p0, Landroid/widget/VideoView;->mErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    iget-object v9, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    const/4 v10, 0x1

    const/4 v11, 0x0

    invoke-interface {v8, v9, v10, v11}, Landroid/media/MediaPlayer$OnErrorListener;->onError(Landroid/media/MediaPlayer;II)Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 469
    iget-object v8, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->clear()V

    .line 467
    return-void

    .line 454
    .end local v5    # "ex":Ljava/lang/IllegalArgumentException;
    .restart local v1    # "context":Landroid/content/Context;
    .restart local v2    # "controller":Landroid/media/SubtitleController;
    .restart local v7    # "pending$iterator":Ljava/util/Iterator;
    :cond_3
    const/4 v8, 0x1

    :try_start_6
    iput v8, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 455
    invoke-virtual {p0}, Landroid/widget/VideoView;->attachMediaController()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 469
    iget-object v8, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v8}, Ljava/util/Vector;->clear()V

    .line 401
    return-void

    .line 468
    .end local v1    # "context":Landroid/content/Context;
    .end local v2    # "controller":Landroid/media/SubtitleController;
    .end local v7    # "pending$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v8

    .line 469
    iget-object v9, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v9}, Ljava/util/Vector;->clear()V

    .line 468
    throw v8
.end method

.method public pause()V
    .locals 2

    .prologue
    const/4 v1, 0x4

    .line 852
    invoke-virtual {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 853
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 854
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V

    .line 855
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 858
    :cond_0
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 851
    return-void
.end method

.method protected release(Z)V
    .locals 4
    .param p1, "cleartargetstate"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 759
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_1

    .line 760
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->reset()V

    .line 761
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 762
    iput-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 763
    iget-object v1, p0, Landroid/widget/VideoView;->mPendingSubtitleTracks:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 764
    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 765
    if-eqz p1, :cond_0

    .line 766
    iput v2, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 768
    :cond_0
    iget-object v1, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 769
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 758
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_1
    return-void
.end method

.method public resolveAdjustedSize(II)I
    .locals 1
    .param p1, "desiredSize"    # I
    .param p2, "measureSpec"    # I

    .prologue
    .line 291
    invoke-static {p1, p2}, Landroid/widget/VideoView;->getDefaultSize(II)I

    move-result v0

    return v0
.end method

.method public resume()V
    .locals 0

    .prologue
    .line 866
    invoke-virtual {p0}, Landroid/widget/VideoView;->openVideo()V

    .line 865
    return-void
.end method

.method public seekTo(I)V
    .locals 1
    .param p1, "msec"    # I

    .prologue
    .line 888
    invoke-virtual {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 889
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0, p1}, Landroid/media/MediaPlayer;->seekTo(I)V

    .line 890
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    .line 887
    :goto_0
    return-void

    .line 892
    :cond_0
    iput p1, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    goto :goto_0
.end method

.method public setMediaController(Landroid/widget/MediaController;)V
    .locals 1
    .param p1, "controller"    # Landroid/widget/MediaController;

    .prologue
    .line 474
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    if-eqz v0, :cond_0

    .line 475
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 477
    :cond_0
    iput-object p1, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    .line 478
    invoke-virtual {p0}, Landroid/widget/VideoView;->attachMediaController()V

    .line 473
    return-void
.end method

.method public setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnCompletionListener;

    .prologue
    .line 694
    iput-object p1, p0, Landroid/widget/VideoView;->mOnCompletionListener:Landroid/media/MediaPlayer$OnCompletionListener;

    .line 692
    return-void
.end method

.method public setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnErrorListener;

    .prologue
    .line 707
    iput-object p1, p0, Landroid/widget/VideoView;->mOnErrorListener:Landroid/media/MediaPlayer$OnErrorListener;

    .line 705
    return-void
.end method

.method public setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnInfoListener;

    .prologue
    .line 717
    iput-object p1, p0, Landroid/widget/VideoView;->mOnInfoListener:Landroid/media/MediaPlayer$OnInfoListener;

    .line 716
    return-void
.end method

.method public setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V
    .locals 0
    .param p1, "l"    # Landroid/media/MediaPlayer$OnPreparedListener;

    .prologue
    .line 683
    iput-object p1, p0, Landroid/widget/VideoView;->mOnPreparedListener:Landroid/media/MediaPlayer$OnPreparedListener;

    .line 681
    return-void
.end method

.method public setSubtitleWidget(Landroid/media/SubtitleTrack$RenderingWidget;)V
    .locals 3
    .param p1, "subtitleWidget"    # Landroid/media/SubtitleTrack$RenderingWidget;

    .prologue
    const/4 v2, 0x0

    .line 997
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-ne v1, p1, :cond_0

    .line 998
    return-void

    .line 1001
    :cond_0
    invoke-virtual {p0}, Landroid/widget/VideoView;->isAttachedToWindow()Z

    move-result v0

    .line 1002
    .local v0, "attachedToWindow":Z
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    if-eqz v1, :cond_2

    .line 1003
    if-eqz v0, :cond_1

    .line 1004
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v1}, Landroid/media/SubtitleTrack$RenderingWidget;->onDetachedFromWindow()V

    .line 1007
    :cond_1
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    invoke-interface {v1, v2}, Landroid/media/SubtitleTrack$RenderingWidget;->setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V

    .line 1010
    :cond_2
    iput-object p1, p0, Landroid/widget/VideoView;->mSubtitleWidget:Landroid/media/SubtitleTrack$RenderingWidget;

    .line 1012
    if-eqz p1, :cond_5

    .line 1013
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    if-nez v1, :cond_3

    .line 1014
    new-instance v1, Landroid/widget/VideoView$8;

    invoke-direct {v1, p0}, Landroid/widget/VideoView$8;-><init>(Landroid/widget/VideoView;)V

    iput-object v1, p0, Landroid/widget/VideoView;->mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    .line 1022
    :cond_3
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/widget/VideoView;->setWillNotDraw(Z)V

    .line 1023
    iget-object v1, p0, Landroid/widget/VideoView;->mSubtitlesChangedListener:Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;

    invoke-interface {p1, v1}, Landroid/media/SubtitleTrack$RenderingWidget;->setOnChangedListener(Landroid/media/SubtitleTrack$RenderingWidget$OnChangedListener;)V

    .line 1025
    if-eqz v0, :cond_4

    .line 1026
    invoke-interface {p1}, Landroid/media/SubtitleTrack$RenderingWidget;->onAttachedToWindow()V

    .line 1027
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestLayout()V

    .line 1033
    :cond_4
    :goto_0
    invoke-virtual {p0}, Landroid/widget/VideoView;->invalidate()V

    .line 996
    return-void

    .line 1030
    :cond_5
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Landroid/widget/VideoView;->setWillNotDraw(Z)V

    goto :goto_0
.end method

.method public setVideoPath(Ljava/lang/String;)V
    .locals 1
    .param p1, "path"    # Ljava/lang/String;

    .prologue
    .line 316
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;)V

    .line 315
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 325
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/widget/VideoView;->setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V

    .line 324
    return-void
.end method

.method public setVideoURI(Landroid/net/Uri;Ljava/util/Map;)V
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/Uri;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 339
    .local p2, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Landroid/widget/VideoView;->mUri:Landroid/net/Uri;

    .line 340
    iput-object p2, p0, Landroid/widget/VideoView;->mHeaders:Ljava/util/Map;

    .line 341
    const/4 v0, 0x0

    iput v0, p0, Landroid/widget/VideoView;->mSeekWhenPrepared:I

    .line 342
    invoke-virtual {p0}, Landroid/widget/VideoView;->openVideo()V

    .line 343
    invoke-virtual {p0}, Landroid/widget/VideoView;->requestLayout()V

    .line 344
    invoke-virtual {p0}, Landroid/widget/VideoView;->invalidate()V

    .line 338
    return-void
.end method

.method public start()V
    .locals 2

    .prologue
    const/4 v1, 0x3

    .line 843
    invoke-virtual {p0}, Landroid/widget/VideoView;->isInPlaybackState()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V

    .line 845
    iput v1, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 847
    :cond_0
    iput v1, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 842
    return-void
.end method

.method public stopPlayback()V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 388
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    if-eqz v1, :cond_0

    .line 389
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->stop()V

    .line 390
    iget-object v1, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->release()V

    .line 391
    iput-object v3, p0, Landroid/widget/VideoView;->mMediaPlayer:Landroid/media/MediaPlayer;

    .line 392
    iput v2, p0, Landroid/widget/VideoView;->mCurrentState:I

    .line 393
    iput v2, p0, Landroid/widget/VideoView;->mTargetState:I

    .line 394
    iget-object v1, p0, Landroid/widget/VideoView;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 395
    .local v0, "am":Landroid/media/AudioManager;
    invoke-virtual {v0, v3}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    .line 387
    .end local v0    # "am":Landroid/media/AudioManager;
    :cond_0
    return-void
.end method

.method public suspend()V
    .locals 1

    .prologue
    .line 862
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/VideoView;->release(Z)V

    .line 861
    return-void
.end method

.method protected toggleMediaControlsVisiblity()V
    .locals 1

    .prologue
    .line 834
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 835
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->hide()V

    .line 833
    :goto_0
    return-void

    .line 837
    :cond_0
    iget-object v0, p0, Landroid/widget/VideoView;->mMediaController:Landroid/widget/MediaController;

    invoke-virtual {v0}, Landroid/widget/MediaController;->show()V

    goto :goto_0
.end method
