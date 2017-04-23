.class public Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/cat/Channel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "TcpReceiverThread"
.end annotation


# instance fields
.field di:Ljava/io/DataInputStream;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/Channel;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/Channel;Ljava/io/DataInputStream;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cat/Channel;
    .param p2, "s"    # Ljava/io/DataInputStream;

    .prologue
    .line 403
    iput-object p1, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 404
    iput-object p2, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->di:Ljava/io/DataInputStream;

    .line 403
    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 409
    const/16 v8, 0x578

    new-array v3, v8, [B

    .line 411
    .local v3, "localBuffer":[B
    const-string/jumbo v8, "[BIP]"

    const-string/jumbo v9, "[TCP]RecTr: run"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    :goto_0
    :try_start_0
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    invoke-static {v8}, Lcom/android/internal/telephony/cat/Channel;->-get0(Lcom/android/internal/telephony/cat/Channel;)Z

    move-result v8

    if-nez v8, :cond_3

    .line 415
    const/4 v7, 0x0

    .line 416
    .local v7, "recvLen":I
    const-string/jumbo v8, "[BIP]"

    const-string/jumbo v9, "[TCP]RecTr: Receive data from network"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 418
    const/4 v8, 0x0

    :try_start_1
    invoke-static {v3, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 419
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->di:Ljava/io/DataInputStream;

    invoke-virtual {v8, v3}, Ljava/io/DataInputStream;->read([B)I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    .line 426
    :try_start_2
    const-string/jumbo v8, "[BIP]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[TCP]RecTr: recvLen:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    if-ltz v7, :cond_8

    .line 428
    const/4 v6, 0x0

    .line 429
    .local v6, "rSize":I
    const/4 v5, 0x0

    .local v5, "localBufferOffset":I
    const/4 v4, 0x0

    .line 430
    .local v4, "localBufferCount":I
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v9, v8, Lcom/android/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v9
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 432
    :try_start_3
    const-string/jumbo v8, "[BIP]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[TCP]RecTr:mRxBufferCount: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 433
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v8, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-nez v8, :cond_4

    .line 435
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v3, v10, v8, v11, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 436
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iput v7, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 437
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    const/4 v10, 0x0

    iput v10, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 438
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v10, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v8, v10}, Lcom/android/internal/telephony/cat/Channel;->dataAvailable(I)V

    .line 460
    :cond_0
    :goto_1
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v8, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    iget-object v10, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-lt v8, v10, :cond_7

    .line 462
    :try_start_4
    const-string/jumbo v8, "[BIP]"

    const-string/jumbo v10, "[TCP]RecTr:mRxBuffer is full."

    invoke-static {v8, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->wait()V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 469
    :goto_2
    :try_start_5
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v8, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    if-lez v8, :cond_0

    .line 470
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v8, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-lez v8, :cond_1

    .line 471
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v10, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v11, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v11, v11, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 472
    iget-object v12, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v12, v12, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    const/4 v13, 0x0

    .line 471
    invoke-static {v8, v10, v11, v13, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 474
    :cond_1
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v8, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    iget-object v10, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    iget-object v11, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v10, v11

    if-gt v8, v10, :cond_6

    .line 475
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v6, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    .line 479
    :goto_3
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 480
    iget-object v10, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 479
    invoke-static {v3, v5, v8, v10, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 481
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v10, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    add-int/2addr v10, v6

    iput v10, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 482
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v10, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    sub-int/2addr v10, v6

    iput v10, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    .line 483
    add-int/2addr v5, v6

    .line 484
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    const/4 v10, 0x0

    iput v10, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1

    .line 430
    :catchall_0
    move-exception v8

    :try_start_6
    monitor-exit v9

    throw v8
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0

    .line 513
    .end local v4    # "localBufferCount":I
    .end local v5    # "localBufferOffset":I
    .end local v6    # "rSize":I
    .end local v7    # "recvLen":I
    :catch_0
    move-exception v1

    .line 514
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "[BIP]"

    const-string/jumbo v9, "[TCP]RecTr:Error"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 515
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 408
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    :goto_4
    return-void

    .line 420
    .restart local v7    # "recvLen":I
    :catch_1
    move-exception v0

    .line 421
    .local v0, "e":Ljava/io/IOException;
    :try_start_7
    const-string/jumbo v8, "[BIP]"

    const-string/jumbo v9, "[TCP]RecTr:read io exception."

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    const/4 v8, 0x0

    invoke-static {v3, v8}, Ljava/util/Arrays;->fill([BB)V

    .line 423
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Lcom/android/internal/telephony/cat/Channel;->clearChannelBuffer(Z)V

    .line 509
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "recvLen":I
    :cond_3
    :goto_5
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    invoke-static {v8}, Lcom/android/internal/telephony/cat/Channel;->-get0(Lcom/android/internal/telephony/cat/Channel;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 511
    const-string/jumbo v8, "[BIP]"

    const-string/jumbo v9, "[TCP]RecTr: stop"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0

    goto :goto_4

    .line 443
    .restart local v4    # "localBufferCount":I
    .restart local v5    # "localBufferOffset":I
    .restart local v6    # "rSize":I
    .restart local v7    # "recvLen":I
    :cond_4
    :try_start_8
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v10, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v11, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v11, v11, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 444
    iget-object v12, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v12, v12, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 443
    const/4 v13, 0x0

    invoke-static {v8, v10, v11, v13, v12}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 445
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v8, v8, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    iget-object v10, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v8, v10

    if-gt v7, v8, :cond_5

    .line 446
    move v6, v7

    .line 451
    :goto_6
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v8, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v10, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    const/4 v11, 0x0

    invoke-static {v3, v11, v8, v10, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 453
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v10, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    add-int/2addr v10, v6

    iput v10, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 454
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    const/4 v10, 0x0

    iput v10, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 455
    const-string/jumbo v8, "[BIP]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[TCP]RecTr:rSize: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 456
    const-string/jumbo v11, ", mRxBufferCount: "

    .line 455
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 456
    iget-object v11, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 455
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 457
    const-string/jumbo v11, ", mRxBufferCacheCount: "

    .line 455
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 457
    iget-object v11, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    .line 455
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v8, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 448
    :cond_5
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v8, v8, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    iget-object v10, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int v6, v8, v10

    move v5, v6

    .line 449
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    sub-int v10, v7, v6

    iput v10, v8, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    goto :goto_6

    .line 464
    :catch_2
    move-exception v2

    .line 465
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v8, "[BIP]"

    .line 466
    const-string/jumbo v10, "[TCP]RecTr:IE :mRxBufferCount >= mBufferSize"

    .line 465
    invoke-static {v8, v10}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 477
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_6
    iget-object v8, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v8, v8, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    iget-object v10, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sub-int v6, v8, v10

    goto/16 :goto_3

    :cond_7
    :try_start_9
    monitor-exit v9

    .line 507
    const-string/jumbo v8, "[BIP]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[TCP]RecTr: buffer data:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget-object v10, p0, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v10, v10, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 492
    .end local v4    # "localBufferCount":I
    .end local v5    # "localBufferOffset":I
    .end local v6    # "rSize":I
    :cond_8
    const-string/jumbo v8, "[BIP]"

    const-string/jumbo v9, "[TCP]RecTr: end of file or server is disconnected."

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_5
.end method
