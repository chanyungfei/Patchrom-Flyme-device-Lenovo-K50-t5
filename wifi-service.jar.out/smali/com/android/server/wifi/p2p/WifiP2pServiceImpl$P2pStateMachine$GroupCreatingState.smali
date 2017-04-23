.class Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;
.super Lcom/android/internal/util/State;
.source "WifiP2pServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "GroupCreatingState"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .prologue
    .line 2198
    iput-object p1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 5

    .prologue
    .line 2201
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " enter()"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2202
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    .line 2203
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get23()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set18(I)I

    move-result v2

    .line 2202
    const v3, 0x23001

    .line 2203
    const/4 v4, 0x0

    .line 2202
    invoke-virtual {v1, v3, v2, v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    .line 2203
    const-wide/32 v2, 0x1d4c0

    .line 2202
    invoke-virtual {v0, v1, v2, v3}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    .line 2205
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap43(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Z)V

    .line 2209
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get29()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2210
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v1

    monitor-enter v1

    .line 2211
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-string/jumbo v2, "mClientIp clear"

    invoke-virtual {v0, v2}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2212
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v0}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get7(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/util/HashMap;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 2218
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v0, v0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set24(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;I)I

    .line 2200
    return-void

    .line 2210
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .param p1, "message"    # Landroid/os/Message;

    .prologue
    const v5, 0x2200a

    const/4 v6, 0x1

    .line 2224
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v4, p0, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-wrap2(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Ljava/lang/Object;Landroid/os/Message;)V

    .line 2225
    const/4 v2, 0x1

    .line 2226
    .local v2, "ret":Z
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 2313
    const/4 v2, 0x0

    .line 2315
    :cond_0
    :goto_0
    return v2

    .line 2228
    :sswitch_0
    invoke-static {}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get23()I

    move-result v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v5, :cond_0

    .line 2229
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-string/jumbo v5, "Group negotiation timed out"

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2230
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap20(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    .line 2231
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get6(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap49(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 2235
    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2236
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iget-object v5, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2238
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "mSavedPeerConfig "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v6

    iget-object v6, v6, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2239
    const-string/jumbo v6, "device "

    .line 2238
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 2239
    iget-object v6, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    .line 2238
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2242
    const/4 v2, 0x0

    .line 2243
    goto :goto_0

    .line 2246
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Add device to lost list "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2247
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get12(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->updateSupplicantDetails(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    goto/16 :goto_0

    .line 2251
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_2
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v5, 0x22002

    .line 2252
    const/4 v6, 0x2

    .line 2251
    invoke-static {v4, p1, v5, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap33(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_0

    .line 2261
    :sswitch_3
    const/4 v3, 0x0

    .line 2262
    .local v3, "success":Z
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v4

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiNative;->p2pCancelConnect()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 2263
    const/4 v3, 0x1

    .line 2267
    :cond_2
    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap20(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    .line 2268
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get6(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$InactiveState;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap49(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    .line 2269
    if-eqz v3, :cond_4

    .line 2270
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v5, 0x2200c

    invoke-static {v4, p1, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap32(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 2264
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/WifiNative;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v5, v5, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get25(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiNative;->p2pGroupRemove(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 2265
    const/4 v3, 0x1

    goto :goto_1

    .line 2272
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const v5, 0x2200b

    invoke-static {v4, p1, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap32(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;I)V

    goto/16 :goto_0

    .line 2278
    .end local v3    # "success":Z
    :sswitch_4
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    const/4 v5, 0x0

    invoke-static {v4, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set1(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 2279
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v5, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get4(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupNegotiationState;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap49(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 2283
    :sswitch_5
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    .line 2285
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v4, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set26(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 2286
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v4, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set16(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 2287
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v4, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2290
    :sswitch_6
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->sendMessage(I)V

    .line 2292
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v4, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set25(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 2293
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v4, v6}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-set15(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;Z)Z

    .line 2294
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v4, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2297
    :sswitch_7
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 2298
    .local v1, "peerDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->this$0:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;

    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;->-get40(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v5, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 2299
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v4

    if-eqz v4, :cond_5

    .line 2300
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get14(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pConfig;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pConfig;->deviceAddress:Ljava/lang/String;

    iget-object v5, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 2299
    if-eqz v4, :cond_5

    .line 2301
    iput v6, v1, Landroid/net/wifi/p2p/WifiP2pDevice;->status:I

    .line 2303
    :cond_5
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-get11(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)Landroid/net/wifi/p2p/WifiP2pDeviceList;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->update(Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 2304
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v4}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap44(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;)V

    goto/16 :goto_0

    .line 2308
    .end local v1    # "peerDevice":Landroid/net/wifi/p2p/WifiP2pDevice;
    :sswitch_8
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    const-string/jumbo v5, "defer BLOCK_DISCOVERY@GroupCreatingState"

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->logd(Ljava/lang/String;)V

    .line 2309
    iget-object v4, p0, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine$GroupCreatingState;->this$1:Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;

    invoke-static {v4, p1}, Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;->-wrap19(Lcom/android/server/wifi/p2p/WifiP2pServiceImpl$P2pStateMachine;Landroid/os/Message;)V

    goto/16 :goto_0

    .line 2226
    nop

    :sswitch_data_0
    .sparse-switch
        0x22001 -> :sswitch_2
        0x2200a -> :sswitch_3
        0x2205a -> :sswitch_5
        0x2205b -> :sswitch_6
        0x23001 -> :sswitch_0
        0x2300f -> :sswitch_8
        0x24015 -> :sswitch_7
        0x24016 -> :sswitch_1
        0x24019 -> :sswitch_4
    .end sparse-switch
.end method
