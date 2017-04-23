.class Lcom/android/internal/telephony/cat/TcpServerChannel;
.super Lcom/android/internal/telephony/cat/Channel;
.source "Channel.java"


# instance fields
.field private mCloseBackToTcpListen:Z

.field protected mInput:Ljava/io/DataInputStream;

.field protected mOutput:Ljava/io/BufferedOutputStream;

.field protected mSSocket:Ljava/net/ServerSocket;

.field protected mSocket:Ljava/net/Socket;

.field private rt:Ljava/lang/Thread;


# direct methods
.method constructor <init>(IIIIILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/BipService;)V
    .locals 9
    .param p1, "cid"    # I
    .param p2, "linkMode"    # I
    .param p3, "protocolType"    # I
    .param p4, "port"    # I
    .param p5, "bufferSize"    # I
    .param p6, "handler"    # Lcom/android/internal/telephony/cat/CatService;
    .param p7, "bipManager"    # Lcom/android/internal/telephony/cat/BipService;

    .prologue
    .line 739
    const/4 v4, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v5, p4

    move v6, p5

    move-object v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/android/internal/telephony/cat/Channel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/BipService;)V

    .line 730
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;

    .line 731
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 732
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    .line 733
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    .line 734
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->rt:Ljava/lang/Thread;

    .line 735
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mCloseBackToTcpListen:Z

    .line 738
    return-void
.end method


# virtual methods
.method public closeChannel()I
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 779
    const/4 v1, 0x0

    .line 781
    .local v1, "ret":I
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[UICC]closeChannel."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 782
    iget-boolean v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mCloseBackToTcpListen:Z

    if-eqz v2, :cond_4

    .line 783
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v2, v2, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    const/16 v3, -0x80

    if-ne v3, v2, :cond_3

    .line 785
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    const/16 v3, 0x40

    iput v3, v2, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 786
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    if-eqz v2, :cond_0

    .line 787
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 789
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_1

    .line 790
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 792
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_2

    .line 793
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 795
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->rt:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 800
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    .line 801
    :goto_0
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    .line 831
    :cond_3
    :goto_1
    return v1

    .line 796
    :catch_0
    move-exception v0

    .line 797
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[UICC]IOEX closeChannel back to tcp listen."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 799
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 800
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    goto :goto_0

    .line 798
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 799
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 800
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    .line 801
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    .line 798
    throw v2

    .line 805
    :cond_4
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->rt:Ljava/lang/Thread;

    if-eqz v2, :cond_5

    .line 806
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/TcpServerChannel;->requestStop()V

    .line 807
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->rt:Ljava/lang/Thread;

    .line 810
    :cond_5
    :try_start_2
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    if-eqz v2, :cond_6

    .line 811
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 812
    :cond_6
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_7

    .line 813
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 814
    :cond_7
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_8

    .line 815
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 816
    :cond_8
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;

    if-eqz v2, :cond_9

    .line 817
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;

    invoke-virtual {v2}, Ljava/net/ServerSocket;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 821
    :cond_9
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 822
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    .line 823
    :goto_2
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    goto :goto_1

    .line 818
    :catch_1
    move-exception v0

    .line 819
    .restart local v0    # "e":Ljava/io/IOException;
    :try_start_3
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[UICC]IOEX closeChannel"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 821
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 822
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    goto :goto_2

    .line 820
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_1
    move-exception v2

    .line 821
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    .line 822
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    .line 823
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    .line 820
    throw v2
.end method

.method public getTcpStatus()B
    .locals 3

    .prologue
    .line 1025
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v1, v1, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    int-to-byte v1, v1

    return v1

    .line 1026
    :catch_0
    move-exception v0

    .line 1027
    .local v0, "ne":Ljava/lang/NullPointerException;
    const-string/jumbo v1, "[BIP]"

    const-string/jumbo v2, "[TCP]getTcpStatus"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1028
    const/4 v1, 0x0

    return v1
.end method

.method public getTxAvailBufferSize()I
    .locals 4

    .prologue
    .line 949
    iget-object v1, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    sub-int v0, v1, v2

    .line 950
    .local v0, "txRemaining":I
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[UICC]available tx buffer size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 951
    return v0
.end method

