.class Lcom/android/server/display/WifiDisplayController$62;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$GroupInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->handleSinkP2PConnection(Landroid/net/NetworkInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/WifiDisplayController;


# direct methods
.method constructor <init>(Lcom/android/server/display/WifiDisplayController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/WifiDisplayController;

    .prologue
    .line 4550
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGroupInfoAvailable(Landroid/net/wifi/p2p/WifiP2pGroup;)V
    .locals 8
    .param p1, "group"    # Landroid/net/wifi/p2p/WifiP2pGroup;

    .prologue
    .line 4553
    const-string/jumbo v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "onGroupInfoAvailable(), mSinkState:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->-get48(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$SinkState;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4556
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v4, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_P2P_CONNECTION:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->-wrap2(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 4557
    return-void

    .line 4561
    :cond_0
    if-nez p1, :cond_1

    .line 4562
    const-string/jumbo v3, "WifiDisplayController"

    const-string/jumbo v4, "Error: group is null !!!"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4563
    return-void

    .line 4567
    :cond_1
    const/4 v2, 0x0

    .line 4570
    .local v2, "found":Z
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    iget-object v3, v3, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v4}, Lcom/android/server/display/WifiDisplayController;->-get49(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 4571
    const-string/jumbo v3, "WifiDisplayController"

    const-string/jumbo v4, "group owner is my self !"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4573
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getClientList()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "c$iterator":Ljava/util/Iterator;
    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 4575
    .local v0, "c":Landroid/net/wifi/p2p/WifiP2pDevice;
    const-string/jumbo v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Client device:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4577
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3, v0}, Lcom/android/server/display/WifiDisplayController;->-wrap3(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-get40(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v3

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 4579
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->-set32(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;

    .line 4580
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v4, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getControlPort()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->-set33(Lcom/android/server/display/WifiDisplayController;I)I

    .line 4581
    const-string/jumbo v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Found ! Sink name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->-get40(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",mac address:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->-get46(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",port:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->-get47(Lcom/android/server/display/WifiDisplayController;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4583
    const/4 v2, 0x1

    .line 4598
    .end local v0    # "c":Landroid/net/wifi/p2p/WifiP2pDevice;
    .end local v1    # "c$iterator":Ljava/util/Iterator;
    :cond_3
    :goto_0
    if-eqz v2, :cond_4

    .line 4599
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/16 v4, 0x32

    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->-set31(Lcom/android/server/display/WifiDisplayController;I)I

    .line 4600
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v4, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WIFI_P2P_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->-wrap23(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)V

    .line 4601
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-get22(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v4}, Lcom/android/server/display/WifiDisplayController;->-get21(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x12c

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4552
    :cond_4
    return-void

    .line 4589
    :cond_5
    const-string/jumbo v3, "WifiDisplayController"

    const-string/jumbo v4, "group owner is not my self ! So I am GC."

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4590
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->-set32(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;

    .line 4591
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pGroup;->getOwner()Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->wfdInfo:Landroid/net/wifi/p2p/WifiP2pWfdInfo;

    invoke-virtual {v4}, Landroid/net/wifi/p2p/WifiP2pWfdInfo;->getControlPort()I

    move-result v4

    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->-set33(Lcom/android/server/display/WifiDisplayController;I)I

    .line 4593
    const-string/jumbo v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Sink name:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->-get40(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",mac address:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->-get46(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ",port:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$62;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->-get47(Lcom/android/server/display/WifiDisplayController;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4594
    const/4 v2, 0x1

    goto/16 :goto_0
.end method
