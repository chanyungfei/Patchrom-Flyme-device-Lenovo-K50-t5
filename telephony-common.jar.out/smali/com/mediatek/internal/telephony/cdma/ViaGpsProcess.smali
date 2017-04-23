.class public Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;
.super Landroid/os/Handler;
.source "ViaGpsProcess.java"

# interfaces
.implements Lcom/mediatek/internal/telephony/cdma/IGpsProcess;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;,
        Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;,
        Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;
    }
.end annotation


# static fields
.field private static final CLOSE_DATA_CONNECTION:I = 0x1

.field private static final DATACALL_CONNECTED:I = 0x1

.field private static final DATACALL_DISCONNECTED:I = 0x0

.field private static final DATACALL_OTHER:I = 0x3

.field private static final DATACALL_WIFI:I = 0x2

.field private static final EVENT_DATA_CONNECT_STATUS_CHANGE:I = 0x3

.field private static final EVENT_GPS_APPLY_WAP_SRV:I = 0x1

.field private static final EVENT_GPS_MPC_SET_COMPLETE:I = 0x2

.field public static final EXTRAL_VIA_SIMU_REQUEST_PARAM:Ljava/lang/String; = "com.android.internal.telephony.via-simu-request-param"

.field private static final GPS_FIX_RESULT:I = 0x3

.field private static final GPS_START:I = 0x2

.field private static final GPS_STOP:I = 0x4

.field public static final INTENT_VIA_GPS_FIX_RESULT_NOTIFY:Ljava/lang/String; = "com.android.internal.telephony.via-gps-fix-result-notify"

.field public static final INTENT_VIA_GPS_FIX_RESULT_NOTIFY_EXTRA:Ljava/lang/String; = "via-gps-fix-result"

.field public static final INTENT_VIA_GPS_MPC_SETTING_NOTIFY:Ljava/lang/String; = "com.android.internal.telephony.via-gps-mpc-setting-notify"

.field public static final INTENT_VIA_GPS_MPC_SETTING_NOTIFY_IP_EXTRA:Ljava/lang/String; = "via-gps-mpc-setting-ip"

.field public static final INTENT_VIA_GPS_MPC_SETTING_NOTIFY_PORT_EXTRA:Ljava/lang/String; = "via-gps-mpc-setting-port"

.field public static final INTENT_VIA_GPS_MPC_SETTING_RESULT_NOTIFY:Ljava/lang/String; = "com.android.internal.telephony.via-gps-mpc-setting-result-notify"

.field public static final INTENT_VIA_GPS_MPC_SETTING_RESULT_NOTIFY_EXTRA:Ljava/lang/String; = "via-gps-mpc-setting-result"

.field public static final INTENT_VIA_SIMU_REQUEST:Ljava/lang/String; = "com.android.internal.telephony.via-simu-request"

.field static final LOG_TAG:Ljava/lang/String; = "VIA_GPS"

.field private static final LTE_DC_PHONE_PROXY_ID:I

.field private static final REQUEST_DATA_CONNECTION:I


# instance fields
.field private mAgpsDataEnabled:Z

.field private mAgpsInterface:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;

.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private mCM:Lcom/android/internal/telephony/CommandsInterface;

.field private mConnectivityManager:Landroid/net/ConnectivityManager;

.field private mContext:Landroid/content/Context;

.field private mDataEnabled:Z

.field private mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

.field private final mNetworkRequest:Landroid/net/NetworkRequest;

.field private mNotifiedNetworkType:I

.field private mNotifiedStatus:I

.field private mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

.field private mPhoneCount:I

.field private mPhoneStateListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$GpsProcessPhoneStateListener;",
            ">;"
        }
    .end annotation
.end field

.field private mReportedState:I

.field private mSimId:I

.field private mSlotCount:I

.field private mTeleMgr:Landroid/telephony/TelephonyManager;


