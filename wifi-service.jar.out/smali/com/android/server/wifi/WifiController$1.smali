.class Lcom/android/server/wifi/WifiController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiServiceImpl;Landroid/os/Looper;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiController;

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/16 v5, 0xe

    const v7, 0x26005

    .line 386
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 387
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "com.android.server.WifiManager.action.DEVICE_IDLE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 389
    const-string/jumbo v4, "WifiController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Handle ACTION_DEVICE_IDLE, Sleep Policy: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v6}, Lcom/android/server/wifi/WifiController;->-get14(Lcom/android/server/wifi/WifiController;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->-get14(Lcom/android/server/wifi/WifiController;)I

    move-result v4

    const/4 v5, 0x3

    if-ne v4, v5, :cond_4

    .line 396
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->-wrap0(Lcom/android/server/wifi/WifiController;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 398
    const-string/jumbo v4, "WifiController"

    const-string/jumbo v5, "Handle ACTION_DEVICE_IDLE, stay ACTIVE state since APP in white list is running"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 399
    return-void

    .line 402
    :cond_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, v4, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_2

    .line 404
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v4, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    .line 406
    const-string/jumbo v4, "WifiController"

    const-string/jumbo v5, "Handle ACTION_DEVICE_IDLE, enter IDLE state since WiFi is disconnected"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    :cond_1
    :goto_0
    return-void

    .line 410
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiController;->isHaveWifiFlow()V

    .line 412
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->-get17(Lcom/android/server/wifi/WifiController;)I

    move-result v4

    const/4 v5, 0x5

    if-lt v4, v5, :cond_3

    .line 414
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v4, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    .line 416
    const-string/jumbo v4, "WifiController"

    const-string/jumbo v5, "Handle ACTION_DEVICE_IDLE, enter IDLE state according to Smart Sleep Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 420
    :cond_3
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-wide/32 v6, 0xea60

    add-long v2, v4, v6

    .line 422
    .local v2, "triggerTime":J
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->-get1(Lcom/android/server/wifi/WifiController;)Landroid/app/AlarmManager;

    move-result-object v4

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->-get9(Lcom/android/server/wifi/WifiController;)Landroid/app/PendingIntent;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v4, v6, v2, v3, v5}, Landroid/app/AlarmManager;->setExact(IJLandroid/app/PendingIntent;)V

    .line 424
    const-string/jumbo v4, "WifiController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Handle ACTION_DEVICE_IDLE, double check WiFi data flow ( count: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-static {v6}, Lcom/android/server/wifi/WifiController;->-get17(Lcom/android/server/wifi/WifiController;)I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " )..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 431
    .end local v2    # "triggerTime":J
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v4, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    .line 433
    :cond_5
    const-string/jumbo v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 434
    iget-object v5, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    .line 435
    const-string/jumbo v4, "networkInfo"

    .line 434
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    check-cast v4, Landroid/net/NetworkInfo;

    iput-object v4, v5, Lcom/android/server/wifi/WifiController;->mNetworkInfo:Landroid/net/NetworkInfo;

    goto :goto_0

    .line 436
    :cond_6
    const-string/jumbo v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 438
    const-string/jumbo v4, "wifi_state"

    .line 437
    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 440
    .local v1, "state":I
    if-ne v1, v5, :cond_1

    .line 441
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    const-string/jumbo v5, "WifiControllerSoftAP start failed"

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiController;->-wrap6(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 442
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$1;->this$0:Lcom/android/server/wifi/WifiController;

    const v5, 0x2600d

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto/16 :goto_0
.end method
