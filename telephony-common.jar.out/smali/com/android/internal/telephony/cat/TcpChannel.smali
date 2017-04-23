.class Lcom/android/internal/telephony/cat/TcpChannel;
.super Lcom/android/internal/telephony/cat/Channel;
.source "Channel.java"


# static fields
.field private static final TCP_CONN_TIMEOUT:I = 0x3a98


# instance fields
.field mInput:Ljava/io/DataInputStream;

.field mOutput:Ljava/io/BufferedOutputStream;

.field mSocket:Ljava/net/Socket;

.field rt:Ljava/lang/Thread;


# direct methods
.method static synthetic -wrap0(Lcom/android/internal/telephony/cat/TcpChannel;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/telephony/cat/TcpChannel;->onOpenChannelCompleted()V

    return-void
.end method

.method constructor <init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/BipService;)V
    .locals 1
    .param p1, "cid"    # I
    .param p2, "linkMode"    # I
    .param p3, "protocolType"    # I
    .param p4, "address"    # Ljava/net/InetAddress;
    .param p5, "port"    # I
    .param p6, "bufferSize"    # I
    .param p7, "handler"    # Lcom/android/internal/telephony/cat/CatService;
    .param p8, "bipManager"    # Lcom/android/internal/telephony/cat/BipService;

    .prologue
    const/4 v0, 0x0

    .line 1049
    invoke-direct/range {p0 .. p8}, Lcom/android/internal/telephony/cat/Channel;-><init>(IIILjava/net/InetAddress;IILcom/android/internal/telephony/cat/CatService;Lcom/android/internal/telephony/cat/BipService;)V

    .line 1042
    iput-object v0, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 1043
    iput-object v0, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    .line 1044
    iput-object v0, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    .line 1048
    return-void
.end method

.method private onOpenChannelCompleted()V
    .locals 5

    .prologue
    .line 1128
    const/4 v1, 0x0

    .line 1130
    .local v1, "ret":I
    iget v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mChannelStatus:I

    const/4 v3, 0x4

    if-ne v2, v3, :cond_0

    .line 1132
    :try_start_0
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[TCP]stream is open"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1133
    new-instance v2, Ljava/io/DataInputStream;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    .line 1134
    new-instance v2, Ljava/io/BufferedOutputStream;

    iget-object v3, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v3}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    .line 1135
    new-instance v2, Ljava/lang/Thread;

    new-instance v3, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;

    iget-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    invoke-direct {v3, p0, v4}, Lcom/android/internal/telephony/cat/Channel$TcpReceiverThread;-><init>(Lcom/android/internal/telephony/cat/Channel;Ljava/io/DataInputStream;)V

    invoke-direct {v2, v3}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    iput-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->rt:Ljava/lang/Thread;

    .line 1136
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->rt:Ljava/lang/Thread;

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1148
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/TcpChannel;->checkBufferSize()I

    move-result v1

    .line 1149
    iget v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mBufferSize:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    .line 1150
    iget v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mBufferSize:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    .line 1153
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mBipService:Lcom/android/internal/telephony/cat/BipService;

    invoke-virtual {v2, v1, p0}, Lcom/android/internal/telephony/cat/BipService;->openChannelCompleted(ILcom/android/internal/telephony/cat/Channel;)V

    .line 1127
    return-void

    .line 1137
    :catch_0
    move-exception v0

    .line 1138
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[TCP]Fail to create data stream"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1140
    const/4 v1, 0x5

    .line 1141
    goto :goto_0

    .line 1144
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[TCP]socket is not open"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1145
    const/4 v1, 0x5

    .line 1146
    goto :goto_0
.end method


