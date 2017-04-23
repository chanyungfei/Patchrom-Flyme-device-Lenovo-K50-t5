.class Lcom/android/internal/telephony/cdma/utk/AcceptRunable;
.super Lcom/android/internal/telephony/cdma/utk/BipRunnable;
.source "BipChannel.java"


# instance fields
.field private mBipChannelList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/cdma/utk/BipChannel;",
            ">;"
        }
    .end annotation
.end field

.field private mPort:I

.field private mServerSocket:Ljava/net/ServerSocket;


# direct methods
.method constructor <init>(ILcom/android/internal/telephony/cdma/utk/BipChannel;)V
    .locals 6
    .param p1, "port"    # I
    .param p2, "ch"    # Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 900
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/utk/BipRunnable;-><init>()V

    .line 898
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mBipChannelList:Ljava/util/ArrayList;

    .line 901
    iput p1, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mPort:I

    .line 902
    invoke-virtual {p0, p2}, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->addRspHandler(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V

    .line 906
    :try_start_0
    new-instance v3, Ljava/net/ServerSocket;

    sget-object v4, Ljava/net/Inet4Address;->LOOPBACK:Ljava/net/InetAddress;

    const/4 v5, 0x0

    invoke-direct {v3, p1, v5, v4}, Ljava/net/ServerSocket;-><init>(IILjava/net/InetAddress;)V

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 911
    :goto_0
    iget-object v3, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v3, :cond_2

    move v3, v2

    :goto_1
    if-eqz p2, :cond_0

    move v1, v2

    :cond_0
    and-int/2addr v1, v3

    if-eqz v1, :cond_1

    .line 912
    iput-boolean v2, p2, Lcom/android/internal/telephony/cdma/utk/BipChannel;->mIsSocketReady:Z

    .line 900
    :cond_1
    return-void

    .line 907
    :catch_0
    move-exception v0

    .line 908
    .local v0, "e":Ljava/io/IOException;
    const-string/jumbo v3, "AcceptRunable"

    const-string/jumbo v4, " get server socket fail"

    invoke-static {v3, v4}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    move v3, v1

    .line 911
    goto :goto_1
.end method


# virtual methods
.method public addRspHandler(Lcom/android/internal/telephony/cdma/utk/BipChannel;)V
    .locals 3
    .param p1, "ch"    # Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .prologue
    .line 917
    if-nez p1, :cond_0

    .line 918
    return-void

    .line 920
    :cond_0
    const-string/jumbo v0, "AcceptRunable"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, " addRspHandler="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 922
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mBipChannelList:Ljava/util/ArrayList;

    monitor-enter v1

    .line 923
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mBipChannelList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 916
    return-void

    .line 922
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public removeRspHandler(Lcom/android/internal/telephony/cdma/utk/BipChannel;)Z
    .locals 5
    .param p1, "ch"    # Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .prologue
    const/4 v4, 0x0

    .line 928
    if-nez p1, :cond_0

    .line 929
    return v4

    .line 931
    :cond_0
    const-string/jumbo v1, "AcceptRunable"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, " removeRspHandler="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 932
    iget-object v2, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mBipChannelList:Ljava/util/ArrayList;

    monitor-enter v2

    .line 933
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mBipChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 934
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mBipChannelList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 935
    const-string/jumbo v1, "AcceptRunable"

    const-string/jumbo v3, " stop listen this port"

    invoke-static {v1, v3}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 938
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mServerSocket:Ljava/net/ServerSocket;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 940
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v1}, Ljava/net/ServerSocket;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 946
    :cond_1
    :goto_0
    const/4 v1, 0x1

    monitor-exit v2

    return v1

    :cond_2
    monitor-exit v2

    .line 950
    return v4

    .line 932
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 941
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    goto :goto_0
.end method

.method public run()V
    .locals 8

    .prologue
    .line 955
    const-string/jumbo v4, "AcceptRunable"

    const-string/jumbo v5, " enter AcceptRunable"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 957
    :cond_0
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mRun:Z

    if-eqz v4, :cond_2

    .line 958
    const/4 v3, 0x0

    .line 962
    .local v3, "socket":Ljava/net/Socket;
    :try_start_0
    const-string/jumbo v4, "AcceptRunable"

    const-string/jumbo v5, "linsten..."

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 963
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v4}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v3

    .line 964
    .local v3, "socket":Ljava/net/Socket;
    const-string/jumbo v4, "AcceptRunable"

    const-string/jumbo v5, "accepted"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 969
    .end local v3    # "socket":Ljava/net/Socket;
    :goto_1
    if-eqz v3, :cond_0

    .line 970
    iget-object v5, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mBipChannelList:Ljava/util/ArrayList;

    monitor-enter v5

    .line 971
    :try_start_1
    iget-object v4, p0, Lcom/android/internal/telephony/cdma/utk/AcceptRunable;->mBipChannelList:Ljava/util/ArrayList;

    const/4 v6, 0x0

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/utk/BipChannel;

    .line 972
    .local v0, "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    if-eqz v0, :cond_1

    .line 973
    const/4 v4, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v0, v4, v6, v7, v3}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    .line 974
    .local v2, "m":Landroid/os/Message;
    invoke-virtual {v0, v2}, Lcom/android/internal/telephony/cdma/utk/BipChannel;->sendMessage(Landroid/os/Message;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "m":Landroid/os/Message;
    :goto_2
    monitor-exit v5

    goto :goto_0

    .line 965
    .end local v0    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    :catch_0
    move-exception v1

    .line 966
    .local v1, "e":Ljava/io/IOException;
    const-string/jumbo v4, "AcceptRunable"

    const-string/jumbo v5, "catch error, exit AcceptRunable"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 976
    .end local v1    # "e":Ljava/io/IOException;
    .restart local v0    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    :cond_1
    :try_start_2
    const-string/jumbo v4, "AcceptRunable"

    const-string/jumbo v6, "no ch wait socket"

    invoke-static {v4, v6}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 979
    :try_start_3
    invoke-virtual {v3}, Ljava/net/Socket;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_2

    .line 980
    :catch_1
    move-exception v1

    .restart local v1    # "e":Ljava/io/IOException;
    goto :goto_2

    .line 970
    .end local v0    # "ch":Lcom/android/internal/telephony/cdma/utk/BipChannel;
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 988
    :cond_2
    const-string/jumbo v4, "AcceptRunable"

    const-string/jumbo v5, " exit AcceptRunable"

    invoke-static {v4, v5}, Lcom/android/internal/telephony/cdma/utk/UtkLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 954
    return-void
.end method
