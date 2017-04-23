.class public Lcom/mediatek/internal/telephony/ImsSwitchController;
.super Landroid/os/Handler;
.source "ImsSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;,
        Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;,
        Lcom/mediatek/internal/telephony/ImsSwitchController$1;
    }
.end annotation


# static fields
.field static final DEFAULT_IMS_STATE:I = 0x0

.field static final DEFAULT_INVALID_PHONE_ID:I = -0x1

.field static final DEFAULT_MAJOR_CAPABILITY_PHONE_ID:I = 0x0

.field static final DISABLE_WIFI_FLIGHTMODE:I = 0x1

.field protected static final EVENT_CONNECTIVITY_CHANGE:I = 0x6

.field protected static final EVENT_DC_SWITCH_STATE_CHANGE:I = 0x5

.field protected static final EVENT_RADIO_AVAILABLE_PHONE1:I = 0x2

.field protected static final EVENT_RADIO_AVAILABLE_PHONE2:I = 0x4

.field protected static final EVENT_RADIO_NOT_AVAILABLE_PHONE1:I = 0x1

.field protected static final EVENT_RADIO_NOT_AVAILABLE_PHONE2:I = 0x3

.field public static final IMS_SERVICE:Ljava/lang/String; = "ims"

.field static final LOG_TAG:Ljava/lang/String; = "ImsSwitchController"

.field public static final NW_SUB_TYPE_IMS:Ljava/lang/String; = "IMS"

.field public static final NW_TYPE_WIFI:Ljava/lang/String; = "MOBILE_IMS"

.field private static mImsService:Lcom/android/ims/internal/IImsService;


# instance fields
.field private REASON_INVALID:I

