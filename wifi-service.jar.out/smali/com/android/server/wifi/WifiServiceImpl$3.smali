.class Lcom/android/server/wifi/WifiServiceImpl$3;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiServiceImpl;->checkAndStartWifi()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiServiceImpl;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiServiceImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiServiceImpl;

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x0

    .line 470
    const-string/jumbo v1, "state"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 471
    .local v0, "isAirplaneModeOn":Z
    const-string/jumbo v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ACTION_AIRPLANE_MODE_CHANGED isAirplaneModeOn="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 473
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v1, v1, Lcom/android/server/wifi/WifiServiceImpl;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1, v0}, Lcom/android/server/wifi/WifiSettingsStore;->handleAirplaneModeToggled(Z)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 475
    if-eqz v0, :cond_1

    .line 476
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->-get9(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v1

    if-lez v1, :cond_0

    .line 477
    const-string/jumbo v1, "WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mWifiOffListenerCount: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v3}, Lcom/android/server/wifi/WifiServiceImpl;->-get9(Lcom/android/server/wifi/WifiServiceImpl;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 478
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/android/server/wifi/WifiServiceImpl;->-wrap4(Lcom/android/server/wifi/WifiServiceImpl;I)V

    .line 479
    const-string/jumbo v1, "WifiService"

    const-string/jumbo v2, "Let callback to call wifi off"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    return-void

    .line 482
    :cond_0
    const-string/jumbo v1, "WifiService"

    const-string/jumbo v2, "mWifiOffListenerCount < 0"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 486
    :cond_1
    iget-object v1, p0, Lcom/android/server/wifi/WifiServiceImpl$3;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v1}, Lcom/android/server/wifi/WifiServiceImpl;->-get7(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v1

    const v2, 0x26009

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    .line 467
    :cond_2
    return-void
.end method