# virtual methods
.method public closeChannel()I
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x0

    .line 1156
    const/4 v1, 0x0

    .line 1157
    .local v1, "ret":I
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[TCP]closeChannel."

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1159
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->rt:Ljava/lang/Thread;

    if-eqz v2, :cond_0

    .line 1160
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/TcpChannel;->requestStop()V

    .line 1161
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->rt:Ljava/lang/Thread;

    .line 1164
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    if-eqz v2, :cond_1

    .line 1165
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    invoke-virtual {v2}, Ljava/io/DataInputStream;->close()V

    .line 1167
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    if-eqz v2, :cond_2

    .line 1168
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v2}, Ljava/io/BufferedOutputStream;->close()V

    .line 1170
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    if-eqz v2, :cond_3

    .line 1171
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v2}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1176
    :cond_3
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 1177
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    .line 1178
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    .line 1179
    :goto_0
    iput v5, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mChannelStatus:I

    .line 1181
    return v1

    .line 1173
    :catch_0
    move-exception v0

    .line 1174
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[TCP]closeChannel - IOE"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1176
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 1177
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    .line 1178
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    goto :goto_0

    .line 1175
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    .line 1176
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 1177
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    .line 1178
    iput-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    .line 1179
    iput v5, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mChannelStatus:I

    .line 1175
    throw v2
.end method

.method public getTxAvailBufferSize()I
    .locals 4

    .prologue
    .line 1298
    iget-object v1, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    array-length v1, v1

    iget v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    sub-int v0, v1, v2

    .line 1299
    .local v0, "txRemaining":I
    const-string/jumbo v1, "[BIP]"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[TCP]available tx buffer size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1300
    return v0
.end method