.field private mCi:[Lcom/android/internal/telephony/CommandsInterface;

.field private mContext:Landroid/content/Context;

.field private mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

.field private mDeathRecipient:Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;

.field private final mIntentReceiver:Landroid/content/BroadcastReceiver;

.field private mIsInVoLteCall:Z

.field protected final mLock:Ljava/lang/Object;

.field private mNeedTurnOffWifi:Z

.field private mPhoneCount:I

.field private mRadioPowerIf:Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;

.field private mReason:I


# direct methods
.method static synthetic -get0(Lcom/mediatek/internal/telephony/ImsSwitchController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/internal/telephony/ImsSwitchController;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mReason:I

    return v0
.end method

.method static synthetic -set0(Lcom/android/ims/internal/IImsService;)Lcom/android/ims/internal/IImsService;
    .locals 0

    sput-object p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    return-object p0
.end method

.method static synthetic -set1(Lcom/mediatek/internal/telephony/ImsSwitchController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    return p1
.end method

.method static synthetic -set2(Lcom/mediatek/internal/telephony/ImsSwitchController;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mNeedTurnOffWifi:Z

    return p1
.end method

.method static synthetic -set3(Lcom/mediatek/internal/telephony/ImsSwitchController;I)I
    .locals 0

    iput p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mReason:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/internal/telephony/ImsSwitchController;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->isImsDeregisterRequired()Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/mediatek/internal/telephony/ImsSwitchController;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->confirmPreCheckDetachIfNeed()V

    return-void
.end method

.method static synthetic -wrap2(Ljava/lang/String;)V
    .locals 0
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    invoke-static {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic -wrap3(Lcom/mediatek/internal/telephony/ImsSwitchController;IILcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 0
    .param p1, "phoneId"    # I
    .param p2, "phoneType"    # I
    .param p3, "phoneState"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    invoke-direct {p0, p1, p2, p3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->onReceivePhoneStateChange(IILcom/android/internal/telephony/PhoneConstants$State;)V

    return-void
.end method

.method static synthetic -wrap4(Lcom/mediatek/internal/telephony/ImsSwitchController;I)V
    .locals 0
    .param p1, "wifiState"    # I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->onReceiveWifiStateChange(I)V

    return-void
.end method

.method static synthetic -wrap5(Lcom/mediatek/internal/telephony/ImsSwitchController;ZI)V
    .locals 0
    .param p1, "on"    # Z
    .param p2, "phoneId"    # I

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    sput-object v0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    .line 76
    return-void
.end method

.method constructor <init>(Landroid/content/Context;I[Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phoneCount"    # I
    .param p3, "ci"    # [Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 113
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 89
    iput-object v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .line 91
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    .line 92
    new-instance v1, Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;

    invoke-direct {v1, p0, v3}, Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;-><init>(Lcom/mediatek/internal/telephony/ImsSwitchController;Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDeathRecipient:Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;

    .line 94
    iput-boolean v4, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mNeedTurnOffWifi:Z

    .line 95
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->REASON_INVALID:I

    .line 96
    iget v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->REASON_INVALID:I

    iput v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mReason:I

    .line 98
    new-instance v1, Ljava/lang/Object;

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mLock:Ljava/lang/Object;

    .line 395
    new-instance v1, Lcom/mediatek/internal/telephony/ImsSwitchController$1;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ImsSwitchController$1;-><init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    .line 115
    const-string/jumbo v1, "Initialize ImsSwitchController"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 117
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    .line 118
    iput-object p3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    .line 119
    iput p2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mPhoneCount:I

    .line 122
    const-string/jumbo v1, "ro.mtk_ims_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 123
    const-string/jumbo v1, "ro.mtk_tc1_feature"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 113
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "com.android.ims.IMS_SERVICE_DOWN"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 126
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 127
    const-string/jumbo v1, "android.intent.action.SUBSCRIPTION_PHONE_STATE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 128
    const-string/jumbo v1, "android.intent.action.ACTION_SET_RADIO_CAPABILITY_DONE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 130
    const-string/jumbo v1, "ro.mtk_wfc_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 131
    const-string/jumbo v1, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 132
    const-string/jumbo v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 134
    :cond_2
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIntentReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 135
    new-instance v1, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;-><init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mRadioPowerIf:Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;

    .line 136
    const-string/jumbo v1, "ImsSwitchController"

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mRadioPowerIf:Lcom/mediatek/internal/telephony/ImsSwitchController$RadioPowerInterface;

    invoke-static {v1, v2}, Lcom/mediatek/internal/telephony/RadioManager;->registerForRadioPowerChange(Ljava/lang/String;Lcom/mediatek/internal/telephony/IRadioPower;)V

    .line 138
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v4

    invoke-interface {v1, p0, v5, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 139
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v4

    const/4 v2, 0x2

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 141
    iget v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mPhoneCount:I

    if-le v1, v5, :cond_0

    .line 142
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v5

    const/4 v2, 0x3

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 143
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mCi:[Lcom/android/internal/telephony/CommandsInterface;

    aget-object v1, v1, v5

    const/4 v2, 0x4

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private checkAndBindImsService(I)V
    .locals 4
    .param p1, "phoneId"    # I

    .prologue
    .line 176
    const-string/jumbo v2, "ims"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 178
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_0

    .line 180
    :try_start_0
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDeathRecipient:Lcom/mediatek/internal/telephony/ImsSwitchController$ImsServiceDeathRecipient;

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/os/IBinder;->linkToDeath(Landroid/os/IBinder$DeathRecipient;I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 185
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/android/ims/internal/IImsService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/ims/internal/IImsService;

    move-result-object v2

    sput-object v2, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    .line 186
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "checkAndBindImsService: mImsService = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-object v3, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 175
    return-void

    .line 181
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private confirmPreCheckDetachIfNeed()V
    .locals 3

    .prologue
    .line 386
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 387
    :try_start_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    if-eqz v0, :cond_0

    .line 388
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "confirmPreCheckDetachIfNeed, phoneId:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 389
    iget-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->confirmPreCheckDetach()Z

    .line 390
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 385
    return-void

    .line 386
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private eventIdtoString(I)Ljava/lang/String;
    .locals 1
    .param p1, "what"    # I

    .prologue
    .line 437
    const/4 v0, 0x0

    .line 438
    .local v0, "str":Ljava/lang/String;
    packed-switch p1, :pswitch_data_0

    .line 458
    .end local v0    # "str":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 440
    .restart local v0    # "str":Ljava/lang/String;
    :pswitch_0
    const-string/jumbo v0, "RADIO_NOT_AVAILABLE_PHONE1"

    .local v0, "str":Ljava/lang/String;
    goto :goto_0

    .line 443
    .local v0, "str":Ljava/lang/String;
    :pswitch_1
    const-string/jumbo v0, "RADIO_NOT_AVAILABLE_PHONE2"

    .local v0, "str":Ljava/lang/String;
    goto :goto_0

    .line 446
    .local v0, "str":Ljava/lang/String;
    :pswitch_2
    const-string/jumbo v0, "RADIO_AVAILABLE_PHONE1"

    .local v0, "str":Ljava/lang/String;
    goto :goto_0

    .line 449
    .local v0, "str":Ljava/lang/String;
    :pswitch_3
    const-string/jumbo v0, "RADIO_AVAILABLE_PHONE2"

    .local v0, "str":Ljava/lang/String;
    goto :goto_0

    .line 452
    .local v0, "str":Ljava/lang/String;
    :pswitch_4
    const-string/jumbo v0, "DC_SWITCH_STATE_CHANGE"

    .local v0, "str":Ljava/lang/String;
    goto :goto_0

    .line 438
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method private handleConnectivityChange()V
    .locals 11

    .prologue
    .line 578
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    .line 579
    const-string/jumbo v10, "connectivity"

    .line 578
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    .line 581
    .local v0, "connectivityManager":Landroid/net/ConnectivityManager;
    const/16 v9, 0xb

    .line 580
    invoke-virtual {v0, v9}, Landroid/net/ConnectivityManager;->getNetworkInfo(I)Landroid/net/NetworkInfo;

    move-result-object v3

    .line 582
    .local v3, "nwInfo":Landroid/net/NetworkInfo;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v6

    .line 583
    .local v6, "typeName":Ljava/lang/String;
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v5

    .line 584
    .local v5, "subTypeName":Ljava/lang/String;
    const/4 v2, 0x1

    .line 586
    .local v2, "isEpdgConnected":Z
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    .line 585
    invoke-static {v9}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v7

    .line 587
    .local v7, "volteEnabled":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleConnectivityChange typeName ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 588
    const-string/jumbo v10, " subTypeName = "

    .line 587
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 588
    const-string/jumbo v10, " volteEnabled = "

    .line 587
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 589
    const-string/jumbo v10, " mNeedTurnOffWifi = "

    .line 587
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 589
    iget-boolean v10, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mNeedTurnOffWifi:Z

    .line 587
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 591
    iget-boolean v9, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mNeedTurnOffWifi:Z

    if-eqz v9, :cond_1

    const-string/jumbo v9, "MOBILE_IMS"

    invoke-virtual {v9, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 593
    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v2

    .line 594
    .local v2, "isEpdgConnected":Z
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "handleConnectivityChange isEpdgConnected ="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 595
    if-nez v2, :cond_1

    .line 596
    iget-object v9, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    .line 597
    const-string/jumbo v10, "wifi"

    .line 596
    invoke-virtual {v9, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/WifiManager;

    .line 598
    .local v8, "wifiManager":Landroid/net/wifi/WifiManager;
    iget v9, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mReason:I

    invoke-virtual {v8, v9}, Landroid/net/wifi/WifiManager;->setWifiDisabled(I)Z

    .line 599
    const/4 v9, 0x0

    iput-boolean v9, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mNeedTurnOffWifi:Z

    .line 602
    if-eqz v7, :cond_1

    .line 603
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v4

    .line 605
    .local v4, "phoneId":I
    sget-object v9, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    if-nez v9, :cond_0

    .line 606
    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/ImsSwitchController;->checkAndBindImsService(I)V

    .line 609
    :cond_0
    sget-object v9, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    if-eqz v9, :cond_2

    .line 611
    :try_start_0
    sget-object v9, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v9, v4}, Lcom/android/ims/internal/IImsService;->turnOnIms(I)V

    .line 612
    const-string/jumbo v9, "handleConnectivityChange:turnOnIms"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 577
    .end local v2    # "isEpdgConnected":Z
    .end local v4    # "phoneId":I
    .end local v8    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_1
    :goto_0
    return-void

    .line 613
    .restart local v2    # "isEpdgConnected":Z
    .restart local v4    # "phoneId":I
    .restart local v8    # "wifiManager":Landroid/net/wifi/WifiManager;
    :catch_0
    move-exception v1

    .line 614
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v9, "RemoteException can\'t turn off ims"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 617
    .end local v1    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string/jumbo v9, "onReceivePhoneStateChange: ImsService not ready !!!"

    invoke-static {v9}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private handleDcStateAttaching(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V
    .locals 6
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .prologue
    const/4 v5, 0x1

    .line 267
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 268
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleDcStateAttaching param.getPhoneId():"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 271
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 272
    const-string/jumbo v3, "volte_vt_enabled"

    .line 273
    const/4 v4, 0x1

    .line 270
    invoke-static {v1, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 274
    .local v0, "imsSetting":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "handleDcStateAttaching, param.getPhoneId():"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 275
    const-string/jumbo v3, " imsSetting:"

    .line 274
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 276
    if-ne v0, v5, :cond_0

    .line 277
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v1

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    if-ne v1, v3, :cond_0

    .line 278
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v1

    const/4 v3, 0x1

    invoke-direct {p0, v3, v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v2

    .line 266
    return-void

    .line 267
    .end local v0    # "imsSetting":I
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1
.end method

.method private handleDcStatePreCheckDisconnect(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V
    .locals 8
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .prologue
    const/4 v7, 0x1

    .line 284
    iget-object v4, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 285
    :try_start_0
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    if-eqz v3, :cond_0

    .line 286
    const-string/jumbo v3, "handleDcStatePreCheckDisconnect, in volte call, suspend DcState preCheck"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 287
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v4

    .line 288
    return-void

    .line 292
    :cond_0
    :try_start_1
    iget-object v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 293
    const-string/jumbo v5, "volte_vt_enabled"

    .line 294
    const/4 v6, 0x1

    .line 291
    invoke-static {v3, v5, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 295
    .local v1, "imsSetting":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "handleDcStatePreCheckDisconnect, param.getPhoneId():"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 296
    const-string/jumbo v5, " imsSetting:"

    .line 295
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 298
    if-ne v1, v7, :cond_4

    .line 299
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v3

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v5

    if-ne v3, v5, :cond_4

    .line 300
    sget-object v3, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    if-nez v3, :cond_1

    .line 301
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v3

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->checkAndBindImsService(I)V

    .line 304
    :cond_1
    sget-object v3, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v3, :cond_3

    .line 305
    const/4 v2, 0x0

    .line 307
    .local v2, "state":I
    :try_start_2
    sget-object v3, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v3}, Lcom/android/ims/internal/IImsService;->getImsState()I
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v2

    .line 312
    :goto_0
    if-eqz v2, :cond_2

    .line 314
    :try_start_3
    sget-object v3, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v5

    invoke-interface {v3, v5}, Lcom/android/ims/internal/IImsService;->turnOffIms(I)V
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 318
    :goto_1
    :try_start_4
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .end local v2    # "state":I
    :goto_2
    monitor-exit v4

    .line 283
    return-void

    .line 308
    .restart local v2    # "state":I
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_5
    const-string/jumbo v3, "RemoteException can\'t get ims state"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 284
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "imsSetting":I
    .end local v2    # "state":I
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3

    .line 315
    .restart local v1    # "imsSetting":I
    .restart local v2    # "state":I
    :catch_1
    move-exception v0

    .line 316
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_6
    const-string/jumbo v3, "RemoteException can\'t turn off ims"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 320
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    const-string/jumbo v3, "handleDcStatePreCheckDisconnect: ims is disable and confirm directly"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 321
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->confirmPreCheckDetach()Z

    goto :goto_2

    .line 324
    .end local v2    # "state":I
    :cond_3
    const-string/jumbo v3, "handleDcStatePreCheckDisconnect: ImsService not ready !!!"

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 325
    iput-object p1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    goto :goto_2

    .line 328
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->confirmPreCheckDetach()Z
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2
.end method

.method private isImsDeregisterRequired()Z
    .locals 11

    .prologue
    const/16 v10, 0x63

    const/4 v9, 0x1

    .line 527
    const/16 v4, 0x3e7

    .line 528
    .local v4, "regStat":I
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    .line 529
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoicePhoneId()I

    move-result v8

    .line 528
    invoke-static {v7, v8}, Lcom/android/ims/ImsManager;->getInstance(Landroid/content/Context;I)Lcom/android/ims/ImsManager;

    move-result-object v1

    .line 530
    .local v1, "imsManager":Lcom/android/ims/ImsManager;
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    .line 531
    const-string/jumbo v8, "phone"

    .line 530
    invoke-virtual {v7, v8}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/telephony/TelephonyManager;

    .line 533
    .local v5, "telephonyMgr":Landroid/telephony/TelephonyManager;
    iget-object v7, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    .line 532
    invoke-static {v7}, Lcom/android/ims/ImsManager;->isEnhanced4gLteModeSettingEnabledByUser(Landroid/content/Context;)Z

    move-result v6

    .line 534
    .local v6, "volteEnabled":Z
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    .line 536
    .local v3, "phoneId":I
    invoke-static {v3}, Landroid/telephony/SubscriptionManager;->getSubIdUsingPhoneId(I)I

    move-result v7

    .line 535
    invoke-virtual {v5, v7}, Landroid/telephony/TelephonyManager;->getNetworkType(I)I

    move-result v2

    .line 538
    .local v2, "netType":I
    invoke-virtual {v1}, Lcom/android/ims/ImsManager;->getWfcStatusCode()I

    move-result v4

    .line 540
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "isImsDeregisterRequired regStat = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " mReason = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 541
    iget v8, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mReason:I

    .line 540
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 541
    const-string/jumbo v8, "netType = "

    .line 540
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 541
    const-string/jumbo v8, " phoneId = "

    .line 540
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 542
    const-string/jumbo v8, " volteEnabled = "

    .line 540
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 547
    if-ne v10, v4, :cond_2

    iget v7, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mReason:I

    if-ne v7, v9, :cond_2

    .line 550
    :cond_0
    sget-object v7, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    if-nez v7, :cond_1

    .line 551
    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->checkAndBindImsService(I)V

    .line 554
    :cond_1
    sget-object v7, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    if-eqz v7, :cond_4

    .line 556
    :try_start_0
    sget-object v7, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v7, v3}, Lcom/android/ims/internal/IImsService;->turnOffIms(I)V

    .line 557
    const-string/jumbo v7, "IMS registration true, turnOffIms"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 565
    :goto_0
    return v9

    .line 548
    :cond_2
    if-ne v10, v4, :cond_3

    .line 549
    const/16 v7, 0xd

    if-ne v2, v7, :cond_0

    const/4 v6, 0x0

    .line 568
    .end local v6    # "volteEnabled":Z
    :cond_3
    const-string/jumbo v7, "IMS registration false"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 569
    const/4 v7, 0x0

    return v7

    .line 558
    .restart local v6    # "volteEnabled":Z
    :catch_0
    move-exception v0

    .line 559
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v7, "RemoteException can\'t turn off ims"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 562
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_4
    const-string/jumbo v7, "onReceivePhoneStateChange: ImsService not ready !!!"

    invoke-static {v7}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .prologue
    .line 624
    const-string/jumbo v0, "ImsSwitchController"

    invoke-static {v0, p0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-void
.end method

.method private onReceiveDcSwitchStateChange(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V
    .locals 2
    .param p1, "param"    # Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .prologue
    .line 334
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "handleMessage param.getState: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getState()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " param.getReason(): "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getReason()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 335
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "predetachcheck"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 337
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->handleDcStatePreCheckDisconnect(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V

    .line 333
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    const-string/jumbo v1, "attaching"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 340
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getReason()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Lost Connection"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 341
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->handleDcStateAttaching(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V

    goto :goto_0
.end method

.method private onReceivePhoneStateChange(IILcom/android/internal/telephony/PhoneConstants$State;)V
    .locals 4
    .param p1, "phoneId"    # I
    .param p2, "phoneType"    # I
    .param p3, "phoneState"    # Lcom/android/internal/telephony/PhoneConstants$State;

    .prologue
    .line 350
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 351
    :try_start_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "onReceivePhoneStateChange phoneId:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 352
    const-string/jumbo v3, " phoneType: "

    .line 351
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 352
    const-string/jumbo v3, " phoneState: "

    .line 351
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 353
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "mIsInVoLteCall: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 356
    iget-boolean v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    if-eqz v1, :cond_3

    .line 357
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v1

    if-ne p1, v1, :cond_1

    .line 358
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne p3, v1, :cond_1

    .line 359
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z

    .line 360
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    if-eqz v1, :cond_1

    .line 361
    sget-object v1, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    if-nez v1, :cond_0

    .line 362
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->checkAndBindImsService(I)V

    .line 365
    :cond_0
    sget-object v1, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_2

    .line 367
    :try_start_1
    sget-object v1, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mDcStateParam:Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    invoke-virtual {v3}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;->getPhoneId()I

    move-result v3

    invoke-interface {v1, v3}, Lcom/android/ims/internal/IImsService;->turnOffIms(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v2

    .line 349
    return-void

    .line 368
    :catch_0
    move-exception v0

    .line 369
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_2
    const-string/jumbo v1, "RemoteException can\'t turn on ims"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 350
    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 372
    :cond_2
    :try_start_3
    const-string/jumbo v1, "onReceivePhoneStateChange: ImsService not ready !!!"

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    :cond_3
    const/4 v1, 0x5

    if-ne p2, v1, :cond_1

    .line 378
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq p3, v1, :cond_1

    .line 379
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mIsInVoLteCall:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method private onReceiveWifiStateChange(I)V
    .locals 5
    .param p1, "wifiState"    # I

    .prologue
    const/4 v4, 0x1

    .line 511
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 512
    const-string/jumbo v2, "wfc_ims_enabled"

    .line 513
    const/4 v3, 0x0

    .line 510
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 514
    .local v0, "wfcSettings":I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onReceiveWifiStateChange wifiState = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " wfcsetting:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 516
    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    .line 517
    if-ne v0, v4, :cond_0

    .line 518
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v1

    invoke-direct {p0, v4, v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->switchImsCapability(ZI)V

    .line 509
    :cond_0
    return-void
.end method

.method private registerEvent()V
    .locals 6

    .prologue
    .line 235
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "registerEvent, major phoneid:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 237
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v1

    .line 238
    new-instance v2, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const-string/jumbo v4, "ImsSwitchController"

    const/4 v5, 0x1

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;-><init>(Lcom/android/internal/telephony/dataconnection/DctController;Ljava/lang/String;Z)V

    .line 237
    const/4 v3, 0x5

    const/4 v4, 0x0

    invoke-virtual {v1, p0, v3, v4, v2}, Lcom/android/internal/telephony/dataconnection/DctController;->registerForDcSwitchStateChange(Landroid/os/Handler;ILjava/lang/Object;Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V

    .line 240
    const-string/jumbo v1, "ro.mtk_wfc_support"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "1"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 241
    iget-object v1, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "wifi"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/wifi/WifiManager;

    .line 242
    .local v0, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v0}, Landroid/net/wifi/WifiManager;->getWifiState()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->onReceiveWifiStateChange(I)V

    .line 243
    new-instance v1, Lcom/mediatek/internal/telephony/ImsSwitchController$2;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/ImsSwitchController$2;-><init>(Lcom/mediatek/internal/telephony/ImsSwitchController;)V

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiManager;->addWifiOffListener(Landroid/net/wifi/WifiManager$WifiOffListener;)V

    .line 234
    .end local v0    # "wifiManager":Landroid/net/wifi/WifiManager;
    :cond_0
    return-void
.end method

.method private switchImsCapability(ZI)V
    .locals 5
    .param p1, "on"    # Z
    .param p2, "phoneId"    # I

    .prologue
    const/4 v4, 0x0

    .line 201
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "switchImsCapability, on:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " phoneId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 202
    sget-object v2, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    if-nez v2, :cond_0

    .line 203
    invoke-direct {p0, p2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->checkAndBindImsService(I)V

    .line 206
    :cond_0
    sget-object v2, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    if-eqz v2, :cond_4

    .line 207
    if-eqz p1, :cond_2

    .line 209
    :try_start_0
    sget-object v2, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v2, p2}, Lcom/android/ims/internal/IImsService;->turnOnIms(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 200
    :cond_1
    :goto_0
    return-void

    .line 210
    :catch_0
    move-exception v0

    .line 211
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "RemoteException can\'t turn on ims"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 216
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_2
    iget-object v2, p0, Lcom/mediatek/internal/telephony/ImsSwitchController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 217
    const-string/jumbo v3, "wfc_ims_enabled"

    .line 215
    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 220
    .local v1, "wfcSettings":I
    const-string/jumbo v2, "ro.mtk_wfc_support"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "1"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 221
    if-nez v1, :cond_1

    .line 223
    :cond_3
    :try_start_1
    sget-object v2, Lcom/mediatek/internal/telephony/ImsSwitchController;->mImsService:Lcom/android/ims/internal/IImsService;

    invoke-interface {v2, p2}, Lcom/android/ims/internal/IImsService;->turnOffIms(I)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 224
    :catch_1
    move-exception v0

    .line 225
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "RemoteException can\'t turn off ims"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 230
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "wfcSettings":I
    :cond_4
    const-string/jumbo v2, "switchImsCapability: ImsService not ready !!!"

    invoke-static {v2}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private unregisterEvent()V
    .locals 2

    .prologue
    .line 261
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "unregisterEvent, major phoneid:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 262
    invoke-static {}, Lcom/android/internal/telephony/dataconnection/DctController;->getInstance()Lcom/android/internal/telephony/dataconnection/DctController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/dataconnection/DctController;->unregisterForDcSwitchStateChange(Landroid/os/Handler;)V

    .line 260
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v5, 0x1

    .line 463
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 464
    .local v0, "ar":Landroid/os/AsyncResult;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage msg.what: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->what:I

    invoke-direct {p0, v4}, Lcom/mediatek/internal/telephony/ImsSwitchController;->eventIdtoString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/mediatek/internal/telephony/ImsSwitchController;->log(Ljava/lang/String;)V

    .line 465
    const/4 v2, 0x0

    .line 466
    .local v2, "phoneId":I
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 499
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 462
    :cond_0
    :goto_0
    return-void

    .line 469
    :pswitch_0
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    if-nez v3, :cond_0

    .line 470
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->unregisterEvent()V

    goto :goto_0

    .line 475
    :pswitch_1
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 476
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->unregisterEvent()V

    goto :goto_0

    .line 481
    :pswitch_2
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    if-nez v3, :cond_0

    .line 482
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->registerEvent()V

    goto :goto_0

    .line 487
    :pswitch_3
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioCapabilitySwitchUtil;->getMainCapabilityPhoneId()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 488
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->registerEvent()V

    goto :goto_0

    .line 492
    :pswitch_4
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;

    .line 493
    .local v1, "param":Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/ImsSwitchController;->onReceiveDcSwitchStateChange(Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;)V

    goto :goto_0

    .line 496
    .end local v1    # "param":Lcom/android/internal/telephony/dataconnection/DctController$DcStateParam;
    :pswitch_5
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/ImsSwitchController;->handleConnectivityChange()V

    goto :goto_0

    .line 466
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
