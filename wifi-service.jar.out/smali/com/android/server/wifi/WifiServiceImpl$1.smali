.class Lcom/android/server/wifi/WifiServiceImpl$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiServiceImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiServiceImpl;
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
    .line 1616
    iput-object p1, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 1619
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 1620
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v8, "WifiService"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "onReceive, action:"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1621
    const-string/jumbo v8, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1622
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->-get7(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v6

    const v7, 0x26002

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    .line 1618
    :cond_0
    :goto_0
    return-void

    .line 1623
    :cond_1
    const-string/jumbo v8, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1624
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->-get7(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v6

    const v7, 0x2600c

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    .line 1625
    :cond_2
    const-string/jumbo v8, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1626
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->-get7(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v6

    const v7, 0x26003

    invoke-virtual {v6, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V

    goto :goto_0

    .line 1627
    :cond_3
    const-string/jumbo v8, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1628
    const-string/jumbo v6, "plugged"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    .line 1629
    .local v4, "pluggedType":I
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->-get7(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v6

    const v8, 0x26004

    const/4 v9, 0x0

    invoke-virtual {v6, v8, v4, v7, v9}, Lcom/android/server/wifi/WifiController;->sendMessage(IIILjava/lang/Object;)V

    goto :goto_0

    .line 1630
    .end local v4    # "pluggedType":I
    :cond_4
    const-string/jumbo v8, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 1631
    const-string/jumbo v6, "android.bluetooth.adapter.extra.CONNECTION_STATE"

    invoke-virtual {p2, v6, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 1633
    .local v5, "state":I
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v6, v6, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6, v5}, Lcom/android/server/wifi/WifiStateMachine;->sendBluetoothAdapterStateChange(I)V

    goto :goto_0

    .line 1634
    .end local v5    # "state":I
    :cond_5
    const-string/jumbo v8, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_7

    .line 1635
    const-string/jumbo v8, "phoneinECMState"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    .line 1636
    .local v1, "emergencyMode":Z
    iget-object v8, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v8}, Lcom/android/server/wifi/WifiServiceImpl;->-get7(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v8

    if-eqz v1, :cond_6

    :goto_1
    const v9, 0x26001

    invoke-virtual {v8, v9, v6, v7}, Lcom/android/server/wifi/WifiController;->sendMessage(III)V

    goto/16 :goto_0

    :cond_6
    move v6, v7

    goto :goto_1

    .line 1637
    .end local v1    # "emergencyMode":Z
    :cond_7
    const-string/jumbo v8, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 1638
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-virtual {v6}, Lcom/android/server/wifi/WifiServiceImpl;->handleIdleModeChanged()V

    goto/16 :goto_0

    .line 1642
    :cond_8
    const-string/jumbo v8, "com.mediatek.mtklogger.intent.action.LOG_STATE_CHANGED"

    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 1644
    const-string/jumbo v8, "log_new_state"

    invoke-virtual {p2, v8, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1646
    .local v3, "logNewState":I
    const-string/jumbo v7, "WifiService"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "LOG STATE CHANGE, new state:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1648
    iget-object v7, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v7, v7, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v7}, Lcom/android/server/wifi/WifiStateMachine;->getVerboseLoggingLevel()I

    move-result v2

    .line 1650
    .local v2, "logLevel":I
    and-int/lit8 v7, v3, 0x1

    if-ne v7, v6, :cond_9

    .line 1652
    or-int/lit8 v2, v2, 0x2

    .line 1659
    :goto_2
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    iget-object v6, v6, Lcom/android/server/wifi/WifiServiceImpl;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v6, v2}, Lcom/android/server/wifi/WifiStateMachine;->enableVerboseLogging(I)V

    .line 1660
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->-get7(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiController;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/server/wifi/WifiController;->enableVerboseLogging(I)V

    .line 1661
    iget-object v6, p0, Lcom/android/server/wifi/WifiServiceImpl$1;->this$0:Lcom/android/server/wifi/WifiServiceImpl;

    invoke-static {v6}, Lcom/android/server/wifi/WifiServiceImpl;->-get6(Lcom/android/server/wifi/WifiServiceImpl;)Lcom/android/server/wifi/WifiTrafficPoller;

    move-result-object v6

    invoke-virtual {v6, v2}, Lcom/android/server/wifi/WifiTrafficPoller;->enableVerboseLogging(I)V

    goto/16 :goto_0

    .line 1656
    :cond_9
    and-int/lit8 v2, v2, -0x3

    goto :goto_2
.end method
