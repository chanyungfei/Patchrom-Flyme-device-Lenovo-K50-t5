.class public final Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;
.super Ljava/lang/Object;
.source "ANRManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mediatek/anrmanager/ANRManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1c
    name = "BinderWatchdog"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;,
        Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;
    }
.end annotation


# static fields
.field private static final MAX_LINES:I = 0x40

.field private static final MAX_TIMEOUT_PIDS:I = 0x5


# direct methods
.method protected constructor <init>()V
    .locals 0

    .prologue
    .line 351
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 522
    return-void
.end method

.method static synthetic access$100(ILjava/util/ArrayList;Landroid/util/SparseArray;)V
    .locals 0

    .prologue
    .line 351
    invoke-static {p0, p1, p2}, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;->setTransactionTimeoutPids(ILjava/util/ArrayList;Landroid/util/SparseArray;)V

    return-void
.end method

.method private static getBinderInfo(IILjava/util/ArrayList;)Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;",
            ">;)",
            "Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 464
    if-nez p2, :cond_1

    .line 465
    :cond_0
    return-object v3

    .line 464
    :cond_1
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p0, :cond_0

    .line 468
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    .line 470
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 476
    return-object v3

    .line 470
    :cond_3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;

    .line 471
    iget v2, v0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mSrcPid:I

    if-ne v2, p0, :cond_2

    iget v2, v0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mSrcTid:I

    if-ne v2, p1, :cond_2

    const-string/jumbo v1, "ANRManager"

    .line 472
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Timeout binder pid found: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mText:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    return-object v0
.end method

