.class public Lcom/mediatek/widget/ImageViewEx;
.super Landroid/widget/ImageView;
.source "ImageViewEx.java"


# annotations
.annotation runtime Landroid/widget/RemoteViews$RemoteView;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;,
        Lcom/mediatek/widget/ImageViewEx$GifThread;,
        Lcom/mediatek/widget/ImageViewEx$Bound;,
        Lcom/mediatek/widget/ImageViewEx$1;
    }
.end annotation


# static fields
.field private static final GIF_THREAD_NAME:Ljava/lang/String; = "gif-animation"

.field private static final MAX_HEIGHT:I = 0x1e0

.field private static final MAX_WIDTH:I = 0x280

.field private static final MSG_RUN_OBJECT:I = 0x401

.field private static final STORE_PIC_TAG:Ljava/lang/String; = "storePic"

.field private static final TAG:Ljava/lang/String; = "ImageViewEx"

.field private static final WIDGET_HEIGHT:Ljava/lang/String; = "widgetHeight"

.field private static final WIDGET_WIDTH:Ljava/lang/String; = "widgetWidth"

.field private static final WIDGET_X:Ljava/lang/String; = "widgetX"

.field private static final WIDGET_Y:Ljava/lang/String; = "widgetY"


# instance fields
.field private volatile mAbort:Z

.field private mAnimationThread:Ljava/lang/Thread;

.field private mContext:Landroid/content/Context;

.field private mCurrGifFrame:I

.field protected mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

.field protected mGifStream:Ljava/io/InputStream;

.field protected mHandler:Landroid/os/Handler;

.field private mLastFrame:Landroid/graphics/Bitmap;

.field private mResGif:Z

.field protected mResourceId:I

.field private mSelf:Landroid/widget/ImageView;

.field private mSetFromGif:Z

.field protected mUri:Landroid/net/Uri;

.field private mUriGif:Z


# direct methods
.method static synthetic -get0(Lcom/mediatek/widget/ImageViewEx;)Z
    .locals 1

    iget-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mAbort:Z

    return v0
.end method

.method static synthetic -get1(Lcom/mediatek/widget/ImageViewEx;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/widget/ImageViewEx;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/widget/ImageViewEx;)Landroid/graphics/Bitmap;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/widget/ImageViewEx;->mLastFrame:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mediatek/widget/ImageViewEx;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    iput-object p1, p0, Lcom/mediatek/widget/ImageViewEx;->mLastFrame:Landroid/graphics/Bitmap;

    return-object p1
.end method

