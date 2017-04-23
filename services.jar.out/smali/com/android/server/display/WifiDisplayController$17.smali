.class Lcom/android/server/display/WifiDisplayController$17;
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
    .line 4919
    iput-object p1, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 4923
    const-string/jumbo v1, "WifiDisplayController"

    const-string/jumbo v2, "Enable wifi automatically."

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4924
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1, v4}, Lcom/android/server/display/WifiDisplayController;->-set5(Lcom/android/server/display/WifiDisplayController;Z)Z

    .line 4926
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get58(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getWifiApState()I

    move-result v0

    .line 4927
    .local v0, "wifiApState":I
    const/16 v1, 0xc

    if-eq v0, v1, :cond_0

    .line 4928
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 4929
    :cond_0
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get58(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/net/wifi/WifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)Z

    .line 4931
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/WifiDisplayController$17;->this$0:Lcom/android/server/display/WifiDisplayController;

    invoke-static {v1}, Lcom/android/server/display/WifiDisplayController;->-get58(Lcom/android/server/display/WifiDisplayController;)Landroid/net/wifi/WifiManager;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 4921
    return-void
.end method
