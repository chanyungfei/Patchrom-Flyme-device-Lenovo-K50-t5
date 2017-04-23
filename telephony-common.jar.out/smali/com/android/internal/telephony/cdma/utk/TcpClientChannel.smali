.class Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;
.super Lcom/android/internal/telephony/cdma/utk/BipChannel;
.source "BipChannel.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;ILandroid/content/Context;)V
    .locals 0
    .param p1, "bs"    # Lcom/android/internal/telephony/cdma/utk/BipService;
    .param p2, "p"    # Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    .param p3, "id"    # I
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 428
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/utk/BipChannel;-><init>(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;I)V

    .line 429
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mContext:Landroid/content/Context;

    .line 427
    return-void
.end method


# virtual methods
.method public linkDisconnect(Z)I
    .locals 5
    .param p1, "listen"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 488
    const-string/jumbo v1, "TcpClientChannel"

    const-string/jumbo v2, " linkDisconnect"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-virtual {v1, v4}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->setStatus(I)V

    .line 493
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    if-eqz v1, :cond_0

    .line 494
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->stop()V

    .line 495
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    .line 499
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mSocket:Ljava/net/Socket;

    if-eqz v1, :cond_1

    .line 501
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 502
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 508
    :cond_1
    :goto_0
    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mRxBuffer:[B

    .line 509
    iput v4, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mDataAvailableLength:I

    .line 511
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->stopDataToReceiveTimer()V

    .line 513
    return v4

    .line 504
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public linkEstablish()I
    .locals 14

    .prologue
    .line 433
    const-string/jumbo v11, "TcpClientChannel"

    const-string/jumbo v12, " linkEstablish"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 435
    const/4 v7, 0x1

    .line 436
    .local v7, "ret":I
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->destAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    iget-object v0, v11, Lcom/android/internal/telephony/cdma/utk/OtherAddress;->address:Ljava/net/InetAddress;

    .line 437
    .local v0, "address":Ljava/net/InetAddress;
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    iget-object v11, v11, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    iget v6, v11, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->port:I

    .line 438
    .local v6, "port":I
    const/4 v8, 0x0

    .line 440
    .local v8, "socketAddress":Ljava/net/InetSocketAddress;
    :try_start_0
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mContext:Landroid/content/Context;

    .line 441
    const-string/jumbo v12, "connectivity"

    .line 440
    invoke-virtual {v11, v12}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/ConnectivityManager;

    .line 442
    .local v1, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v1}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v5

    .line 443
    .local v5, "network":Landroid/net/Network;
    if-eqz v5, :cond_2

    .line 444
    invoke-virtual {v5}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v11

    invoke-virtual {v11}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v11

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mSocket:Ljava/net/Socket;

    .line 449
    :goto_0
    new-instance v9, Ljava/net/InetSocketAddress;

    invoke-direct {v9, v0, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    .line 451
    .local v9, "socketAddress":Ljava/net/InetSocketAddress;
    :try_start_1
    const-string/jumbo v11, "TcpClientChannel"

    .end local v8    # "socketAddress":Ljava/net/InetSocketAddress;
    const-string/jumbo v12, " mSocket.connect..."

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_3

    .line 453
    :try_start_2
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v11, v9}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_3

    .line 458
    :goto_1
    :try_start_3
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v11}, Ljava/net/Socket;->isConnected()Z

    move-result v11

    if-eqz v11, :cond_3

    .line 459
    const-string/jumbo v11, "TcpClientChannel"

    const-string/jumbo v12, " mSocket.connect OK"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 460
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    const/4 v12, 0x2

    invoke-virtual {v11, v12}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->setStatus(I)V

    .line 461
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    iget-boolean v11, v11, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    if-eqz v11, :cond_0

    .line 462
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->notifyChannelStatusChanged()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_3

    .line 464
    :cond_0
    const/4 v7, 0x0

    :goto_2
    move-object v8, v9

    .line 476
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v5    # "network":Landroid/net/Network;
    .end local v9    # "socketAddress":Ljava/net/InetSocketAddress;
    :goto_3
    const-string/jumbo v11, "TcpClientChannel"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, " ret:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    if-nez v7, :cond_1

    .line 479
    new-instance v11, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;

    iget-object v12, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mSocket:Ljava/net/Socket;

    iget v13, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mRxBufferSize:I

    invoke-direct {v11, v12, v13, p0}, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;-><init>(Ljava/net/Socket;ILcom/android/internal/telephony/cdma/utk/BipChannel;)V

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    .line 480
    new-instance v10, Ljava/lang/Thread;

    iget-object v11, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    invoke-direct {v10, v11}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 481
    .local v10, "thd":Ljava/lang/Thread;
    invoke-virtual {v10}, Ljava/lang/Thread;->start()V

    .line 484
    .end local v10    # "thd":Ljava/lang/Thread;
    :cond_1
    return v7

    .line 446
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    .restart local v5    # "network":Landroid/net/Network;
    .restart local v8    # "socketAddress":Ljava/net/InetSocketAddress;
    :cond_2
    :try_start_4
    const-string/jumbo v11, "network is null"

    const-string/jumbo v12, " exception"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 447
    new-instance v11, Ljava/net/Socket;

    invoke-direct {v11}, Ljava/net/Socket;-><init>()V

    iput-object v11, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mSocket:Ljava/net/Socket;
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_0

    .line 470
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v5    # "network":Landroid/net/Network;
    :catch_0
    move-exception v2

    .local v2, "e":Ljava/io/IOException;
    goto :goto_3

    .line 466
    .end local v2    # "e":Ljava/io/IOException;
    .end local v8    # "socketAddress":Ljava/net/InetSocketAddress;
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    .restart local v5    # "network":Landroid/net/Network;
    .restart local v9    # "socketAddress":Ljava/net/InetSocketAddress;
    :cond_3
    :try_start_5
    const-string/jumbo v11, "TcpClientChannel"

    const-string/jumbo v12, " mSocket.connect fail"

    invoke-static {v11, v12}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 468
    iget-object v11, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v11}, Ljava/net/Socket;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_3

    goto :goto_2

    .line 470
    :catch_1
    move-exception v2

    .restart local v2    # "e":Ljava/io/IOException;
    move-object v8, v9

    .end local v9    # "socketAddress":Ljava/net/InetSocketAddress;
    .local v8, "socketAddress":Ljava/net/InetSocketAddress;
    goto :goto_3

    .line 472
    .end local v1    # "cm":Landroid/net/ConnectivityManager;
    .end local v2    # "e":Ljava/io/IOException;
    .end local v5    # "network":Landroid/net/Network;
    .local v8, "socketAddress":Ljava/net/InetSocketAddress;
    :catch_2
    move-exception v3

    .local v3, "e":Ljava/lang/NullPointerException;
    goto :goto_3

    .end local v3    # "e":Ljava/lang/NullPointerException;
    .end local v8    # "socketAddress":Ljava/net/InetSocketAddress;
    .restart local v1    # "cm":Landroid/net/ConnectivityManager;
    .restart local v5    # "network":Landroid/net/Network;
    .restart local v9    # "socketAddress":Ljava/net/InetSocketAddress;
    :catch_3
    move-exception v3

    .restart local v3    # "e":Ljava/lang/NullPointerException;
    move-object v8, v9

    .end local v9    # "socketAddress":Ljava/net/InetSocketAddress;
    .local v8, "socketAddress":Ljava/net/InetSocketAddress;
    goto :goto_3

    .line 454
    .end local v3    # "e":Ljava/lang/NullPointerException;
    .end local v8    # "socketAddress":Ljava/net/InetSocketAddress;
    .restart local v9    # "socketAddress":Ljava/net/InetSocketAddress;
    :catch_4
    move-exception v4

    .local v4, "e":Ljava/net/SocketTimeoutException;
    goto :goto_1
