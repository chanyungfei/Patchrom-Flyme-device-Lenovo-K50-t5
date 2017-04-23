.class public Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;
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
    name = "UdpReceiverThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/Channel;

.field udpSocket:Ljava/net/DatagramSocket;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/Channel;Ljava/net/DatagramSocket;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cat/Channel;
    .param p2, "s"    # Ljava/net/DatagramSocket;

    .prologue
    .line 279
    iput-object p1, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 280
    iput-object p2, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->udpSocket:Ljava/net/DatagramSocket;

    .line 279
    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .prologue
    .line 285
    const/16 v9, 0x578

    new-array v3, v9, [B

    .line 287
    .local v3, "localBuffer":[B
    const-string/jumbo v9, "[BIP]"

    const-string/jumbo v10, "[UDP]RecTr run"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance v8, Ljava/net/DatagramPacket;

    array-length v9, v3

    invoke-direct {v8, v3, v9}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 290
    .local v8, "recvPacket":Ljava/net/DatagramPacket;
    :goto_0
    :try_start_0
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    invoke-static {v9}, Lcom/android/internal/telephony/cat/Channel;->-get0(Lcom/android/internal/telephony/cat/Channel;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 291
    const/4 v7, 0x0

    .line 292
    .local v7, "recvLen":I
    const-string/jumbo v9, "[BIP]"

    const-string/jumbo v10, "[UDP]Before RecTr: Receive data from network"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    const/4 v9, 0x0

    :try_start_1
    invoke-static {v3, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 295
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->udpSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v9, v8}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 296
    invoke-virtual {v8}, Ljava/net/DatagramPacket;->getLength()I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v7

    .line 304
    :try_start_2
    const-string/jumbo v9, "[BIP]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[UDP]RecTr: Receive data from network:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 305
    if-ltz v7, :cond_9

    .line 306
    const/4 v6, 0x0

    .line 307
    .local v6, "rSize":I
    const/4 v5, 0x0

    .local v5, "localBufferOffset":I
    const/4 v4, 0x0

    .line 308
    .local v4, "localBufferCount":I
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v10, v9, Lcom/android/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    monitor-enter v10
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 310
    :try_start_3
    const-string/jumbo v9, "[BIP]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "[UDP]RecTr:mRxBufferCount: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v12, v12, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-nez v9, :cond_3

    .line 313
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v9, v9, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    const/4 v11, 0x0

    const/4 v12, 0x0

    invoke-static {v3, v11, v9, v12, v7}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 314
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iput v7, v9, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 315
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    const/4 v11, 0x0

    iput v11, v9, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 316
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v11, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v9, v11}, Lcom/android/internal/telephony/cat/Channel;->dataAvailable(I)V

    .line 339
    :cond_0
    :goto_1
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/android/internal/telephony/cat/Channel;->mIOTTest:I

    const/4 v11, 0x1

    if-ne v11, v9, :cond_5

    .line 340
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-lez v9, :cond_8

    .line 341
    const-string/jumbo v9, "[BIP]"

    const-string/jumbo v11, "[UDP]0 < mRxBufferCount, wait."

    invoke-static {v9, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 342
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v9, v9, Lcom/android/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V

    .line 343
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-boolean v9, v9, Lcom/android/internal/telephony/cat/Channel;->isReceiveDataTRSent:Z

    if-nez v9, :cond_0

    .line 344
    const-string/jumbo v9, "[BIP]"

    const-string/jumbo v11, "[UDP]Receive TR not sent, wait."

    invoke-static {v9, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 345
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v9, v9, Lcom/android/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 308
    :catchall_0
    move-exception v9

    :try_start_4
    monitor-exit v10

    throw v9
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 393
    .end local v4    # "localBufferCount":I
    .end local v5    # "localBufferOffset":I
    .end local v6    # "rSize":I
    .end local v7    # "recvLen":I
    :catch_0
    move-exception v1

    .line 394
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v9, "[BIP]"

    const-string/jumbo v10, "[UDP]RecTr:Error."

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 284
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_2
    return-void

    .line 297
    .restart local v7    # "recvLen":I
    :catch_1
    move-exception v0

    .line 298
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v9, "[BIP]"

    const-string/jumbo v10, "[UDP]RecTr:read io exception."

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    const/4 v9, 0x0

    invoke-static {v3, v9}, Ljava/util/Arrays;->fill([BB)V

    .line 300
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v9, v9, Lcom/android/internal/telephony/cat/Channel;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    const/4 v10, 0x0

    iput v10, v9, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 301
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    const/4 v10, 0x0

    invoke-virtual {v9, v10}, Lcom/android/internal/telephony/cat/Channel;->clearChannelBuffer(Z)V

    .line 389
    .end local v0    # "e":Ljava/io/IOException;
    .end local v7    # "recvLen":I
    :cond_2
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    invoke-static {v9}, Lcom/android/internal/telephony/cat/Channel;->-get0(Lcom/android/internal/telephony/cat/Channel;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 391
    const-string/jumbo v9, "[BIP]"

    const-string/jumbo v10, "[UDP]RecTr: stop"

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto :goto_2

    .line 321
    .restart local v4    # "localBufferCount":I
    .restart local v5    # "localBufferOffset":I
    .restart local v6    # "rSize":I
    .restart local v7    # "recvLen":I
    :cond_3
    :try_start_6
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v9, v9, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v11, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    iget-object v12, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v12, v12, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    .line 322
    iget-object v13, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v13, v13, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 321
    const/4 v14, 0x0

    invoke-static {v9, v11, v12, v14, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 323
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    iget-object v11, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int/2addr v9, v11

    if-gt v7, v9, :cond_4

    .line 324
    move v6, v7

    .line 329
    :goto_3
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v9, v9, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v11, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    const/4 v12, 0x0

    invoke-static {v3, v12, v9, v11, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 331
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v11, v9, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    add-int/2addr v11, v6

    iput v11, v9, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 332
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    const/4 v11, 0x0

    iput v11, v9, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 333
    const-string/jumbo v9, "[BIP]"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "RecTr:rSize: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, ", mRxBufferCount: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    .line 334
    iget-object v12, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v12, v12, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 333
    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v9, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 326
    :cond_4
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    iget-object v11, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    sub-int v6, v9, v11

    move v5, v6

    .line 327
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    sub-int v11, v7, v6

    iput v11, v9, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    goto :goto_3

    .line 352
    :cond_5
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    iget-object v11, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-lt v9, v11, :cond_8

    .line 354
    :try_start_7
    const-string/jumbo v9, "[BIP]"

    const-string/jumbo v11, "[UDP]RecTr:mRxBuffer is full."

    invoke-static {v9, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 355
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v9, v9, Lcom/android/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    invoke-virtual {v9}, Ljava/lang/Object;->wait()V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 361
    :goto_4
    :try_start_8
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    if-lez v9, :cond_0

    .line 362
    const-string/jumbo v9, "[BIP]"

    const-string/jumbo v11, "[UDP]RecTr:RxBuffer>0."

    invoke-static {v9, v11}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 363
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    if-lez v9, :cond_6

    .line 364
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v9, v9, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v11, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 365
    iget-object v12, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v12, v12, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v13, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v13, v13, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    const/4 v14, 0x0

    .line 364
    invoke-static {v9, v11, v12, v14, v13}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 367
    :cond_6
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    iget-object v11, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    .line 368
    iget-object v12, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v12, v12, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 367
    sub-int/2addr v11, v12

    if-gt v9, v11, :cond_7

    .line 369
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v6, v9, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    .line 374
    :goto_5
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget-object v9, v9, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    iget-object v11, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 373
    invoke-static {v3, v5, v9, v11, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 375
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v11, v9, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    add-int/2addr v11, v6

    iput v11, v9, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 376
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v11, v9, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    sub-int/2addr v11, v6

    iput v11, v9, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    .line 377
    add-int/2addr v5, v6

    .line 378
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    const/4 v11, 0x0

    iput v11, v9, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    goto/16 :goto_1

    .line 356
    :catch_2
    move-exception v2

    .line 357
    .local v2, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v9, "[BIP]"

    .line 358
    const-string/jumbo v11, "[UDP]RecTr:IE : mRxBufferCount >= mBufferSize"

    .line 357
    invoke-static {v9, v11}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    .line 371
    .end local v2    # "e":Ljava/lang/InterruptedException;
    :cond_7
    iget-object v9, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v9, v9, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    iget-object v11, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    sub-int v6, v9, v11

    goto :goto_5

    :cond_8
    :try_start_9
    monitor-exit v10

    .line 387
    .end local v4    # "localBufferCount":I
    .end local v5    # "localBufferOffset":I
    .end local v6    # "rSize":I
    :cond_9
    const-string/jumbo v9, "[BIP]"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "[UDP]RecTr: buffer data:"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, p0, Lcom/android/internal/telephony/cat/Channel$UdpReceiverThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    iget v11, v11, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_0

    goto/16 :goto_0
.end method
