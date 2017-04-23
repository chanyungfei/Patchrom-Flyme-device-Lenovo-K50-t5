.class Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;
.super Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;
.source "BipChannel.java"


# instance fields
.field private mListen:Lcom/android/internal/telephony/cdma/utk/ListenPortManager;

.field private mListenPort:I


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;ILandroid/content/Context;)V
    .locals 1
    .param p1, "bs"    # Lcom/android/internal/telephony/cdma/utk/BipService;
    .param p2, "p"    # Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;
    .param p3, "id"    # I
    .param p4, "context"    # Landroid/content/Context;

    .prologue
    .line 575
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/cdma/utk/TcpClientChannel;-><init>(Lcom/android/internal/telephony/cdma/utk/BipService;Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;ILandroid/content/Context;)V

    .line 576
    iget-object v0, p2, Lcom/android/internal/telephony/cdma/utk/OpenChannelSettings;->transportLevel:Lcom/android/internal/telephony/cdma/utk/TransportLevel;

    iget v0, v0, Lcom/android/internal/telephony/cdma/utk/TransportLevel;->port:I

    iput v0, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mListenPort:I

    .line 574
    return-void
.end method


# virtual methods
.method public linkDisconnect(Z)I
    .locals 6
    .param p1, "listen"    # Z

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 600
    const-string/jumbo v1, "TcpServerChannel"

    const-string/jumbo v2, " linkDisconnect"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 602
    if-eqz p1, :cond_2

    .line 603
    const-string/jumbo v1, "TcpServerChannel"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " keep listen:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mListenPort:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 607
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->setStatus(I)V

    .line 616
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    if-eqz v1, :cond_0

    .line 617
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/utk/BipRunnable;->stop()V

    .line 618
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mReceiver:Lcom/android/internal/telephony/cdma/utk/BipRunnable;

    .line 622
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mSocket:Ljava/net/Socket;

    if-eqz v1, :cond_1

    .line 623
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v1}, Ljava/net/Socket;->close()V

    .line 624
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 630
    :cond_1
    :goto_1
    iput-object v4, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mRxBuffer:[B

    .line 631
    iput v5, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mDataAvailableLength:I

    .line 633
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->stopDataToReceiveTimer()V

    .line 635
    return v5

    .line 610
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mListen:Lcom/android/internal/telephony/cdma/utk/ListenPortManager;

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mListenPort:I

    invoke-virtual {v1, v2, p0}, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->removeListenPort(ILcom/android/internal/telephony/cdma/utk/BipChannel;)V

    .line 612
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    invoke-virtual {v1, v5}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->setStatus(I)V

    goto :goto_0

    .line 626
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_1
.end method

.method public linkEstablish()I
    .locals 3

    .prologue
    .line 581
    const/4 v0, 0x0

    .line 583
    .local v0, "ret":I
    const-string/jumbo v1, "TcpServerChannel"

    const-string/jumbo v2, " linkEstablish"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 585
    invoke-static {}, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->getInstance()Lcom/android/internal/telephony/cdma/utk/ListenPortManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mListen:Lcom/android/internal/telephony/cdma/utk/ListenPortManager;

    .line 586
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mListen:Lcom/android/internal/telephony/cdma/utk/ListenPortManager;

    iget v2, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mListenPort:I

    invoke-virtual {v1, v2, p0}, Lcom/android/internal/telephony/cdma/utk/ListenPortManager;->addListenPort(ILcom/android/internal/telephony/cdma/utk/BipChannel;)V

    .line 588
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mChannelStatus:Lcom/android/internal/telephony/cdma/utk/ChannelStatus;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/cdma/utk/ChannelStatus;->setStatus(I)V

    .line 590
    iget-boolean v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpServerChannel;->mIsSocketReady:Z

    if-nez v1, :cond_0

    .line 591
    const/4 v0, 0x1

    .line 592
    const-string/jumbo v1, "TcpServerChannel"

    const-string/jumbo v2, " linkEstablish, ret = BipConstants.RESULT_ERROR"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 595
    :cond_0
    return v0
.end method
