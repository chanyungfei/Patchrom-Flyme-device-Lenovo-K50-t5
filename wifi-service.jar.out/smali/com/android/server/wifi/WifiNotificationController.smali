.class final Lcom/android/server/wifi/WifiNotificationController;
.super Ljava/lang/Object;
.source "WifiNotificationController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;
    }
.end annotation


# static fields
.field private static final ICON_NETWORKS_AVAILABLE:I = 0x1080644

.field private static final NUM_SCANS_BEFORE_ACTUALLY_SCANNING:I = 0x0

.field private static final TAG:Ljava/lang/String; = "WifiNotificationController"


# instance fields
.field private final NOTIFICATION_REPEAT_DELAY_MS:J

.field private final mContext:Landroid/content/Context;

.field private mNetworkInfo:Landroid/net/NetworkInfo;

.field private mNotificationBuilder:Landroid/app/Notification$Builder;

.field private mNotificationEnabled:Z

.field private mNotificationEnabledSettingObserver:Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

.field private mNotificationRepeatTime:J

.field private mNotificationShown:Z

.field private mNumScansSinceNetworkStateChange:I

.field private mShowReselectDialog:Z

.field private mWaitForScanResult:Z

.field private volatile mWifiState:I

.field private final mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;


# direct methods
.method static synthetic -get0(Lcom/android/server/wifi/WifiNotificationController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/wifi/WifiNotificationController;)Landroid/net/NetworkInfo;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/wifi/WifiNotificationController;)Lcom/android/server/wifi/WifiStateMachine;
    .locals 1

    iget-object v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    return-object v0
.end method

.method static synthetic -set0(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;)Landroid/net/NetworkInfo;
    .locals 0

    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;

    return-object p1
.end method

