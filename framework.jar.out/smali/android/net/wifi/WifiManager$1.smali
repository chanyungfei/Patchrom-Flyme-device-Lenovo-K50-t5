.class Landroid/net/wifi/WifiManager$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/net/wifi/WifiManager;->addWifiOffListener(Landroid/net/wifi/WifiManager$WifiOffListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiManager;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiManager;)V
    .locals 0
    .param p1, "this$0"    # Landroid/net/wifi/WifiManager;

    .prologue
    .line 3792
    iput-object p1, p0, Landroid/net/wifi/WifiManager$1;->this$0:Landroid/net/wifi/WifiManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v7, 0x0

    .line 3795
    iget-object v4, p0, Landroid/net/wifi/WifiManager$1;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v4}, Landroid/net/wifi/WifiManager;->-get1(Landroid/net/wifi/WifiManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_0

    .line 3796
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 3797
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "WifiManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "onReceive, action: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3798
    const-string/jumbo v4, "wifi_off_reason"

    invoke-virtual {p2, v4, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 3800
    .local v3, "reason":I
    const-string/jumbo v4, "WifiManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "wifi_off_reason: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3801
    iget-object v4, p0, Landroid/net/wifi/WifiManager$1;->this$0:Landroid/net/wifi/WifiManager;

    invoke-static {v4}, Landroid/net/wifi/WifiManager;->-get1(Landroid/net/wifi/WifiManager;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager$WifiOffListener;

    .line 3802
    .local v1, "listener":Landroid/net/wifi/WifiManager$WifiOffListener;
    invoke-interface {v1, v3}, Landroid/net/wifi/WifiManager$WifiOffListener;->onWifiOff(I)V

    goto :goto_0

    .line 3794
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "listener":Landroid/net/wifi/WifiManager$WifiOffListener;
    .end local v2    # "listener$iterator":Ljava/util/Iterator;
    .end local v3    # "reason":I
    :cond_0
    return-void
.end method
