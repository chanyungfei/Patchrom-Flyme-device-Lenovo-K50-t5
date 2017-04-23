.class public Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;
.super Ljava/lang/Object;
.source "ANRManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "BinderInfo"
.end annotation


# static fields
.field protected static final INDEX_FROM:I = 0x1

.field protected static final INDEX_TO:I = 0x3


# instance fields
.field protected mDstPid:I

.field protected mDstTid:I

.field protected mSrcPid:I

.field protected mSrcTid:I

.field protected mText:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 368
    if-nez p1, :cond_1

    .line 369
    :cond_0
    return-void

    .line 368
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-lez v0, :cond_0

    .line 372
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mText:Ljava/lang/String;

    const-string/jumbo v0, " "

    .line 373
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 374
    aget-object v1, v0, v4

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 375
    if-nez v1, :cond_4

    :cond_2
    :goto_0
    const/4 v1, 0x3

    .line 380
    aget-object v0, v0, v1

    const-string/jumbo v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 381
    if-nez v0, :cond_5

    .line 388
    :cond_3
    :goto_1
    return-void

    .line 375
    :cond_4
    array-length v2, v1

    if-ne v2, v5, :cond_2

    .line 376
    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mSrcPid:I

    .line 377
    aget-object v1, v1, v4

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mSrcTid:I

    goto :goto_0

    .line 381
    :cond_5
    array-length v1, v0

    if-ne v1, v5, :cond_3

    .line 382
    aget-object v1, v0, v3

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    .line 383
    aget-object v0, v0, v4

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mDstTid:I

    goto :goto_1
.end method