.method public openChannel(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/net/Network;)I
    .locals 4
    .param p1, "cmdMsg"    # Lcom/android/internal/telephony/cat/BipCmdMessage;
    .param p2, "network"    # Landroid/net/Network;

    .prologue
    .line 1053
    const/4 v0, 0x0

    .line 1054
    .local v0, "ret":I
    const/4 v1, 0x0

    .line 1055
    .local v1, "t_openChannelThread":Ljava/lang/Thread;
    iput-object p2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mNetwork:Landroid/net/Network;

    .line 1057
    iget v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mLinkMode:I

    if-nez v2, :cond_1

    .line 1058
    new-instance v1, Ljava/lang/Thread;

    .end local v1    # "t_openChannelThread":Ljava/lang/Thread;
    new-instance v2, Lcom/android/internal/telephony/cat/TcpChannel$1;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/TcpChannel$1;-><init>(Lcom/android/internal/telephony/cat/TcpChannel;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1098
    .local v1, "t_openChannelThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1099
    const/16 v0, 0xa

    .line 1125
    .end local v1    # "t_openChannelThread":Ljava/lang/Thread;
    :cond_0
    :goto_0
    return v0

    .line 1100
    .local v1, "t_openChannelThread":Ljava/lang/Thread;
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mLinkMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 1101
    new-instance v1, Ljava/lang/Thread;

    .end local v1    # "t_openChannelThread":Ljava/lang/Thread;
    new-instance v2, Lcom/android/internal/telephony/cat/TcpChannel$2;

    invoke-direct {v2, p0}, Lcom/android/internal/telephony/cat/TcpChannel$2;-><init>(Lcom/android/internal/telephony/cat/TcpChannel;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 1114
    .local v1, "t_openChannelThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 1115
    const/4 v2, 0x4

    iput v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mChannelStatus:I

    .line 1117
    invoke-virtual {p0}, Lcom/android/internal/telephony/cat/TcpChannel;->checkBufferSize()I

    move-result v0

    .line 1118
    const/4 v2, 0x3

    if-ne v0, v2, :cond_2

    .line 1119
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[TCP]openChannel: buffer size is modified"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1120
    iget v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mBufferSize:I

    iput v2, p1, Lcom/android/internal/telephony/cat/BipCmdMessage;->mBufferSize:I

    .line 1122
    :cond_2
    iget v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mBufferSize:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    .line 1123
    iget v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mBufferSize:I

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    goto :goto_0
.end method

.method public receiveData(ILcom/android/internal/telephony/cat/ReceiveDataResult;)I
    .locals 9
    .param p1, "requestSize"    # I
    .param p2, "rdr"    # Lcom/android/internal/telephony/cat/ReceiveDataResult;

    .prologue
    const/4 v8, 0x5

    .line 1304
    const/4 v1, 0x0

    .line 1305
    .local v1, "ret":I
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[TCP]new receiveData method"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1307
    if-nez p2, :cond_0

    .line 1308
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[TCP]rdr is null"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1309
    return v8

    .line 1312
    :cond_0
    const-string/jumbo v2, "[BIP]"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[TCP]receiveData "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1313
    const-string/jumbo v4, "/"

    .line 1312
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 1313
    iget v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    .line 1312
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1315
    new-array v2, p1, [B

    iput-object v2, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 1316
    iget v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    if-lt v2, p1, :cond_3

    .line 1317
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[TCP]rx buffer has enough data"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1319
    :try_start_0
    iget-object v3, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1320
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    iget v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    iget-object v5, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    const/4 v6, 0x0

    invoke-static {v2, v4, v5, v6, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1321
    iget v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    add-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    .line 1322
    iget v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    sub-int/2addr v2, p1

    iput v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    .line 1323
    iget v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    if-nez v2, :cond_1

    .line 1324
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    .line 1326
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    iput v2, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I

    .line 1327
    iget v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    iget v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mBufferSize:I

    if-ge v2, v4, :cond_2

    .line 1328
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v4, ">= [TCP]notify to read data more to mRxBuffer"

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1329
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_2
    :try_start_2
    monitor-exit v3
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1336
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[TCP]rx buffer has enough data - end"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1358
    :goto_0
    return v1

    .line 1319
    :catchall_0
    move-exception v2

    :try_start_3
    monitor-exit v3

    throw v2
    :try_end_3
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    .line 1332
    :catch_0
    move-exception v0

    .line 1333
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[TCP]fail copy rx buffer out 1"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1334
    return v8

    .line 1338
    .end local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    :cond_3
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[TCP]rx buffer is insufficient - being"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1340
    :try_start_4
    iget-object v3, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mLock:Ljava/lang/Object;

    monitor-enter v3
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_1

    .line 1341
    :try_start_5
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    iget v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    iget-object v5, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    iget v6, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    const/4 v7, 0x0

    invoke-static {v2, v4, v5, v7, v6}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1342
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    .line 1343
    const/4 v2, 0x0

    iput v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    .line 1345
    iget v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    iget v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mBufferSize:I

    if-ge v2, v4, :cond_4

    .line 1346
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v4, "< [TCP]notify to read data more to mRxBuffer"

    invoke-static {v2, v4}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1347
    iget-object v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->notify()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    :cond_4
    :try_start_6
    monitor-exit v3

    .line 1350
    const/4 v2, 0x0

    iput v2, p2, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_6
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1351
    const/16 v1, 0x9

    .line 1356
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[TCP]rx buffer is insufficient - end"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1340
    :catchall_1
    move-exception v2

    :try_start_7
    monitor-exit v3

    throw v2
    :try_end_7
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_7} :catch_1

    .line 1352
    :catch_1
    move-exception v0

    .line 1353
    .restart local v0    # "e":Ljava/lang/IndexOutOfBoundsException;
    const-string/jumbo v2, "[BIP]"

    const-string/jumbo v3, "[TCP]fail copy rx buffer out 2"

    invoke-static {v2, v3}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1354
    return v8
.end method

.method public receiveData(I)Lcom/android/internal/telephony/cat/ReceiveDataResult;
    .locals 12
    .param p1, "requestCount"    # I

    .prologue
    .line 1185
    new-instance v7, Lcom/android/internal/telephony/cat/ReceiveDataResult;

    invoke-direct {v7}, Lcom/android/internal/telephony/cat/ReceiveDataResult;-><init>()V

    .line 1186
    .local v7, "ret":Lcom/android/internal/telephony/cat/ReceiveDataResult;
    new-array v8, p1, [B

    iput-object v8, v7, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    .line 1187
    const-string/jumbo v8, "[BIP]"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[TCP]receiveData "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, "/"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1188
    const-string/jumbo v10, "/"

    .line 1187
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 1188
    iget v10, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    .line 1187
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1190
    iget v8, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    if-lt v8, p1, :cond_1

    .line 1192
    :try_start_0
    const-string/jumbo v8, "[BIP]"

    const-string/jumbo v9, "[TCP]Start to copy data from buffer"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1194
    iget-object v8, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    iget v9, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    iget-object v10, v7, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    const/4 v11, 0x0

    invoke-static {v8, v9, v10, v11, p1}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1195
    iget v8, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    sub-int/2addr v8, p1

    iput v8, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    .line 1196
    iget v8, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    add-int/2addr v8, p1

    iput v8, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    .line 1197
    iget v8, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    iput v8, v7, Lcom/android/internal/telephony/cat/ReceiveDataResult;->remainingCount:I
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_3

    .line 1241
    :cond_0
    :goto_0
    return-object v7

    .line 1201
    :cond_1
    move v6, p1

    .line 1202
    .local v6, "needCopy":I
    iget v0, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    .line 1203
    .local v0, "canCopy":I
    const/4 v3, 0x0

    .line 1204
    .local v3, "countCopied":I
    const/4 v1, 0x0

    .line 1206
    .local v1, "canExitLoop":Z
    :goto_1
    if-nez v1, :cond_0

    .line 1207
    if-le v6, v0, :cond_2

    .line 1209
    :try_start_1
    iget-object v8, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    iget v9, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    iget-object v10, v7, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v8, v9, v10, v3, v0}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1211
    iget v8, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    add-int/2addr v8, v0

    iput v8, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    .line 1212
    iget v8, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    sub-int/2addr v8, v0

    iput v8, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferCount:I
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1213
    add-int/2addr v3, v0

    .line 1214
    sub-int/2addr v6, v0

    .line 1228
    :goto_2
    if-nez v6, :cond_3

    .line 1229
    const/4 v1, 0x1

    goto :goto_1

    .line 1219
    :cond_2
    :try_start_2
    iget v8, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    iget-object v10, v7, Lcom/android/internal/telephony/cat/ReceiveDataResult;->buffer:[B

    invoke-static {v8, v9, v10, v3, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1221
    iget v8, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I

    add-int/2addr v8, v6

    iput v8, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1222
    add-int/2addr v3, v6

    .line 1223
    const/4 v6, 0x0

    goto :goto_2

    .line 1232
    :cond_3
    :try_start_3
    iget-object v8, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mInput:Ljava/io/DataInputStream;

    iget-object v9, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    iget-object v10, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBuffer:[B

    array-length v10, v10

    const/4 v11, 0x0

    invoke-virtual {v8, v9, v11, v10}, Ljava/io/DataInputStream;->read([BII)I

    move-result v2

    .line 1233
    .local v2, "count":I
    iput v2, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferCount:I

    .line 1234
    const/4 v8, 0x0

    iput v8, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mRxBufferOffset:I
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 1235
    .end local v2    # "count":I
    :catch_0
    move-exception v4

    .line 1236
    .local v4, "e":Ljava/io/IOException;
    const-string/jumbo v8, "[BIP]"

    const-string/jumbo v9, "[TCP]receiveData - IOE"

    invoke-static {v8, v9}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 1224
    .end local v4    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v5

    .local v5, "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_2

    .line 1215
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    :catch_2
    move-exception v5

    .restart local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_2

    .line 1198
    .end local v0    # "canCopy":I
    .end local v1    # "canExitLoop":Z
    .end local v3    # "countCopied":I
    .end local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v6    # "needCopy":I
    :catch_3
    move-exception v5

    .restart local v5    # "e":Ljava/lang/IndexOutOfBoundsException;
    goto :goto_0
.end method

.method public sendData([BI)I
    .locals 12
    .param p1, "data"    # [B
    .param p2, "mode"    # I

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x5

    .line 1245
    const/4 v3, 0x0

    .line 1246
    .local v3, "ret":I
    iget-object v6, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    array-length v6, v6

    iget v7, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    sub-int v5, v6, v7

    .line 1247
    .local v5, "txRemaining":I
    const/4 v4, 0x0

    .line 1249
    .local v4, "tmpBuffer":[B
    if-nez p1, :cond_0

    .line 1250
    const-string/jumbo v6, "[BIP]"

    const-string/jumbo v7, "[TCP]sendData - data null:"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1251
    return v10

    .line 1255
    :cond_0
    :try_start_0
    const-string/jumbo v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[TCP]sendData: size of data:"

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

    .line 1256
    const-string/jumbo v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[TCP]sendData: size of buffer:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1257
    const-string/jumbo v8, " count:"

    .line 1256
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1257
    iget v8, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    .line 1256
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1259
    iget v6, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    if-nez v6, :cond_2

    if-ne v11, p2, :cond_2

    .line 1260
    move-object v4, p1

    .line 1261
    .local v4, "tmpBuffer":[B
    array-length v6, p1

    iput v6, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    .line 1275
    :goto_0
    if-ne p2, v11, :cond_1

    .line 1276
    iget v6, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mChannelStatus:I
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2

    const/4 v7, 0x4

    if-ne v6, v7, :cond_1

    .line 1278
    :try_start_1
    const-string/jumbo v6, "[BIP]"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[TCP]SEND_DATA_MODE_IMMEDIATE:"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    array-length v8, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1279
    const-string/jumbo v8, " count:"

    .line 1278
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1279
    iget v8, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    .line 1278
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1280
    iget-object v6, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    iget v7, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    const/4 v8, 0x0

    invoke-virtual {v6, v4, v8, v7}, Ljava/io/BufferedOutputStream;->write([BII)V

    .line 1281
    iget-object v6, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mOutput:Ljava/io/BufferedOutputStream;

    invoke-virtual {v6}, Ljava/io/BufferedOutputStream;->flush()V

    .line 1282
    const/4 v6, 0x0

    iput v6, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mTxBufferCount:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2

    .line 1294
    .end local v4    # "tmpBuffer":[B
    :cond_1
    :goto_1
    return v3

    .line 1264
    .local v4, "tmpBuffer":[B
    :cond_2
    :try_start_2
    array-length v6, p1

    if-lt v5, v6, :cond_3

    .line 1265
    iget-object v6, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mTxBuffer:[B

    iget v7, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    array-length v8, p1

    const/4 v9, 0x0

    invoke-static {p1, v9, v6, v7, v8}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1266
    iget v6, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mTxBufferCount:I

    array-length v7, p1

    add-int/2addr v6, v7

    iput v6, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mTxBufferCount:I
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2

    .line 1273
    :goto_2
    :try_start_3
    iget-object v4, p0, Lcom/android/internal/telephony/cat/TcpChannel;->mTxBuffer:[B
    :try_end_3
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2

    .local v4, "tmpBuffer":[B
    goto :goto_0

    .line 1268
    .local v4, "tmpBuffer":[B
    :cond_3
    :try_start_4
    const-string/jumbo v6, "[BIP]"

    const-string/jumbo v7, "[TCP]sendData - tx buffer is not enough"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_2

    .line 1270
    :catch_0
    move-exception v1

    .line 1271
    .local v1, "e":Ljava/lang/IndexOutOfBoundsException;
    return v10

    .line 1283
    .end local v1    # "e":Ljava/lang/IndexOutOfBoundsException;
    .local v4, "tmpBuffer":[B
    :catch_1
    move-exception v0

    .line 1284
    .local v0, "e":Ljava/io/IOException;
    :try_start_5
    const-string/jumbo v6, "[BIP]"

    const-string/jumbo v7, "[TCP]sendData - Exception"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1285
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_5
    .catch Ljava/lang/NullPointerException; {:try_start_5 .. :try_end_5} :catch_2

    .line 1286
    return v10

    .line 1289
    .end local v0    # "e":Ljava/io/IOException;
    .end local v4    # "tmpBuffer":[B
    :catch_2
    move-exception v2

    .line 1290
    .local v2, "ne":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "[BIP]"

    const-string/jumbo v7, "[UDP]sendData NE"

    invoke-static {v6, v7}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1291
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1292
    const/4 v3, 0x5

    goto :goto_1
.end method
