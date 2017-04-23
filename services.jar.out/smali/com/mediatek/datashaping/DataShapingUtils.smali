.class public Lcom/mediatek/datashaping/DataShapingUtils;
.super Ljava/lang/Object;
.source "DataShapingUtils.java"


# static fields
.field public static final CLOSING_DELAY_BUFFER_FOR_MUSIC:J = 0x1388L

.field private static final CONFIG_AUTO_POWER:Ljava/lang/String; = "persist.config.AutoPowerModes"

.field private static final LTE_AS_STATE_CONNECTED:Ljava/lang/String; = "connected"

.field private static final LTE_AS_STATE_IDLE:Ljava/lang/String; = "idle"

.field private static final LTE_AS_STATE_UNKNOWN:Ljava/lang/String; = "unknown"

.field private static final TAG:Ljava/lang/String; = "DataShapingUtils"

.field private static sDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;


# instance fields
.field private mAppStandbyEnable:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mBluetoothManager:Landroid/bluetooth/BluetoothManager;

.field private mClosingDelayStartTime:J

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mCurrentNetworkType:I

.field private mDeviceIdleState:Z

.field private mIsClosingDelayForMusic:Z

.field private mIsMobileConnection:Z

.field private mPowerManager:Landroid/os/PowerManager;

.field private mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mWifiManager:Landroid/net/wifi/WifiManager;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput v2, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mCurrentNetworkType:I

    .line 76
    iput-object p1, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mContext:Landroid/content/Context;

    .line 78
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    .line 79
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 80
    const v1, 0x1120015

    .line 79
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mAppStandbyEnable:Z

    .line 81
    const-string/jumbo v0, "persist.config.AutoPowerModes"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "-1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    iput-boolean v2, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mAppStandbyEnable:Z

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 83
    :cond_1
    const-string/jumbo v0, "persist.config.AutoPowerModes"

    const-string/jumbo v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "1"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mAppStandbyEnable:Z

    goto :goto_0
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Lcom/mediatek/datashaping/DataShapingUtils;
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const-class v1, Lcom/mediatek/datashaping/DataShapingUtils;

    monitor-enter v1

    .line 69
    :try_start_0
    sget-object v0, Lcom/mediatek/datashaping/DataShapingUtils;->sDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    if-nez v0, :cond_0

    .line 70
    new-instance v0, Lcom/mediatek/datashaping/DataShapingUtils;

    invoke-direct {v0, p0}, Lcom/mediatek/datashaping/DataShapingUtils;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/mediatek/datashaping/DataShapingUtils;->sDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;

    .line 72
    :cond_0
    sget-object v0, Lcom/mediatek/datashaping/DataShapingUtils;->sDataShapingUtils:Lcom/mediatek/datashaping/DataShapingUtils;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public canTurnFromLockedToOpen()Z
    .locals 11

    .prologue
    .line 283
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingUtils;->isNetworkTypeLte()Z

    move-result v2

    .line 284
    .local v2, "isNetworkTypeLte":Z
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingUtils;->isScreenOn()Z

    move-result v4

    .line 285
    .local v4, "isScreenOn":Z
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingUtils;->isSharedDefaultApnEstablished()Z

    move-result v5

    .line 286
    .local v5, "isSharedDefaultApnEstablished":Z
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingUtils;->isUsbConnected()Z

    move-result v6

    .line 287
    .local v6, "isUsbConnected":Z
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingUtils;->isWifiTetheringEnabled()Z

    move-result v7

    .line 289
    .local v7, "isWifiTetheringEnabled":Z
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingUtils;->isAppIdleParoleOn()Z

    move-result v0

    .line 290
    .local v0, "isAppIdleParoleOn":Z
    const-string/jumbo v8, "DataShapingUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[canTurnFromLockedToOpen] isNetworkTypeLte|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 291
    const-string/jumbo v10, " isScreenOn|"

    .line 290
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 292
    const-string/jumbo v10, " isSharedDefaultApnEstablised|"

    .line 290
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 293
    const-string/jumbo v10, " isUsbConnected|"

    .line 290
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 294
    const-string/jumbo v10, " isWifiTetheringEnabled|"

    .line 290
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 295
    const-string/jumbo v10, " isAppIdleParoleOn|"

    .line 290
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 296
    const-string/jumbo v10, " isDeviceIdleEnable|"

    .line 290
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 296
    iget-boolean v10, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mDeviceIdleState:Z

    .line 290
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 298
    if-eqz v2, :cond_0

    if-eqz v4, :cond_2

    :cond_0
    const/4 v3, 0x0

    .line 302
    .local v3, "isReady":Z
    :goto_0
    if-eqz v3, :cond_1

    .line 303
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingUtils;->isBTStateOn()Z

    move-result v1

    .line 304
    .local v1, "isBTStateOn":Z
    const-string/jumbo v8, "DataShapingUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[canTurnFromLockedToOpen] isBTStateOn|"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    if-eqz v1, :cond_4

    const/4 v3, 0x0

    .line 307
    .end local v1    # "isBTStateOn":Z
    :cond_1
    :goto_1
    const-string/jumbo v8, "DataShapingUtils"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "[canTurnFromLockedToOpen]: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    return v3

    .line 298
    .end local v3    # "isReady":Z
    :cond_2
    if-nez v5, :cond_0

    .line 299
    if-nez v6, :cond_0

    if-nez v7, :cond_0

    if-nez v0, :cond_0

    .line 300
    iget-boolean v8, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mDeviceIdleState:Z

    if-eqz v8, :cond_3

    const/4 v3, 0x0

    .restart local v3    # "isReady":Z
    goto :goto_0

    .end local v3    # "isReady":Z
    :cond_3
    const/4 v3, 0x1

    .restart local v3    # "isReady":Z
    goto :goto_0

    .line 305
    .restart local v1    # "isBTStateOn":Z
    :cond_4
    const/4 v3, 0x1

    goto :goto_1
