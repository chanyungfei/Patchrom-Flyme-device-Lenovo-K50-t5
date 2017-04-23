.class Lcom/android/server/display/WifiDisplayController$12;
.super Ljava/lang/Object;
.source "WifiDisplayController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/WifiDisplayController;
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
    .line 3756
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$12;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 3759
    const-string/jumbo v3, "WifiDisplayController"

    const-string/jumbo v4, "mReConnect, run()"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3761
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$12;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-get34(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v3

    if-nez v3, :cond_0

    .line 3762
    const-string/jumbo v3, "WifiDisplayController"

    const-string/jumbo v4, "no reconnect device"

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3763
    return-void

    .line 3766
    :cond_0
    const/4 v2, 0x1

    .line 3767
    .local v2, "empty":Z
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$12;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-get7(Lcom/android/server/display/WifiDisplayController;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "device$iterator":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/p2p/WifiP2pDevice;

    .line 3768
    .local v0, "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    invoke-static {}, Lcom/android/server/display/WifiDisplayController;->-get0()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3769
    const-string/jumbo v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "\t"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap8(Landroid/net/wifi/p2p/WifiP2pDevice;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3771
    :cond_2
    const/4 v2, 0x0

    .line 3773
    iget-object v3, v0, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$12;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v4}, Lcom/android/server/display/WifiDisplayController;->-get34(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pDevice;

    move-result-object v4

    iget-object v4, v4, Landroid/net/wifi/p2p/WifiP2pDevice;->deviceAddress:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3774
    const-string/jumbo v3, "WifiDisplayController"

    const-string/jumbo v4, "connect() in mReConnect. Set mReConnecting as true"

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3776
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$12;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3, v6}, Lcom/android/server/display/WifiDisplayController;->-set25(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 3778
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$12;->this$0:Lcom/android/server/display/WifiDisplayController;

    const/4 v4, 0x1

    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->-set23(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 3779
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$12;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3, v0}, Lcom/android/server/display/WifiDisplayController;->-wrap18(Lcom/android/server/display/WifiDisplayController;Landroid/net/wifi/p2p/WifiP2pDevice;)V

    .line 3780
    return-void

    .line 3784
    .end local v0    # "device":Landroid/net/wifi/p2p/WifiP2pDevice;
    :cond_3
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$12;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$12;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v4}, Lcom/android/server/display/WifiDisplayController;->-get35(Lcom/android/server/display/WifiDisplayController;)I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    invoke-static {v3, v4}, Lcom/android/server/display/WifiDisplayController;->-set24(Lcom/android/server/display/WifiDisplayController;I)I

    .line 3786
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$12;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-get35(Lcom/android/server/display/WifiDisplayController;)I

    move-result v3

    if-lez v3, :cond_4

    .line 3788
    const-string/jumbo v3, "WifiDisplayController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "post mReconnect, s:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/display/WifiDisplayController$12;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v5}, Lcom/android/server/display/WifiDisplayController;->-get35(Lcom/android/server/display/WifiDisplayController;)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 3790
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$12;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-get22(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/display/WifiDisplayController$12;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v4}, Lcom/android/server/display/WifiDisplayController;->-get33(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v4

    const-wide/16 v6, 0x3e8

    invoke-virtual {v3, v4, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 3758
    return-void

    .line 3793
    :cond_4
    const-string/jumbo v3, "WifiDisplayController"

    const-string/jumbo v4, "reconnect timeout!"

    invoke-static {v3, v4}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 3794
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$12;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-get16(Lcom/android/server/display/WifiDisplayController;)Landroid/content/Context;

    move-result-object v3

    const v4, 0x8050086

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 3796
    iget-object v3, p0, Lcom/android/server/display/WifiDisplayController$12;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v3}, Lcom/android/server/display/WifiDisplayController;->-wrap40(Lcom/android/server/display/WifiDisplayController;)V

    .line 3797
    return-void
.end method
