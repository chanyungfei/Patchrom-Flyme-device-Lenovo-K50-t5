.class Lcom/android/server/display/WifiDisplayController$14;
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
    .line 4693
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 4697
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mGetSinkIpAddr run(), count:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get45(Lcom/android/server/display/WifiDisplayController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4699
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    sget-object v1, Lcom/android/server/display/WifiDisplayController$SinkState;->SINK_STATE_WIFI_P2P_CONNECTED:Lcom/android/server/display/WifiDisplayController$SinkState;

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-wrap2(Lcom/android/server/display/WifiDisplayController;Lcom/android/server/display/WifiDisplayController$SinkState;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 4700
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "mSinkState:("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get48(Lcom/android/server/display/WifiDisplayController;)Lcom/android/server/display/WifiDisplayController$SinkState;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") is wrong !"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4701
    return-void

    .line 4704
    :cond_0
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get62(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/p2p/WifiP2pManager;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get46(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/net/wifi/p2p/WifiP2pManager;->getPeerIpAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-set30(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;

    .line 4706
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get44(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_2

    .line 4707
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get45(Lcom/android/server/display/WifiDisplayController;)I

    move-result v0

    if-lez v0, :cond_1

    .line 4708
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get45(Lcom/android/server/display/WifiDisplayController;)I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-set31(Lcom/android/server/display/WifiDisplayController;I)I

    .line 4709
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get22(Lcom/android/server/display/WifiDisplayController;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get21(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4695
    :goto_0
    return-void

    .line 4712
    :cond_1
    const-string/jumbo v0, "WifiDisplayController"

    const-string/jumbo v1, "mGetSinkIpAddr FAIL !!!!!!"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 4717
    :cond_2
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-get44(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get47(Lcom/android/server/display/WifiDisplayController;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/android/server/display/WifiDisplayController;->-set30(Lcom/android/server/display/WifiDisplayController;Ljava/lang/String;)Ljava/lang/String;

    .line 4719
    const-string/jumbo v0, "WifiDisplayController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "sink Ip address = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v2}, Lcom/android/server/display/WifiDisplayController;->-get44(Lcom/android/server/display/WifiDisplayController;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 4722
    iget-object v0, p0, Lcom/android/server/display/WifiDisplayController$14;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v0}, Lcom/android/server/display/WifiDisplayController;->-wrap17(Lcom/android/server/display/WifiDisplayController;)V

    goto :goto_0
.end method