.end method

.method public getClosingDelayForMusic()Z
    .locals 1

    .prologue
    .line 437
    iget-boolean v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsClosingDelayForMusic:Z

    return v0
.end method

.method public getClosingDelayStartTime()J
    .locals 2

    .prologue
    .line 445
    iget-wide v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mClosingDelayStartTime:J

    return-wide v0
.end method

.method public isAppIdleParoleOn()Z
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 268
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    if-nez v0, :cond_0

    .line 269
    const-string/jumbo v0, "DataShapingUtils"

    const-string/jumbo v1, "UsageStats is null"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 270
    return v2

    .line 272
    :cond_0
    iget-boolean v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mAppStandbyEnable:Z

    if-eqz v0, :cond_1

    .line 273
    const-string/jumbo v0, "DataShapingUtils"

    const-string/jumbo v1, "[isAppIdleParoleOn] App Standby is enable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mUsageStats:Landroid/app/usage/UsageStatsManagerInternal;

    invoke-virtual {v0}, Landroid/app/usage/UsageStatsManagerInternal;->isAppIdleParoleOn()Z

    move-result v0

    return v0

    .line 276
    :cond_1
    const-string/jumbo v0, "DataShapingUtils"

    const-string/jumbo v1, "[isAppIdleParoleOn] App Standby isn\'t enable"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 277
    return v2
.end method