.end method

.method public receiveData(I)V
    .locals 4
    .param p1, "reqDataLen"    # I

    .prologue
    .line 519
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->receiveData(I)V

    .line 521
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mRxLock:Ljava/lang/Object;

    monitor-enter v2

    .line 522
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mRxBuffer:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mRxBuffer:[B

    array-length v1, v1

    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mRxBufferIndex:I

    if-ne v1, v3, :cond_0

    .line 523
    const-string/jumbo v1, "TcpClientChannel"

    const-string/jumbo v3, " mRxBuffer data receive done"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mRxBuffer:[B

    .line 525
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mRxBufferIndex:I

    .line 527
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mReceiveDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 531
    const-string/jumbo v1, "TcpClientChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " mReceiveDone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mReceiveDone:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mReceiveDone:Z

    if-eqz v1, :cond_1

    .line 534
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mReceiveMsgQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 535
    const-string/jumbo v1, "TcpClientChannel"

    const-string/jumbo v2, " send delay msg"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 536
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mReceiveMsgQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 537
    .local v0, "msg":Landroid/os/Message;
    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 517
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void

    .line 521
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method public sendData([BZ)V
    .locals 8
    .param p1, "data"    # [B
    .param p2, "sendImmediately"    # Z

    .prologue
    .line 543
    const-string/jumbo v3, "TcpClientChannel"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, " sendData sendImmediately:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->sendData([BZ)V

    .line 547
    if-eqz p2, :cond_0

    .line 548
    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mTxAvaSize:I

    if-gez v3, :cond_1

    .line 549
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    const/16 v4, 0x15

    .line 550
    const/4 v5, 0x1

    const/4 v6, 0x2

    const/4 v7, 0x0

    .line 549
    invoke-virtual {v3, v4, v5, v6, v7}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 542
    :cond_0
    :goto_0
    return-void

    .line 553
    :cond_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mTxLock:Ljava/lang/Object;

    monitor-enter v4

    .line 554
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mTxBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    .line 555
    .local v2, "tmp":[B
    array-length v3, v2

    new-array v0, v3, [B

    .line 556
    .local v0, "dataToSend":[B
    array-length v3, v2

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-static {v2, v5, v0, v6, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 558
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mTxBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 559
    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mRxBufferSize:I

    iput v3, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mTxAvaSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 562
    new-instance v1, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/telephony/cdma/utk/TcpSender;

    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;->mSocket:Ljava/net/Socket;

    invoke-direct {v3, v4, v0, p0}, Lcom/android/internal/telephony/cdma/utk/TcpSender;-><init>(Ljava/net/Socket;[BLcom/android/internal/telephony/cdma/utk/BipChannel;)V

    invoke-direct {v1, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 563
    .local v1, "thd":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 553
    .end local v0    # "dataToSend":[B
    .end local v1    # "thd":Ljava/lang/Thread;
    .end local v2    # "tmp":[B
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method