.method static synthetic -set1(Lcom/android/server/wifi/WifiNotificationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z

    return p1
.end method

.method static synthetic -set2(Lcom/android/server/wifi/WifiNotificationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    return p1
.end method

.method static synthetic -set3(Lcom/android/server/wifi/WifiNotificationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mShowReselectDialog:Z

    return p1
.end method

.method static synthetic -set4(Lcom/android/server/wifi/WifiNotificationController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWaitForScanResult:Z

    return p1
.end method

.method static synthetic -set5(Lcom/android/server/wifi/WifiNotificationController;I)I
    .locals 0

    iput p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/android/server/wifi/WifiNotificationController;Landroid/net/NetworkInfo;Ljava/util/List;)V
    .locals 0
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .param p2, "scanResults"    # Ljava/util/List;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiNotificationController;->checkAndSetNotification(Landroid/net/NetworkInfo;Ljava/util/List;)V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/server/wifi/WifiNotificationController;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController;->resetNotification()V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/android/server/wifi/WifiStateMachine;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "wsm"    # Lcom/android/server/wifi/WifiStateMachine;

    .prologue
    const/4 v5, 0x0

    .line 120
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 114
    new-instance v1, Landroid/net/NetworkInfo;

    const-string/jumbo v2, "WIFI"

    const-string/jumbo v3, ""

    const/4 v4, 0x1

    invoke-direct {v1, v4, v5, v2, v3}, Landroid/net/NetworkInfo;-><init>(IILjava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNetworkInfo:Landroid/net/NetworkInfo;

    .line 117
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mWaitForScanResult:Z

    .line 118
    iput-boolean v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mShowReselectDialog:Z

    .line 121
    iput-object p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    .line 122
    iput-object p2, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    .line 123
    const/4 v1, 0x4

    iput v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I

    .line 125
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 126
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string/jumbo v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string/jumbo v1, "android.net.wifi.SCAN_RESULTS"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string/jumbo v1, "android.net.wifi.WIFI_CLEAR_NOTIFICATION_SHOW_FLAG_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    .line 133
    new-instance v2, Lcom/android/server/wifi/WifiNotificationController$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiNotificationController$1;-><init>(Lcom/android/server/wifi/WifiNotificationController;)V

    .line 132
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 176
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 177
    const-string/jumbo v2, "wifi_networks_available_repeat_delay"

    const/16 v3, 0x384

    .line 176
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    int-to-long v2, v1

    .line 177
    const-wide/16 v4, 0x3e8

    .line 176
    mul-long/2addr v2, v4

    iput-wide v2, p0, Lcom/android/server/wifi/WifiNotificationController;->NOTIFICATION_REPEAT_DELAY_MS:J

    .line 178
    new-instance v1, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

    new-instance v2, Landroid/os/Handler;

    invoke-direct {v2}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;-><init>(Lcom/android/server/wifi/WifiNotificationController;Landroid/os/Handler;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabledSettingObserver:Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

    .line 179
    iget-object v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabledSettingObserver:Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiNotificationController$NotificationEnabledSettingObserver;->register()V

    .line 120
    return-void
.end method

.method private declared-synchronized checkAndSetNotification(Landroid/net/NetworkInfo;Ljava/util/List;)V
    .locals 15
    .param p1, "networkInfo"    # Landroid/net/NetworkInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/net/NetworkInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p2, "scanResults":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    monitor-enter p0

    .line 190
    :try_start_0
    iget v11, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v12, 0x3

    if-eq v11, v12, :cond_0

    monitor-exit p0

    return-void

    .line 192
    :cond_0
    :try_start_1
    sget-object v8, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 193
    .local v8, "state":Landroid/net/NetworkInfo$State;
    if-eqz p1, :cond_1

    .line 194
    invoke-virtual/range {p1 .. p1}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v8

    .line 197
    :cond_1
    iget-object v11, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 198
    const-string/jumbo v11, "WifiNotificationController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "checkAndSetNotification, mWaitForScanResult:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    iget-boolean v13, p0, Lcom/android/server/wifi/WifiNotificationController;->mWaitForScanResult:Z

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    iget-boolean v11, p0, Lcom/android/server/wifi/WifiNotificationController;->mWaitForScanResult:Z

    if-eqz v11, :cond_2

    if-nez p2, :cond_2

    .line 200
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController;->showSwitchDialog()V

    .line 203
    :cond_2
    const-string/jumbo v11, "WifiNotificationController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "checkAndSetNotification, state:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    sget-object v11, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    if-eq v8, v11, :cond_3

    .line 207
    sget-object v11, Landroid/net/NetworkInfo$State;->UNKNOWN:Landroid/net/NetworkInfo$State;

    if-ne v8, v11, :cond_c

    .line 208
    :cond_3
    if-eqz p2, :cond_b

    .line 209
    const/4 v6, 0x0

    .line 210
    .local v6, "numOpenNetworks":I
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v11

    add-int/lit8 v3, v11, -0x1

    .local v3, "i":I
    :goto_0
    if-ltz v3, :cond_5

    .line 211
    move-object/from16 v0, p2

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/ScanResult;

    .line 215
    .local v7, "scanResult":Landroid/net/wifi/ScanResult;
    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    if-eqz v11, :cond_4

    .line 216
    iget-object v11, v7, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    const-string/jumbo v12, "[ESS]"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 215
    if-eqz v11, :cond_4

    .line 217
    add-int/lit8 v6, v6, 0x1

    .line 210
    :cond_4
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 221
    .end local v7    # "scanResult":Landroid/net/wifi/ScanResult;
    :cond_5
    const-string/jumbo v11, "wifi"

    invoke-static {v11}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 222
    .local v1, "binder":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v10

    .line 223
    .local v10, "wifiService":Landroid/net/wifi/IWifiManager;
    const/4 v5, -0x1

    .line 225
    .local v5, "networkId":I
    if-eqz v10, :cond_6

    .line 226
    :try_start_2
    invoke-interface {v10}, Landroid/net/wifi/IWifiManager;->syncGetConnectingNetworkId()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v5

    .line 232
    :cond_6
    :goto_1
    :try_start_3
    iget-object v11, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v11, v5}, Lcom/android/server/wifi/WifiStateMachine;->isWifiConnecting(I)Z

    move-result v4

    .line 233
    .local v4, "isConnecting":Z
    const-string/jumbo v11, "WifiNotificationController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Connecting networkId:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", isConnecting:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    iget-object v11, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiStateMachine;->hasCustomizedAutoConnect()Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v11

    if-eqz v11, :cond_8

    .line 235
    if-eqz v4, :cond_7

    monitor-exit p0

    .line 237
    return-void

    .line 228
    .end local v4    # "isConnecting":Z
    :catch_0
    move-exception v2

    .line 229
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_4
    const-string/jumbo v11, "WifiNotificationController"

    const-string/jumbo v12, "syncGetConnectingNetworkId failed!"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v3    # "i":I
    .end local v5    # "networkId":I
    .end local v6    # "numOpenNetworks":I
    .end local v8    # "state":Landroid/net/NetworkInfo$State;
    .end local v10    # "wifiService":Landroid/net/wifi/IWifiManager;
    :catchall_0
    move-exception v11

    monitor-exit p0

    throw v11

    .line 239
    .restart local v1    # "binder":Landroid/os/IBinder;
    .restart local v3    # "i":I
    .restart local v4    # "isConnecting":Z
    .restart local v5    # "networkId":I
    .restart local v6    # "numOpenNetworks":I
    .restart local v8    # "state":Landroid/net/NetworkInfo$State;
    .restart local v10    # "wifiService":Landroid/net/wifi/IWifiManager;
    :cond_7
    :try_start_5
    iget-boolean v11, p0, Lcom/android/server/wifi/WifiNotificationController;->mWaitForScanResult:Z

    if-eqz v11, :cond_8

    .line 240
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController;->showSwitchDialog()V

    .line 245
    :cond_8
    const-string/jumbo v11, "WifiNotificationController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Open network num:"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 249
    if-lez v6, :cond_c

    .line 250
    iget v11, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    add-int/lit8 v11, v11, 0x1

    iput v11, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    if-ltz v11, :cond_a

    .line 259
    iget-object v11, p0, Lcom/android/server/wifi/WifiNotificationController;->mWifiStateMachine:Lcom/android/server/wifi/WifiStateMachine;

    invoke-virtual {v11}, Lcom/android/server/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v11

    invoke-virtual {v11}, Landroid/net/wifi/WifiInfo;->getSupplicantState()Landroid/net/wifi/SupplicantState;

    move-result-object v9

    .line 260
    .local v9, "supplicantState":Landroid/net/wifi/SupplicantState;
    const-string/jumbo v11, "WifiNotificationController"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Supplicant state is "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, " when interpret scan results."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 261
    sget-object v11, Landroid/net/wifi/SupplicantState;->AUTHENTICATING:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v11}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v11

    invoke-virtual {v9}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v12

    if-gt v11, v12, :cond_9

    .line 262
    invoke-virtual {v9}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v11

    sget-object v12, Landroid/net/wifi/SupplicantState;->COMPLETED:Landroid/net/wifi/SupplicantState;

    invoke-virtual {v12}, Landroid/net/wifi/SupplicantState;->ordinal()I

    move-result v12

    if-le v11, v12, :cond_a

    .line 263
    :cond_9
    if-nez v4, :cond_a

    .line 264
    const/4 v11, 0x1

    const/4 v12, 0x0

    const/4 v13, 0x0

    invoke-direct {p0, v11, v6, v12, v13}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .end local v9    # "supplicantState":Landroid/net/wifi/SupplicantState;
    :cond_a
    monitor-exit p0

    .line 269
    return-void

    .line 272
    .end local v1    # "binder":Landroid/os/IBinder;
    .end local v3    # "i":I
    .end local v4    # "isConnecting":Z
    .end local v5    # "networkId":I
    .end local v6    # "numOpenNetworks":I
    .end local v10    # "wifiService":Landroid/net/wifi/IWifiManager;
    :cond_b
    :try_start_6
    const-string/jumbo v11, "WifiNotificationController"

    const-string/jumbo v12, "scanResults is null"

    invoke-static {v11, v12}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    :cond_c
    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-direct {p0, v11, v12, v13, v14}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    monitor-exit p0

    .line 183
    return-void
.end method

.method private isDataAvailable()Z
    .locals 9

    .prologue
    const/4 v7, 0x1

    const/4 v8, 0x0

    .line 423
    :try_start_0
    const-string/jumbo v5, "phone"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    invoke-static {v5}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 425
    .local v3, "phone":Lcom/android/internal/telephony/ITelephony;
    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    const-string/jumbo v6, "phone"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/telephony/TelephonyManager;

    .line 426
    .local v4, "tm":Landroid/telephony/TelephonyManager;
    if-eqz v3, :cond_0

    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v5}, Lcom/android/internal/telephony/ITelephony;->isRadioOn(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    if-nez v4, :cond_1

    .line 427
    :cond_0
    return v8

    .line 430
    :cond_1
    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v1

    .line 431
    .local v1, "isSim1Insert":Z
    const/4 v2, 0x0

    .line 432
    .local v2, "isSim2Insert":Z
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v5

    invoke-virtual {v5}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v5

    const/4 v6, 0x2

    if-lt v5, v6, :cond_2

    .line 433
    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 435
    .end local v2    # "isSim2Insert":Z
    :cond_2
    if-nez v1, :cond_3

    if-eqz v2, :cond_4

    .line 442
    :cond_3
    return v7

    .line 436
    :cond_4
    return v8

    .line 438
    .end local v1    # "isSim1Insert":Z
    .end local v3    # "phone":Lcom/android/internal/telephony/ITelephony;
    .end local v4    # "tm":Landroid/telephony/TelephonyManager;
    :catch_0
    move-exception v0

    .line 439
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "WifiNotificationController"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Failed to get phone service, error:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 440
    return v8
.end method

.method private declared-synchronized resetNotification()V
    .locals 4

    .prologue
    monitor-enter p0

    .line 285
    const-wide/16 v0, 0x0

    :try_start_0
    iput-wide v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    .line 286
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    .line 287
    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/android/server/wifi/WifiNotificationController;->setNotificationVisible(ZIZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 284
    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private setNotificationVisible(ZIZI)V
    .locals 10
    .param p1, "visible"    # Z
    .param p2, "numNetworks"    # I
    .param p3, "force"    # Z
    .param p4, "delay"    # I

    .prologue
    .line 309
    if-eqz p1, :cond_0

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z

    if-eqz v4, :cond_2

    .line 313
    :cond_0
    if-nez p1, :cond_1

    iget-boolean v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    if-eqz v4, :cond_3

    .line 317
    :cond_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    .line 318
    const-string/jumbo v5, "notification"

    .line 317
    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    .line 321
    .local v2, "notificationManager":Landroid/app/NotificationManager;
    if-eqz p1, :cond_7

    .line 324
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    cmp-long v4, v4, v6

    if-gez v4, :cond_4

    .line 325
    const-string/jumbo v4, "WifiNotificationController"

    const-string/jumbo v5, "Not enough time has passed to show the notification again."

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    return-void

    .line 309
    .end local v2    # "notificationManager":Landroid/app/NotificationManager;
    :cond_2
    return-void

    .line 313
    :cond_3
    if-nez p3, :cond_1

    .line 314
    return-void

    .line 329
    .restart local v2    # "notificationManager":Landroid/app/NotificationManager;
    :cond_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    if-nez v4, :cond_5

    .line 335
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v4, "android.intent.action.MAIN"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 336
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v4, "com.android.wifi"

    const-string/jumbo v5, "com.android.wifi.Settings$WifiSettingsActivity"

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 337
    const-string/jumbo v4, "notification"

    const/4 v5, 0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 341
    new-instance v4, Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;)V

    .line 342
    const-wide/16 v6, 0x0

    .line 341
    invoke-virtual {v4, v6, v7}, Landroid/app/Notification$Builder;->setWhen(J)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 343
    const v5, 0x1080644

    .line 341
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 344
    const/4 v5, 0x1

    .line 341
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 345
    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-static {v5}, Landroid/app/TaskStackBuilder;->create(Landroid/content/Context;)Landroid/app/TaskStackBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Landroid/app/TaskStackBuilder;->addNextIntentWithParentStack(Landroid/content/Intent;)Landroid/app/TaskStackBuilder;

    move-result-object v5

    .line 348
    sget-object v6, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 345
    invoke-virtual {v5, v7, v8, v9, v6}, Landroid/app/TaskStackBuilder;->getPendingIntent(IILandroid/os/Bundle;Landroid/os/UserHandle;)Landroid/app/PendingIntent;

    move-result-object v5

    .line 341
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v4

    .line 349
    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v5}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 350
    const v6, 0x1060059

    .line 349
    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    .line 341
    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v4

    iput-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    .line 353
    .end local v1    # "intent":Landroid/content/Intent;
    :cond_5
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 354
    const v5, 0x1140005

    .line 353
    invoke-virtual {v4, v5, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 355
    .local v3, "title":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 356
    const v5, 0x1140006

    .line 355
    invoke-virtual {v4, v5, p2}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v0

    .line 357
    .local v0, "details":Ljava/lang/CharSequence;
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setTicker(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 358
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 359
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4, v0}, Landroid/app/Notification$Builder;->setContentText(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    .line 361
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/server/wifi/WifiNotificationController;->NOTIFICATION_REPEAT_DELAY_MS:J

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    .line 364
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    if-nez v4, :cond_6

    .line 365
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    iget-object v5, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    .line 366
    const/4 v6, 0x2

    .line 365
    invoke-static {v5, v6}, Landroid/media/RingtoneManager;->getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    .line 370
    :goto_0
    const-string/jumbo v4, "WifiNotificationController"

    const-string/jumbo v5, "Pop up notification, mNotificationBuilder.setSound"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    invoke-virtual {v4}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 373
    const/4 v6, 0x0

    const v7, 0x1080644

    invoke-virtual {v2, v6, v7, v4, v5}, Landroid/app/NotificationManager;->notifyAsUser(Ljava/lang/String;ILandroid/app/Notification;Landroid/os/UserHandle;)V

    .line 380
    .end local v0    # "details":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :goto_1
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    .line 300
    return-void

    .line 368
    .restart local v0    # "details":Ljava/lang/CharSequence;
    .restart local v3    # "title":Ljava/lang/CharSequence;
    :cond_6
    iget-object v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationBuilder:Landroid/app/Notification$Builder;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    goto :goto_0

    .line 376
    .end local v0    # "details":Ljava/lang/CharSequence;
    .end local v3    # "title":Ljava/lang/CharSequence;
    :cond_7
    const-string/jumbo v4, "WifiNotificationController"

    const-string/jumbo v5, "cancel notification"

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    sget-object v4, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v5, 0x0

    const v6, 0x1080644

    invoke-virtual {v2, v5, v6, v4}, Landroid/app/NotificationManager;->cancelAsUser(Ljava/lang/String;ILandroid/os/UserHandle;)V

    goto :goto_1
.end method

.method private showSwitchDialog()V
    .locals 5

    .prologue
    .line 446
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/android/server/wifi/WifiNotificationController;->mWaitForScanResult:Z

    .line 447
    invoke-direct {p0}, Lcom/android/server/wifi/WifiNotificationController;->isDataAvailable()Z

    move-result v1

    .line 448
    .local v1, "isDataAvailable":Z
    const-string/jumbo v2, "WifiNotificationController"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "showSwitchDialog, isDataAvailable:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 449
    const-string/jumbo v4, ", mShowReselectDialog:"

    .line 448
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 449
    iget-boolean v4, p0, Lcom/android/server/wifi/WifiNotificationController;->mShowReselectDialog:Z

    .line 448
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iget-boolean v2, p0, Lcom/android/server/wifi/WifiNotificationController;->mShowReselectDialog:Z

    if-eqz v2, :cond_0

    .line 451
    return-void

    .line 453
    :cond_0
    if-eqz v1, :cond_1

    .line 454
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action_WIFI_FAILOVER_GPRS_DIALOG"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 455
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 456
    iget-object v2, p0, Lcom/android/server/wifi/WifiNotificationController;->mContext:Landroid/content/Context;

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 445
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_1
    return-void
.end method


# virtual methods
.method dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNotificationEnabled "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationEnabled:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 385
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNotificationRepeatTime "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationRepeatTime:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 386
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNotificationShown "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNotificationShown:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 387
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "mNumScansSinceNetworkStateChange "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/server/wifi/WifiNotificationController;->mNumScansSinceNetworkStateChange:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 383
    return-void
.end method

.method public setWaitForScanResult(Z)V
    .locals 0
    .param p1, "value"    # Z

    .prologue
    .line 462
    iput-boolean p1, p0, Lcom/android/server/wifi/WifiNotificationController;->mWaitForScanResult:Z

    .line 461
    return-void
.end method