.method public isBTStateOn()Z
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 222
    iget-object v6, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v6, :cond_0

    .line 223
    iget-object v6, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mContext:Landroid/content/Context;

    .line 224
    const-string/jumbo v7, "bluetooth"

    .line 223
    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/bluetooth/BluetoothManager;

    iput-object v6, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    .line 226
    :cond_0
    iget-object v6, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    if-nez v6, :cond_1

    .line 227
    const-string/jumbo v6, "DataShapingUtils"

    const-string/jumbo v7, "BluetoothManager is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    return v9

    .line 230
    :cond_1
    iget-object v6, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mBluetoothManager:Landroid/bluetooth/BluetoothManager;

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothManager;->getAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v4

    .line 231
    .local v4, "mAdapter":Landroid/bluetooth/BluetoothAdapter;
    if-nez v4, :cond_2

    .line 232
    const-string/jumbo v6, "DataShapingUtils"

    const-string/jumbo v7, "BluetoothAdapter is null"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return v9

    .line 235
    :cond_2
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getState()I

    move-result v5

    .line 237
    .local v5, "state":I
    const/16 v6, 0xa

    if-ne v6, v5, :cond_3

    .line 238
    const-string/jumbo v6, "DataShapingUtils"

    const-string/jumbo v7, "[isBTStateOn] BT is Off"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 239
    return v9

    .line 242
    :cond_3
    invoke-virtual {v4}, Landroid/bluetooth/BluetoothAdapter;->getBondedDevices()Ljava/util/Set;

    move-result-object v0

    .line 244
    .local v0, "bondedDevices":Ljava/util/Set;, "Ljava/util/Set<Landroid/bluetooth/BluetoothDevice;>;"
    if-nez v0, :cond_4

    .line 245
    const-string/jumbo v6, "DataShapingUtils"

    const-string/jumbo v7, "[isBTStateOn] No bonded Devices"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    return v9

    .line 250
    :cond_4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "device$iterator":Ljava/util/Iterator;
    :cond_5
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_7

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/bluetooth/BluetoothDevice;

    .line 251
    .local v1, "device":Landroid/bluetooth/BluetoothDevice;
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->isConnected()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 252
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getBluetoothClass()Landroid/bluetooth/BluetoothClass;

    move-result-object v6

    invoke-virtual {v6}, Landroid/bluetooth/BluetoothClass;->getDeviceClass()I

    move-result v3

    .line 253
    .local v3, "deviceType":I
    const-string/jumbo v6, "DataShapingUtils"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "[isBTStateOn] Connected Device = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 254
    const-string/jumbo v8, ", DeviceType = "

    .line 253
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    const/16 v6, 0x404

    if-ne v6, v3, :cond_6

    .line 257
    const-string/jumbo v6, "DataShapingUtils"

    const-string/jumbo v7, "Connected Device is AUDIO_VIDEO_WEARABLE_HEADSET"

    invoke-static {v6, v7}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 259
    :cond_6
    const/4 v6, 0x1

    return v6

    .line 263
    .end local v1    # "device":Landroid/bluetooth/BluetoothDevice;
    .end local v3    # "deviceType":I
    :cond_7
    return v9
.end method

.method public isBTStateOn(Landroid/content/Intent;)Z
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 205
    if-nez p1, :cond_0

    .line 206
    const/4 v0, 0x0

    return v0

    .line 209
    :cond_0
    const-string/jumbo v0, "android.bluetooth.device.action.ACL_CONNECTED"

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 210
    const-string/jumbo v0, "DataShapingUtils"

    const-string/jumbo v1, "[isBTStateOn] BT ACTION_ACL_CONNECTED !"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/4 v0, 0x1

    return v0

    .line 214
    :cond_1
    invoke-virtual {p0}, Lcom/mediatek/datashaping/DataShapingUtils;->isBTStateOn()Z

    move-result v0

    return v0
.end method

