.class Lcom/android/server/display/WifiDisplayController$63;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Landroid/net/wifi/p2p/WifiP2pManager$ActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/display/WifiDisplayController;->startWaitConnection()V
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
    .line 4646
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$63;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(I)V
    .locals 4
    .param p1, "reason"    # I

    .prologue
    .line 4659
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$63;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v1, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_P2P_CONNECTION:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-wrap2(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4660
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[sink] failed for discoverPeers(), reason:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ", retryCount:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$63;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get42(Lcom/android/server/display/WifiDisplayController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 4662
    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 4663
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$63;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get42(Lcom/android/server/display/WifiDisplayController;)I

    move-result v0

    if-lez v0, :cond_0

    .line 4664
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$63;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get42(Lcom/android/server/display/WifiDisplayController;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-set29(Lcom/android/server/display/WifiDisplayController;I)I

    .line 4665
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$63;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get22(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v0

    .line 4666
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$63;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get41(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x64

    .line 4665
    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4667
    return-void

    .line 4670
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$63;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v1, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_IDLE:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-wrap23(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)V

    .line 4671
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "[sink] callback onDisplayConnectionFailed()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4672
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$63;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get28(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$Listener;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/server/display/WifiDisplayController$Listener;->onDisplayConnectionFailed()V

    .line 4658
    :cond_1
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 4649
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$63;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v1, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WAITING_P2P_CONNECTION:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-wrap2(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4650
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "[sink] succeed for discoverPeers()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4653
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$63;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v1, 0x7

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-wrap45(Lcom/android/server/display/WifiDisplayController;I)V

    .line 4648
    :cond_0
    return-void
.end method
