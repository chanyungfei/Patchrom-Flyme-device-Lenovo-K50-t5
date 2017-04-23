.class Lcom/android/internal/telephony/cat/TcpChannel$1;
.super Ljava/lang/Object;
.source "Channel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/cat/TcpChannel;->openChannel(Lcom/android/internal/telephony/cat/BipCmdMessage;Landroid/net/Network;)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/cat/TcpChannel;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/cat/TcpChannel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/cat/TcpChannel;

    .prologue
    .line 1058
    iput-object p1, p0, Lcom/android/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/TcpChannel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized run()V
    .locals 8

    .prologue
    monitor-enter p0

    .line 1060
    :try_start_0
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "[TCP]running TCP channel thread"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1061
    const/4 v3, 0x0

    .line 1063
    .local v3, "socketAddress":Ljava/net/InetSocketAddress;
    :try_start_1
    iget-object v5, p0, Lcom/android/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/TcpChannel;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/TcpChannel;

    iget-object v6, v6, Lcom/android/internal/telephony/cat/TcpChannel;->mNetwork:Landroid/net/Network;

    invoke-virtual {v6}, Landroid/net/Network;->getSocketFactory()Ljavax/net/SocketFactory;

    move-result-object v6

    invoke-virtual {v6}, Ljavax/net/SocketFactory;->createSocket()Ljava/net/Socket;

    move-result-object v6

    iput-object v6, v5, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    .line 1065
    iget-object v5, p0, Lcom/android/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/TcpChannel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljava/net/Socket;->setSoLinger(ZI)V

    .line 1066
    new-instance v4, Ljava/net/InetSocketAddress;

    iget-object v5, p0, Lcom/android/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/TcpChannel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TcpChannel;->mAddress:Ljava/net/InetAddress;

    iget-object v6, p0, Lcom/android/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/TcpChannel;

    iget v6, v6, Lcom/android/internal/telephony/cat/TcpChannel;->mPort:I

    invoke-direct {v4, v5, v6}, Ljava/net/InetSocketAddress;-><init>(Ljava/net/InetAddress;I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1067
    .local v4, "socketAddress":Ljava/net/InetSocketAddress;
    :try_start_2
    iget-object v5, p0, Lcom/android/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/TcpChannel;

    .end local v3    # "socketAddress":Ljava/net/InetSocketAddress;
    iget-object v5, v5, Lcom/android/internal/telephony/cat/TcpChannel;->mBipService:Lcom/android/internal/telephony/cat/BipService;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cat/BipService;->isTestSim()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1069
    iget-object v5, p0, Lcom/android/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/TcpChannel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/Socket;->setReuseAddress(Z)V

    .line 1070
    iget-object v5, p0, Lcom/android/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/TcpChannel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    new-instance v6, Ljava/net/InetSocketAddress;

    const/16 v7, 0x7d00

    invoke-direct {v6, v7}, Ljava/net/InetSocketAddress;-><init>(I)V

    invoke-virtual {v5, v6}, Ljava/net/Socket;->bind(Ljava/net/SocketAddress;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1073
    :cond_0
    :try_start_3
    iget-object v5, p0, Lcom/android/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/TcpChannel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    const/16 v6, 0x3a98

    invoke-virtual {v5, v4, v6}, Ljava/net/Socket;->connect(Ljava/net/SocketAddress;I)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1079
    :goto_0
    :try_start_4
    iget-object v5, p0, Lcom/android/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/TcpChannel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->isConnected()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1080
    iget-object v5, p0, Lcom/android/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/TcpChannel;

    const/4 v6, 0x4

    iput v6, v5, Lcom/android/internal/telephony/cat/TcpChannel;->mChannelStatus:I

    .line 1081
    iget-object v5, p0, Lcom/android/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/TcpChannel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TcpChannel;->mChannelStatusData:Lcom/android/internal/telephony/cat/ChannelStatus;

    const/16 v6, 0x80

    iput v6, v5, Lcom/android/internal/telephony/cat/ChannelStatus;->mChannelStatus:I
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    :goto_1
    move-object v3, v4

    .line 1095
    .end local v4    # "socketAddress":Ljava/net/InetSocketAddress;
    :goto_2
    :try_start_5
    iget-object v5, p0, Lcom/android/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/TcpChannel;

    invoke-static {v5}, Lcom/android/internal/telephony/cat/TcpChannel;->-wrap0(Lcom/android/internal/telephony/cat/TcpChannel;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    monitor-exit p0

    .line 1059
    return-void

    .line 1074
    .restart local v4    # "socketAddress":Ljava/net/InetSocketAddress;
    :catch_0
    move-exception v2

    .line 1075
    .local v2, "e3":Ljava/net/SocketTimeoutException;
    :try_start_6
    const-string/jumbo v5, "[BIP]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[TCP]Time out of connect "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1076
    const/16 v7, 0x3a98

    .line 1075
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1076
    const-string/jumbo v7, " sec"

    .line 1075
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1077
    iget-object v5, p0, Lcom/android/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/TcpChannel;

    const/4 v6, 0x7

    iput v6, v5, Lcom/android/internal/telephony/cat/TcpChannel;->mChannelStatus:I
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    .line 1087
    .end local v2    # "e3":Ljava/net/SocketTimeoutException;
    :catch_1
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    move-object v3, v4

    .line 1088
    .end local v4    # "socketAddress":Ljava/net/InetSocketAddress;
    :goto_3
    :try_start_7
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "[TCP]Fail to create socket"

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1089
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    .line 1090
    iget-object v5, p0, Lcom/android/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/TcpChannel;

    const/4 v6, 0x7

    iput v6, v5, Lcom/android/internal/telephony/cat/TcpChannel;->mChannelStatus:I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    goto :goto_2

    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    monitor-exit p0

    throw v5

    .line 1083
    .restart local v4    # "socketAddress":Ljava/net/InetSocketAddress;
    :cond_1
    :try_start_8
    const-string/jumbo v5, "[BIP]"

    const-string/jumbo v6, "[TCP]socket is not connected."

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1084
    iget-object v5, p0, Lcom/android/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/TcpChannel;

    const/4 v6, 0x7

    iput v6, v5, Lcom/android/internal/telephony/cat/TcpChannel;->mChannelStatus:I

    .line 1085
    iget-object v5, p0, Lcom/android/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/TcpChannel;

    iget-object v5, v5, Lcom/android/internal/telephony/cat/TcpChannel;->mSocket:Ljava/net/Socket;

    invoke-virtual {v5}, Ljava/net/Socket;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_1

    .line 1091
    :catch_2
    move-exception v1

    .local v1, "e2":Ljava/lang/NullPointerException;
    move-object v3, v4

    .line 1092
    .end local v4    # "socketAddress":Ljava/net/InetSocketAddress;
    :goto_4
    :try_start_9
    const-string/jumbo v5, "[BIP]"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "[TCP]Null pointer tcp socket "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/internal/telephony/cat/CatLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 1093
    iget-object v5, p0, Lcom/android/internal/telephony/cat/TcpChannel$1;->this$0:Lcom/android/internal/telephony/cat/TcpChannel;

    const/4 v6, 0x7

    iput v6, v5, Lcom/android/internal/telephony/cat/TcpChannel;->mChannelStatus:I
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    goto/16 :goto_2

    .line 1087
    .end local v1    # "e2":Ljava/lang/NullPointerException;
    .restart local v3    # "socketAddress":Ljava/net/InetSocketAddress;
    :catch_3
    move-exception v0

    .restart local v0    # "e":Ljava/io/IOException;
    goto :goto_3

    .line 1091
    .end local v0    # "e":Ljava/io/IOException;
    :catch_4
    move-exception v1

    .restart local v1    # "e2":Ljava/lang/NullPointerException;
    goto :goto_4
.end method
