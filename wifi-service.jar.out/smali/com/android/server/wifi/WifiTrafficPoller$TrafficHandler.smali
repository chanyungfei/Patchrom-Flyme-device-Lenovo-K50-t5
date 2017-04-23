.class Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;
.super Landroid/os/Handler;
.source "WifiTrafficPoller.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiTrafficPoller;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TrafficHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiTrafficPoller;


# direct methods
.method private constructor <init>(Lcom/android/server/wifi/WifiTrafficPoller;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    .line 135
    iput-object p1, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/wifi/WifiTrafficPoller;Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiTrafficPoller;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 12
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v11, 0x3

    const/4 v10, 0x2

    const/4 v5, 0x1

    const/4 v9, 0x0

    const/4 v6, 0x0

    .line 137
    iget v7, p1, Landroid/os/Message;->what:I

    packed-switch v7, :pswitch_data_0

    .line 136
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 139
    :pswitch_1
    iget-object v7, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    iget v8, p1, Landroid/os/Message;->arg1:I

    if-ne v8, v5, :cond_2

    :goto_1
    invoke-static {v7, v5}, Lcom/android/server/wifi/WifiTrafficPoller;->-set0(Lcom/android/server/wifi/WifiTrafficPoller;Z)Z

    .line 140
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v5}, Lcom/android/server/wifi/WifiTrafficPoller;->-get0(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 141
    const-string/jumbo v5, "WifiTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "ENABLE_TRAFFIC_STATS_POLL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 142
    iget-object v8, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v8}, Lcom/android/server/wifi/WifiTrafficPoller;->-get4(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    move-result v8

    .line 141
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 142
    const-string/jumbo v8, " Token "

    .line 141
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 143
    iget-object v8, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v8}, Lcom/android/server/wifi/WifiTrafficPoller;->-get9(Lcom/android/server/wifi/WifiTrafficPoller;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 141
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    :cond_1
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v5}, Lcom/android/server/wifi/WifiTrafficPoller;->-get9(Lcom/android/server/wifi/WifiTrafficPoller;)I

    move-result v7

    add-int/lit8 v7, v7, 0x1

    invoke-static {v5, v7}, Lcom/android/server/wifi/WifiTrafficPoller;->-set6(Lcom/android/server/wifi/WifiTrafficPoller;I)I

    .line 146
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v5}, Lcom/android/server/wifi/WifiTrafficPoller;->-get4(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 147
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v5}, Lcom/android/server/wifi/WifiTrafficPoller;->-wrap1(Lcom/android/server/wifi/WifiTrafficPoller;)V

    .line 149
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v5}, Lcom/android/server/wifi/WifiTrafficPoller;->-get9(Lcom/android/server/wifi/WifiTrafficPoller;)I

    move-result v5

    .line 148
    invoke-static {p0, v10, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v5

    .line 149
    const-wide/16 v6, 0x3e8

    .line 148
    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0

    :cond_2
    move v5, v6

    .line 139
    goto :goto_1

    .line 153
    :pswitch_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v5}, Lcom/android/server/wifi/WifiTrafficPoller;->-get1(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 154
    const-string/jumbo v5, "WifiTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "TRAFFIC_STATS_POLL "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 155
    iget-object v8, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v8}, Lcom/android/server/wifi/WifiTrafficPoller;->-get4(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    move-result v8

    .line 154
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 155
    const-string/jumbo v8, " Token "

    .line 154
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 156
    iget-object v8, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v8}, Lcom/android/server/wifi/WifiTrafficPoller;->-get9(Lcom/android/server/wifi/WifiTrafficPoller;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v8

    .line 154
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 157
    const-string/jumbo v8, " num clients "

    .line 154
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 157
    iget-object v8, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v8}, Lcom/android/server/wifi/WifiTrafficPoller;->-get2(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    .line 154
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    :cond_3
    iget v5, p1, Landroid/os/Message;->arg1:I

    iget-object v7, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v7}, Lcom/android/server/wifi/WifiTrafficPoller;->-get9(Lcom/android/server/wifi/WifiTrafficPoller;)I

    move-result v7

    if-ne v5, v7, :cond_0

    .line 160
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v5}, Lcom/android/server/wifi/WifiTrafficPoller;->-wrap1(Lcom/android/server/wifi/WifiTrafficPoller;)V

    .line 162
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v5}, Lcom/android/server/wifi/WifiTrafficPoller;->-get9(Lcom/android/server/wifi/WifiTrafficPoller;)I

    move-result v5

    .line 161
    invoke-static {p0, v10, v5, v6}, Landroid/os/Message;->obtain(Landroid/os/Handler;III)Landroid/os/Message;

    move-result-object v5

    .line 162
    const-wide/16 v6, 0x3e8

    .line 161
    invoke-virtual {p0, v5, v6, v7}, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto/16 :goto_0

    .line 166
    :pswitch_3
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v5}, Lcom/android/server/wifi/WifiTrafficPoller;->-get2(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;

    move-result-object v6

    iget-object v5, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v5, Landroid/os/Messenger;

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 168
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v5}, Lcom/android/server/wifi/WifiTrafficPoller;->-get2(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "client$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/Messenger;

    .line 170
    .local v0, "client":Landroid/os/Messenger;
    const/4 v5, 0x0

    :try_start_0
    invoke-static {p0, v5}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Messenger;->send(Landroid/os/Message;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 171
    :catch_0
    move-exception v2

    .line 172
    .local v2, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "WifiTrafficPoller"

    const-string/jumbo v6, "client.send fail"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 176
    .end local v0    # "client":Landroid/os/Messenger;
    .end local v2    # "e":Landroid/os/RemoteException;
    :cond_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v5}, Lcom/android/server/wifi/WifiTrafficPoller;->-get0(Lcom/android/server/wifi/WifiTrafficPoller;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 177
    const-string/jumbo v5, "WifiTrafficPoller"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "ADD_CLIENT: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 178
    iget-object v7, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v7}, Lcom/android/server/wifi/WifiTrafficPoller;->-get2(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    .line 177
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 182
    .end local v1    # "client$iterator":Ljava/util/Iterator;
    :pswitch_4
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v5}, Lcom/android/server/wifi/WifiTrafficPoller;->-get2(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/List;

    move-result-object v5

    iget-object v6, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-interface {v5, v6}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 188
    :pswitch_5
    const-string/jumbo v5, "WifiTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Handle PING_COMPLETE, result: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget v8, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 190
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v5, v9}, Lcom/android/server/wifi/WifiTrafficPoller;->-set5(Lcom/android/server/wifi/WifiTrafficPoller;Lcom/android/server/wifi/WifiTrafficPoller$PingThread;)Lcom/android/server/wifi/WifiTrafficPoller$PingThread;

    .line 192
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiTrafficPoller;->-set4(Lcom/android/server/wifi/WifiTrafficPoller;I)I

    .line 193
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiTrafficPoller;->-set3(Lcom/android/server/wifi/WifiTrafficPoller;I)I

    .line 195
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v5}, Lcom/android/server/wifi/WifiTrafficPoller;->-get3(Lcom/android/server/wifi/WifiTrafficPoller;)Landroid/content/Context;

    move-result-object v5

    const-string/jumbo v7, "wifi"

    invoke-virtual {v5, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/net/wifi/WifiManager;

    .line 197
    .local v4, "manager":Landroid/net/wifi/WifiManager;
    if-eqz v4, :cond_0

    .line 199
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v3

    .line 201
    .local v3, "info":Landroid/net/wifi/WifiInfo;
    if-eqz v3, :cond_0

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v5

    const/4 v7, -0x1

    if-eq v5, v7, :cond_0

    .line 203
    const-string/jumbo v5, "WifiTrafficPoller"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Handle PING_RESULT, WiFi Info: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v5, v11, :cond_6

    .line 206
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v5}, Lcom/android/server/wifi/WifiTrafficPoller;->-get5(Lcom/android/server/wifi/WifiTrafficPoller;)I

    move-result v6

    add-int/lit8 v6, v6, 0x1

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiTrafficPoller;->-set1(Lcom/android/server/wifi/WifiTrafficPoller;I)I

    .line 208
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v5}, Lcom/android/server/wifi/WifiTrafficPoller;->-get5(Lcom/android/server/wifi/WifiTrafficPoller;)I

    move-result v5

    if-le v5, v11, :cond_5

    .line 210
    const-string/jumbo v5, "WifiTrafficPoller"

    const-string/jumbo v6, "WARNING !!! Network error detected !!! Re-Associate..."

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    invoke-virtual {v4}, Landroid/net/wifi/WifiManager;->reassociate()Z

    goto/16 :goto_0

    .line 213
    :cond_5
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v5}, Lcom/android/server/wifi/WifiTrafficPoller;->-get7(Lcom/android/server/wifi/WifiTrafficPoller;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 215
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    new-instance v6, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;

    iget-object v7, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    iget-object v8, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v8}, Lcom/android/server/wifi/WifiTrafficPoller;->-get3(Lcom/android/server/wifi/WifiTrafficPoller;)Landroid/content/Context;

    move-result-object v8

    iget-object v9, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v9}, Lcom/android/server/wifi/WifiTrafficPoller;->-get8(Lcom/android/server/wifi/WifiTrafficPoller;)Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;-><init>(Lcom/android/server/wifi/WifiTrafficPoller;Landroid/content/Context;Landroid/os/Handler;)V

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiTrafficPoller;->-set5(Lcom/android/server/wifi/WifiTrafficPoller;Lcom/android/server/wifi/WifiTrafficPoller$PingThread;)Lcom/android/server/wifi/WifiTrafficPoller$PingThread;

    .line 216
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v5}, Lcom/android/server/wifi/WifiTrafficPoller;->-get6(Lcom/android/server/wifi/WifiTrafficPoller;)Lcom/android/server/wifi/WifiTrafficPoller$PingThread;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/server/wifi/WifiTrafficPoller$PingThread;->start()V

    goto/16 :goto_0

    .line 221
    :cond_6
    iget-object v5, p0, Lcom/android/server/wifi/WifiTrafficPoller$TrafficHandler;->this$0:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-static {v5, v6}, Lcom/android/server/wifi/WifiTrafficPoller;->-set1(Lcom/android/server/wifi/WifiTrafficPoller;I)I

    goto/16 :goto_0

    .line 137
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_5
    .end packed-switch
.end method
