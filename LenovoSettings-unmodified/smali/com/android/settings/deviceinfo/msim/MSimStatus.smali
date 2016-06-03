.class public Lcom/android/settings/deviceinfo/msim/MSimStatus;
.super Landroid/preference/PreferenceActivity;
.source "MSimStatus.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/deviceinfo/msim/MSimStatus$MyHandler;
    }
.end annotation


# static fields
.field private static final BUTTON_SELECT_SUB_KEY:Ljava/lang/String; = "button_aboutphone_msim_status"

.field private static final BUTTON_SELECT_SUB_KEY_QC_DUAL:Ljava/lang/String; = "button_aboutphone_msim_status_qcom_dual"

.field private static final BUTTON_SELECT_SUB_KEY_QC_SINGLE:Ljava/lang/String; = "button_aboutphone_msim_status_qcom_single"

.field private static final EVENT_UPDATE_STATS:I = 0x1f4

.field private static final KEY_BATTERY_LEVEL:Ljava/lang/String; = "battery_level"

.field private static final KEY_BATTERY_STATUS:Ljava/lang/String; = "battery_status"

.field private static final KEY_BT_ADDRESS:Ljava/lang/String; = "bt_address"

.field private static final KEY_IP_ADDRESS:Ljava/lang/String; = "wifi_ip_address"

.field private static final KEY_SERIAL_NUMBER:Ljava/lang/String; = "serial_number"

.field private static final KEY_WIFI_MAC_ADDRESS:Ljava/lang/String; = "wifi_mac_address"

.field private static final TAG:Ljava/lang/String; = "MSimStatus"


# instance fields
.field private mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

.field private mBatteryLevel:Landroid/preference/Preference;

.field private mBatteryStatus:Landroid/preference/Preference;

.field private mHandler:Landroid/os/Handler;

.field private mUptime:Landroid/preference/Preference;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 78
    invoke-direct {p0}, Landroid/preference/PreferenceActivity;-><init>()V

    .line 151
    new-instance v0, Lcom/android/settings/deviceinfo/msim/MSimStatus$1;

    invoke-direct {v0, p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus$1;-><init>(Lcom/android/settings/deviceinfo/msim/MSimStatus;)V

    iput-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/deviceinfo/msim/MSimStatus;)V
    .locals 0
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/msim/MSimStatus;

    .prologue
    .line 78
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->updateTimes()V

    return-void
.end method

.method static synthetic access$100(Lcom/android/settings/deviceinfo/msim/MSimStatus;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/msim/MSimStatus;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mBatteryLevel:Landroid/preference/Preference;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/settings/deviceinfo/msim/MSimStatus;)Landroid/preference/Preference;
    .locals 1
    .param p0, "x0"    # Lcom/android/settings/deviceinfo/msim/MSimStatus;

    .prologue
    .line 78
    iget-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mBatteryStatus:Landroid/preference/Preference;

    return-object v0
.end method