# direct methods
.method static synthetic -get0(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mAgpsInterface:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;

    return-object v0
.end method

.method static synthetic -get1(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Lcom/android/internal/telephony/CommandsInterface;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    return-object v0
.end method

.method static synthetic -get2(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNotifiedNetworkType:I

    return v0
.end method

.method static synthetic -get3(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNotifiedStatus:I

    return v0
.end method

.method static synthetic -get4(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Lcom/android/internal/telephony/cdma/CDMAPhone;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    return-object v0
.end method

.method static synthetic -get5(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Ljava/util/List;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mPhoneStateListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic -get6(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)I
    .locals 1

    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mSlotCount:I

    return v0
.end method

.method static synthetic -get7(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)Landroid/telephony/TelephonyManager;
    .locals 1

    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mTeleMgr:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method static synthetic -set0(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;I)I
    .locals 0

    iput p1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNotifiedNetworkType:I

    return p1
.end method

.method static synthetic -set1(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;I)I
    .locals 0

    iput p1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNotifiedStatus:I

    return p1
.end method

.method static synthetic -set2(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;I)I
    .locals 0

    iput p1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mSlotCount:I

    return p1
.end method

.method static synthetic -wrap0(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;Lcom/android/internal/telephony/cdma/CDMAPhone;)Z
    .locals 1
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->isActiveCdmaPhone(Lcom/android/internal/telephony/cdma/CDMAPhone;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;ILandroid/os/Message;)V
    .locals 0
    .param p1, "state"    # I
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->requestAGPSTcpConnected(ILandroid/os/Message;)V

    return-void
.end method

.method static synthetic -wrap2(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)V
    .locals 0

    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->stopGpsWapService()V

    return-void
.end method

.method static synthetic -wrap3(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;[I)V
    .locals 0
    .param p1, "data"    # [I

    .prologue
    invoke-direct {p0, p1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->viaGpsEventHandler([I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    .line 179
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;I)V

    .line 177
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/cdma/CDMAPhone;Lcom/android/internal/telephony/CommandsInterface;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;
    .param p3, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p4, "simId"    # I

    .prologue
    const/4 v1, 0x0

    .line 152
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 115
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mReportedState:I

    .line 127
    iput v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mSlotCount:I

    .line 129
    iput v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mPhoneCount:I

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 131
    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mPhoneStateListeners:Ljava/util/List;

    .line 134
    iput v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNotifiedNetworkType:I

    .line 136
    const/4 v0, 0x1

    iput v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNotifiedStatus:I

    .line 141
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mDataEnabled:Z

    .line 142
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mAgpsDataEnabled:Z

    .line 437
    new-instance v0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;

    invoke-direct {v0, p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$1;-><init>(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 153
    iput-object p1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mContext:Landroid/content/Context;

    .line 154
    iput-object p2, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 155
    iput-object p3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    .line 156
    iput p4, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mSimId:I

    .line 158
    const-string/jumbo v0, "connectivity"

    .line 157
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mConnectivityManager:Landroid/net/ConnectivityManager;

    .line 159
    new-instance v0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;

    invoke-direct {v0, p2, p1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;-><init>(Lcom/android/internal/telephony/cdma/CDMAPhone;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mAgpsInterface:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;

    .line 161
    const-string/jumbo v0, "phone"

    .line 160
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mTeleMgr:Landroid/telephony/TelephonyManager;

    .line 163
    new-instance v0, Landroid/net/NetworkRequest$Builder;

    invoke-direct {v0}, Landroid/net/NetworkRequest$Builder;-><init>()V

    invoke-virtual {v0, v1}, Landroid/net/NetworkRequest$Builder;->addCapability(I)Landroid/net/NetworkRequest$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkRequest$Builder;->build()Landroid/net/NetworkRequest;

    move-result-object v0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNetworkRequest:Landroid/net/NetworkRequest;

    .line 166
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 167
    const-string/jumbo v0, "VIA_GPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Construct ViaGpsProcess this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    return-void
.end method

.method private getAgpsDataEnabled()Z
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 243
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 244
    .local v0, "defaultSubId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v2

    .line 245
    .local v2, "slotId":I
    const/4 v4, -0x1

    if-ne v2, v4, :cond_0

    .line 246
    const-string/jumbo v4, "VIA_GPS"

    const-string/jumbo v5, "getAgpsDataEnabled CSFB on slot"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 247
    return v7

    .line 249
    :cond_0
    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 250
    .local v3, "subIds":[I
    if-nez v3, :cond_1

    .line 251
    return v7

    .line 253
    :cond_1
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_3

    .line 254
    aget v4, v3, v1

    if-lez v4, :cond_2

    .line 255
    const-string/jumbo v4, "VIA_GPS"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Slot0 Sub = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", defaultSub = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 256
    aget v4, v3, v1

    if-ne v4, v0, :cond_2

    .line 257
    const/4 v4, 0x1

    return v4

    .line 253
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 261
    :cond_3
    return v7
.end method

.method private getDataConnectState()Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 5

    .prologue
    .line 324
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 325
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v2

    .line 326
    .local v2, "slotId":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 327
    const-string/jumbo v3, "VIA_GPS"

    const-string/jumbo v4, "getDataConnectState CSFB on slot"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v3

    .line 331
    :cond_0
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v0

    check-cast v0, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 332
    .local v0, "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    if-eqz v0, :cond_2

    .line 333
    invoke-virtual {v0}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getPsPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v1

    .line 334
    .local v1, "psPhone":Lcom/android/internal/telephony/PhoneBase;
    if-eqz v1, :cond_1

    .line 335
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->getDataConnectState(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v3

    return-object v3

    .line 337
    :cond_1
    const-string/jumbo v3, "VIA_GPS"

    const-string/jumbo v4, "Cannot get PS Phone"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 345
    .end local v1    # "psPhone":Lcom/android/internal/telephony/PhoneBase;
    :goto_0
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v3

    .line 340
    :cond_2
    const-string/jumbo v3, "VIA_GPS"

    const-string/jumbo v4, "Cannot get LteDcPhoneProxy"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 343
    .end local v0    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .end local v2    # "slotId":I
    :cond_3
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mPhone:Lcom/android/internal/telephony/cdma/CDMAPhone;

    invoke-direct {p0, v3}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->getDataConnectState(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v3

    return-object v3
.end method

.method private getDataConnectState(Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 6
    .param p1, "phone"    # Lcom/android/internal/telephony/PhoneBase;

    .prologue
    .line 349
    const-string/jumbo v3, "default"

    .line 348
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 351
    .local v0, "defaultState":Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string/jumbo v3, "mms"

    .line 350
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v1

    .line 353
    .local v1, "mmsState":Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string/jumbo v3, "supl"

    .line 352
    invoke-virtual {p1, v3}, Lcom/android/internal/telephony/PhoneBase;->getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v2

    .line 354
    .local v2, "suplState":Lcom/android/internal/telephony/PhoneConstants$DataState;
    const-string/jumbo v3, "VIA_GPS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "[VIA] getDataConnectState default: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 355
    const-string/jumbo v5, ", mms: "

    .line 354
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 356
    const-string/jumbo v5, ", supl: "

    .line 354
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 357
    const-string/jumbo v5, "phoneName"

    .line 354
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 357
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneName()Ljava/lang/String;

    move-result-object v5

    .line 354
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 358
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v0, v3, :cond_0

    .line 359
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v1, v3, :cond_1

    .line 361
    :cond_0
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v3

    .line 360
    :cond_1
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v2, v3, :cond_0

    .line 362
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v0, v3, :cond_2

    .line 363
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v1, v3, :cond_3

    .line 365
    :cond_2
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v3

    .line 364
    :cond_3
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-eq v2, v3, :cond_2

    .line 367
    sget-object v3, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    return-object v3
.end method

.method private isActiveCdmaPhone(Lcom/android/internal/telephony/cdma/CDMAPhone;)Z
    .locals 5
    .param p1, "phone"    # Lcom/android/internal/telephony/cdma/CDMAPhone;

    .prologue
    const/4 v4, 0x0

    .line 418
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 419
    invoke-static {}, Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteModeController;->getActiveSvlteModeSlotId()I

    move-result v2

    .line 420
    .local v2, "slotId":I
    const/4 v3, -0x1

    if-ne v2, v3, :cond_0

    .line 421
    return v4

    .line 424
    :cond_0
    invoke-static {v2}, Lcom/android/internal/telephony/PhoneFactory;->getPhone(I)Lcom/android/internal/telephony/Phone;

    move-result-object v1

    check-cast v1, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;

    .line 425
    .local v1, "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    if-eqz v1, :cond_1

    .line 426
    invoke-virtual {v1}, Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;->getNLtePhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/cdma/CDMAPhone;

    .line 427
    .local v0, "currentCDMAPhone":Lcom/android/internal/telephony/cdma/CDMAPhone;
    invoke-virtual {p1, v0}, Lcom/android/internal/telephony/cdma/CDMAPhone;->equals(Ljava/lang/Object;)Z

    move-result v3

    return v3

    .line 429
    .end local v0    # "currentCDMAPhone":Lcom/android/internal/telephony/cdma/CDMAPhone;
    :cond_1
    return v4

    .line 432
    .end local v1    # "lteDcPhoneProxy":Lcom/mediatek/internal/telephony/ltedc/LteDcPhoneProxy;
    .end local v2    # "slotId":I
    :cond_2
    const/4 v3, 0x1

    return v3
.end method

.method private onFixResultHandler(I)V
    .locals 4
    .param p1, "gpsStatus"    # I

    .prologue
    .line 311
    const-string/jumbo v1, "VIA_GPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[VIA] onFixResultHandler, gpsStatus = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.internal.telephony.via-gps-fix-result-notify"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 313
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "via-gps-fix-result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 314
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 310
    return-void
.end method

.method private onGpsMpcSetComplete(Z)V
    .locals 4
    .param p1, "success"    # Z

    .prologue
    .line 411
    const-string/jumbo v1, "VIA_GPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[VIA] onGpsMpcSetComplete, success = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.android.internal.telephony.via-gps-mpc-setting-result-notify"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 413
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "via-gps-mpc-setting-result"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 414
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 410
    return-void
.end method

.method private requestAGPSTcpConnected(ILandroid/os/Message;)V
    .locals 3
    .param p1, "state"    # I
    .param p2, "msg"    # Landroid/os/Message;

    .prologue
    .line 403
    const-string/jumbo v0, "VIA_GPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[VIA] requestAGPSTcpConnected("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "), mReportedState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 404
    iget v2, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mReportedState:I

    .line 403
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    iget v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mReportedState:I

    if-eq v0, p1, :cond_0

    .line 406
    iput p1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mReportedState:I

    .line 407
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->requestAGPSTcpConnected(ILandroid/os/Message;)V

    .line 402
    :cond_0
    return-void
.end method

.method private sendDataEnabledStatus()V
    .locals 6

    .prologue
    .line 265
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mTeleMgr:Landroid/telephony/TelephonyManager;

    invoke-virtual {v3}, Landroid/telephony/TelephonyManager;->getDataEnabled()Z

    move-result v1

    .line 266
    .local v1, "dataEnable":Z
    const-string/jumbo v3, "VIA_GPS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Data connection Enabled ?"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    if-eqz v1, :cond_4

    .line 268
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->getAgpsDataEnabled()Z

    move-result v0

    .line 269
    .local v0, "agpsDataEnable":Z
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mDataEnabled:Z

    if-ne v3, v1, :cond_0

    .line 270
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mAgpsDataEnabled:Z

    if-eq v0, v3, :cond_1

    .line 271
    :cond_0
    if-eqz v0, :cond_3

    .line 272
    const/4 v2, 0x1

    .line 274
    .local v2, "status":I
    :goto_0
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mAgpsInterface:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;

    invoke-virtual {v3, v2}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->setMobileDataStatus(I)V

    .line 276
    .end local v2    # "status":I
    :cond_1
    iput-boolean v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mAgpsDataEnabled:Z

    .line 277
    const-string/jumbo v3, "VIA_GPS"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Agps Data connection Enabled? "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-boolean v5, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mAgpsDataEnabled:Z

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    .end local v0    # "agpsDataEnable":Z
    :cond_2
    :goto_1
    iput-boolean v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mDataEnabled:Z

    .line 264
    return-void

    .line 273
    .restart local v0    # "agpsDataEnable":Z
    :cond_3
    const/4 v2, 0x2

    .restart local v2    # "status":I
    goto :goto_0

    .line 279
    .end local v0    # "agpsDataEnable":Z
    .end local v2    # "status":I
    :cond_4
    iget-boolean v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mDataEnabled:Z

    if-eq v3, v1, :cond_2

    .line 280
    iget-object v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mAgpsInterface:Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$AgpsInterface;->setMobileDataStatus(I)V

    goto :goto_1
.end method

.method private startGpsWapService()V
    .locals 4

    .prologue
    .line 371
    const-string/jumbo v1, "VIA_GPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[VIA] startGpsWapService this =  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 372
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->getDataConnectState()Lcom/android/internal/telephony/PhoneConstants$DataState;

    move-result-object v0

    .line 376
    .local v0, "dataState":Lcom/android/internal/telephony/PhoneConstants$DataState;
    const/4 v1, -0x1

    iput v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mReportedState:I

    .line 378
    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    if-ne v1, v0, :cond_0

    .line 379
    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->requestAGPSTcpConnected(ILandroid/os/Message;)V

    .line 370
    :goto_0
    return-void

    .line 381
    :cond_0
    const-string/jumbo v1, "VIA_GPS"

    const-string/jumbo v2, "[VIA] start requestNetwork"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    new-instance v1, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$2;

    invoke-direct {v1, p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess$2;-><init>(Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;)V

    iput-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    .line 399
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNetworkRequest:Landroid/net/NetworkRequest;

    iget-object v3, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v1, v2, v3}, Landroid/net/ConnectivityManager;->requestNetwork(Landroid/net/NetworkRequest;Landroid/net/ConnectivityManager$NetworkCallback;)V

    goto :goto_0
.end method

.method private stopGpsWapService()V
    .locals 3

    .prologue
    .line 317
    const-string/jumbo v0, "VIA_GPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "[VIA] stopGpsWapService() this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 319
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 316
    :cond_0
    return-void
.end method

.method private viaGpsEventHandler([I)V
    .locals 4
    .param p1, "data"    # [I

    .prologue
    .line 287
    const/4 v2, 0x0

    aget v0, p1, v2

    .line 288
    .local v0, "event":I
    const/4 v2, 0x1

    aget v1, p1, v2

    .line 290
    .local v1, "gpsStatus":I
    packed-switch v0, :pswitch_data_0

    .line 286
    :goto_0
    :pswitch_0
    return-void

    .line 292
    :pswitch_1
    const-string/jumbo v2, "VIA_GPS"

    const-string/jumbo v3, "[VIA] GPS Request data connection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->startGpsWapService()V

    goto :goto_0

    .line 296
    :pswitch_2
    const-string/jumbo v2, "VIA_GPS"

    const-string/jumbo v3, "[VIA] GPS Stop data connection"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->stopGpsWapService()V

    goto :goto_0

    .line 302
    :pswitch_3
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->onFixResultHandler(I)V

    goto :goto_0

    .line 290
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 216
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 237
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 213
    :goto_0
    return-void

    .line 218
    :pswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 219
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    .line 220
    .local v1, "data":[I
    invoke-direct {p0, v1}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->viaGpsEventHandler([I)V

    goto :goto_0

    .line 225
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "data":[I
    :pswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 226
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v3, :cond_0

    const/4 v2, 0x1

    .line 227
    .local v2, "success":Z
    :goto_1
    invoke-direct {p0, v2}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->onGpsMpcSetComplete(Z)V

    goto :goto_0

    .line 226
    .end local v2    # "success":Z
    :cond_0
    const/4 v2, 0x0

    .restart local v2    # "success":Z
    goto :goto_1

    .line 232
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v2    # "success":Z
    :pswitch_2
    invoke-direct {p0}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->sendDataEnabledStatus()V

    goto :goto_0

    .line 216
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public start()V
    .locals 4

    .prologue
    .line 186
    const-string/jumbo v1, "VIA_GPS"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "start() this = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-interface {v1, p0, v2, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForViaGpsEvent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 190
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 193
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.android.internal.telephony.via-gps-mpc-setting-notify"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 194
    const-string/jumbo v1, "com.android.internal.telephony.via-simu-request"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 195
    const-string/jumbo v1, "android.intent.action.ACTION_SUBINFO_RECORD_UPDATED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 185
    return-void
.end method

.method public stop()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 203
    const-string/jumbo v0, "VIA_GPS"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "stop() this = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mCM:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForViaGpsEvent(Landroid/os/Handler;)V

    .line 205
    const/4 v0, 0x0

    invoke-direct {p0, v0, v3}, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->requestAGPSTcpConnected(ILandroid/os/Message;)V

    .line 206
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    if-eqz v0, :cond_0

    .line 207
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mConnectivityManager:Landroid/net/ConnectivityManager;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mNetworkCallback:Landroid/net/ConnectivityManager$NetworkCallback;

    invoke-virtual {v0, v1}, Landroid/net/ConnectivityManager;->unregisterNetworkCallback(Landroid/net/ConnectivityManager$NetworkCallback;)V

    .line 209
    :cond_0
    iget-object v0, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/mediatek/internal/telephony/cdma/ViaGpsProcess;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 202
    return-void
.end method