.method static synthetic -set1(Lcom/mediatek/widget/ImageViewEx;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/widget/ImageViewEx;->mSetFromGif:Z

    return p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/widget/ImageViewEx;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->gifAnimation()V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 102
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 70
    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mUri:Landroid/net/Uri;

    .line 71
    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mGifStream:Ljava/io/InputStream;

    .line 72
    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    .line 85
    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mLastFrame:Landroid/graphics/Bitmap;

    .line 87
    iput-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mSetFromGif:Z

    .line 88
    iput-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mResGif:Z

    .line 89
    iput-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mUriGif:Z

    .line 91
    iput v0, p0, Lcom/mediatek/widget/ImageViewEx;->mCurrGifFrame:I

    .line 95
    iput-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mAbort:Z

    .line 388
    new-instance v0, Lcom/mediatek/widget/ImageViewEx$1;

    invoke-direct {v0, p0}, Lcom/mediatek/widget/ImageViewEx$1;-><init>(Lcom/mediatek/widget/ImageViewEx;)V

    iput-object v0, p0, Lcom/mediatek/widget/ImageViewEx;->mHandler:Landroid/os/Handler;

    .line 103
    iput-object p1, p0, Lcom/mediatek/widget/ImageViewEx;->mContext:Landroid/content/Context;

    .line 104
    invoke-virtual {p0}, Lcom/mediatek/widget/ImageViewEx;->initForGif()V

    .line 101
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 114
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mUri:Landroid/net/Uri;

    .line 71
    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mGifStream:Ljava/io/InputStream;

    .line 72
    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    .line 85
    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mLastFrame:Landroid/graphics/Bitmap;

    .line 87
    iput-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mSetFromGif:Z

    .line 88
    iput-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mResGif:Z

    .line 89
    iput-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mUriGif:Z

    .line 91
    iput v0, p0, Lcom/mediatek/widget/ImageViewEx;->mCurrGifFrame:I

    .line 95
    iput-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mAbort:Z

    .line 388
    new-instance v0, Lcom/mediatek/widget/ImageViewEx$1;

    invoke-direct {v0, p0}, Lcom/mediatek/widget/ImageViewEx$1;-><init>(Lcom/mediatek/widget/ImageViewEx;)V

    iput-object v0, p0, Lcom/mediatek/widget/ImageViewEx;->mHandler:Landroid/os/Handler;

    .line 115
    iput-object p1, p0, Lcom/mediatek/widget/ImageViewEx;->mContext:Landroid/content/Context;

    .line 116
    invoke-virtual {p0}, Lcom/mediatek/widget/ImageViewEx;->initForGif()V

    .line 113
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 128
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 70
    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mUri:Landroid/net/Uri;

    .line 71
    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mGifStream:Ljava/io/InputStream;

    .line 72
    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    .line 85
    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mLastFrame:Landroid/graphics/Bitmap;

    .line 87
    iput-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mSetFromGif:Z

    .line 88
    iput-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mResGif:Z

    .line 89
    iput-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mUriGif:Z

    .line 91
    iput v0, p0, Lcom/mediatek/widget/ImageViewEx;->mCurrGifFrame:I

    .line 95
    iput-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mAbort:Z

    .line 388
    new-instance v0, Lcom/mediatek/widget/ImageViewEx$1;

    invoke-direct {v0, p0}, Lcom/mediatek/widget/ImageViewEx$1;-><init>(Lcom/mediatek/widget/ImageViewEx;)V

    iput-object v0, p0, Lcom/mediatek/widget/ImageViewEx;->mHandler:Landroid/os/Handler;

    .line 129
    iput-object p1, p0, Lcom/mediatek/widget/ImageViewEx;->mContext:Landroid/content/Context;

    .line 130
    invoke-virtual {p0}, Lcom/mediatek/widget/ImageViewEx;->initForGif()V

    .line 127
    return-void
.end method

.method private abortAnimationThread()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 608
    const-string/jumbo v1, "ImageViewEx"

    const-string/jumbo v2, "<abortAnimationThread>"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 609
    iget-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mAnimationThread:Ljava/lang/Thread;

    if-nez v1, :cond_0

    .line 610
    const-string/jumbo v1, "ImageViewEx"

    const-string/jumbo v2, "<abortAnimationThread> thread null"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    return-void

    .line 614
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/widget/ImageViewEx;->mAbort:Z

    .line 617
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mAnimationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 620
    iget-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mAnimationThread:Ljava/lang/Thread;

    invoke-virtual {v1}, Ljava/lang/Thread;->join()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    :goto_0
    iput-object v3, p0, Lcom/mediatek/widget/ImageViewEx;->mAnimationThread:Ljava/lang/Thread;

    .line 627
    const-string/jumbo v1, "ImageViewEx"

    const-string/jumbo v2, "<abortAnimationThread> remove messages"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 628
    iget-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mHandler:Landroid/os/Handler;

    const/16 v2, 0x401

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 607
    return-void

    .line 621
    :catch_0
    move-exception v0

    .line 622
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string/jumbo v1, "ImageViewEx"

    const-string/jumbo v2, "<abortAnimationThread> join interrupted"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private closeGifStream()V
    .locals 4

    .prologue
    .line 557
    :try_start_0
    iget-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mGifStream:Ljava/io/InputStream;

    if-eqz v1, :cond_0

    .line 558
    iget-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mGifStream:Ljava/io/InputStream;

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 559
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mGifStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 554
    :cond_0
    :goto_0
    return-void

    .line 561
    :catch_0
    move-exception v0

    .line 562
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "ImageViewEx"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "<closeGifStream> Close GIF InputStream failed, "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private decodeBoundsInfo(Landroid/net/Uri;)Lcom/mediatek/widget/ImageViewEx$Bound;
    .locals 9
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v5, 0x0

    .line 633
    const/4 v3, 0x0

    .line 634
    .local v3, "input":Ljava/io/InputStream;
    new-instance v0, Lcom/mediatek/widget/ImageViewEx$Bound;

    invoke-direct {v0, p0, v5}, Lcom/mediatek/widget/ImageViewEx$Bound;-><init>(Lcom/mediatek/widget/ImageViewEx;Lcom/mediatek/widget/ImageViewEx$Bound;)V

    .line 636
    .local v0, "bound":Lcom/mediatek/widget/ImageViewEx$Bound;
    :try_start_0
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 637
    .local v3, "input":Ljava/io/InputStream;
    new-instance v4, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v4}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 638
    .local v4, "opt":Landroid/graphics/BitmapFactory$Options;
    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 639
    const/4 v5, 0x0

    invoke-static {v3, v5, v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    .line 641
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outWidth:I

    invoke-static {v0, v5}, Lcom/mediatek/widget/ImageViewEx$Bound;->-set1(Lcom/mediatek/widget/ImageViewEx$Bound;I)I

    .line 642
    iget v5, v4, Landroid/graphics/BitmapFactory$Options;->outHeight:I

    invoke-static {v0, v5}, Lcom/mediatek/widget/ImageViewEx$Bound;->-set0(Lcom/mediatek/widget/ImageViewEx$Bound;I)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 646
    if-eqz v3, :cond_0

    .line 648
    :try_start_1
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 654
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "opt":Landroid/graphics/BitmapFactory$Options;
    :cond_0
    :goto_0
    return-object v0

    .line 649
    .restart local v3    # "input":Ljava/io/InputStream;
    .restart local v4    # "opt":Landroid/graphics/BitmapFactory$Options;
    :catch_0
    move-exception v2

    .line 650
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v5, "ImageViewEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "<decodeBoundsInfo> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 643
    .end local v2    # "e":Ljava/io/IOException;
    .end local v3    # "input":Ljava/io/InputStream;
    .end local v4    # "opt":Landroid/graphics/BitmapFactory$Options;
    :catch_1
    move-exception v1

    .line 644
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_2
    const-string/jumbo v5, "ImageViewEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "<decodeBoundsInfo> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 646
    if-eqz v3, :cond_0

    .line 648
    :try_start_3
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 649
    :catch_2
    move-exception v2

    .line 650
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v5, "ImageViewEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "<decodeBoundsInfo> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 645
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    .line 646
    if-eqz v3, :cond_1

    .line 648
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 645
    :cond_1
    :goto_1
    throw v5

    .line 649
    :catch_3
    move-exception v2

    .line 650
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "ImageViewEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "<decodeBoundsInfo> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private decodeDegreeInfo(Landroid/net/Uri;)I
    .locals 10
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 658
    const/4 v4, 0x0

    .line 659
    .local v4, "inputForRotate":Ljava/io/InputStream;
    const/4 v5, 0x0

    .line 660
    .local v5, "orientation":I
    const/4 v0, 0x0

    .line 662
    .local v0, "degree":I
    :try_start_0
    iget-object v6, p0, Lcom/mediatek/widget/ImageViewEx;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v4

    .line 663
    .local v4, "inputForRotate":Ljava/io/InputStream;
    if-eqz v4, :cond_0

    .line 664
    new-instance v3, Landroid/media/ExifInterface;

    invoke-direct {v3, v4}, Landroid/media/ExifInterface;-><init>(Ljava/io/InputStream;)V

    .line 665
    .local v3, "exif":Landroid/media/ExifInterface;
    if-eqz v3, :cond_0

    .line 667
    const-string/jumbo v6, "Orientation"

    const/4 v7, 0x0

    .line 666
    invoke-virtual {v3, v6, v7}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v5

    .line 668
    invoke-direct {p0, v5}, Lcom/mediatek/widget/ImageViewEx;->getExifRotation(I)I
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 676
    .end local v3    # "exif":Landroid/media/ExifInterface;
    :cond_0
    if-eqz v4, :cond_1

    .line 678
    :try_start_1
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 684
    .end local v4    # "inputForRotate":Ljava/io/InputStream;
    :cond_1
    :goto_0
    return v0

    .line 679
    .restart local v4    # "inputForRotate":Ljava/io/InputStream;
    :catch_0
    move-exception v2

    .line 680
    .local v2, "e":Ljava/io/IOException;
    const-string/jumbo v6, "ImageViewEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "<decodeDegreeInfo> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 673
    .end local v2    # "e":Ljava/io/IOException;
    .end local v4    # "inputForRotate":Ljava/io/InputStream;
    :catch_1
    move-exception v2

    .line 674
    .restart local v2    # "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v6, "ImageViewEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "<decodeDegreeInfo> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 676
    if-eqz v4, :cond_1

    .line 678
    :try_start_3
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 679
    :catch_2
    move-exception v2

    .line 680
    const-string/jumbo v6, "ImageViewEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "<decodeDegreeInfo> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 671
    .end local v2    # "e":Ljava/io/IOException;
    :catch_3
    move-exception v1

    .line 672
    .local v1, "e":Ljava/io/FileNotFoundException;
    :try_start_4
    const-string/jumbo v6, "ImageViewEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "<decodeDegreeInfo> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 676
    if-eqz v4, :cond_1

    .line 678
    :try_start_5
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    goto/16 :goto_0

    .line 679
    :catch_4
    move-exception v2

    .line 680
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v6, "ImageViewEx"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "<decodeDegreeInfo> "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_0

    .line 675
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .end local v2    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v6

    .line 676
    if-eqz v4, :cond_2

    .line 678
    :try_start_6
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_5

    .line 675
    :cond_2
    :goto_1
    throw v6

    .line 679
    :catch_5
    move-exception v2

    .line 680
    .restart local v2    # "e":Ljava/io/IOException;
    const-string/jumbo v7, "ImageViewEx"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "<decodeDegreeInfo> "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private getExifRotation(I)I
    .locals 1
    .param p1, "orientation"    # I

    .prologue
    .line 759
    const/4 v0, 0x0

    .line 760
    .local v0, "degrees":I
    packed-switch p1, :pswitch_data_0

    .line 776
    :goto_0
    :pswitch_0
    return v0

    .line 762
    :pswitch_1
    const/4 v0, 0x0

    .line 763
    goto :goto_0

    .line 765
    :pswitch_2
    const/16 v0, 0x5a

    .line 766
    goto :goto_0

    .line 768
    :pswitch_3
    const/16 v0, 0xb4

    .line 769
    goto :goto_0

    .line 771
    :pswitch_4
    const/16 v0, 0x10e

    .line 772
    goto :goto_0

    .line 760
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private gifAnimation()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 448
    :try_start_0
    const-string/jumbo v5, "ImageViewEx"

    const-string/jumbo v6, "<gifAnimation> call openGifStream()"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->openGifStream()V

    .line 450
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifStream:Ljava/io/InputStream;

    if-nez v5, :cond_1

    .line 451
    const-string/jumbo v5, "ImageViewEx"

    const-string/jumbo v6, "<gifAnimation> got null mGifStream"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    if-eqz v5, :cond_0

    .line 520
    iput-object v9, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    .line 522
    :cond_0
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->closeGifStream()V

    .line 452
    return-void

    .line 454
    :cond_1
    :try_start_1
    iget-boolean v5, p0, Lcom/mediatek/widget/ImageViewEx;->mAbort:Z

    if-eqz v5, :cond_3

    .line 455
    const-string/jumbo v5, "ImageViewEx"

    const-string/jumbo v6, "<gifAnimation> after open stream:thread aborted"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 518
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    if-eqz v5, :cond_2

    .line 520
    iput-object v9, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    .line 522
    :cond_2
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->closeGifStream()V

    .line 456
    return-void

    .line 459
    :cond_3
    :try_start_2
    new-instance v5, Lcom/mediatek/gifdecoder/GifDecoder;

    iget-object v6, p0, Lcom/mediatek/widget/ImageViewEx;->mGifStream:Ljava/io/InputStream;

    invoke-direct {v5, v6}, Lcom/mediatek/gifdecoder/GifDecoder;-><init>(Ljava/io/InputStream;)V

    iput-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    .line 461
    iget-boolean v5, p0, Lcom/mediatek/widget/ImageViewEx;->mAbort:Z

    if-eqz v5, :cond_5

    .line 462
    const-string/jumbo v5, "ImageViewEx"

    const-string/jumbo v6, "<gifAnimation> after new GifDecoder:thread aborted"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 518
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    if-eqz v5, :cond_4

    .line 520
    iput-object v9, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    .line 522
    :cond_4
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->closeGifStream()V

    .line 463
    return-void

    .line 466
    :cond_5
    :try_start_3
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    if-nez v5, :cond_7

    .line 467
    const-string/jumbo v5, "ImageViewEx"

    const-string/jumbo v6, "<gifAnimation> Decode GIF resource failed"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 470
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->showFirstGifFrame()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 518
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    if-eqz v5, :cond_6

    .line 520
    iput-object v9, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    .line 522
    :cond_6
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->closeGifStream()V

    .line 471
    return-void

    .line 473
    :cond_7
    :try_start_4
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    invoke-virtual {v5}, Lcom/mediatek/gifdecoder/GifDecoder;->getTotalFrameCount()I

    move-result v5

    if-nez v5, :cond_9

    .line 474
    const-string/jumbo v5, "ImageViewEx"

    const-string/jumbo v6, "<gifAnimation> decode gif stream fails"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    const/4 v5, 0x0

    iput-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    .line 479
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->showFirstGifFrame()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 518
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    if-eqz v5, :cond_8

    .line 520
    iput-object v9, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    .line 522
    :cond_8
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->closeGifStream()V

    .line 480
    return-void

    .line 483
    :cond_9
    const-wide/16 v2, 0x0

    .line 484
    .local v2, "frameDuration":J
    :try_start_5
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    invoke-virtual {v5}, Lcom/mediatek/gifdecoder/GifDecoder;->getTotalFrameCount()I

    move-result v4

    .line 485
    .local v4, "totalFrameCount":I
    const/4 v5, 0x0

    iput v5, p0, Lcom/mediatek/widget/ImageViewEx;->mCurrGifFrame:I

    .line 488
    :goto_0
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    iget v6, p0, Lcom/mediatek/widget/ImageViewEx;->mCurrGifFrame:I

    invoke-virtual {v5, v6}, Lcom/mediatek/gifdecoder/GifDecoder;->getFrameBitmap(I)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 489
    .local v1, "gifFrame":Landroid/graphics/Bitmap;
    iget-boolean v5, p0, Lcom/mediatek/widget/ImageViewEx;->mAbort:Z

    if-eqz v5, :cond_b

    .line 490
    const-string/jumbo v5, "ImageViewEx"

    const-string/jumbo v6, "<gifAnimation> after decode:thread aborted"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 518
    :goto_1
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    if-eqz v5, :cond_a

    .line 520
    iput-object v9, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    .line 522
    :cond_a
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->closeGifStream()V

    .line 446
    return-void

    .line 493
    :cond_b
    :try_start_6
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mHandler:Landroid/os/Handler;

    iget-object v6, p0, Lcom/mediatek/widget/ImageViewEx;->mHandler:Landroid/os/Handler;

    .line 494
    new-instance v7, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;

    invoke-direct {v7, p0, v1}, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;-><init>(Lcom/mediatek/widget/ImageViewEx;Landroid/graphics/Bitmap;)V

    .line 493
    const/16 v8, 0x401

    invoke-virtual {v6, v8, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 495
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    .line 496
    iget v6, p0, Lcom/mediatek/widget/ImageViewEx;->mCurrGifFrame:I

    .line 495
    invoke-virtual {v5, v6}, Lcom/mediatek/gifdecoder/GifDecoder;->getFrameDuration(I)I

    move-result v5

    int-to-long v2, v5

    .line 497
    const-string/jumbo v5, "ImageViewEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "<gifAnimation> sleep for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 498
    const-string/jumbo v7, " ms for frame "

    .line 497
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 498
    iget v7, p0, Lcom/mediatek/widget/ImageViewEx;->mCurrGifFrame:I

    .line 497
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 498
    const-string/jumbo v7, " //this="

    .line 497
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 498
    iget-object v7, p0, Lcom/mediatek/widget/ImageViewEx;->mSelf:Landroid/widget/ImageView;

    .line 497
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    iget-boolean v5, p0, Lcom/mediatek/widget/ImageViewEx;->mAbort:Z

    if-eqz v5, :cond_d

    .line 500
    const-string/jumbo v5, "ImageViewEx"

    const-string/jumbo v6, "<gifAnimation> animating:thread aborted"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    .line 516
    .end local v1    # "gifFrame":Landroid/graphics/Bitmap;
    .end local v2    # "frameDuration":J
    .end local v4    # "totalFrameCount":I
    :catchall_0
    move-exception v5

    .line 518
    iget-object v6, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    if-eqz v6, :cond_c

    .line 520
    iput-object v9, p0, Lcom/mediatek/widget/ImageViewEx;->mGifDecoder:Lcom/mediatek/gifdecoder/GifDecoder;

    .line 522
    :cond_c
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->closeGifStream()V

    .line 516
    throw v5

    .line 504
    .restart local v1    # "gifFrame":Landroid/graphics/Bitmap;
    .restart local v2    # "frameDuration":J
    .restart local v4    # "totalFrameCount":I
    :cond_d
    :try_start_7
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 510
    :goto_2
    const/4 v5, 0x1

    if-ne v5, v4, :cond_e

    .line 511
    :try_start_8
    const-string/jumbo v5, "ImageViewEx"

    const-string/jumbo v6, "<gifAnimation> single frame, cancel"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 505
    :catch_0
    move-exception v0

    .line 506
    .local v0, "ex":Ljava/lang/InterruptedException;
    const-string/jumbo v5, "ImageViewEx"

    const-string/jumbo v6, "<gifAnimation> sleeping interrupted"

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 514
    .end local v0    # "ex":Ljava/lang/InterruptedException;
    :cond_e
    iget v5, p0, Lcom/mediatek/widget/ImageViewEx;->mCurrGifFrame:I

    add-int/lit8 v5, v5, 0x1

    rem-int/2addr v5, v4

    iput v5, p0, Lcom/mediatek/widget/ImageViewEx;->mCurrGifFrame:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto/16 :goto_0
.end method

.method private openGifStream()V
    .locals 5

    .prologue
    .line 568
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->closeGifStream()V

    .line 569
    iget-boolean v2, p0, Lcom/mediatek/widget/ImageViewEx;->mUriGif:Z

    iget-boolean v3, p0, Lcom/mediatek/widget/ImageViewEx;->mResGif:Z

    if-ne v2, v3, :cond_0

    .line 570
    const-string/jumbo v2, "ImageViewEx"

    const-string/jumbo v3, "<openGifStream> not correct status!"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 571
    return-void

    .line 573
    :cond_0
    iget-boolean v2, p0, Lcom/mediatek/widget/ImageViewEx;->mResGif:Z

    if-eqz v2, :cond_1

    .line 576
    :try_start_0
    const-string/jumbo v2, "ImageViewEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "<openGifStream> open new gif strem from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 577
    iget v4, p0, Lcom/mediatek/widget/ImageViewEx;->mResourceId:I

    .line 576
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 578
    iget-object v2, p0, Lcom/mediatek/widget/ImageViewEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 579
    iget v3, p0, Lcom/mediatek/widget/ImageViewEx;->mResourceId:I

    .line 578
    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/widget/ImageViewEx;->mGifStream:Ljava/io/InputStream;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    :goto_0
    return-void

    .line 580
    :catch_0
    move-exception v0

    .line 581
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const-string/jumbo v2, "ImageViewEx"

    const-string/jumbo v3, "<openGifStream> Open GIF resource as InputStream failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 585
    .end local v0    # "e":Landroid/content/res/Resources$NotFoundException;
    :cond_1
    :try_start_1
    const-string/jumbo v2, "ImageViewEx"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "<openGifStream> open new gif strem from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/mediatek/widget/ImageViewEx;->mUri:Landroid/net/Uri;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 586
    iget-object v2, p0, Lcom/mediatek/widget/ImageViewEx;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 587
    iget-object v3, p0, Lcom/mediatek/widget/ImageViewEx;->mUri:Landroid/net/Uri;

    .line 586
    invoke-virtual {v2, v3}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v2

    iput-object v2, p0, Lcom/mediatek/widget/ImageViewEx;->mGifStream:Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 588
    :catch_1
    move-exception v1

    .line 589
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v2, "ImageViewEx"

    const-string/jumbo v3, "<openGifStream> Open GIF URI as InputStream failed"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private resizeAndRotateImage(Landroid/net/Uri;)Landroid/graphics/Bitmap;
    .locals 16
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 690
    const/4 v6, 0x0

    .line 692
    .local v6, "finalImage":Landroid/graphics/Bitmap;
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/widget/ImageViewEx;->decodeBoundsInfo(Landroid/net/Uri;)Lcom/mediatek/widget/ImageViewEx$Bound;

    move-result-object v1

    .line 693
    .local v1, "bound":Lcom/mediatek/widget/ImageViewEx$Bound;
    invoke-static {v1}, Lcom/mediatek/widget/ImageViewEx$Bound;->-get1(Lcom/mediatek/widget/ImageViewEx$Bound;)I

    move-result v8

    .line 694
    .local v8, "imageWidth":I
    invoke-static {v1}, Lcom/mediatek/widget/ImageViewEx$Bound;->-get0(Lcom/mediatek/widget/ImageViewEx$Bound;)I

    move-result v7

    .line 696
    .local v7, "imageHeight":I
    const/4 v11, 0x1

    .line 697
    .local v11, "scaleFactor":I
    invoke-direct/range {p0 .. p1}, Lcom/mediatek/widget/ImageViewEx;->decodeDegreeInfo(Landroid/net/Uri;)I

    move-result v2

    .line 699
    .local v2, "degree":I
    const/16 v12, 0x5a

    if-eq v2, v12, :cond_0

    const/16 v12, 0x10e

    if-ne v2, v12, :cond_1

    .line 700
    :cond_0
    invoke-static {v1}, Lcom/mediatek/widget/ImageViewEx$Bound;->-get0(Lcom/mediatek/widget/ImageViewEx$Bound;)I

    move-result v8

    .line 701
    invoke-static {v1}, Lcom/mediatek/widget/ImageViewEx$Bound;->-get1(Lcom/mediatek/widget/ImageViewEx$Bound;)I

    move-result v7

    .line 704
    :cond_1
    const/16 v12, 0x280

    if-gt v8, v12, :cond_2

    const/16 v12, 0x1e0

    if-le v7, v12, :cond_4

    .line 705
    :cond_2
    const-string/jumbo v12, "ImageViewEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "<resizeAndRotateImage> Image need resize: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, ","

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    :cond_3
    mul-int/lit8 v11, v11, 0x2

    .line 709
    div-int v12, v8, v11

    const/16 v13, 0x280

    if-gt v12, v13, :cond_3

    .line 710
    div-int v12, v7, v11

    const/16 v13, 0x1e0

    if-gt v12, v13, :cond_3

    .line 712
    :cond_4
    new-instance v10, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v10}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 713
    .local v10, "options":Landroid/graphics/BitmapFactory$Options;
    iput v11, v10, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 714
    const/4 v9, 0x0

    .line 716
    .local v9, "input":Ljava/io/InputStream;
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/mediatek/widget/ImageViewEx;->mContext:Landroid/content/Context;

    invoke-virtual {v12}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v9

    .line 717
    .local v9, "input":Ljava/io/InputStream;
    if-eqz v9, :cond_8

    .line 719
    const/4 v12, 0x0

    :try_start_1
    invoke-static {v9, v12, v10}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v6

    .line 725
    .local v6, "finalImage":Landroid/graphics/Bitmap;
    if-nez v6, :cond_7

    .line 728
    const/4 v12, 0x0

    .line 743
    if-eqz v9, :cond_5

    .line 745
    :try_start_2
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    .line 728
    :cond_5
    :goto_0
    return-object v12

    .line 720
    .local v6, "finalImage":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v5

    .line 723
    .local v5, "ex":Ljava/lang/OutOfMemoryError;
    const/4 v12, 0x0

    .line 743
    if-eqz v9, :cond_6

    .line 745
    :try_start_3
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    .line 723
    :cond_6
    :goto_1
    return-object v12

    .line 746
    :catch_1
    move-exception v4

    .line 747
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v13, "ImageViewEx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "<resizeAndRotateImage> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 746
    .end local v4    # "e":Ljava/io/IOException;
    .end local v5    # "ex":Ljava/lang/OutOfMemoryError;
    .local v6, "finalImage":Landroid/graphics/Bitmap;
    :catch_2
    move-exception v4

    .line 747
    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v13, "ImageViewEx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "<resizeAndRotateImage> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 732
    .end local v4    # "e":Ljava/io/IOException;
    :cond_7
    :try_start_4
    invoke-static {v1}, Lcom/mediatek/widget/ImageViewEx$Bound;->-get1(Lcom/mediatek/widget/ImageViewEx$Bound;)I

    move-result v12

    div-int/2addr v12, v11

    if-lez v12, :cond_a

    invoke-static {v1}, Lcom/mediatek/widget/ImageViewEx$Bound;->-get1(Lcom/mediatek/widget/ImageViewEx$Bound;)I

    move-result v12

    div-int/2addr v12, v11

    move v13, v12

    .line 733
    :goto_2
    invoke-static {v1}, Lcom/mediatek/widget/ImageViewEx$Bound;->-get0(Lcom/mediatek/widget/ImageViewEx$Bound;)I

    move-result v12

    div-int/2addr v12, v11

    if-lez v12, :cond_b

    invoke-static {v1}, Lcom/mediatek/widget/ImageViewEx$Bound;->-get0(Lcom/mediatek/widget/ImageViewEx$Bound;)I

    move-result v12

    div-int/2addr v12, v11

    .line 734
    :goto_3
    const/4 v14, 0x0

    .line 731
    invoke-static {v6, v13, v12, v14}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
    :try_end_4
    .catch Ljava/lang/OutOfMemoryError; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-result-object v6

    .line 738
    :goto_4
    :try_start_5
    invoke-static {v6, v2}, Lcom/mediatek/widget/ImageViewEx;->rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    :try_end_5
    .catch Ljava/io/FileNotFoundException; {:try_start_5 .. :try_end_5} :catch_4
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v6

    .line 743
    .end local v6    # "finalImage":Landroid/graphics/Bitmap;
    :cond_8
    if-eqz v9, :cond_9

    .line 745
    :try_start_6
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_6

    .line 751
    .end local v9    # "input":Ljava/io/InputStream;
    :cond_9
    :goto_5
    return-object v6

    .line 732
    .restart local v6    # "finalImage":Landroid/graphics/Bitmap;
    .restart local v9    # "input":Ljava/io/InputStream;
    :cond_a
    const/4 v12, 0x1

    move v13, v12

    goto :goto_2

    .line 733
    :cond_b
    const/4 v12, 0x1

    goto :goto_3

    .line 735
    :catch_3
    move-exception v5

    .line 736
    .restart local v5    # "ex":Ljava/lang/OutOfMemoryError;
    :try_start_7
    const-string/jumbo v12, "ImageViewEx"

    const-string/jumbo v13, "<resizeAndRotateImage> "

    invoke-static {v12, v13, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_4
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_4

    .line 740
    .end local v5    # "ex":Ljava/lang/OutOfMemoryError;
    .end local v6    # "finalImage":Landroid/graphics/Bitmap;
    .end local v9    # "input":Ljava/io/InputStream;
    :catch_4
    move-exception v3

    .line 741
    .local v3, "e":Ljava/io/FileNotFoundException;
    :try_start_8
    const-string/jumbo v12, "ImageViewEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "<resizeAndRotateImage> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 743
    if-eqz v9, :cond_9

    .line 745
    :try_start_9
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_5

    .line 746
    :catch_5
    move-exception v4

    .line 747
    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v12, "ImageViewEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "<resizeAndRotateImage> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 746
    .end local v3    # "e":Ljava/io/FileNotFoundException;
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v9    # "input":Ljava/io/InputStream;
    :catch_6
    move-exception v4

    .line 747
    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v12, "ImageViewEx"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "<resizeAndRotateImage> "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_5

    .line 742
    .end local v4    # "e":Ljava/io/IOException;
    .end local v9    # "input":Ljava/io/InputStream;
    :catchall_0
    move-exception v12

    .line 743
    if-eqz v9, :cond_c

    .line 745
    :try_start_a
    invoke-virtual {v9}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 742
    :cond_c
    :goto_6
    throw v12

    .line 746
    :catch_7
    move-exception v4

    .line 747
    .restart local v4    # "e":Ljava/io/IOException;
    const-string/jumbo v13, "ImageViewEx"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "<resizeAndRotateImage> "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v4}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6
.end method

.method public static rotate(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "b"    # Landroid/graphics/Bitmap;
    .param p1, "degrees"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 278
    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 279
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 280
    .local v5, "m":Landroid/graphics/Matrix;
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v1, v3

    .line 281
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v2, v3

    .line 280
    invoke-virtual {v5, v0, v1, v2}, Landroid/graphics/Matrix;->setRotate(FFF)V

    .line 283
    const/4 v0, 0x1

    :try_start_0
    invoke-virtual {p0, v0}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 284
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    .line 285
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 284
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 285
    const/4 v6, 0x1

    move-object v0, p0

    .line 284
    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 286
    .local v7, "b2":Landroid/graphics/Bitmap;
    if-eq p0, v7, :cond_0

    .line 287
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->recycle()V
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    move-object p0, v7

    .line 293
    .end local v5    # "m":Landroid/graphics/Matrix;
    .end local v7    # "b2":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 290
    .restart local v5    # "m":Landroid/graphics/Matrix;
    :catch_0
    move-exception v8

    .local v8, "ex":Ljava/lang/OutOfMemoryError;
    goto :goto_0
.end method

.method private showFirstGifFrame()V
    .locals 7

    .prologue
    .line 527
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->openGifStream()V

    .line 528
    iget-object v3, p0, Lcom/mediatek/widget/ImageViewEx;->mGifStream:Ljava/io/InputStream;

    if-nez v3, :cond_0

    .line 529
    return-void

    .line 530
    :cond_0
    const/4 v1, 0x0

    .line 531
    .local v1, "firstFrame":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    .line 532
    .local v2, "options":Landroid/graphics/BitmapFactory$Options;
    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z

    .line 533
    const/4 v3, 0x1

    iput v3, v2, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I

    .line 535
    :try_start_0
    iget-object v3, p0, Lcom/mediatek/widget/ImageViewEx;->mGifStream:Ljava/io/InputStream;

    const/4 v4, 0x0

    invoke-static {v3, v4, v2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 540
    .local v1, "firstFrame":Landroid/graphics/Bitmap;
    iget-boolean v3, p0, Lcom/mediatek/widget/ImageViewEx;->mAbort:Z

    if-eqz v3, :cond_1

    .line 541
    const-string/jumbo v3, "ImageViewEx"

    const-string/jumbo v4, "<showFirstGifFrame> thread aborted"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 542
    return-void

    .line 536
    .local v1, "firstFrame":Landroid/graphics/Bitmap;
    :catch_0
    move-exception v0

    .line 537
    .local v0, "ex":Ljava/lang/OutOfMemoryError;
    const-string/jumbo v3, "ImageViewEx"

    const-string/jumbo v4, "<showFirstGifFrame> OOM when decoding"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 538
    return-void

    .line 544
    .end local v0    # "ex":Ljava/lang/OutOfMemoryError;
    .local v1, "firstFrame":Landroid/graphics/Bitmap;
    :cond_1
    if-eqz v1, :cond_2

    .line 546
    iget-object v3, p0, Lcom/mediatek/widget/ImageViewEx;->mHandler:Landroid/os/Handler;

    iget-object v4, p0, Lcom/mediatek/widget/ImageViewEx;->mHandler:Landroid/os/Handler;

    .line 547
    new-instance v5, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;

    invoke-direct {v5, p0, v1}, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;-><init>(Lcom/mediatek/widget/ImageViewEx;Landroid/graphics/Bitmap;)V

    .line 546
    const/16 v6, 0x401

    invoke-virtual {v4, v6, v5}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 526
    :goto_0
    return-void

    .line 549
    :cond_2
    const-string/jumbo v3, "ImageViewEx"

    const-string/jumbo v4, "<showFirstGifFrame> failed to decode first frame!"

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private startAnimationThread()V
    .locals 2

    .prologue
    .line 596
    iget-object v1, p0, Lcom/mediatek/widget/ImageViewEx;->mAnimationThread:Ljava/lang/Thread;

    if-eqz v1, :cond_0

    .line 597
    return-void

    .line 600
    :cond_0
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/widget/ImageViewEx;->mAbort:Z

    .line 601
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/mediatek/widget/ImageViewEx$GifThread;

    invoke-direct {v1, p0}, Lcom/mediatek/widget/ImageViewEx$GifThread;-><init>(Lcom/mediatek/widget/ImageViewEx;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 602
    .local v0, "t":Ljava/lang/Thread;
    const-string/jumbo v1, "gif-animation"

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 603
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 604
    iput-object v0, p0, Lcom/mediatek/widget/ImageViewEx;->mAnimationThread:Ljava/lang/Thread;

    .line 595
    return-void
.end method


# virtual methods
.method protected initForGif()V
    .locals 0

    .prologue
    .line 403
    iput-object p0, p0, Lcom/mediatek/widget/ImageViewEx;->mSelf:Landroid/widget/ImageView;

    .line 402
    return-void
.end method

.method public setAnimationRunning(Z)V
    .locals 9
    .param p1, "flag"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 179
    invoke-virtual {p0}, Lcom/mediatek/widget/ImageViewEx;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 180
    .local v2, "drawable":Landroid/graphics/drawable/Drawable;
    if-eqz p1, :cond_4

    .line 181
    if-eqz v2, :cond_1

    instance-of v7, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v7, :cond_1

    move-object v5, v2

    .line 182
    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    .line 183
    .local v5, "tempAD":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    .line 178
    .end local v5    # "tempAD":Landroid/graphics/drawable/AnimationDrawable;
    :cond_0
    :goto_0
    return-void

    .line 185
    :cond_1
    const/4 v3, 0x0

    .line 186
    .local v3, "iv":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/mediatek/widget/ImageViewEx;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 187
    .local v4, "parent":Landroid/view/ViewParent;
    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_2

    move-object v6, v4

    .line 188
    check-cast v6, Landroid/view/ViewGroup;

    .line 189
    .local v6, "vg":Landroid/view/ViewGroup;
    const-string/jumbo v7, "storePic"

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .end local v3    # "iv":Landroid/widget/ImageView;
    check-cast v3, Landroid/widget/ImageView;

    .line 194
    .local v3, "iv":Landroid/widget/ImageView;
    if-eqz v3, :cond_3

    instance-of v7, v3, Landroid/widget/ImageView;

    if-eqz v7, :cond_3

    .line 195
    invoke-virtual {v3}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 196
    .local v1, "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    instance-of v7, v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v7, :cond_0

    move-object v0, v1

    .line 197
    check-cast v0, Landroid/graphics/drawable/AnimationDrawable;

    .line 198
    .local v0, "ad":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {p0, v0}, Lcom/mediatek/widget/ImageViewEx;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 199
    invoke-virtual {v0}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 191
    .end local v0    # "ad":Landroid/graphics/drawable/AnimationDrawable;
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v6    # "vg":Landroid/view/ViewGroup;
    .local v3, "iv":Landroid/widget/ImageView;
    :cond_2
    const-string/jumbo v7, "ImageViewEx"

    const-string/jumbo v8, "<setAnimationRunning> ViewParent is not a ViewGroup!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    return-void

    .line 202
    .local v3, "iv":Landroid/widget/ImageView;
    .restart local v6    # "vg":Landroid/view/ViewGroup;
    :cond_3
    const-string/jumbo v7, "ImageViewEx"

    const-string/jumbo v8, "<setAnimationRunning> Iv is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 206
    .end local v3    # "iv":Landroid/widget/ImageView;
    .end local v4    # "parent":Landroid/view/ViewParent;
    .end local v6    # "vg":Landroid/view/ViewGroup;
    :cond_4
    if-eqz v2, :cond_5

    instance-of v7, v2, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz v7, :cond_5

    move-object v5, v2

    .line 207
    check-cast v5, Landroid/graphics/drawable/AnimationDrawable;

    .line 208
    .restart local v5    # "tempAD":Landroid/graphics/drawable/AnimationDrawable;
    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->isRunning()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-virtual {v5}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    .line 210
    .end local v5    # "tempAD":Landroid/graphics/drawable/AnimationDrawable;
    :cond_5
    const/4 v3, 0x0

    .line 211
    .local v3, "iv":Landroid/widget/ImageView;
    invoke-virtual {p0}, Lcom/mediatek/widget/ImageViewEx;->getParent()Landroid/view/ViewParent;

    move-result-object v4

    .line 212
    .restart local v4    # "parent":Landroid/view/ViewParent;
    instance-of v7, v4, Landroid/view/ViewGroup;

    if-eqz v7, :cond_6

    move-object v6, v4

    .line 213
    check-cast v6, Landroid/view/ViewGroup;

    .line 214
    .restart local v6    # "vg":Landroid/view/ViewGroup;
    const-string/jumbo v7, "storePic"

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v3

    .end local v3    # "iv":Landroid/widget/ImageView;
    check-cast v3, Landroid/widget/ImageView;

    .line 219
    .local v3, "iv":Landroid/widget/ImageView;
    if-eqz v3, :cond_7

    instance-of v7, v3, Landroid/widget/ImageView;

    if-eqz v7, :cond_7

    .line 220
    invoke-virtual {v3}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 221
    .restart local v1    # "d":Landroid/graphics/drawable/Drawable;
    if-eqz v1, :cond_0

    .line 222
    invoke-virtual {p0, v1}, Lcom/mediatek/widget/ImageViewEx;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 216
    .end local v1    # "d":Landroid/graphics/drawable/Drawable;
    .end local v6    # "vg":Landroid/view/ViewGroup;
    .local v3, "iv":Landroid/widget/ImageView;
    :cond_6
    const-string/jumbo v7, "ImageViewEx"

    const-string/jumbo v8, "<setAnimationRunning> ViewParent is not a ViewGroup!"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 217
    return-void

    .line 225
    .local v3, "iv":Landroid/widget/ImageView;
    .restart local v6    # "vg":Landroid/view/ViewGroup;
    :cond_7
    const-string/jumbo v7, "ImageViewEx"

    const-string/jumbo v8, "<setAnimationRunning> Iv is null"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0
.end method

.method public setEnabled(Z)V
    .locals 0
    .param p1, "enabled"    # Z
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 171
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 170
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "bm"    # Landroid/graphics/Bitmap;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 374
    iget-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mSetFromGif:Z

    if-nez v0, :cond_0

    .line 375
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->abortAnimationThread()V

    .line 377
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 373
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "drawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 382
    iget-boolean v0, p0, Lcom/mediatek/widget/ImageViewEx;->mSetFromGif:Z

    if-nez v0, :cond_0

    .line 383
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->abortAnimationThread()V

    .line 385
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 381
    return-void
.end method

.method public setImageResource(I)V
    .locals 9
    .param p1, "resId"    # I
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v6, 0x3

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 238
    const-string/jumbo v4, "ImageViewEx"

    const-string/jumbo v5, "<setImageResource> abort previous gif animation if any"

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->abortAnimationThread()V

    .line 241
    const/4 v2, 0x0

    .line 242
    .local v2, "imageStream":Ljava/io/InputStream;
    const/4 v4, 0x4

    new-array v0, v4, [B

    .line 243
    .local v0, "buffer":[B
    const/4 v3, 0x0

    .line 245
    .local v3, "isGifImage":Z
    :try_start_0
    iget-object v4, p0, Lcom/mediatek/widget/ImageViewEx;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->openRawResource(I)Ljava/io/InputStream;

    move-result-object v2

    .line 246
    .local v2, "imageStream":Ljava/io/InputStream;
    const/4 v4, 0x0

    const/4 v5, 0x3

    invoke-virtual {v2, v0, v4, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v4

    if-eq v6, v4, :cond_0

    .line 247
    const-string/jumbo v4, "ImageViewEx"

    const-string/jumbo v5, "<setImageResource> can\'t read data from resource inputstream"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v3, 0x0

    .line 255
    :goto_0
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    const/4 v2, 0x0

    .line 261
    .end local v2    # "imageStream":Ljava/io/InputStream;
    :goto_1
    if-nez v3, :cond_2

    .line 262
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 263
    return-void

    .line 249
    .restart local v2    # "imageStream":Ljava/io/InputStream;
    :cond_0
    const/4 v4, 0x0

    :try_start_1
    aget-byte v4, v0, v4

    const/16 v5, 0x47

    if-ne v4, v5, :cond_1

    const/4 v4, 0x1

    aget-byte v4, v0, v4

    const/16 v5, 0x49

    if-ne v4, v5, :cond_1

    const/4 v4, 0x2

    aget-byte v4, v0, v4
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    const/16 v5, 0x46

    if-ne v4, v5, :cond_1

    .line 250
    const/4 v3, 0x1

    goto :goto_0

    .line 252
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 257
    .end local v2    # "imageStream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 258
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "ImageViewEx"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "<setImageResource> "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    .line 266
    .end local v1    # "e":Ljava/io/IOException;
    :cond_2
    iput p1, p0, Lcom/mediatek/widget/ImageViewEx;->mResourceId:I

    .line 269
    iput-boolean v7, p0, Lcom/mediatek/widget/ImageViewEx;->mUriGif:Z

    .line 270
    iput-boolean v8, p0, Lcom/mediatek/widget/ImageViewEx;->mResGif:Z

    .line 272
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->startAnimationThread()V

    .line 237
    return-void
.end method

.method public setImageURI(Landroid/net/Uri;)V
    .locals 11
    .param p1, "uri"    # Landroid/net/Uri;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    const/4 v10, 0x3

    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 305
    const-string/jumbo v5, "ImageViewEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "<setImageURI> (uri="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " //this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 306
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->abortAnimationThread()V

    .line 308
    if-nez p1, :cond_0

    .line 309
    const-string/jumbo v5, "ImageViewEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "<setImageURI> follow ImageView\'s routin for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    .line 311
    return-void

    .line 314
    :cond_0
    const/4 v3, 0x0

    .line 315
    .local v3, "imageStream":Ljava/io/InputStream;
    const/4 v5, 0x4

    new-array v0, v5, [B

    .line 316
    .local v0, "buffer":[B
    const/4 v4, 0x0

    .line 317
    .local v4, "isGifImage":Z
    const/4 v2, 0x0

    .line 319
    .local v2, "finalImage":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "content"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 320
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "file"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 319
    if-nez v5, :cond_1

    .line 321
    invoke-virtual {p1}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v5

    .line 322
    const-string/jumbo v6, "android.resource"

    .line 321
    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    .line 319
    if-eqz v5, :cond_4

    .line 323
    :cond_1
    iget-object v5, p0, Lcom/mediatek/widget/ImageViewEx;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v5, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v3

    .line 325
    .local v3, "imageStream":Ljava/io/InputStream;
    const/4 v5, 0x0

    const/4 v6, 0x3

    invoke-virtual {v3, v0, v5, v6}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    if-eq v10, v5, :cond_2

    .line 326
    const-string/jumbo v5, "ImageViewEx"

    const-string/jumbo v6, "<setImageURI> can\'t read data from uri inputstream"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 327
    const/4 v4, 0x0

    .line 335
    .end local v2    # "finalImage":Landroid/graphics/Bitmap;
    :goto_0
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 336
    const/4 v3, 0x0

    .line 345
    .end local v3    # "imageStream":Ljava/io/InputStream;
    :goto_1
    const-string/jumbo v5, "ImageViewEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "<setImageURI> isGifImage="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " //this="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 347
    if-nez v4, :cond_6

    .line 348
    const-string/jumbo v5, "ImageViewEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "<setImageURI> follow ImageView\'s routin for "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    if-eqz v2, :cond_5

    .line 350
    invoke-super {p0, v2}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 354
    :goto_2
    return-void

    .line 328
    .restart local v2    # "finalImage":Landroid/graphics/Bitmap;
    .restart local v3    # "imageStream":Ljava/io/InputStream;
    :cond_2
    const/4 v5, 0x0

    :try_start_1
    aget-byte v5, v0, v5

    const/16 v6, 0x47

    if-ne v5, v6, :cond_3

    const/4 v5, 0x1

    aget-byte v5, v0, v5

    const/16 v6, 0x49

    if-ne v5, v6, :cond_3

    .line 329
    const/4 v5, 0x2

    aget-byte v5, v0, v5

    const/16 v6, 0x46

    if-ne v5, v6, :cond_3

    .line 330
    const/4 v4, 0x1

    goto :goto_0

    .line 332
    :cond_3
    const/4 v4, 0x0

    .line 333
    invoke-direct {p0, p1}, Lcom/mediatek/widget/ImageViewEx;->resizeAndRotateImage(Landroid/net/Uri;)Landroid/graphics/Bitmap;

    move-result-object v2

    .local v2, "finalImage":Landroid/graphics/Bitmap;
    goto :goto_0

    .line 338
    .local v2, "finalImage":Landroid/graphics/Bitmap;
    .local v3, "imageStream":Ljava/io/InputStream;
    :cond_4
    const-string/jumbo v5, "ImageViewEx"

    const-string/jumbo v6, "<setImageURI> Uncoped uri scheme,call ImageView.setImageURI()"

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 339
    const/4 v4, 0x0

    goto :goto_1

    .line 341
    .end local v2    # "finalImage":Landroid/graphics/Bitmap;
    .end local v3    # "imageStream":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 342
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "ImageViewEx"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "<setImageURI> "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 352
    .end local v1    # "e":Ljava/io/IOException;
    :cond_5
    invoke-super {p0, p1}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V

    goto :goto_2

    .line 358
    :cond_6
    const-string/jumbo v5, "ImageViewEx"

    const-string/jumbo v6, "<setImageURI> synchroized lock, start gif animation"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    iput-object p1, p0, Lcom/mediatek/widget/ImageViewEx;->mUri:Landroid/net/Uri;

    .line 362
    iput-boolean v9, p0, Lcom/mediatek/widget/ImageViewEx;->mUriGif:Z

    .line 363
    iput-boolean v8, p0, Lcom/mediatek/widget/ImageViewEx;->mResGif:Z

    .line 365
    invoke-direct {p0}, Lcom/mediatek/widget/ImageViewEx;->startAnimationThread()V

    .line 304
    return-void
.end method

.method public setOnClickIntent(Ljava/lang/String;)V
    .locals 1
    .param p1, "action"    # Ljava/lang/String;
    .annotation runtime Landroid/view/RemotableViewMethod;
    .end annotation

    .prologue
    .line 141
    new-instance v0, Lcom/mediatek/widget/ImageViewEx$2;

    invoke-direct {v0, p0, p1}, Lcom/mediatek/widget/ImageViewEx$2;-><init>(Lcom/mediatek/widget/ImageViewEx;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/mediatek/widget/ImageViewEx;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 140
    return-void
.end method