.method public static final getTimeoutBinderFromPid(ILjava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;",
            ">;)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 433
    if-gtz p0, :cond_1

    .line 434
    :cond_0
    return-object v1

    .line 433
    :cond_1
    if-eqz p1, :cond_0

    const-string/jumbo v1, "ANRManager"

    .line 437
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getTimeoutBinderFromPid "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " list size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 439
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 442
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v0

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_3

    .line 460
    :cond_2
    return-object v2

    .line 442
    :cond_3
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;

    .line 443
    if-nez v0, :cond_5

    :cond_4
    move v0, v1

    :goto_1
    move v1, v0

    .line 458
    goto :goto_0

    .line 443
    :cond_5
    iget v4, v0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mSrcPid:I

    if-ne v4, p0, :cond_4

    .line 444
    add-int/lit8 v1, v1, 0x1

    .line 445
    iget v4, v0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    const-string/jumbo v4, "ANRManager"

    .line 450
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTimeoutBinderFromPid pid existed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v0, v0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mText:Ljava/lang/String;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v0, 0x5

    .line 454
    if-ge v1, v0, :cond_2

    move v0, v1

    goto :goto_1

    :cond_6
    const-string/jumbo v4, "ANRManager"

    .line 446
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTimeoutBinderFromPid pid added: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    iget v0, v0, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public static final getTimeoutBinderPidList(II)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 395
    if-lez p0, :cond_2

    .line 399
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 401
    invoke-static {}, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;->readTimeoutBinderListFromFile()Ljava/util/ArrayList;

    move-result-object v3

    .line 404
    invoke-static {p0, p1, v3}, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;->getBinderInfo(IILjava/util/ArrayList;)Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;

    move-result-object v0

    move-object v7, v0

    move v0, v1

    move-object v1, v7

    .line 405
    :goto_0
    if-nez v1, :cond_3

    .line 424
    :cond_0
    if-nez v2, :cond_6

    .line 425
    :cond_1
    invoke-static {p0, v3}, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;->getTimeoutBinderFromPid(ILjava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v0

    return-object v0

    .line 396
    :cond_2
    return-object v0

    .line 406
    :cond_3
    iget v4, v1, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    if-gtz v4, :cond_4

    .line 421
    :goto_1
    iget v4, v1, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    iget v1, v1, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mDstTid:I

    invoke-static {v4, v1, v3}, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;->getBinderInfo(IILjava/util/ArrayList;)Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;

    move-result-object v1

    goto :goto_0

    .line 407
    :cond_4
    add-int/lit8 v0, v0, 0x1

    .line 408
    iget v4, v1, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const-string/jumbo v4, "ANRManager"

    .line 413
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTimeoutBinderPidList pid existed: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const/4 v4, 0x5

    .line 417
    if-ge v0, v4, :cond_0

    goto :goto_1

    :cond_5
    const-string/jumbo v4, "ANRManager"

    .line 409
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getTimeoutBinderPidList pid added: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v1, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mText:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    iget v4, v1, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mDstPid:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 424
    :cond_6
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-eqz v0, :cond_1

    .line 428
    return-object v2
.end method

.method private static final readTimeoutBinderListFromFile()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 483
    :try_start_0
    new-instance v0, Ljava/io/File;

    const-string/jumbo v1, "/sys/kernel/debug/binder/timeout_log"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 484
    if-nez v0, :cond_1

    .line 517
    :cond_0
    return-object v2

    .line 484
    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 488
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 490
    :try_start_1
    new-instance v3, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v0}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_9
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 493
    :goto_0
    :try_start_2
    invoke-virtual {v3}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    .line 510
    :cond_2
    if-nez v3, :cond_6

    .line 517
    :goto_1
    return-object v1

    .line 494
    :cond_3
    new-instance v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;

    invoke-direct {v2, v0}, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;-><init>(Ljava/lang/String;)V

    .line 495
    if-nez v2, :cond_5

    .line 498
    :cond_4
    :goto_2
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/16 v2, 0x40

    if-gt v0, v2, :cond_2

    goto :goto_0

    .line 495
    :cond_5
    iget v0, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$BinderInfo;->mSrcPid:I

    if-lez v0, :cond_4

    .line 496
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_2

    .line 517
    :catch_0
    move-exception v0

    move-object v2, v3

    :goto_3
    :try_start_3
    const-string/jumbo v3, "ANRManager"

    const-string/jumbo v4, "FileNotFoundException"

    .line 505
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 510
    if-nez v2, :cond_7

    .line 517
    :goto_4
    return-object v1

    .line 512
    :cond_6
    :try_start_4
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_1

    .line 515
    :catch_1
    move-exception v0

    const-string/jumbo v2, "ANRManager"

    const-string/jumbo v3, "IOException when close buffer reader:"

    .line 514
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 512
    :cond_7
    :try_start_5
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2

    goto :goto_4

    .line 515
    :catch_2
    move-exception v0

    const-string/jumbo v2, "ANRManager"

    const-string/jumbo v3, "IOException when close buffer reader:"

    .line 514
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 517
    :catch_3
    move-exception v0

    move-object v1, v2

    :goto_5
    :try_start_6
    const-string/jumbo v3, "ANRManager"

    const-string/jumbo v4, "IOException when gettting Binder. "

    .line 507
    invoke-static {v3, v4, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 510
    if-nez v2, :cond_8

    .line 517
    :goto_6
    return-object v1

    .line 512
    :cond_8
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_4

    goto :goto_6

    .line 515
    :catch_4
    move-exception v0

    const-string/jumbo v2, "ANRManager"

    const-string/jumbo v3, "IOException when close buffer reader:"

    .line 514
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_6

    .line 517
    :catchall_0
    move-exception v0

    move-object v1, v2

    .line 510
    :goto_7
    if-nez v2, :cond_9

    .line 517
    :goto_8
    return-object v1

    .line 512
    :cond_9
    :try_start_8
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_5

    goto :goto_8

    .line 515
    :catch_5
    move-exception v0

    const-string/jumbo v2, "ANRManager"

    const-string/jumbo v3, "IOException when close buffer reader:"

    .line 514
    invoke-static {v2, v3, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 517
    :catchall_1
    move-exception v0

    goto :goto_7

    :catchall_2
    move-exception v0

    move-object v2, v3

    goto :goto_7

    :catch_6
    move-exception v0

    goto :goto_5

    :catch_7
    move-exception v0

    move-object v2, v3

    goto :goto_5

    :catch_8
    move-exception v0

    move-object v1, v2

    goto :goto_3

    :catch_9
    move-exception v0

    goto :goto_3
.end method

.method private static final readTransactionInfoFromFile(ILjava/util/ArrayList;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string/jumbo v0, "(\\S+.+transaction).+from\\s+(\\d+):(\\d+)\\s+to\\s+(\\d+):(\\d+).+start\\s+(\\d+\\.+\\d+).+android\\s+(\\d+-\\d+-\\d+\\s+\\d+:\\d+:\\d+\\.\\d+)"

    .line 537
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 540
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 541
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 543
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "/sys/kernel/debug/binder/proc/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 544
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 545
    if-nez v8, :cond_1

    :cond_0
    const-string/jumbo v0, "ANRManager"

    const-string/jumbo v1, "Filepath isn\'t exist"

    .line 546
    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 602
    return-void

    .line 545
    :cond_1
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 550
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v0, Ljava/io/FileReader;

    invoke-direct {v0, v8}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 553
    :cond_2
    :goto_0
    :try_start_1
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 586
    :cond_3
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_a

    .line 597
    if-nez v1, :cond_b

    .line 605
    :cond_4
    :goto_2
    return-void

    :cond_5
    const-string/jumbo v2, "transaction"

    .line 555
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "node"

    .line 580
    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    const/4 v8, -0x1

    if-eq v2, v8, :cond_2

    const-string/jumbo v2, "node"

    invoke-virtual {v0, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    const/16 v2, 0x14

    if-lt v0, v2, :cond_3

    goto :goto_0

    .line 556
    :cond_6
    invoke-virtual {v5, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    .line 557
    invoke-virtual {v0}, Ljava/util/regex/Matcher;->find()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 558
    new-instance v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;

    invoke-direct {v2}, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;-><init>()V

    const/4 v8, 0x1

    .line 559
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->direction:Ljava/lang/String;

    const/4 v8, 0x2

    .line 560
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->snd_pid:Ljava/lang/String;

    const/4 v8, 0x3

    .line 561
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->snd_tid:Ljava/lang/String;

    const/4 v8, 0x4

    .line 562
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->rcv_pid:Ljava/lang/String;

    const/4 v8, 0x5

    .line 563
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->rcv_tid:Ljava/lang/String;

    const/4 v8, 0x6

    .line 564
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v8

    iput-object v8, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->ktime:Ljava/lang/String;

    const/4 v8, 0x7

    .line 565
    invoke-virtual {v0, v8}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->atime:Ljava/lang/String;

    .line 566
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v8

    iget-object v0, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->ktime:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    const/high16 v10, 0x447a0000    # 1000.0f

    mul-float/2addr v0, v10

    float-to-long v10, v0

    sub-long/2addr v8, v10

    iput-wide v8, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->spent_time:J

    .line 567
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 568
    iget-wide v8, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->spent_time:J

    const-wide/16 v10, 0x3e8

    cmp-long v0, v8, v10

    if-gez v0, :cond_8

    move v0, v3

    :goto_3
    if-nez v0, :cond_7

    .line 569
    iget-object v0, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->rcv_pid:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :cond_7
    :goto_4
    const-string/jumbo v0, "ANRManager"

    .line 577
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->direction:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " from "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->snd_pid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->snd_tid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " to "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->rcv_pid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ":"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->rcv_tid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " start "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->ktime:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " android time "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->atime:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, " spent time "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-wide v10, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->spent_time:J

    invoke-virtual {v8, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v8, " ms"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto/16 :goto_0

    .line 602
    :catch_0
    move-exception v0

    :goto_5
    :try_start_2
    const-string/jumbo v2, "ANRManager"

    const-string/jumbo v3, "FileNotFoundException"

    .line 592
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 597
    if-eqz v1, :cond_4

    .line 599
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_2

    .line 602
    :catch_1
    move-exception v0

    const-string/jumbo v1, "ANRManager"

    const-string/jumbo v2, "IOException when close buffer reader:"

    .line 601
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    :cond_8
    move v0, v4

    .line 568
    goto/16 :goto_3

    .line 570
    :cond_9
    :try_start_4
    iget-object v0, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->rcv_pid:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 571
    iget-object v0, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->rcv_pid:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 572
    iget-object v0, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->rcv_pid:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string/jumbo v0, "ANRManager"

    .line 573
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Transcation binderList pid="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, v2, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog$TransactionInfo;->rcv_pid:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v0, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/io/FileNotFoundException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto/16 :goto_4

    .line 602
    :catch_2
    move-exception v0

    :goto_6
    :try_start_5
    const-string/jumbo v2, "ANRManager"

    const-string/jumbo v3, "IOException when gettting Binder. "

    .line 594
    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 597
    if-eqz v1, :cond_4

    .line 599
    :try_start_6
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_3

    goto/16 :goto_2

    .line 602
    :catch_3
    move-exception v0

    const-string/jumbo v1, "ANRManager"

    const-string/jumbo v2, "IOException when close buffer reader:"

    .line 601
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 586
    :cond_a
    :try_start_7
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 587
    invoke-static {v0, p1}, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;->readTransactionInfoFromFile(ILjava/util/ArrayList;)V
    :try_end_7
    .catch Ljava/io/FileNotFoundException; {:try_start_7 .. :try_end_7} :catch_0
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto/16 :goto_1

    .line 602
    :catchall_0
    move-exception v0

    .line 597
    :goto_7
    if-nez v1, :cond_c

    .line 602
    :goto_8
    throw v0

    .line 599
    :cond_b
    :try_start_8
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto/16 :goto_2

    .line 602
    :catch_4
    move-exception v0

    const-string/jumbo v1, "ANRManager"

    const-string/jumbo v2, "IOException when close buffer reader:"

    .line 601
    invoke-static {v1, v2, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2

    .line 599
    :cond_c
    :try_start_9
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5

    goto :goto_8

    .line 602
    :catch_5
    move-exception v1

    const-string/jumbo v2, "ANRManager"

    const-string/jumbo v3, "IOException when close buffer reader:"

    .line 601
    invoke-static {v2, v3, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_8

    .line 602
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_7

    :catch_6
    move-exception v0

    move-object v1, v2

    goto :goto_6

    :catch_7
    move-exception v0

    move-object v1, v2

    goto/16 :goto_5
.end method

.method private static final setTransactionTimeoutPids(ILjava/util/ArrayList;Landroid/util/SparseArray;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 608
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 609
    invoke-static {p0, v0}, Lcom/mediatek/anrmanager/ANRManager$BinderWatchdog;->readTransactionInfoFromFile(ILjava/util/ArrayList;)V

    .line 610
    if-nez v0, :cond_1

    .line 625
    :cond_0
    return-void

    .line 610
    :cond_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 611
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 612
    if-eqz v0, :cond_2

    .line 613
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 614
    if-eq v0, p0, :cond_2

    .line 615
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 616
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 617
    if-eqz p2, :cond_2

    .line 618
    invoke-virtual {p2, v0}, Landroid/util/SparseArray;->remove(I)V

    goto :goto_0
.end method
