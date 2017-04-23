.class Lcom/android/server/display/WifiDisplayController$24;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$PeerListListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->requestPeers()V
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
    .line 964
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPeersAvailable(Landroid/net/wifi/p2p/WifiP2pDeviceList;)V
    .locals 5
    .param p1, "peers"    # Landroid/net/wifi/p2p/WifiP2pDeviceList;

    .prologue
    .line 969
    const-string/jumbo v2, "ro.mtk_wfd_sink_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get43(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 970
    return-void

    .line 973
    :cond_0
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->-get0()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 974
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Received list of peers. mDiscoverPeersInProgress="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 975
    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v4}, Lcom/android/server/display/WifiDisplayController;->-get20(Lcom/android/server/display/WifiDisplayController;)Z

    move-result v4

    .line 974
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    :cond_1
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get7(Lcom/android/server/display/WifiDisplayController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 979
    invoke-virtual {p1}, Landroid/net/wifi/p2p/WifiP2pDeviceList;->getDeviceList()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 980
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->-get0()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 981
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap8(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 984
    :cond_3
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get11(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 985
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get11(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 984
    if-eqz v2, :cond_4

    .line 986
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get7(Lcom/android/server/display/WifiDisplayController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 987
    :cond_4
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get13(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 988
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get13(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v2

    iget-object v2, v2, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    .line 987
    if-eqz v2, :cond_5

    .line 989
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get7(Lcom/android/server/display/WifiDisplayController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 990
    :cond_5
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get8(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    iget-object v2, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-get8(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 993
    const-string/jumbo v2, "WifiDisplayController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Block scan result on block mac:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v4}, Lcom/android/server/display/WifiDisplayController;->-get8(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 994
    :cond_6
    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap4(Landroid/net/wifi/p2p/WifiP2pDevice;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 995
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get7(Lcom/android/server/display/WifiDisplayController;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 1000
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_7
    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$24;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-wrap32(Lcom/android/server/display/WifiDisplayController;)V

    .line 966
    return-void
.end method