.method public isLteAccessStratumConnected()Z
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 332
    const-string/jumbo v3, "phoneEx"

    .line 331
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 333
    .local v2, "telephonyExService":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v2, :cond_0

    .line 334
    const-string/jumbo v3, "DataShapingUtils"

    const-string/jumbo v4, "[isLteAccessStratumConnected] mTelephonyExService is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    return v6

    .line 337
    :cond_0
    const/4 v1, 0x0

    .line 339
    .local v1, "state":Ljava/lang/String;
    :try_start_0
    invoke-interface {v2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->getLteAccessStratumState()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 343
    .end local v1    # "state":Ljava/lang/String;
    :goto_0
    const-string/jumbo v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[isLteAccessStratumConnected] state: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    const-string/jumbo v3, "connected"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 345
    return v6

    .line 340
    .restart local v1    # "state":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 341
    .local v0, "remoteException":Landroid/os/RemoteException;
    const-string/jumbo v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[isLteAccessStratumConnected] remoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 346
    .end local v0    # "remoteException":Landroid/os/RemoteException;
    .end local v1    # "state":Ljava/lang/String;
    :cond_1
    const-string/jumbo v3, "unknown"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 347
    invoke-virtual {p0, v6}, Lcom/mediatek/datashaping/DataShapingUtils;->setLteAccessStratumReport(Z)Z

    .line 349
    return v6

    .line 350
    :cond_2
    const-string/jumbo v3, "idle"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 351
    const/4 v3, 0x0

    return v3

    .line 353
    :cond_3
    return v6
.end method

.method public isLteAccessStratumConnected(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    .line 312
    if-nez p1, :cond_0

    .line 314
    return v4

    .line 316
    :cond_0
    const-string/jumbo v1, "lteAccessStratumState"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 317
    .local v0, "lteAsState":Ljava/lang/String;
    const-string/jumbo v1, "DataShapingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[isLteAccessStratumConnectedIntent] lteAsState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    const-string/jumbo v1, "connected"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 319
    return v4

    .line 320
    :cond_1
    const-string/jumbo v1, "unknown"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 321
    invoke-virtual {p0, v4}, Lcom/mediatek/datashaping/DataShapingUtils;->setLteAccessStratumReport(Z)Z

    .line 323
    return v4

    .line 324
    :cond_2
    const-string/jumbo v1, "idle"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 325
    const/4 v1, 0x0

    return v1

    .line 327
    :cond_3
    return v4
.end method

.method public isMusicActive()Z
    .locals 4

    .prologue
    .line 424
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mAudioManager:Landroid/media/AudioManager;

    if-nez v1, :cond_0

    .line 425
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "audio"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/AudioManager;

    iput-object v1, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mAudioManager:Landroid/media/AudioManager;

    .line 427
    :cond_0
    iget-object v1, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mAudioManager:Landroid/media/AudioManager;

    invoke-virtual {v1}, Landroid/media/AudioManager;->isMusicActive()Z

    move-result v0

    .line 428
    .local v0, "isMusicActive":Z
    const-string/jumbo v1, "DataShapingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[isMusicActive] isMusicActive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    return v0
.end method

.method public isNetworkTypeLte()Z
    .locals 3

    .prologue
    .line 177
    const-string/jumbo v0, "DataShapingUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[isNetworkTypeLte] mCurrentNetworkType: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mCurrentNetworkType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mCurrentNetworkType:I

    const/16 v1, 0xd

    if-ne v0, v1, :cond_0

    .line 179
    const/4 v0, 0x1

    return v0

    .line 181
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public isNetworkTypeLte(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 186
    if-nez p1, :cond_0

    .line 187
    return v4

    .line 189
    :cond_0
    const-string/jumbo v1, "psNetworkType"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 191
    .local v0, "networkType":I
    const-string/jumbo v1, "DataShapingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[isNetworkTypeLteIntent] networkType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 192
    const/16 v1, 0xd

    if-ne v0, v1, :cond_1

    .line 193
    const/4 v1, 0x1

    return v1

    .line 195
    :cond_1
    return v4
.end method

.method public isScreenOn()Z
    .locals 3

    .prologue
    .line 120
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "power"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mPowerManager:Landroid/os/PowerManager;

    .line 123
    :cond_0
    const-string/jumbo v0, "DataShapingUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[isScreenOn] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v2}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mPowerManager:Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v0

    return v0
.end method

.method public isSharedDefaultApnEstablished()Z
    .locals 6

    .prologue
    .line 358
    const-string/jumbo v3, "phoneEx"

    .line 357
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 359
    .local v2, "telephonyExService":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v2, :cond_0

    .line 360
    const-string/jumbo v3, "DataShapingUtils"

    const-string/jumbo v4, "[isSharedDefaultApnEstablished] mTelephonyExService is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 362
    const/4 v3, 0x1

    return v3

    .line 364
    :cond_0
    const/4 v0, 0x1

    .line 366
    .local v0, "isEstablished":Z
    :try_start_0
    invoke-interface {v2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->isSharedDefaultApn()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 370
    .end local v0    # "isEstablished":Z
    :goto_0
    const-string/jumbo v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[isSharedDefaultApnEstablished]: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 371
    return v0

    .line 367
    .restart local v0    # "isEstablished":Z
    :catch_0
    move-exception v1

    .line 368
    .local v1, "remoteException":Landroid/os/RemoteException;
    const-string/jumbo v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[isSharedDefaultApnEstablished] remoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public isSharedDefaultApnEstablished(Landroid/content/Intent;)Z
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v2, 0x1

    .line 375
    if-nez p1, :cond_0

    .line 377
    return v2

    .line 379
    :cond_0
    const-string/jumbo v1, "sharedDefaultApn"

    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 381
    .local v0, "isSharedDefaultApn":Z
    const-string/jumbo v1, "DataShapingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[isSharedDefaultApnEstablishedIntent]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    return v0
.end method

.method public isUsbConnected()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 155
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mUsbManager:Landroid/hardware/usb/UsbManager;

    if-nez v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "usb"

    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/hardware/usb/UsbManager;

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mUsbManager:Landroid/hardware/usb/UsbManager;

    .line 158
    :cond_0
    const-string/jumbo v3, "DataShapingUtils"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[isUsbConnected] isUsbConneted: "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getCurrentState()I

    move-result v0

    if-ne v0, v1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mUsbManager:Landroid/hardware/usb/UsbManager;

    invoke-virtual {v0}, Landroid/hardware/usb/UsbManager;->getCurrentState()I

    move-result v0

    if-ne v0, v1, :cond_2

    :goto_1
    return v1

    :cond_1
    move v0, v2

    .line 158
    goto :goto_0

    :cond_2
    move v1, v2

    .line 159
    goto :goto_1
.end method

.method public isUsbConnected(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 163
    if-nez p1, :cond_0

    .line 164
    return v4

    .line 166
    :cond_0
    const-string/jumbo v1, "connected"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    .line 167
    .local v0, "isUsbConnected":Z
    const-string/jumbo v1, "DataShapingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[isUsbConnectedIntent] isUsbConnected: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string/jumbo v1, "connected"

    invoke-virtual {p1, v1, v4}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    return v1
.end method

.method public isWifiTetheringEnabled()Z
    .locals 3

    .prologue
    .line 128
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    if-nez v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mContext:Landroid/content/Context;

    const-string/jumbo v1, "wifi"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    iput-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    .line 131
    :cond_0
    const-string/jumbo v0, "DataShapingUtils"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[isWifiTetheringEnabled] isWifiApEnabled: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v2}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    iget-object v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mWifiManager:Landroid/net/wifi/WifiManager;

    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->isWifiApEnabled()Z

    move-result v0

    return v0
.end method

.method public isWifiTetheringEnabled(Landroid/content/Intent;)Z
    .locals 5
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x0

    .line 136
    if-nez p1, :cond_0

    .line 137
    return v4

    .line 139
    :cond_0
    const-string/jumbo v1, "wifi_state"

    .line 140
    const/16 v2, 0xb

    .line 139
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 141
    .local v0, "state":I
    const-string/jumbo v1, "DataShapingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[isWifiTetheringEnabledIntent] state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 142
    const/16 v1, 0xd

    if-eq v0, v1, :cond_1

    .line 143
    const/16 v1, 0xc

    if-ne v0, v1, :cond_2

    .line 144
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 146
    :cond_2
    return v4
.end method

.method public reset()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 449
    const-string/jumbo v0, "DataShapingUtils"

    const-string/jumbo v1, "reset"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    iput v2, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mCurrentNetworkType:I

    .line 451
    iput-boolean v2, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsMobileConnection:Z

    .line 452
    iput-boolean v2, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsClosingDelayForMusic:Z

    .line 453
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mClosingDelayStartTime:J

    .line 455
    const/4 v0, 0x1

    const v1, 0x927c0

    invoke-virtual {p0, v0, v1}, Lcom/mediatek/datashaping/DataShapingUtils;->setLteUplinkDataTransfer(ZI)Z

    .line 456
    invoke-virtual {p0, v2}, Lcom/mediatek/datashaping/DataShapingUtils;->setLteAccessStratumReport(Z)Z

    .line 448
    return-void
.end method

.method public setClosingDelayForMusic(Z)V
    .locals 0
    .param p1, "isClosingDelay"    # Z

    .prologue
    .line 433
    iput-boolean p1, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsClosingDelayForMusic:Z

    .line 432
    return-void
.end method

.method public setClosingDelayStartTime(J)V
    .locals 1
    .param p1, "timeMillis"    # J

    .prologue
    .line 441
    iput-wide p1, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mClosingDelayStartTime:J

    .line 440
    return-void
.end method

.method public setCurrentNetworkType(Landroid/content/Intent;)V
    .locals 4
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 110
    if-nez p1, :cond_0

    .line 111
    return-void

    .line 113
    :cond_0
    const-string/jumbo v1, "psNetworkType"

    .line 114
    const/4 v2, 0x0

    .line 113
    invoke-virtual {p1, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 115
    .local v0, "networkType":I
    const-string/jumbo v1, "DataShapingUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[setCurrentNetworkTypeIntent] networkType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iput v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mCurrentNetworkType:I

    .line 109
    return-void
.end method

.method public setDeviceIdleState(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 461
    iput-boolean p1, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mDeviceIdleState:Z

    .line 460
    return-void
.end method

.method public setLteAccessStratumReport(Z)Z
    .locals 6
    .param p1, "isEnable"    # Z

    .prologue
    .line 405
    const-string/jumbo v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[setLteAccessStratumReport] enable: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-string/jumbo v3, "phoneEx"

    .line 406
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 408
    .local v2, "telephonyExService":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v2, :cond_0

    .line 409
    const-string/jumbo v3, "DataShapingUtils"

    const-string/jumbo v4, "[setLteAccessStratumReport] mTelephonyExService is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 410
    const/4 v3, 0x0

    return v3

    .line 412
    :cond_0
    const/4 v0, 0x0

    .line 414
    .local v0, "isSuccess":Z
    :try_start_0
    invoke-interface {v2, p1}, Lcom/mediatek/internal/telephony/ITelephonyEx;->setLteAccessStratumReport(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 418
    .end local v0    # "isSuccess":Z
    :goto_0
    const-string/jumbo v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[setLteAccessStratumReport] TelephonyManager return set result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 420
    return v0

    .line 415
    .restart local v0    # "isSuccess":Z
    :catch_0
    move-exception v1

    .line 416
    .local v1, "remoteException":Landroid/os/RemoteException;
    const-string/jumbo v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[setLteAccessStratumReport] remoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setLteAsReport()V
    .locals 6

    .prologue
    .line 89
    iget-object v3, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_0

    .line 90
    iget-object v3, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mContext:Landroid/content/Context;

    .line 91
    const-string/jumbo v4, "connectivity"

    .line 90
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    iput-object v3, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 93
    :cond_0
    iget-object v3, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 94
    .local v1, "networkInfo":Landroid/net/NetworkInfo;
    const/4 v2, -0x1

    .line 95
    .local v2, "networkType":I
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->isConnectedOrConnecting()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 96
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getType()I

    move-result v2

    .line 98
    :cond_1
    invoke-static {v2}, Landroid/net/ConnectivityManager;->isNetworkTypeMobile(I)Z

    move-result v0

    .line 99
    .local v0, "isMobile":Z
    const-string/jumbo v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[setLteAsReport] current network isMobile|"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 100
    const-string/jumbo v5, " mIsMobileConnection|"

    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 100
    iget-boolean v5, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsMobileConnection:Z

    .line 99
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 101
    iget-boolean v3, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsMobileConnection:Z

    if-eq v0, v3, :cond_2

    .line 102
    iput-boolean v0, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsMobileConnection:Z

    .line 103
    iget-boolean v3, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsMobileConnection:Z

    if-eqz v3, :cond_2

    .line 104
    iget-boolean v3, p0, Lcom/mediatek/datashaping/DataShapingUtils;->mIsMobileConnection:Z

    invoke-virtual {p0, v3}, Lcom/mediatek/datashaping/DataShapingUtils;->setLteAccessStratumReport(Z)Z

    .line 88
    :cond_2
    return-void
.end method

.method public setLteUplinkDataTransfer(ZI)Z
    .locals 6
    .param p1, "isOn"    # Z
    .param p2, "safeTimer"    # I

    .prologue
    .line 386
    const-string/jumbo v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[setLteUplinkDataTransfer] isOn: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string/jumbo v3, "phoneEx"

    .line 387
    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ITelephonyEx$Stub;->asInterface(Landroid/os/IBinder;)Lcom/mediatek/internal/telephony/ITelephonyEx;

    move-result-object v2

    .line 389
    .local v2, "telephonyExService":Lcom/mediatek/internal/telephony/ITelephonyEx;
    if-nez v2, :cond_0

    .line 390
    const-string/jumbo v3, "DataShapingUtils"

    const-string/jumbo v4, "[setLteUplinkDataTransfer] mTelephonyExService is null!"

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v3, 0x0

    return v3

    .line 393
    :cond_0
    const/4 v0, 0x0

    .line 395
    .local v0, "isSuccess":Z
    :try_start_0
    invoke-interface {v2, p1, p2}, Lcom/mediatek/internal/telephony/ITelephonyEx;->setLteUplinkDataTransfer(ZI)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 399
    .end local v0    # "isSuccess":Z
    :goto_0
    const-string/jumbo v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[setLteUplinkDataTransfer] TelephonyManager return set result: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    return v0

    .line 396
    .restart local v0    # "isSuccess":Z
    :catch_0
    move-exception v1

    .line 397
    .local v1, "remoteException":Landroid/os/RemoteException;
    const-string/jumbo v3, "DataShapingUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[setLteUplinkDataTransfer] remoteException: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
