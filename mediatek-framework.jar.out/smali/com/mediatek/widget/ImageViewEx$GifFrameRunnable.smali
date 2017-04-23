.class public Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;
.super Ljava/lang/Object;
.source "ImageViewEx.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/widget/ImageViewEx;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "GifFrameRunnable"
.end annotation


# instance fields
.field mFrame:Landroid/graphics/Bitmap;

.field final synthetic this$0:Lcom/mediatek/widget/ImageViewEx;


# direct methods
.method constructor <init>(Lcom/mediatek/widget/ImageViewEx;Landroid/graphics/Bitmap;)V
    .locals 0
    .param p1, "this$0"    # Lcom/mediatek/widget/ImageViewEx;
    .param p2, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 409
    iput-object p1, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->this$0:Lcom/mediatek/widget/ImageViewEx;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 410
    iput-object p2, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    .line 409
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 414
    iget-object v0, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->this$0:Lcom/mediatek/widget/ImageViewEx;

    invoke-static {v0}, Lcom/mediatek/widget/ImageViewEx;->-get0(Lcom/mediatek/widget/ImageViewEx;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 415
    const-string/jumbo v0, "ImageViewEx"

    const-string/jumbo v1, "<GifFrameRunnable> run:gif aborted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    iget-object v0, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    .line 417
    const-string/jumbo v0, "ImageViewEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<GifFrameRunnable> run:recycle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 418
    iget-object v0, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 419
    iput-object v3, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    .line 421
    :cond_0
    return-void

    .line 423
    :cond_1
    iget-object v0, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->this$0:Lcom/mediatek/widget/ImageViewEx;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/mediatek/widget/ImageViewEx;->-set1(Lcom/mediatek/widget/ImageViewEx;Z)Z

    .line 424
    const-string/jumbo v0, "ImageViewEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<GifFrameRunnable> run:call setImageBitmap(mFrame="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 425
    iget-object v2, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    .line 424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 425
    const-string/jumbo v2, ")"

    .line 424
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 426
    iget-object v0, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->this$0:Lcom/mediatek/widget/ImageViewEx;

    iget-object v1, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/mediatek/widget/ImageViewEx;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 428
    iget-object v0, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->this$0:Lcom/mediatek/widget/ImageViewEx;

    invoke-static {v0}, Lcom/mediatek/widget/ImageViewEx;->-get2(Lcom/mediatek/widget/ImageViewEx;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 429
    const-string/jumbo v0, "ImageViewEx"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "<GifFrameRunnable> run:recycle "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->this$0:Lcom/mediatek/widget/ImageViewEx;

    invoke-static {v2}, Lcom/mediatek/widget/ImageViewEx;->-get2(Lcom/mediatek/widget/ImageViewEx;)Landroid/graphics/Bitmap;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 430
    iget-object v0, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->this$0:Lcom/mediatek/widget/ImageViewEx;

    invoke-static {v0}, Lcom/mediatek/widget/ImageViewEx;->-get2(Lcom/mediatek/widget/ImageViewEx;)Landroid/graphics/Bitmap;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V

    .line 431
    iget-object v0, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->this$0:Lcom/mediatek/widget/ImageViewEx;

    invoke-static {v0, v3}, Lcom/mediatek/widget/ImageViewEx;->-set0(Lcom/mediatek/widget/ImageViewEx;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 433
    :cond_2
    iget-object v0, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->this$0:Lcom/mediatek/widget/ImageViewEx;

    iget-object v1, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->mFrame:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/mediatek/widget/ImageViewEx;->-set0(Lcom/mediatek/widget/ImageViewEx;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    .line 436
    iget-object v0, p0, Lcom/mediatek/widget/ImageViewEx$GifFrameRunnable;->this$0:Lcom/mediatek/widget/ImageViewEx;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/mediatek/widget/ImageViewEx;->-set1(Lcom/mediatek/widget/ImageViewEx;Z)Z

    .line 413
    return-void
.end method
