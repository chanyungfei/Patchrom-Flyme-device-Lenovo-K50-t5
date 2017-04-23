.class Lcom/android/server/AssetAtlasService$ComputeWorker;
.super Ljava/lang/Object;
.source "AssetAtlasService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/AssetAtlasService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ComputeWorker"
.end annotation


# instance fields
.field private final mBitmaps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;"
        }
    .end annotation
.end field

.field private final mEnd:I

.field private final mResults:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/AssetAtlasService$WorkerResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mSignal:Ljava/util/concurrent/CountDownLatch;

.field private final mStart:I

.field private final mStep:I

.field private final mThreshold:I


# direct methods
.method constructor <init>(IIILjava/util/List;ILjava/util/List;Ljava/util/concurrent/CountDownLatch;)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "step"    # I
    .param p5, "pixelCount"    # I
    .param p7, "signal"    # Ljava/util/concurrent/CountDownLatch;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Ljava/util/List",
            "<",
            "Landroid/graphics/Bitmap;",
            ">;I",
            "Ljava/util/List",
            "<",
            "Lcom/android/server/AssetAtlasService$WorkerResult;",
            ">;",
            "Ljava/util/concurrent/CountDownLatch;",
            ")V"
        }
    .end annotation

    .prologue
    .line 656
    .local p4, "bitmaps":Ljava/util/List;, "Ljava/util/List<Landroid/graphics/Bitmap;>;"
    .local p6, "results":Ljava/util/List;, "Ljava/util/List<Lcom/android/server/AssetAtlasService$WorkerResult;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 658
    iput p1, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mStart:I

    .line 659
    iput p2, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mEnd:I

    .line 660
    iput p3, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mStep:I

    .line 661
    iput-object p4, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mBitmaps:Ljava/util/List;

    .line 662
    iput-object p6, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mResults:Ljava/util/List;

    .line 663
    iput-object p7, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mSignal:Ljava/util/concurrent/CountDownLatch;

    .line 666
    int-to-float v1, p5

    const v2, 0x3f4ccccd    # 0.8f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 668
    .local v0, "threshold":I
    :goto_0
    const/high16 v1, 0x400000

    if-le v0, v1, :cond_0

    .line 669
    shr-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 671
    :cond_0
    iput v0, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mThreshold:I

    .line 657
    return-void
.end method

.method private packBitmaps(Landroid/graphics/Atlas$Type;IILandroid/graphics/Atlas$Entry;)I
    .locals 7
    .param p1, "type"    # Landroid/graphics/Atlas$Type;
    .param p2, "width"    # I
    .param p3, "height"    # I
    .param p4, "entry"    # Landroid/graphics/Atlas$Entry;

    .prologue
    .line 707
    const/4 v4, 0x0

    .line 708
    .local v4, "total":I
    new-instance v0, Landroid/graphics/Atlas;

    invoke-direct {v0, p1, p2, p3}, Landroid/graphics/Atlas;-><init>(Landroid/graphics/Atlas$Type;II)V

    .line 710
    .local v0, "atlas":Landroid/graphics/Atlas;
    iget-object v5, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mBitmaps:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v2

    .line 711
    .local v2, "count":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 712
    iget-object v5, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mBitmaps:Ljava/util/List;

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/graphics/Bitmap;

    .line 713
    .local v1, "bitmap":Landroid/graphics/Bitmap;
    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v5

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v6

    invoke-virtual {v0, v5, v6, p4}, Landroid/graphics/Atlas;->pack(IILandroid/graphics/Atlas$Entry;)Landroid/graphics/Atlas$Entry;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 714
    add-int/lit8 v4, v4, 0x1

    .line 711
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 718
    .end local v1    # "bitmap":Landroid/graphics/Bitmap;
    :cond_1
    return v4
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    const/4 v5, 0x0

    .line 676
    const-string/jumbo v6, "AssetAtlasService"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Running "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 678
    new-instance v1, Landroid/graphics/Atlas$Entry;

    invoke-direct {v1}, Landroid/graphics/Atlas$Entry;-><init>()V

    .line 679
    .local v1, "entry":Landroid/graphics/Atlas$Entry;
    invoke-static {}, Landroid/graphics/Atlas$Type;->values()[Landroid/graphics/Atlas$Type;

    move-result-object v6

    array-length v7, v6

    :goto_0
    if-ge v5, v7, :cond_4

    aget-object v3, v6, v5

    .line 681
    .local v3, "type":Landroid/graphics/Atlas$Type;
    const-string/jumbo v8, "AssetAtlasService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Current atlas type is "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " on "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 682
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v10

    .line 681
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 683
    iget v4, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mEnd:I

    .local v4, "width":I
    :goto_1
    iget v8, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mStart:I

    if-le v4, v8, :cond_3

    .line 684
    const/16 v2, 0x800

    .local v2, "height":I
    :goto_2
    const/16 v8, 0x300

    if-le v2, v8, :cond_2

    .line 686
    mul-int v8, v4, v2

    iget v9, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mThreshold:I

    if-gt v8, v9, :cond_1

    .line 684
    :cond_0
    add-int/lit8 v2, v2, -0x40

    goto :goto_2

    .line 688
    :cond_1
    invoke-direct {p0, v3, v4, v2, v1}, Lcom/android/server/AssetAtlasService$ComputeWorker;->packBitmaps(Landroid/graphics/Atlas$Type;IILandroid/graphics/Atlas$Entry;)I

    move-result v0

    .line 689
    .local v0, "count":I
    if-lez v0, :cond_0

    .line 690
    iget-object v8, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mResults:Ljava/util/List;

    new-instance v9, Lcom/android/server/AssetAtlasService$WorkerResult;

    invoke-direct {v9, v3, v4, v2, v0}, Lcom/android/server/AssetAtlasService$WorkerResult;-><init>(Landroid/graphics/Atlas$Type;III)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 693
    iget-object v8, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mBitmaps:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ne v0, v8, :cond_0

    .line 683
    .end local v0    # "count":I
    :cond_2
    iget v8, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mStep:I

    sub-int/2addr v4, v8

    goto :goto_1

    .line 679
    .end local v2    # "height":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 701
    .end local v3    # "type":Landroid/graphics/Atlas$Type;
    .end local v4    # "width":I
    :cond_4
    iget-object v5, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mSignal:Ljava/util/concurrent/CountDownLatch;

    if-eqz v5, :cond_5

    .line 702
    iget-object v5, p0, Lcom/android/server/AssetAtlasService$ComputeWorker;->mSignal:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v5}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 675
    :cond_5
    return-void
.end method
