.class Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;
.super Lcom/android/internal/telephony/cdma/utk/BipChannel;
.source "BipChannel.java"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDatagramSocket:Ljava/net/DatagramSocket;

.field private mLocalAddress:Ljava/net/InetAddress;

.field private mLocalPort:I

.field private mRemoteAddress:Ljava/net/InetAddress;

.field private mRemotePort:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;ILandroid/content/Context;)V
    .locals 2
    .param p1, "bs"    # Lcom/android/internal/telephony/cdma/utk/BipService;
    .param p2, "p"    # Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    .param p3, "id"    # I
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 651
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/utk/BipChannel;-><init>(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;I)V

    .line 641
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    .line 643
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRemoteAddress:Ljava/net/InetAddress;

    .line 644
    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRemotePort:I

    .line 645
    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mLocalAddress:Ljava/net/InetAddress;

    .line 646
    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mLocalPort:I

    .line 653
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->destAddress:Lcom/android/internal/telephony/cdma/utk/OtherAddress;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/utk/OtherAddress;->address:Ljava/net/InetAddress;

    iput-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRemoteAddress:Ljava/net/InetAddress;

    .line 654
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    iget-object v0, v0, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    iget v0, v0, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->port:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRemotePort:I

    .line 657
    iput-object p4, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mContext:Landroid/content/Context;

    .line 649
    return-void
.end method