.method public isCloseBackToTcpListen()Z
    .locals 1

    .prologue
    .line 1036
    iget-boolean v0, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mCloseBackToTcpListen:Z

    return v0
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/net/Network;)I
    .locals 9
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/BipCmdMessage;
    .param p2, "network"    # Landroid/net/Network;

    .prologue
    const/4 v8, 0x5

    const/4 v7, 0x0

    .line 743
    const/4 v2, 0x0

    .line 744
    .local v2, "ret":I
    iput-object p2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mNetwork:Landroid/net/Network;

    .line 746
    const-string/jumbo v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[UICC]openChannel mLinkMode:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mLinkMode:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    :try_start_0
    const-string/jumbo v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[UICC]New server socket.mChannelStatus:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mChannelStatus:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 750
    const-string/jumbo v5, ",port:"

    .line 749
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 750
    iget v5, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mPort:I

    .line 749
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 751
    new-instance v3, Ljava/net/ServerSocket;

    iget v4, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mPort:I

    sget-object v5, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    const/4 v6, 0x0

    invoke-direct {v3, v4, v6, v5}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 759
    iget v3, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mChannelStatus:I

    if-eqz v3, :cond_0

    .line 760
    iget v3, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mChannelStatus:I

    const/4 v4, 0x2

    if-ne v3, v4, :cond_1

    .line 761
    :cond_0
    const/16 v3, 0x40

    invoke-virtual {p0, v3, v7}, Lcom/android/internal/telephony/cat/TcpServerChannel;->setTcpStatus(BZ)V

    .line 762
    const/4 v3, 0x4

    iput v3, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mChannelStatus:I

    .line 763
    new-instance v3, Ljava/lang/Thread;

    new-instance v4, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;

    invoke-direct {v4, p0, p0}, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;-><init>(Lcom/android/internal/telephony/cat/Channel;Lcom/android/internal/telephony/cat/TcpServerChannel;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->rt:Ljava/lang/Thread;

    .line 764
    iget-object v3, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->rt:Ljava/lang/Thread;

    invoke-virtual {v3}, Ljava/lang/Thread;->start()V

    .line 766
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/TcpServerChannel;->checkBufferSize()I

    move-result v2

    .line 767
    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 768
    const-string/jumbo v3, "[BIP]"

    const-string/jumbo v4, "[UICC]openChannel: buffer size is modified"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    iget v3, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mBufferSize:I

    iput v3, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    .line 771
    :cond_2
    iget-object v3, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/TcpServerChannel;->getTcpStatus()B

    move-result v4

    iput v4, v3, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 772
    iget v3, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mBufferSize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    .line 773
    iget v3, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mBufferSize:I

    new-array v3, v3, [B

    iput-object v3, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    .line 775
    return v2

    .line 755
    :catch_0
    move-exception v1

    .line 756
    .local v1, "e2":Ljava/lang/Exception;
    const-string/jumbo v3, "[BIP]"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[UICC]EX to create server socket "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 757
    return v8

    .line 752
    .end local v1    # "e2":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 753
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "[BIP]"

    const-string/jumbo v4, "[UICC]IOEX to create server socket"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 754
    return v8
.end method

.method public receiveData(ILcom/android/internal/telephony/cat/ReceiveDataResult;)I
    .locals 9
    .param p1, "requestSize"    # I
    .param p2, "rdr"    # Lcom/android/internal/telephony/cat/ReceiveDataResult;

    .prologue
    const/4 v8, 0x5

    .line 955
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[UICC]new receiveData method"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 956
    const/4 v1, 0x0

    .line 958
    .local v1, "ret":I
    if-nez p2, :cond_0

    .line 959
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[UICC]rdr is null"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 960
    return v8

    .line 963
    :cond_0
    const-string/jumbo v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[UICC]receiveData "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 964
    const-string/jumbo v4, "/"

    .line 963
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 964
    iget v4, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    .line 963
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 966
    new-array v2, p1, [B

    iput-object v2, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 967
    iget v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    if-lt v2, p1, :cond_3

    .line 968
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[UICC]rx buffer has enough data"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 970
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 971
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    iget v4, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    iget-object v5, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v6, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 972
    iget v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    .line 973
    iget v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    .line 974
    iget v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    if-nez v2, :cond_1

    .line 975
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    .line 977
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    iget v4, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferCacheCount:I

    add-int/2addr v2, v4

    iput v2, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    .line 978
    iget v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    iget v4, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mBufferSize:I

    if-ge v2, v4, :cond_2

    .line 979
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v4, ">= [UICC]notify to read data more to mRxBuffer"

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 980
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 987
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[UICC]rx buffer has enough data - end"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1009
    :goto_0
    return v1

    .line 970
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3

    throw v2
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 983
    :catch_0
    move-exception v0

    .line 984
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[UICC]fail copy rx buffer out 1"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 985
    return v8

    .line 989
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[UICC]rx buffer is insufficient - being"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 991
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    .line 992
    :try_start_5
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    iget v4, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    iget-object v5, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    iget v6, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    const/4 v7, 0x0

    invoke-static {v2, v4, v5, v7, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 993
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    .line 994
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    .line 996
    iget v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    iget v4, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mBufferSize:I

    if-ge v2, v4, :cond_4

    .line 997
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v4, "< [UICC]notify to read data more to mRxBuffer"

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 998
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_4
    :try_start_6
    monitor-exit v3

    .line 1001
    const/4 v2, 0x0

    iput v2, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1002
    const/16 v1, 0x9

    .line 1007
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[UICC]rx buffer is insufficient - end"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 991
    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v3

    throw v2
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1003
    :catch_1
    move-exception v0

    .line 1004
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[UICC]fail copy rx buffer out 2"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1005
    return v8
.end method

.method public receiveData(I)Lcom/android/internal/telephony/cat/ReceiveDataResult;
    .locals 12
    .param p1, "requestCount"    # I

    .prologue
    .line 836
    new-instance v7, Lcom/android/internal/telephony/cat/ReceiveDataResult;

    invoke-direct {v7}, Lcom/android/internal/telephony/cat/ReceiveDataResult;-><init>()V

    .line 838
    .local v7, "ret":Lcom/android/internal/telephony/cat/ReceiveDataResult;
    new-array v8, p1, [B

    iput-object v8, v7, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 839
    const-string/jumbo v8, "[BIP]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[UICC]receiveData "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 840
    const-string/jumbo v10, "/"

    .line 839
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 840
    const-string/jumbo v10, "/"

    .line 839
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 840
    iget v10, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    .line 839
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 842
    iget v8, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    if-lt v8, p1, :cond_1

    .line 844
    :try_start_0
    const-string/jumbo v8, "[BIP]"

    const-string/jumbo v9, "[UICC]Start to copy data from buffer"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 845
    iget-object v8, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    iget v9, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    iget-object v10, v7, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 846
    iget v8, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    sub-int/2addr v8, p1

    iput v8, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    .line 847
    iget v8, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    add-int/2addr v8, p1

    iput v8, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    .line 848
    iget v8, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    iput v8, v7, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 895
    :cond_0
    :goto_0
    return-object v7

    .line 849
    :catch_0
    move-exception v5

    .line 850
    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v8, "[BIP]"

    const-string/jumbo v9, "IOOB-1"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 853
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_1
    move v6, p1

    .line 854
    .local v6, "needCopy":I
    iget v0, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    .line 855
    .local v0, "canCopy":I
    const/4 v3, 0x0

    .line 856
    .local v3, "countCopied":I
    const/4 v1, 0x0

    .line 858
    .local v1, "canExitLoop":Z
    :goto_1
    if-nez v1, :cond_0

    .line 859
    if-le v6, v0, :cond_2

    .line 861
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    iget v9, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    iget-object v10, v7, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v8, v9, v10, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 863
    iget v8, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    .line 864
    iget v8, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    sub-int/2addr v8, v0

    iput v8, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 865
    add-int/2addr v3, v0

    .line 866
    sub-int/2addr v6, v0

    .line 881
    :goto_2
    if-nez v6, :cond_3

    .line 882
    const/4 v1, 0x1

    goto :goto_1

    .line 867
    :catch_1
    move-exception v5

    .line 868
    .restart local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v8, "[BIP]"

    const-string/jumbo v9, "IOOB-2"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 872
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    :try_start_2
    iget v8, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    iget-object v10, v7, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v8, v9, v10, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 874
    iget v8, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I

    add-int/2addr v8, v6

    iput v8, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 875
    add-int/2addr v3, v6

    .line 876
    const/4 v6, 0x0

    goto :goto_2

    .line 877
    :catch_2
    move-exception v5

    .line 878
    .restart local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v8, "[BIP]"

    const-string/jumbo v9, "IOOB-3"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    .line 885
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    :try_start_3
    iget-object v8, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    iget-object v9, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    iget-object v10, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBuffer:[B

    array-length v10, v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v11, v10}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    .line 886
    .local v2, "count":I
    iput v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferCount:I

    .line 887
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mRxBufferOffset:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    goto :goto_1

    .line 888
    .end local v2    # "count":I
    :catch_3
    move-exception v4

    .line 889
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v8, "[BIP]"

    const-string/jumbo v9, "IOException"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 890
    invoke-virtual {v4}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1
.end method

.method public sendData([BI)I
    .locals 12
    .param p1, "data"    # [B
    .param p2, "mode"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x5

    .line 899
    const/4 v3, 0x0

    .line 900
    .local v3, "ret":I
    iget-object v6, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    array-length v6, v6

    iget v7, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    sub-int v5, v6, v7

    .line 901
    .local v5, "txRemaining":I
    const/4 v4, 0x0

    .line 903
    .local v4, "tmpBuffer":[B
    if-nez p1, :cond_0

    .line 904
    const-string/jumbo v6, "[BIP]"

    const-string/jumbo v7, "[UICC]sendData - data null:"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 905
    return v10

    .line 908
    :cond_0
    const-string/jumbo v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[UICC]sendData: size of buffer:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    array-length v8, p1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mode:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 909
    const-string/jumbo v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[UICC]sendData: size of buffer:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " count:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 910
    iget v8, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    .line 909
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 912
    iget v6, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    if-nez v6, :cond_2

    if-ne v11, p2, :cond_2

    .line 913
    move-object v4, p1

    .line 914
    .local v4, "tmpBuffer":[B
    array-length v6, p1

    iput v6, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    .line 928
    :goto_0
    if-ne p2, v11, :cond_1

    .line 929
    iget v6, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mChannelStatus:I

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 930
    iget-object v6, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v6, v6, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    const/16 v7, -0x80

    if-ne v6, v7, :cond_1

    .line 932
    :try_start_0
    const-string/jumbo v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "S[UICC]END_DATA_MODE_IMMEDIATE:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 933
    const-string/jumbo v8, " count:"

    .line 932
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 933
    iget v8, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    .line 932
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 934
    iget-object v6, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    iget v7, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v8, v7}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 935
    iget-object v6, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 936
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 945
    :cond_1
    return v3

    .line 917
    .local v4, "tmpBuffer":[B
    :cond_2
    :try_start_1
    array-length v6, p1

    if-lt v5, v6, :cond_3

    .line 918
    iget-object v6, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    iget v7, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    array-length v8, p1

    const/4 v9, 0x0

    invoke-static {p1, v9, v6, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 919
    iget v6, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I

    array-length v7, p1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mTxBufferCount:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    .line 926
    :goto_1
    iget-object v4, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mTxBuffer:[B

    .local v4, "tmpBuffer":[B
    goto :goto_0

    .line 921
    .local v4, "tmpBuffer":[B
    :cond_3
    :try_start_2
    const-string/jumbo v6, "[BIP]"

    const-string/jumbo v7, "[UICC]sendData - tx buffer is not enough"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 923
    :catch_0
    move-exception v1

    .line 924
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    return v10

    .line 940
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .local v4, "tmpBuffer":[B
    :catch_1
    move-exception v2

    .line 941
    .local v2, "e2":Ljava/lang/NullPointerException;
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 942
    return v10

    .line 937
    .end local v2    # "e2":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 938
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 939
    return v10
.end method

.method public setCloseBackToTcpListen(Z)V
    .locals 0
    .param p1, "isBackToTcpListen"    # Z

    .prologue
    .line 1033
    iput-boolean p1, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mCloseBackToTcpListen:Z

    .line 1032
    return-void
.end method

.method public setTcpStatus(BZ)V
    .locals 3
    .param p1, "status"    # B
    .param p2, "isPackED"    # Z

    .prologue
    .line 1012
    iget-object v0, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v0, v0, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    if-ne v0, p1, :cond_0

    .line 1013
    return-void

    .line 1015
    :cond_0
    const-string/jumbo v0, "[BIP]"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[UICC][TCPStatus]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    iget v2, v2, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1016
    const-string/jumbo v2, "->"

    .line 1015
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1017
    iget-object v0, p0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    iput p1, v0, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I

    .line 1018
    if-eqz p2, :cond_1

    .line 1019
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/cat/TcpServerChannel;->changeChannelStatus(B)V

    .line 1011
    :cond_1
    return-void
.end method
