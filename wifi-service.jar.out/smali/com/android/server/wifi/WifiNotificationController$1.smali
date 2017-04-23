.class Lcom/android/server/wifi/WifiNotificationController$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiNotificationController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# static fields
.field private static synthetic -android_net_NetworkInfo$DetailedStateSwitchesValues:[I


# instance fields
.field final synthetic $SWITCH_TABLE$android$net$NetworkInfo$DetailedState:[I

.field final synthetic this$0:Lcom/android/server/wifi/WifiNotificationController;


# direct methods
.method private static synthetic -getandroid_net_NetworkInfo$DetailedStateSwitchesValues()[I
    .locals 3

    sget-object v0, Lcom/android/server/wifi/WifiNotificationController$1;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/server/wifi/WifiNotificationController$1;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/net/NetworkInfo$DetailedState;->values()[Landroid/net/NetworkInfo$DetailedState;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->AUTHENTICATING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_c

    :goto_0
    :try_start_1
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->BLOCKED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x5

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_b

    :goto_1
    :try_start_2
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CAPTIVE_PORTAL_CHECK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_a

    :goto_2
    :try_start_3
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_9

    :goto_3
    :try_start_4
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->CONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x6

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_8

    :goto_4
    :try_start_5
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_7

    :goto_5
    :try_start_6
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->DISCONNECTING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/4 v2, 0x7

    aput v2, v0, v1
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->FAILED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0x8

    aput v2, v0, v1
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_5

    :goto_7
    :try_start_8
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->IDLE:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0x9

    aput v2, v0, v1
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_4

    :goto_8
    :try_start_9
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->OBTAINING_IPADDR:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xa

    aput v2, v0, v1
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_3

    :goto_9
    :try_start_a
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SCANNING:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xb

    aput v2, v0, v1
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_2

    :goto_a
    :try_start_b
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->SUSPENDED:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xc

    aput v2, v0, v1
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_1

    :goto_b
    :try_start_c
    sget-object v1, Landroid/net/NetworkInfo$DetailedState;->VERIFYING_POOR_LINK:Landroid/net/NetworkInfo$DetailedState;

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    const/16 v2, 0xd

    aput v2, v0, v1
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_0

    :goto_c
    sput-object v0, Lcom/android/server/wifi/WifiNotificationController$1;->-android_net_NetworkInfo$DetailedStateSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_c

    :catch_1
    move-exception v1

    goto :goto_b

    :catch_2
    move-exception v1

    goto :goto_a

    :catch_3
    move-exception v1

    goto :goto_9

    :catch_4
    move-exception v1

    goto :goto_8

    :catch_5
    move-exception v1

    goto :goto_7

    :catch_6
    move-exception v1

    goto :goto_6

    :catch_7
    move-exception v1

    goto :goto_5

    :catch_8
    move-exception v1

    goto :goto_4

    :catch_9
    move-exception v1

    goto :goto_3

    :catch_a
    move-exception v1

    goto :goto_2

    :catch_b
    move-exception v1

    goto/16 :goto_1

    :catch_c
    move-exception v1

    goto/16 :goto_0
.end method

.method constructor <init>(Lcom/android/server/wifi/WifiNotificationController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/wifi/WifiNotificationController;

    .prologue
    .line 133
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 136
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const-string/jumbo v1, "wifi_state"

    .line 138
    const/4 v2, 0x4

    .line 137
    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiNotificationController;->-set5(Lcom/android/server/wifi/WifiNotificationController;I)I

    .line 139
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiNotificationController;->-wrap1(Lcom/android/server/wifi/WifiNotificationController;)V

    .line 141
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiNotificationController;->-set4(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    .line 142
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiNotificationController;->-set3(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    .line 135
    :cond_0
    :goto_0
    return-void

    .line 144
    :cond_1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 145
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    .line 144
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 146
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    .line 147
    const-string/jumbo v0, "networkInfo"

    .line 146
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/NetworkInfo;

    invoke-static {v1, v0}, Lcom/android/server/wifi/WifiNotificationController;->-set0(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;

    .line 148
    const-string/jumbo v0, "WifiNotificationController"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Received NETWORK_STATE_CHANGED_ACTION, mNetworkInfo:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiNotificationController;->-get1(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 150
    invoke-static {}, Lcom/android/server/wifi/WifiNotificationController$1;->-getandroid_net_NetworkInfo$DetailedStateSwitchesValues()[I

    move-result-object v0

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->-get1(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getDetailedState()Landroid/net/NetworkInfo$DetailedState;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/NetworkInfo$DetailedState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 157
    :goto_1
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v0}, Lcom/android/server/wifi/WifiNotificationController;->-wrap1(Lcom/android/server/wifi/WifiNotificationController;)V

    goto :goto_0

    .line 153
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiNotificationController;->-set4(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    goto :goto_1

    .line 160
    :cond_2
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 161
    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    .line 160
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 163
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    const-string/jumbo v1, "SHOW_RESELECT_DIALOG"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/server/wifi/WifiNotificationController;->-set3(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    .line 165
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v1}, Lcom/android/server/wifi/WifiNotificationController;->-get1(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;

    move-result-object v1

    .line 166
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v2}, Lcom/android/server/wifi/WifiNotificationController;->-get2(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/WifiStateMachine;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v2

    .line 165
    invoke-static {v0, v1, v2}, Lcom/android/server/wifi/WifiNotificationController;->-wrap0(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;Ljava/util/List;)V

    goto/16 :goto_0

    .line 168
    :cond_3
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "android.net.wifi.WIFI_CLEAR_NOTIFICATION_SHOW_FLAG_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController$1;->this$0:Lcom/android/server/wifi/WifiNotificationController;

    invoke-static {v0, v3}, Lcom/android/server/wifi/WifiNotificationController;->-set2(Lcom/android/server/wifi/WifiNotificationController;Z)Z

    goto/16 :goto_0

    .line 150
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