.method private convert(J)Ljava/lang/String;
    .locals 9
    .param p1, "t"    # J

    .prologue
    const-wide/16 v6, 0x3c

    .line 534
    rem-long v4, p1, v6

    long-to-int v2, v4

    .line 535
    .local v2, "s":I
    div-long v4, p1, v6

    rem-long/2addr v4, v6

    long-to-int v1, v4

    .line 536
    .local v1, "m":I
    const-wide/16 v4, 0xe10

    div-long v4, p1, v4

    long-to-int v0, v4

    .line 538
    .local v0, "h":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0, v2}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->pad(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private pad(I)Ljava/lang/String;
    .locals 2
    .param p1, "n"    # I

    .prologue
    .line 526
    const/16 v0, 0xa

    if-lt p1, v0, :cond_0

    .line 527
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .line 529
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private removePreferenceFromScreen(Ljava/lang/String;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 379
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    .line 380
    .local v0, "pref":Landroid/preference/Preference;
    if-eqz v0, :cond_0

    .line 381
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 383
    :cond_0
    return-void
.end method

.method private setBtStatus()V
    .locals 4

    .prologue
    .line 501
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v1

    .line 502
    .local v1, "bluetooth":Landroid/bluetooth/BluetoothAdapter;
    const-string v3, "bt_address"

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 504
    .local v2, "btAddressPref":Landroid/preference/Preference;
    if-nez v1, :cond_0

    .line 506
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    .line 512
    :goto_0
    return-void

    .line 508
    :cond_0
    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->isEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothAdapter;->getAddress()Ljava/lang/String;

    move-result-object v0

    .line 509
    .local v0, "address":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    .end local v0    # "address":Ljava/lang/String;
    :goto_2
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 508
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 509
    .restart local v0    # "address":Ljava/lang/String;
    :cond_2
    const v3, 0x7f0c0713

    invoke-virtual {p0, v3}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2
.end method

.method private setIpAddressStatus()V
    .locals 9

    .prologue
    const v8, 0x7f0c0713

    .line 471
    const-string v6, "wifi_ip_address"

    invoke-virtual {p0, v6}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    .line 472
    .local v4, "ipAddressPref":Landroid/preference/Preference;
    invoke-static {p0}, Lcom/android/settings/Utils;->getDefaultIpAddresses(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    .line 474
    .local v3, "ipAddress":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 476
    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 498
    :goto_0
    return-void

    .line 479
    :cond_0
    const-string v6, "\n"

    invoke-virtual {v3, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 480
    .local v5, "ipAfterSpalit":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    array-length v6, v5

    if-ge v2, v6, :cond_1

    .line 481
    aget-object v6, v5, v2

    const-string v7, "."

    invoke-virtual {v6, v7}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v6

    if-eqz v6, :cond_2

    .line 482
    aget-object v3, v5, v2

    .line 483
    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 484
    .local v0, "buff":[B
    array-length v1, v0

    .line 485
    .local v1, "f":I
    const/16 v6, 0x10

    if-ge v1, v6, :cond_2

    .line 490
    .end local v0    # "buff":[B
    .end local v1    # "f":I
    :cond_1
    if-eqz v3, :cond_3

    .line 491
    invoke-virtual {v4, v3}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 480
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 493
    :cond_3
    invoke-virtual {p0, v8}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v6}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setSummaryText(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "text"    # Ljava/lang/String;

    .prologue
    .line 399
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 400
    const-string p2, ""

    .line 404
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 405
    invoke-virtual {p0, p1}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    invoke-virtual {v0, p2}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 407
    :cond_1
    return-void
.end method

.method private setWifiStatus()V
    .locals 5

    .prologue
    .line 456
    const-string v4, "wifi"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/wifi/WifiManager;

    .line 457
    .local v3, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->getConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v1

    .line 459
    .local v1, "wifiInfo":Landroid/net/wifi/WifiInfo;
    const-string v4, "wifi_mac_address"

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    .line 461
    .local v2, "wifiMacAddressPref":Landroid/preference/Preference;
    if-nez v1, :cond_0

    const/4 v0, 0x0

    .line 463
    .local v0, "macAddress":Ljava/lang/String;
    :goto_0
    invoke-virtual {v3}, Landroid/net/wifi/WifiManager;->isWifiEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 464
    invoke-virtual {v2, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 468
    :goto_1
    return-void

    .line 461
    .end local v0    # "macAddress":Ljava/lang/String;
    :cond_0
    invoke-virtual {v1}, Landroid/net/wifi/WifiInfo;->getMacAddress()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 466
    .restart local v0    # "macAddress":Ljava/lang/String;
    :cond_1
    const v4, 0x7f0c0713

    invoke-virtual {p0, v4}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private updateSelectSubscribPref()V
    .locals 9

    .prologue
    const/4 v8, 0x2

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 300
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    .line 301
    .local v2, "root":Landroid/preference/PreferenceScreen;
    const-string v4, "button_aboutphone_msim_status"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 302
    .local v3, "selectSub":Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_0

    .line 303
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v1

    .line 304
    .local v1, "nSimNum":I
    if-le v1, v5, :cond_3

    .line 305
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 306
    .local v0, "intent":Landroid/content/Intent;
    const-string v4, "com.lenovo.geminisettings"

    const-string v7, "com.lenovo.geminisettings.MultiSimSettingTab"

    invoke-virtual {v0, v4, v7}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    invoke-virtual {v3, v0}, Landroid/preference/PreferenceScreen;->setIntent(Landroid/content/Intent;)V

    .line 313
    .end local v0    # "intent":Landroid/content/Intent;
    :goto_0
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 314
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->checkIntentValid(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 315
    invoke-static {p0}, Lcom/android/settings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_4

    if-lez v1, :cond_4

    move v4, v5

    :goto_1
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 321
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "nSimNum":I
    :cond_0
    :goto_2
    const-string v4, "button_aboutphone_msim_status_qcom_single"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .end local v3    # "selectSub":Landroid/preference/PreferenceScreen;
    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 322
    .restart local v3    # "selectSub":Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_1

    .line 323
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v1

    .line 324
    .restart local v1    # "nSimNum":I
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 325
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->checkIntentValid(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_7

    if-eq v1, v8, :cond_7

    .line 326
    invoke-static {p0}, Lcom/android/settings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_6

    if-lez v1, :cond_6

    move v4, v5

    :goto_3
    invoke-virtual {v3, v4}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 332
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "nSimNum":I
    :cond_1
    :goto_4
    const-string v4, "button_aboutphone_msim_status_qcom_dual"

    invoke-virtual {v2, v4}, Landroid/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v3

    .end local v3    # "selectSub":Landroid/preference/PreferenceScreen;
    check-cast v3, Landroid/preference/PreferenceScreen;

    .line 333
    .restart local v3    # "selectSub":Landroid/preference/PreferenceScreen;
    if-eqz v3, :cond_2

    .line 334
    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInstance(Landroid/content/Context;)Lcom/lenovo/settings/manager/TelephonyPlugin;

    move-result-object v4

    invoke-virtual {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->getApplicationContext()Landroid/content/Context;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/lenovo/settings/manager/TelephonyPlugin;->getInsertedSimCount(Landroid/content/Context;)I

    move-result v1

    .line 335
    .restart local v1    # "nSimNum":I
    invoke-virtual {v3}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 336
    .restart local v0    # "intent":Landroid/content/Intent;
    invoke-static {p0, v0}, Lcom/android/settings/Utils;->checkIntentValid(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v4

    if-eqz v4, :cond_9

    if-ne v1, v8, :cond_9

    .line 337
    invoke-static {p0}, Lcom/android/settings/Utils;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_8

    if-lez v1, :cond_8

    :goto_5
    invoke-virtual {v3, v5}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    .line 342
    .end local v0    # "intent":Landroid/content/Intent;
    .end local v1    # "nSimNum":I
    :cond_2
    :goto_6
    return-void

    .line 310
    .restart local v1    # "nSimNum":I
    :cond_3
    invoke-virtual {v3, v6}, Landroid/preference/PreferenceScreen;->setEnabled(Z)V

    goto :goto_0

    .restart local v0    # "intent":Landroid/content/Intent;
    :cond_4
    move v4, v6

    .line 315
    goto :goto_1

    .line 317
    :cond_5
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_2

    :cond_6
    move v4, v6

    .line 326
    goto :goto_3

    .line 328
    :cond_7
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_4

    :cond_8
    move v5, v6

    .line 337
    goto :goto_5

    .line 339
    :cond_9
    invoke-virtual {v2, v3}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_6
.end method

.method private updateTimes()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x3e8

    .line 515
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    div-long v0, v4, v6

    .line 516
    .local v0, "at":J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    div-long v2, v4, v6

    .line 518
    .local v2, "ut":J
    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_0

    .line 519
    const-wide/16 v2, 0x1

    .line 522
    :cond_0
    iget-object v4, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mUptime:Landroid/preference/Preference;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->convert(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 523
    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    .line 179
    invoke-super {p0, p1}, Landroid/preference/PreferenceActivity;->onCreate(Landroid/os/Bundle;)V

    .line 181
    new-instance v1, Lcom/android/settings/deviceinfo/msim/MSimStatus$MyHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/settings/deviceinfo/msim/MSimStatus$MyHandler;-><init>(Lcom/android/settings/deviceinfo/msim/MSimStatus;Lcom/android/settings/deviceinfo/msim/MSimStatus$1;)V

    iput-object v1, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mHandler:Landroid/os/Handler;

    .line 184
    const v1, 0x7f060012

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->addPreferencesFromResource(I)V

    .line 186
    const-string v1, "battery_level"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mBatteryLevel:Landroid/preference/Preference;

    .line 187
    const-string v1, "battery_status"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mBatteryStatus:Landroid/preference/Preference;

    .line 188
    const-string v1, "up_time"

    invoke-virtual {p0, v1}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mUptime:Landroid/preference/Preference;

    .line 218
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->updateSelectSubscribPref()V

    .line 237
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->setWifiStatus()V

    .line 238
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->setBtStatus()V

    .line 239
    invoke-direct {p0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->setIpAddressStatus()V

    .line 242
    const-string v1, "ro.serialno"

    const-string v2, "N/A"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 243
    .local v0, "serial":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 244
    const-string v1, "serial_number"

    invoke-direct {p0, v1, v0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->setSummaryText(Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    :goto_0
    return-void

    .line 246
    :cond_0
    const-string v1, "serial_number"

    invoke-direct {p0, v1}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->removePreferenceFromScreen(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 283
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onPause()V

    .line 291
    iget-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 296
    iget-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V

    .line 297
    return-void
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 254
    invoke-super {p0}, Landroid/preference/PreferenceActivity;->onResume()V

    .line 265
    iget-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mBatteryInfoReceiver:Landroid/content/BroadcastReceiver;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "android.intent.action.BATTERY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/deviceinfo/msim/MSimStatus;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 278
    iget-object v0, p0, Lcom/android/settings/deviceinfo/msim/MSimStatus;->mHandler:Landroid/os/Handler;

    const/16 v1, 0x1f4

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 279
    return-void
.end method