# virtual methods
.method public linkDisconnect(Z)I
    .locals 4
    .param p1, "listen"    # Z

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x0

    .line 695
    const-string/jumbo v0, "UdpClientChannel"

    const-string/jumbo v1, " linkDisconnect"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    if-eqz v0, :cond_0

    .line 698
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    invoke-virtual {v0}, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->stop()V

    .line 699
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    .line 702
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    if-eqz v0, :cond_1

    .line 703
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v0}, Ljava/net/DatagramSocket;->close()V

    .line 704
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    .line 705
    iput-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRxBuffer:[B

    .line 708
    :cond_1
    iput v3, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mDataAvailableLength:I

    .line 710
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->setStatus(I)V

    .line 713
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->stopDataToReceiveTimer()V

    .line 715
    return v3
.end method

.method public linkEstablish()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    .line 661
    const-string/jumbo v5, "UdpClientChannel"

    const-string/jumbo v6, " linkEstablish"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    :try_start_0
    new-instance v5, Ljava/net/DatagramSocket;

    invoke-direct {v5}, Ljava/net/DatagramSocket;-><init>()V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    .line 664
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mContext:Landroid/content/Context;

    .line 665
    const-string/jumbo v6, "connectivity"

    .line 664
    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 666
    .local v0, "cm":Landroid/net/ConnectivityManager;
    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetwork()Landroid/net/Network;

    move-result-object v3

    .line 667
    .local v3, "network":Landroid/net/Network;
    if-eqz v3, :cond_1

    .line 668
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    invoke-virtual {v3, v5}, Landroid/net/Network;->bindSocket(Ljava/net/DatagramSocket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 681
    new-instance v5, Lcom/android/internal/telephony/cdma/utk/UdpReceiver;

    iget-object v6, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    iget v7, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRxBufferSize:I

    invoke-direct {v5, v6, v7, p0}, Lcom/android/internal/telephony/cdma/utk/UdpReceiver;-><init>(Ljava/net/DatagramSocket;ILcom/android/internal/telephony/cdma/utk/BipChannel;)V

    iput-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    .line 682
    new-instance v4, Ljava/lang/Thread;

    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    invoke-direct {v4, v5}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 683
    .local v4, "thd":Ljava/lang/Thread;
    invoke-virtual {v4}, Ljava/lang/Thread;->start()V

    .line 685
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    const/4 v6, 0x2

    invoke-virtual {v5, v6}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->setStatus(I)V

    .line 686
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mChannelParams:Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;

    iget-boolean v5, v5, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->backgrountMode:Z

    if-eqz v5, :cond_0

    .line 687
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->notifyChannelStatusChanged()V

    .line 691
    :cond_0
    const/4 v5, 0x0

    return v5

    .line 670
    .end local v4    # "thd":Ljava/lang/Thread;
    :cond_1
    :try_start_1
    const-string/jumbo v5, "UdpClientChannel"

    const-string/jumbo v6, " network is null"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 671
    return v7

    .line 676
    .end local v0    # "cm":Landroid/net/ConnectivityManager;
    .end local v3    # "network":Landroid/net/Network;
    :catch_0
    move-exception v1

    .line 677
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v5, "UdpClientChannel"

    const-string/jumbo v6, " IOException"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 678
    return v7

    .line 673
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v2

    .line 674
    .local v2, "e":Ljava/net/SocketException;
    const-string/jumbo v5, "UdpClientChannel"

    const-string/jumbo v6, " get datagram socket fail"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    return v7
.end method

.method public receiveData(I)V
    .locals 4
    .param p1, "reqDataLen"    # I

    .prologue
    .line 721
    invoke-super {p0, p1}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->receiveData(I)V

    .line 723
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRxLock:Ljava/lang/Object;

    monitor-enter v2

    .line 724
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRxBuffer:[B

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRxBuffer:[B

    array-length v1, v1

    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRxBufferIndex:I

    if-ne v1, v3, :cond_0

    .line 725
    const-string/jumbo v1, "UdpClientChannel"

    const-string/jumbo v3, " mRxBuffer data receive done"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRxBuffer:[B

    .line 728
    const/4 v1, 0x0

    iput v1, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRxBufferIndex:I

    .line 730
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mReceiveDone:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 734
    const-string/jumbo v1, "UdpClientChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " mReceiveDone="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mReceiveDone:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 735
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mReceiveDone:Z

    if-eqz v1, :cond_1

    .line 737
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mReceiveMsgQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 738
    const-string/jumbo v1, "UdpClientChannel"

    const-string/jumbo v2, " send delay msg"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mReceiveMsgQ:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Message;

    .line 740
    .local v0, "msg":Landroid/os/Message;
    const-wide/16 v2, 0x64

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 719
    .end local v0    # "msg":Landroid/os/Message;
    :cond_1
    return-void

    .line 723
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
    .line 746
    const-string/jumbo v0, "UdpClientChannel"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " sendData sendImmediately:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 748
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->sendData([BZ)V

    .line 750
    if-eqz p2, :cond_0

    .line 751
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mTxAvaSize:I

    if-gez v0, :cond_1

    .line 752
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mBipService:Lcom/android/internal/telephony/cdma/utk/BipService;

    const/16 v1, 0x15

    .line 753
    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v5, 0x0

    .line 752
    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/internal/telephony/cdma/utk/BipService;->sendResponseToUtk(IIILjava/lang/Object;)V

    .line 745
    :cond_0
    :goto_0
    return-void

    .line 756
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mTxLock:Ljava/lang/Object;

    monitor-enter v1

    .line 757
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mTxBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v7

    .line 758
    .local v7, "tmp":[B
    array-length v0, v7

    new-array v4, v0, [B

    .line 759
    .local v4, "dataToSend":[B
    array-length v0, v7

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-static {v7, v2, v4, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 761
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mTxBuffer:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 762
    iget v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRxBufferSize:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mTxAvaSize:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 765
    new-instance v6, Ljava/lang/Thread;

    new-instance v0, Lcom/android/internal/telephony/cdma/utk/UdpSender;

    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mDatagramSocket:Ljava/net/DatagramSocket;

    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRemoteAddress:Ljava/net/InetAddress;

    .line 766
    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/UdpClientChannel;->mRemotePort:I

    move-object v5, p0

    .line 765
    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/utk/UdpSender;-><init>(Ljava/net/DatagramSocket;Ljava/net/InetAddress;I[BLcom/android/internal/telephony/cdma/utk/BipChannel;)V

    invoke-direct {v6, v0}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 767
    .local v6, "thd":Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    goto :goto_0

    .line 756
    .end local v4    # "dataToSend":[B
    .end local v6    # "thd":Ljava/lang/Thread;
    .end local v7    # "tmp":[B
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
