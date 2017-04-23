.class Lcom/android/server/wifi/WifiWatchdogStateMachine$2;
.super Landroid/content/BroadcastReceiver;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiWatchdogStateMachine;->setupNetworkReceiver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .prologue
    .line 404
    iput-object p1, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

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

    .line 407
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 408
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v4, "android.net.wifi.RSSI_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 409
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .line 410
    const-string/jumbo v5, "newRssi"

    const/16 v6, -0xc8

    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 409
    const v6, 0x21003

    invoke-virtual {v4, v6, v5, v7}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v4}, Landroid/os/Message;->sendToTarget()V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 411
    :cond_1
    const-string/jumbo v4, "android.net.wifi.supplicant.STATE_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 412
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v5, 0x21004

    invoke-virtual {v4, v5, p2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 413
    :cond_2
    const-string/jumbo v4, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 415
    const-string/jumbo v4, "networkInfo"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Landroid/net/NetworkInfo;

    .line 416
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    if-eqz v1, :cond_4

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-eq v4, v5, :cond_3

    .line 417
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v4

    sget-object v5, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    if-ne v4, v5, :cond_4

    .line 419
    :cond_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set0(Lcom/android/server/wifi/WifiWatchdogStateMachine;Landroid/net/NetworkInfo$DetailedState;)Landroid/net/NetworkInfo$DetailedState;

    .line 420
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "currentDetailState="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get3(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Landroid/net/NetworkInfo$DetailedState;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 423
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v5, 0x21002

    invoke-virtual {v4, v5, p2}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(ILjava/lang/Object;)V

    goto :goto_0

    .line 424
    .end local v1    # "networkInfo":Landroid/net/NetworkInfo;
    :cond_5
    const-string/jumbo v4, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 425
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v5, 0x21008

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto :goto_0

    .line 426
    :cond_6
    const-string/jumbo v4, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 427
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const v5, 0x21009

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(I)V

    goto/16 :goto_0

    .line 428
    :cond_7
    const-string/jumbo v4, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 429
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    .line 430
    const-string/jumbo v5, "wifi_state"

    const/4 v6, 0x4

    .line 429
    invoke-virtual {p2, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    const v6, 0x21005

    invoke-virtual {v4, v6, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->sendMessage(II)V

    goto/16 :goto_0

    .line 432
    :cond_8
    const-string/jumbo v4, "wifi.wifi.roamingDetect"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 433
    const-string/jumbo v4, "newBssid"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 434
    .local v2, "newBssid":Ljava/lang/String;
    const-string/jumbo v4, "priBssid"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 436
    .local v3, "priBssid":Ljava/lang/String;
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const/4 v5, 0x1

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-set1(Lcom/android/server/wifi/WifiWatchdogStateMachine;Z)Z

    .line 437
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "roamingDetect priBssid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " newBssid= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " isRoaming= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    invoke-static {v6}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-get4(Lcom/android/server/wifi/WifiWatchdogStateMachine;)Z

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 439
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-boolean v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine;->mPoorLinkProfilingEnabled:Z

    if-eqz v4, :cond_0

    .line 440
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "roamingDetect priBssid="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " new="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {p1, v5, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    iput-object v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    .line 441
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-object v4, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine;->toast:Landroid/widget/Toast;

    invoke-virtual {v4}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 443
    .end local v2    # "newBssid":Ljava/lang/String;
    .end local v3    # "priBssid":Ljava/lang/String;
    :cond_9
    const-string/jumbo v4, "com.mediatek.wifi.p2p.Tx"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 444
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    const-string/jumbo v5, "start"

    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v5

    iput-boolean v5, v4, Lcom/android/server/wifi/WifiWatchdogStateMachine;->p2pStart:Z

    .line 445
    iget-object v4, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "p2pStart= "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/android/server/wifi/WifiWatchdogStateMachine$2;->this$0:Lcom/android/server/wifi/WifiWatchdogStateMachine;

    iget-boolean v6, v6, Lcom/android/server/wifi/WifiWatchdogStateMachine;->p2pStart:Z

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiWatchdogStateMachine;->-wrap6(Lcom/android/server/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
