.class public Lcom/android/internal/telephony/cat/Channel$UICCServerThread;
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
    name = "UICCServerThread"
.end annotation


# static fields
.field private static final RETRY_ACCEPT_SLEEPTIME:I = 0x64

.field private static final RETRY_COUNT:I = 0x4


# instance fields
.field di:Ljava/io/DataInputStream;

.field mReTryCount:I

.field mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

.field final synthetic this$0:Lcom/android/internal/telephony/cat/Channel;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/Channel;Lcom/android/internal/telephony/cat/TcpServerChannel;)V
    .locals 2
    .param p1, "this$0"    # Lcom/android/internal/telephony/cat/Channel;
    .param p2, "tcpServerChannel"    # Lcom/android/internal/telephony/cat/TcpServerChannel;

    .prologue
    const/4 v1, 0x0

    .line 526
    iput-object p1, p0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 520
    iput-object v1, p0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    .line 521
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mReTryCount:I

    .line 522
    iput-object v1, p0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->di:Ljava/io/DataInputStream;

    .line 528
    const-string/jumbo v0, "[BIP]"

    const-string/jumbo v1, "OpenServerSocketThread Init"

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 529
    iput-object p2, p0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    .line 526
    return-void
.end method


# virtual methods
.method public run()V
    .locals 24

    .prologue
    .line 535
    const/16 v18, 0x578

    move/from16 v0, v18

    new-array v13, v0, [B

    .line 537
    .local v13, "localBuffer":[B
    const-string/jumbo v18, "[BIP]"

    const-string/jumbo v19, "[UICC]ServerTr: Run Enter"

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 539
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mChannelStatus:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_0

    .line 540
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cat/TcpServerChannel;->getTcpStatus()B

    move-result v18

    const/16 v19, 0x40

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_6

    .line 541
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v18, v0

    const/16 v19, 0x40

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/telephony/cat/TcpServerChannel;->setTcpStatus(BZ)V

    .line 546
    :goto_1
    :try_start_0
    const-string/jumbo v18, "[BIP]"

    const-string/jumbo v19, "[UICC]ServerTr:Listen to wait client connection..."

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 547
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 583
    const-string/jumbo v18, "[BIP]"

    const-string/jumbo v19, "[UICC]ServerTr:Receive a client connection."

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v18, v0

    const/16 v19, -0x80

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/telephony/cat/TcpServerChannel;->setTcpStatus(BZ)V

    .line 585
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 587
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v18, v0

    new-instance v19, Ljava/io/DataInputStream;

    .line 588
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v20

    .line 587
    invoke-direct/range {v19 .. v20}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4

    .line 593
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->di:Ljava/io/DataInputStream;

    .line 595
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    .line 597
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v18, v0

    new-instance v19, Ljava/io/BufferedOutputStream;

    .line 598
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mSocket:Ljava/net/Socket;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v20

    .line 597
    invoke-direct/range {v19 .. v20}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    iput-object v0, v1, Lcom/android/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_5

    .line 604
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/cat/Channel;->-get0(Lcom/android/internal/telephony/cat/Channel;)Z

    move-result v18

    if-nez v18, :cond_c

    .line 605
    const/4 v10, 0x1

    .line 606
    .local v10, "goOnRead":Z
    const/16 v17, 0x0

    .line 607
    .local v17, "recvLen":I
    const-string/jumbo v18, "[BIP]"

    const-string/jumbo v19, "[UICC]ServerTr: Start to read data from network"

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 609
    const/16 v18, 0x0

    :try_start_3
    move/from16 v0, v18

    invoke-static {v13, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 610
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->di:Ljava/io/DataInputStream;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/io/DataInputStream;->read([B)I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_6

    move-result v17

    .line 627
    const-string/jumbo v18, "[BIP]"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "[UICC]ServerTr: Receive data:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 628
    if-ltz v17, :cond_11

    .line 629
    const/16 v16, 0x0

    .line 630
    .local v16, "rSize":I
    const/4 v15, 0x0

    .line 631
    .local v15, "localBufferOffset":I
    const/4 v14, 0x0

    .line 632
    .local v14, "localBufferCount":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 634
    :try_start_4
    const-string/jumbo v18, "[BIP]"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "[UICC]ServerTr:mRxBufferCount: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 635
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    move/from16 v21, v0

    .line 634
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    move/from16 v18, v0

    if-nez v18, :cond_d

    .line 637
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    move-object/from16 v18, v0

    const/16 v20, 0x0

    const/16 v21, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v18

    move/from16 v2, v21

    move/from16 v3, v17

    invoke-static {v13, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 638
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    move/from16 v0, v17

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 639
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 640
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    move/from16 v20, v0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/Channel;->dataAvailable(I)V

    .line 660
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    move/from16 v20, v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move/from16 v0, v18

    move/from16 v1, v20

    if-lt v0, v1, :cond_10

    .line 662
    :try_start_5
    const-string/jumbo v18, "[BIP]"

    const-string/jumbo v20, "[UICC]ServerTr:mRxBuffer is full."

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 663
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->wait()V
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_8
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 675
    :cond_4
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    move/from16 v18, v0

    if-lez v18, :cond_3

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    move/from16 v18, v0

    if-lez v18, :cond_5

    .line 677
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    move/from16 v20, v0

    .line 678
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    move/from16 v22, v0

    const/16 v23, 0x0

    .line 677
    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v23

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 680
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    move/from16 v18, v0

    .line 681
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    move/from16 v21, v0

    sub-int v20, v20, v21

    .line 680
    move/from16 v0, v18

    move/from16 v1, v20

    if-gt v0, v1, :cond_f

    .line 682
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    move/from16 v16, v0

    .line 687
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    move/from16 v20, v0

    .line 686
    move-object/from16 v0, v18

    move/from16 v1, v20

    move/from16 v2, v16

    invoke-static {v13, v15, v0, v1, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 688
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    move/from16 v20, v0

    add-int v20, v20, v16

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 689
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    move/from16 v20, v0

    sub-int v20, v20, v16

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    .line 690
    add-int v15, v15, v16

    .line 691
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto/16 :goto_3

    .line 632
    :catchall_0
    move-exception v18

    monitor-exit v19

    throw v18

    .line 543
    .end local v10    # "goOnRead":Z
    .end local v14    # "localBufferCount":I
    .end local v15    # "localBufferOffset":I
    .end local v16    # "rSize":I
    .end local v17    # "recvLen":I
    :cond_6
    const-string/jumbo v18, "[BIP]"

    const-string/jumbo v19, "[UICC]ServerTr:TCP status = TCP_STATUS_LISTEN"

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 548
    :catch_0
    move-exception v6

    .line 549
    .local v6, "e":Ljava/io/IOException;
    const-string/jumbo v18, "[BIP]"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "[UICC]ServerTr:Fail to accept server socket retry:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    .line 550
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mReTryCount:I

    move/from16 v20, v0

    .line 549
    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 551
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mReTryCount:I

    move/from16 v18, v0

    const/16 v19, 0x4

    move/from16 v0, v19

    move/from16 v1, v18

    if-lt v0, v1, :cond_7

    .line 552
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mReTryCount:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, 0x1

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mReTryCount:I

    .line 554
    const-wide/16 v18, 0x64

    :try_start_7
    invoke-static/range {v18 .. v19}, Ljava/lang/Thread;->sleep(J)V
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    goto/16 :goto_0

    .line 555
    :catch_1
    move-exception v11

    .line 556
    .local v11, "ie":Ljava/lang/InterruptedException;
    const-string/jumbo v18, "[BIP]"

    const-string/jumbo v19, "[UICC]ServerTr:IE: sleep for SS accept retry."

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 560
    .end local v11    # "ie":Ljava/lang/InterruptedException;
    :cond_7
    const/16 v18, 0x0

    move/from16 v0, v18

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mReTryCount:I

    .line 562
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    move-object/from16 v18, v0

    if-eqz v18, :cond_8

    .line 563
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->close()V

    .line 565
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 566
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_2

    .line 572
    :cond_9
    :goto_5
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mSSocket:Ljava/net/ServerSocket;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/net/ServerSocket;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_3

    .line 576
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/cat/Channel;->clearChannelBuffer(Z)V

    .line 577
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cat/Channel;->closeChannel()I

    .line 578
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel;->mBipChannelManager:Lcom/android/internal/telephony/cat/BipChannelManager;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mChannelId:I

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/cat/BipChannelManager;->removeChannel(I)I

    .line 579
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/telephony/cat/TcpServerChannel;->setTcpStatus(BZ)V

    .line 533
    return-void

    .line 568
    :catch_2
    move-exception v8

    .line 569
    .local v8, "e1":Ljava/io/IOException;
    const-string/jumbo v18, "[BIP]"

    const-string/jumbo v19, "[UICC]ServerTr:IOE: input/output stream close."

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    .line 573
    .end local v8    # "e1":Ljava/io/IOException;
    :catch_3
    move-exception v9

    .line 574
    .local v9, "e2":Ljava/io/IOException;
    const-string/jumbo v18, "[BIP]"

    const-string/jumbo v19, "[UICC]ServerTr:IOE: socket close."

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_6

    .line 589
    .end local v6    # "e":Ljava/io/IOException;
    .end local v9    # "e2":Ljava/io/IOException;
    :catch_4
    move-exception v12

    .line 590
    .local v12, "ioe":Ljava/io/IOException;
    const-string/jumbo v18, "[BIP]"

    const-string/jumbo v19, "[UICC]ServerTr:IOException: getInputStream."

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 599
    .end local v12    # "ioe":Ljava/io/IOException;
    :catch_5
    move-exception v12

    .line 600
    .restart local v12    # "ioe":Ljava/io/IOException;
    const-string/jumbo v18, "[BIP]"

    const-string/jumbo v19, "[UICC]ServerTr:IOException: getOutputStream."

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 611
    .end local v12    # "ioe":Ljava/io/IOException;
    .restart local v10    # "goOnRead":Z
    .restart local v17    # "recvLen":I
    :catch_6
    move-exception v6

    .line 612
    .restart local v6    # "e":Ljava/io/IOException;
    const-string/jumbo v18, "[BIP]"

    const-string/jumbo v19, "[UICC]ServerTr:read io exception."

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 613
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-static {v13, v0}, Ljava/util/Arrays;->fill([BB)V

    .line 615
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    move-object/from16 v18, v0

    if-eqz v18, :cond_a

    .line 616
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->close()V

    .line 618
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    move-object/from16 v18, v0

    if-eqz v18, :cond_b

    .line 619
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedOutputStream;->close()V

    .line 621
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/cat/Channel;->clearChannelBuffer(Z)V
    :try_end_a
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_a} :catch_7

    .line 720
    .end local v6    # "e":Ljava/io/IOException;
    .end local v10    # "goOnRead":Z
    .end local v17    # "recvLen":I
    :cond_c
    :goto_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/cat/Channel;->-get0(Lcom/android/internal/telephony/cat/Channel;)Z

    move-result v18

    if-eqz v18, :cond_0

    .line 721
    const-string/jumbo v18, "[BIP]"

    const-string/jumbo v19, "[UICC]ServerTr: stop"

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 622
    .restart local v6    # "e":Ljava/io/IOException;
    .restart local v10    # "goOnRead":Z
    .restart local v17    # "recvLen":I
    :catch_7
    move-exception v8

    .line 623
    .restart local v8    # "e1":Ljava/io/IOException;
    const-string/jumbo v18, "[BIP]"

    const-string/jumbo v19, "[UICC]ServerTr:IOException input stream."

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_7

    .line 642
    .end local v6    # "e":Ljava/io/IOException;
    .end local v8    # "e1":Ljava/io/IOException;
    .restart local v14    # "localBufferCount":I
    .restart local v15    # "localBufferOffset":I
    .restart local v16    # "rSize":I
    :cond_d
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    move-object/from16 v21, v0

    .line 643
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    move/from16 v22, v0

    .line 642
    const/16 v23, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    move-object/from16 v2, v21

    move/from16 v3, v23

    move/from16 v4, v22

    invoke-static {v0, v1, v2, v3, v4}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 645
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    move/from16 v20, v0

    sub-int v18, v18, v20

    move/from16 v0, v17

    move/from16 v1, v18

    if-gt v0, v1, :cond_e

    .line 646
    move/from16 v16, v17

    .line 651
    :goto_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBuffer:[B

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    move/from16 v20, v0

    const/16 v21, 0x0

    move/from16 v0, v21

    move-object/from16 v1, v18

    move/from16 v2, v20

    move/from16 v3, v16

    invoke-static {v13, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 654
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    move/from16 v20, v0

    add-int v20, v20, v16

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    .line 655
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/cat/Channel;->mRxBufferOffset:I

    .line 656
    const-string/jumbo v18, "[BIP]"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v21, "[UICC]ServerTr:rSize: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 657
    const-string/jumbo v21, ", mRxBufferCacheCount: "

    .line 656
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    .line 657
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    move/from16 v21, v0

    .line 656
    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    .line 648
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    move/from16 v20, v0

    sub-int v16, v18, v20

    move/from16 v15, v16

    .line 649
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    sub-int v20, v17, v16

    move/from16 v0, v20

    move-object/from16 v1, v18

    iput v0, v1, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCacheCount:I

    goto/16 :goto_8

    .line 664
    :catch_8
    move-exception v7

    .line 665
    .local v7, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v18, "[BIP]"

    const-string/jumbo v20, "[UICC]ServerTr:IE :mRxBufferCount >= mBufferSize"

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 668
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/cat/TcpServerChannel;->isCloseBackToTcpListen()Z

    move-result v18

    .line 667
    if-eqz v18, :cond_4

    .line 669
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    const/16 v20, 0x1

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/Channel;->clearChannelBuffer(Z)V

    .line 670
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v18, v0

    const/16 v20, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/cat/TcpServerChannel;->setCloseBackToTcpListen(Z)V
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 671
    const/4 v10, 0x0

    .end local v7    # "e":Ljava/lang/InterruptedException;
    :goto_9
    monitor-exit v19

    .line 715
    if-eqz v10, :cond_c

    .line 718
    const-string/jumbo v18, "[BIP]"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v20, "[UICC]ServerTr: buffer data:"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 684
    :cond_f
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mBufferSize:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget v0, v0, Lcom/android/internal/telephony/cat/Channel;->mRxBufferCount:I

    move/from16 v20, v0
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    sub-int v16, v18, v20

    goto/16 :goto_4

    .line 694
    :cond_10
    const/4 v10, 0x1

    .line 695
    goto :goto_9

    .line 700
    .end local v14    # "localBufferCount":I
    .end local v15    # "localBufferOffset":I
    .end local v16    # "rSize":I
    :cond_11
    const-string/jumbo v18, "[BIP]"

    const-string/jumbo v19, "[UICC]ServerTr: client diconnected"

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 702
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    move-object/from16 v18, v0

    if-eqz v18, :cond_12

    .line 703
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mInput:Ljava/io/DataInputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/DataInputStream;->close()V

    .line 705
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    move-object/from16 v18, v0

    if-eqz v18, :cond_13

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/android/internal/telephony/cat/TcpServerChannel;->mOutput:Ljava/io/BufferedOutputStream;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/io/BufferedOutputStream;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_9

    .line 711
    :cond_13
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->this$0:Lcom/android/internal/telephony/cat/Channel;

    move-object/from16 v18, v0

    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Lcom/android/internal/telephony/cat/Channel;->clearChannelBuffer(Z)V

    .line 712
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/cat/Channel$UICCServerThread;->mTcpServerChannel:Lcom/android/internal/telephony/cat/TcpServerChannel;

    move-object/from16 v18, v0

    const/16 v19, 0x40

    const/16 v20, 0x1

    invoke-virtual/range {v18 .. v20}, Lcom/android/internal/telephony/cat/TcpServerChannel;->setTcpStatus(BZ)V

    goto/16 :goto_7

    .line 708
    :catch_9
    move-exception v6

    .line 709
    .restart local v6    # "e":Ljava/io/IOException;
    const-string/jumbo v18, "[BIP]"

    const-string/jumbo v19, "[UICC]ServerTr:len<0,IOException input stream."

    invoke-static/range {v18 .. v19}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a
.end method
