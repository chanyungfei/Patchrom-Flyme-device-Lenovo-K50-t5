.class Lcom/android/internal/telephony/cdma/utk/TcpReceiver;
.super Lcom/android/internal/telephony/cdma/utk/BipRunnable;
.source "BipChannel.java"


# instance fields
.field private mBufSize:I

.field private mInStream:Ljava/io/InputStream;


# direct methods
.method constructor <init>(Ljava/net/Socket;ILcom/android/internal/telephony/cdma/utk/BipChannel;)V
    .locals 3
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "bufSize"    # I
    .param p3, "ch"    # Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .prologue
    .line 997
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/BipRunnable;-><init>()V

    .line 998
    iput-object p3, p0, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->mCaller:Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .line 999
    iput p2, p0, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->mBufSize:I

    .line 1003
    :try_start_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->mInStream:Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    :goto_0
    return-void

    .line 1004
    :catch_0
    move-exception v0

    .line 1005
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v1, "TcpReceiver"

    const-string/jumbo v2, " get input stream fail"

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 1011
    const-string/jumbo v4, "TcpReceiver"

    const-string/jumbo v5, " enter TcpReceiver Thread"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1013
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->mRun:Z

    if-eqz v4, :cond_2

    .line 1014
    iget v4, p0, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->mBufSize:I

    new-array v3, v4, [B

    .line 1015
    .local v3, "tmp":[B
    const/4 v2, 0x0

    .line 1019
    .local v2, "readLen":I
    :try_start_0
    const-string/jumbo v4, "TcpReceiver"

    const-string/jumbo v5, " wait data comming..."

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1020
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v4, v3}, Ljava/io/InputStream;->read([B)I

    move-result v2

    .line 1021
    const-string/jumbo v4, "TcpReceiver"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, " read data len="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    if-lez v2, :cond_0

    .line 1025
    iget v4, p0, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->mBufSize:I

    if-ge v2, v4, :cond_1

    .line 1026
    new-array v0, v2, [B

    .line 1027
    .local v0, "buf":[B
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v3, v4, v0, v5, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 1032
    :goto_1
    const/4 v4, 0x1

    .line 1033
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1032
    invoke-virtual {p0, v4, v5, v6, v0}, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->sendMessageToChannel(IIILjava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1035
    .end local v0    # "buf":[B
    :catch_0
    move-exception v1

    .line 1036
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "TcpReceiver"

    const-string/jumbo v5, " catch IOException"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 1029
    .end local v1    # "e":Ljava/io/IOException;
    :cond_1
    move-object v0, v3

    .restart local v0    # "buf":[B
    goto :goto_1

    .line 1041
    .end local v0    # "buf":[B
    .end local v2    # "readLen":I
    .end local v3    # "tmp":[B
    :cond_2
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/TcpReceiver;->mInStream:Ljava/io/InputStream;

    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 1046
    :goto_2
    const-string/jumbo v4, "TcpReceiver"

    const-string/jumbo v5, " exit TcpReceiver Thread"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1010
    return-void

    .line 1042
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2
.end method
