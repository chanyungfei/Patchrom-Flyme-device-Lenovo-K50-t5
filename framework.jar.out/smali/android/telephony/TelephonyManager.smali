.class public Landroid/telephony/TelephonyManager;
.super Ljava/lang/Object;
.source "TelephonyManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/telephony/TelephonyManager$WifiCallingChoices;,
        Landroid/telephony/TelephonyManager$MultiSimVariants;
    }
.end annotation


# static fields
.field private static synthetic -android_telephony_TelephonyManager$MultiSimVariantsSwitchesValues:[I = null

.field public static final ACTION_CONFIGURE_VOICEMAIL:Ljava/lang/String; = "android.telephony.action.CONFIGURE_VOICEMAIL"

.field public static final ACTION_EMERGENCY_ASSISTANCE:Ljava/lang/String; = "android.telephony.action.EMERGENCY_ASSISTANCE"

.field public static final ACTION_PHONE_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PHONE_STATE"

.field public static final ACTION_PRECISE_CALL_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PRECISE_CALL_STATE"

.field public static final ACTION_PRECISE_DATA_CONNECTION_STATE_CHANGED:Ljava/lang/String; = "android.intent.action.PRECISE_DATA_CONNECTION_STATE_CHANGED"

.field public static final ACTION_RESPOND_VIA_MESSAGE:Ljava/lang/String; = "android.intent.action.RESPOND_VIA_MESSAGE"

.field public static final CALL_STATE_IDLE:I = 0x0

.field public static final CALL_STATE_OFFHOOK:I = 0x2

.field public static final CALL_STATE_RINGING:I = 0x1

.field public static final CARRIER_PRIVILEGE_STATUS_ERROR_LOADING_RULES:I = -0x2

.field public static final CARRIER_PRIVILEGE_STATUS_HAS_ACCESS:I = 0x1

.field public static final CARRIER_PRIVILEGE_STATUS_NO_ACCESS:I = 0x0

.field public static final CARRIER_PRIVILEGE_STATUS_RULES_NOT_LOADED:I = -0x1

.field public static final DATA_ACTIVITY_DORMANT:I = 0x4

.field public static final DATA_ACTIVITY_IN:I = 0x1

.field public static final DATA_ACTIVITY_INOUT:I = 0x3

.field public static final DATA_ACTIVITY_NONE:I = 0x0

.field public static final DATA_ACTIVITY_OUT:I = 0x2

.field public static final DATA_CONNECTED:I = 0x2

.field public static final DATA_CONNECTING:I = 0x1

.field public static final DATA_DISCONNECTED:I = 0x0

.field public static final DATA_SUSPENDED:I = 0x3

.field public static final DATA_UNKNOWN:I = -0x1

.field public static final EMERGENCY_ASSISTANCE_ENABLED:Z = false

.field public static final EXTRA_BACKGROUND_CALL_STATE:Ljava/lang/String; = "background_state"

.field public static final EXTRA_DATA_APN:Ljava/lang/String; = "apn"

.field public static final EXTRA_DATA_APN_TYPE:Ljava/lang/String; = "apnType"

.field public static final EXTRA_DATA_CHANGE_REASON:Ljava/lang/String; = "reason"

.field public static final EXTRA_DATA_FAILURE_CAUSE:Ljava/lang/String; = "failCause"

.field public static final EXTRA_DATA_LINK_PROPERTIES_KEY:Ljava/lang/String; = "linkProperties"

.field public static final EXTRA_DATA_NETWORK_TYPE:Ljava/lang/String; = "networkType"

.field public static final EXTRA_DATA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_DISCONNECT_CAUSE:Ljava/lang/String; = "disconnect_cause"

.field public static final EXTRA_FOREGROUND_CALL_STATE:Ljava/lang/String; = "foreground_state"

.field public static final EXTRA_INCOMING_NUMBER:Ljava/lang/String; = "incoming_number"

.field public static final EXTRA_PRECISE_DISCONNECT_CAUSE:Ljava/lang/String; = "precise_disconnect_cause"

.field public static final EXTRA_RINGING_CALL_STATE:Ljava/lang/String; = "ringing_state"

.field public static final EXTRA_STATE:Ljava/lang/String; = "state"

.field public static final EXTRA_STATE_IDLE:Ljava/lang/String;

.field public static final EXTRA_STATE_OFFHOOK:Ljava/lang/String;

.field public static final EXTRA_STATE_RINGING:Ljava/lang/String;

.field public static final NETWORK_CLASS_2_G:I = 0x1

.field public static final NETWORK_CLASS_3_G:I = 0x2

.field public static final NETWORK_CLASS_4_G:I = 0x3

.field public static final NETWORK_CLASS_UNKNOWN:I = 0x0

.field public static final NETWORK_TYPE_1xRTT:I = 0x7

.field public static final NETWORK_TYPE_CDMA:I = 0x4

.field public static final NETWORK_TYPE_DC_DPA:I = 0x85

.field public static final NETWORK_TYPE_DC_HSDPAP:I = 0x87

.field public static final NETWORK_TYPE_DC_HSDPAP_DPA:I = 0x89

.field public static final NETWORK_TYPE_DC_HSDPAP_UPA:I = 0x88

.field public static final NETWORK_TYPE_DC_HSPAP:I = 0x8a

.field public static final NETWORK_TYPE_DC_UPA:I = 0x86

.field public static final NETWORK_TYPE_EDGE:I = 0x2

.field public static final NETWORK_TYPE_EHRPD:I = 0xe

.field public static final NETWORK_TYPE_EVDO_0:I = 0x5

.field public static final NETWORK_TYPE_EVDO_A:I = 0x6

.field public static final NETWORK_TYPE_EVDO_B:I = 0xc

.field public static final NETWORK_TYPE_GPRS:I = 0x1

.field public static final NETWORK_TYPE_GSM:I = 0x10

.field public static final NETWORK_TYPE_HSDPA:I = 0x8

.field public static final NETWORK_TYPE_HSDPAP:I = 0x81

.field public static final NETWORK_TYPE_HSDPAP_UPA:I = 0x82

.field public static final NETWORK_TYPE_HSPA:I = 0xa

.field public static final NETWORK_TYPE_HSPAP:I = 0xf

.field public static final NETWORK_TYPE_HSUPA:I = 0x9

.field public static final NETWORK_TYPE_HSUPAP:I = 0x83

.field public static final NETWORK_TYPE_HSUPAP_DPA:I = 0x84

.field public static final NETWORK_TYPE_IDEN:I = 0xb

.field public static final NETWORK_TYPE_IWLAN:I = 0x12

.field public static final NETWORK_TYPE_LTE:I = 0xd

.field public static final NETWORK_TYPE_LTEA:I = 0x8b

.field public static final NETWORK_TYPE_MTK_BASE:I = 0x80

.field public static final NETWORK_TYPE_TD_SCDMA:I = 0x11

.field public static final NETWORK_TYPE_UMTS:I = 0x3

.field public static final NETWORK_TYPE_UNKNOWN:I = 0x0

.field public static final PHONE_TYPE_CDMA:I = 0x2

.field public static final PHONE_TYPE_GSM:I = 0x1

.field public static final PHONE_TYPE_NONE:I = 0x0

.field public static final PHONE_TYPE_SIP:I = 0x3

.field public static final SIM_ACTIVATION_RESULT_CANCELED:I = 0x4

.field public static final SIM_ACTIVATION_RESULT_COMPLETE:I = 0x0

.field public static final SIM_ACTIVATION_RESULT_FAILED:I = 0x3

.field public static final SIM_ACTIVATION_RESULT_IN_PROGRESS:I = 0x2

.field public static final SIM_ACTIVATION_RESULT_NOT_SUPPORTED:I = 0x1

.field public static final SIM_STATE_ABSENT:I = 0x1

.field public static final SIM_STATE_CARD_IO_ERROR:I = 0x8

.field public static final SIM_STATE_NETWORK_LOCKED:I = 0x4

.field public static final SIM_STATE_NOT_READY:I = 0x6

.field public static final SIM_STATE_PERM_DISABLED:I = 0x7

.field public static final SIM_STATE_PIN_REQUIRED:I = 0x2

.field public static final SIM_STATE_PUK_REQUIRED:I = 0x3

.field public static final SIM_STATE_READY:I = 0x5

.field public static final SIM_STATE_UNKNOWN:I = 0x0

.field private static final TAG:Ljava/lang/String; = "TelephonyManager"

.field public static final VVM_TYPE_CVVM:Ljava/lang/String; = "vvm_type_cvvm"

.field public static final VVM_TYPE_OMTP:Ljava/lang/String; = "vvm_type_omtp"

.field private static multiSimConfig:Ljava/lang/String;

.field private static sInstance:Landroid/telephony/TelephonyManager;

.field private static final sKernelCmdLine:Ljava/lang/String;

.field private static final sLteOnCdmaProductType:Ljava/lang/String;

.field private static final sProductTypePattern:Ljava/util/regex/Pattern;

.field private static sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

.field private mSubscriptionManager:Landroid/telephony/SubscriptionManager;


# direct methods
.method private static synthetic -getandroid_telephony_TelephonyManager$MultiSimVariantsSwitchesValues()[I
    .locals 3

    sget-object v0, Landroid/telephony/TelephonyManager;->-android_telephony_TelephonyManager$MultiSimVariantsSwitchesValues:[I

    if-eqz v0, :cond_0

    sget-object v0, Landroid/telephony/TelephonyManager;->-android_telephony_TelephonyManager$MultiSimVariantsSwitchesValues:[I

    return-object v0

    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager$MultiSimVariants;->values()[Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    :try_start_0
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_3

    :goto_0
    :try_start_1
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_2

    :goto_1
    :try_start_2
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_1

    :goto_2
    :try_start_3
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/TelephonyManager$MultiSimVariants;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v1

    const/4 v2, 0x4

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_0

    :goto_3
    sput-object v0, Landroid/telephony/TelephonyManager;->-android_telephony_TelephonyManager$MultiSimVariantsSwitchesValues:[I

    return-object v0

    :catch_0
    move-exception v1

    goto :goto_3

    :catch_1
    move-exception v1

    goto :goto_2

    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_0
.end method

.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 101
    const-string/jumbo v0, "persist.radio.multisim.config"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 100
    sput-object v0, Landroid/telephony/TelephonyManager;->multiSimConfig:Ljava/lang/String;

    .line 151
    new-instance v0, Landroid/telephony/TelephonyManager;

    invoke-direct {v0}, Landroid/telephony/TelephonyManager;-><init>()V

    sput-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    .line 339
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_IDLE:Ljava/lang/String;

    .line 345
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->RINGING:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_RINGING:Ljava/lang/String;

    .line 351
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    invoke-virtual {v0}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->EXTRA_STATE_OFFHOOK:Ljava/lang/String;

    .line 1158
    invoke-static {}, Landroid/telephony/TelephonyManager;->getProcCmdLine()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/telephony/TelephonyManager;->sKernelCmdLine:Ljava/lang/String;

    .line 1162
    const-string/jumbo v0, "\\sproduct_type\\s*=\\s*(\\w+)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    .line 1161
    sput-object v0, Landroid/telephony/TelephonyManager;->sProductTypePattern:Ljava/util/regex/Pattern;

    .line 1166
    const-string/jumbo v0, "telephony.lteOnCdmaProductType"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1165
    sput-object v0, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    .line 78
    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 140
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5037
    iput-object v1, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    .line 141
    iput-object v1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 144
    :try_start_0
    const-class v1, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    iput-object v1, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    :goto_0
    return-void

    .line 145
    :catch_0
    move-exception v0

    .line 146
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "Fail to create plug-in"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5037
    iput-object v2, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    .line 118
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 119
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 120
    iput-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    .line 124
    :goto_0
    iget-object v2, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v2

    iput-object v2, p0, Landroid/telephony/TelephonyManager;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 127
    :try_start_0
    const-class v2, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-static {v2, v3}, Lcom/mediatek/common/MPlugin;->createInstance(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    iput-object v2, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 133
    :goto_1
    sget-object v2, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    if-nez v2, :cond_0

    .line 135
    const-string/jumbo v2, "telephony.registry"

    .line 134
    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/ITelephonyRegistry$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephonyRegistry;

    move-result-object v2

    sput-object v2, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    .line 117
    :cond_0
    return-void

    .line 122
    :cond_1
    iput-object p1, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Fail to create plug-in"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method

.method public static from(Landroid/content/Context;)Landroid/telephony/TelephonyManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 217
    const-string/jumbo v0, "phone"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method public static getDefault()Landroid/telephony/TelephonyManager;
    .locals 1

    .prologue
    .line 156
    sget-object v0, Landroid/telephony/TelephonyManager;->sInstance:Landroid/telephony/TelephonyManager;

    return-object v0
.end method

.method private static getDefaultPhone()I
    .locals 1

    .prologue
    .line 3407
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    return v0
.end method

.method private static getDefaultSubscription()I
    .locals 1

    .prologue
    .line 3400
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    return v0
.end method

.method private getITelephony()Lcom/android/internal/telephony/ITelephony;
    .locals 1

    .prologue
    .line 2859
    const-string/jumbo v0, "phone"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    return-object v0
.end method

.method public static getIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 3489
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3490
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 3491
    const-string/jumbo v3, ","

    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3492
    .local v2, "valArray":[Ljava/lang/String;
    if-ltz p2, :cond_0

    array-length v3, v2

    if-ge p2, v3, :cond_0

    aget-object v3, v2, p2

    if-eqz v3, :cond_0

    .line 3494
    :try_start_0
    aget-object v3, v2, p2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3495
    :catch_0
    move-exception v0

    .line 3500
    .end local v2    # "valArray":[Ljava/lang/String;
    :cond_0
    new-instance v3, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v3, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static getIntWithSubId(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 7
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "subId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/provider/Settings$SettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 4546
    :try_start_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 4547
    :catch_0
    move-exception v1

    .line 4549
    .local v1, "e":Landroid/provider/Settings$SettingNotFoundException;
    :try_start_1
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I

    move-result v3

    .line 4550
    .local v3, "val":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v3}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4555
    move v0, v3

    .line 4556
    .local v0, "default_val":I
    const-string/jumbo v4, "mobile_data"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4557
    const-string/jumbo v4, "true"

    .line 4558
    const-string/jumbo v5, "ro.com.android.mobiledata"

    const-string/jumbo v6, "true"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4557
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4558
    const/4 v0, 0x1

    .line 4564
    :cond_0
    :goto_0
    if-eq v0, v3, :cond_1

    .line 4565
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 4568
    :cond_1
    return v3

    .line 4558
    :cond_2
    const/4 v0, 0x0

    goto :goto_0

    .line 4559
    :cond_3
    const-string/jumbo v4, "data_roaming"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4560
    const-string/jumbo v4, "true"

    .line 4561
    const-string/jumbo v5, "ro.com.android.dataroaming"

    const-string/jumbo v6, "false"

    invoke-static {v5, v6}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 4560
    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v4

    if-eqz v4, :cond_4

    .line 4561
    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    const/4 v0, 0x0

    goto :goto_0

    .line 4569
    .end local v0    # "default_val":I
    .end local v3    # "val":I
    :catch_1
    move-exception v2

    .line 4570
    .local v2, "exc":Landroid/provider/Settings$SettingNotFoundException;
    new-instance v4, Landroid/provider/Settings$SettingNotFoundException;

    invoke-direct {v4, p1}, Landroid/provider/Settings$SettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method public static getLteOnCdmaModeStatic()I
    .locals 7

    .prologue
    const/4 v5, -0x1

    .line 1181
    const-string/jumbo v2, ""

    .line 1183
    .local v2, "productType":Ljava/lang/String;
    const-string/jumbo v4, "telephony.lteOnCdmaDevice"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1185
    .local v0, "curVal":I
    move v3, v0

    .line 1186
    .local v3, "retVal":I
    if-ne v3, v5, :cond_0

    .line 1187
    sget-object v4, Landroid/telephony/TelephonyManager;->sProductTypePattern:Ljava/util/regex/Pattern;

    sget-object v5, Landroid/telephony/TelephonyManager;->sKernelCmdLine:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 1188
    .local v1, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1189
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    .line 1190
    sget-object v4, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1191
    const/4 v3, 0x1

    .line 1200
    .end local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    const-string/jumbo v4, "TelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getLteOnCdmaMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " curVal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1201
    const-string/jumbo v6, " product_type=\'"

    .line 1200
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1202
    const-string/jumbo v6, "\' lteOnCdmaProductType=\'"

    .line 1200
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1202
    sget-object v6, Landroid/telephony/TelephonyManager;->sLteOnCdmaProductType:Ljava/lang/String;

    .line 1200
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1202
    const-string/jumbo v6, "\'"

    .line 1200
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1203
    return v3

    .line 1193
    .restart local v1    # "matcher":Ljava/util/regex/Matcher;
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 1196
    :cond_2
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public static getNetworkClass(I)I
    .locals 1
    .param p0, "networkType"    # I

    .prologue
    .line 1650
    packed-switch p0, :pswitch_data_0

    .line 1673
    const/4 v0, 0x0

    return v0

    .line 1657
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 1668
    :pswitch_1
    const/4 v0, 0x2

    return v0

    .line 1671
    :pswitch_2
    const/4 v0, 0x3

    return v0

    .line 1650
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public static getNetworkTypeName(I)Ljava/lang/String;
    .locals 1
    .param p0, "type"    # I

    .prologue
    .line 1697
    packed-switch p0, :pswitch_data_0

    .line 1735
    const-string/jumbo v0, "UNKNOWN"

    return-object v0

    .line 1699
    :pswitch_0
    const-string/jumbo v0, "GPRS"

    return-object v0

    .line 1701
    :pswitch_1
    const-string/jumbo v0, "EDGE"

    return-object v0

    .line 1703
    :pswitch_2
    const-string/jumbo v0, "UMTS"

    return-object v0

    .line 1705
    :pswitch_3
    const-string/jumbo v0, "HSDPA"

    return-object v0

    .line 1707
    :pswitch_4
    const-string/jumbo v0, "HSUPA"

    return-object v0

    .line 1709
    :pswitch_5
    const-string/jumbo v0, "HSPA"

    return-object v0

    .line 1711
    :pswitch_6
    const-string/jumbo v0, "CDMA"

    return-object v0

    .line 1713
    :pswitch_7
    const-string/jumbo v0, "CDMA - EvDo rev. 0"

    return-object v0

    .line 1715
    :pswitch_8
    const-string/jumbo v0, "CDMA - EvDo rev. A"

    return-object v0

    .line 1717
    :pswitch_9
    const-string/jumbo v0, "CDMA - EvDo rev. B"

    return-object v0

    .line 1719
    :pswitch_a
    const-string/jumbo v0, "CDMA - 1xRTT"

    return-object v0

    .line 1721
    :pswitch_b
    const-string/jumbo v0, "LTE"

    return-object v0

    .line 1723
    :pswitch_c
    const-string/jumbo v0, "CDMA - eHRPD"

    return-object v0

    .line 1725
    :pswitch_d
    const-string/jumbo v0, "iDEN"

    return-object v0

    .line 1727
    :pswitch_e
    const-string/jumbo v0, "HSPA+"

    return-object v0

    .line 1729
    :pswitch_f
    const-string/jumbo v0, "GSM"

    return-object v0

    .line 1731
    :pswitch_10
    const-string/jumbo v0, "TD_SCDMA"

    return-object v0

    .line 1733
    :pswitch_11
    const-string/jumbo v0, "IWLAN"

    return-object v0

    .line 1697
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_a
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_d
        :pswitch_9
        :pswitch_b
        :pswitch_c
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
    .end packed-switch
.end method

.method private getOpPackageName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 167
    :cond_0
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getPhoneType(I)I
    .locals 3
    .param p0, "networkMode"    # I

    .prologue
    const/4 v2, 0x2

    const/4 v1, 0x1

    .line 1098
    packed-switch p0, :pswitch_data_0

    .line 1125
    return v1

    .line 1102
    :pswitch_0
    return v2

    .line 1111
    :pswitch_1
    return v1

    .line 1116
    :pswitch_2
    return v2

    .line 1119
    :pswitch_3
    invoke-static {}, Landroid/telephony/TelephonyManager;->getLteOnCdmaModeStatic()I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 1120
    return v2

    .line 1122
    :cond_0
    return v1

    .line 1098
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_3
        :pswitch_1
    .end packed-switch
.end method

.method private getPhoneTypeFromNetworkType()I
    .locals 1

    .prologue
    .line 1073
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType(I)I

    move-result v0

    return v0
.end method

.method private getPhoneTypeFromNetworkType(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1081
    const-string/jumbo v1, "ro.telephony.default_network"

    invoke-static {p1, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1082
    .local v0, "mode":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1083
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-static {v1}, Landroid/telephony/TelephonyManager;->getPhoneType(I)I

    move-result v1

    return v1

    .line 1085
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method private getPhoneTypeFromProperty()I
    .locals 1

    .prologue
    .line 1059
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v0

    return v0
.end method

.method private getPhoneTypeFromProperty(I)I
    .locals 3
    .param p1, "phoneId"    # I

    .prologue
    const/4 v2, 0x0

    .line 1065
    const-string/jumbo v1, "gsm.current.phone-type"

    .line 1064
    invoke-static {p1, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1066
    .local v0, "type":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1067
    :cond_0
    invoke-direct {p0, p1}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromNetworkType(I)I

    move-result v1

    return v1

    .line 1069
    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    return v1
.end method

.method private static getProcCmdLine()Ljava/lang/String;
    .locals 10

    .prologue
    .line 1134
    const-string/jumbo v1, ""

    .line 1135
    .local v1, "cmdline":Ljava/lang/String;
    const/4 v5, 0x0

    .line 1137
    .local v5, "is":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    const-string/jumbo v7, "/proc/cmdline"

    invoke-direct {v6, v7}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1138
    .end local v5    # "is":Ljava/io/FileInputStream;
    .local v6, "is":Ljava/io/FileInputStream;
    const/16 v7, 0x800

    :try_start_1
    new-array v0, v7, [B

    .line 1139
    .local v0, "buffer":[B
    invoke-virtual {v6, v0}, Ljava/io/FileInputStream;->read([B)I

    move-result v3

    .line 1140
    .local v3, "count":I
    if-lez v3, :cond_0

    .line 1141
    new-instance v2, Ljava/lang/String;

    const/4 v7, 0x0

    invoke-direct {v2, v0, v7, v3}, Ljava/lang/String;-><init>([BII)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .end local v1    # "cmdline":Ljava/lang/String;
    .local v2, "cmdline":Ljava/lang/String;
    move-object v1, v2

    .line 1146
    .end local v2    # "cmdline":Ljava/lang/String;
    .restart local v1    # "cmdline":Ljava/lang/String;
    :cond_0
    if-eqz v6, :cond_1

    .line 1148
    :try_start_2
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    :cond_1
    :goto_0
    move-object v5, v6

    .line 1153
    .end local v0    # "buffer":[B
    .end local v3    # "count":I
    .end local v6    # "is":Ljava/io/FileInputStream;
    :cond_2
    :goto_1
    const-string/jumbo v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "/proc/cmdline="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    return-object v1

    .line 1149
    .restart local v0    # "buffer":[B
    .restart local v3    # "count":I
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_0
    move-exception v4

    .local v4, "e":Ljava/io/IOException;
    goto :goto_0

    .line 1143
    .end local v0    # "buffer":[B
    .end local v3    # "count":I
    .end local v4    # "e":Ljava/io/IOException;
    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    :catch_1
    move-exception v4

    .line 1144
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v4    # "e":Ljava/io/IOException;
    :goto_2
    :try_start_3
    const-string/jumbo v7, "TelephonyManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "No /proc/cmdline exception="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1146
    if-eqz v5, :cond_2

    .line 1148
    :try_start_4
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    goto :goto_1

    .line 1149
    :catch_2
    move-exception v4

    goto :goto_1

    .line 1145
    .end local v4    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v7

    .line 1146
    :goto_3
    if-eqz v5, :cond_3

    .line 1148
    :try_start_5
    invoke-virtual {v5}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 1145
    :cond_3
    :goto_4
    throw v7

    .line 1149
    :catch_3
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    goto :goto_4

    .line 1145
    .end local v4    # "e":Ljava/io/IOException;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catchall_1
    move-exception v7

    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .local v5, "is":Ljava/io/FileInputStream;
    goto :goto_3

    .line 1143
    .end local v5    # "is":Ljava/io/FileInputStream;
    .restart local v6    # "is":Ljava/io/FileInputStream;
    :catch_4
    move-exception v4

    .restart local v4    # "e":Ljava/io/IOException;
    move-object v5, v6

    .end local v6    # "is":Ljava/io/FileInputStream;
    .restart local v5    # "is":Ljava/io/FileInputStream;
    goto :goto_2
.end method

.method private getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    .locals 1

    .prologue
    .line 2662
    const-string/jumbo v0, "iphonesubinfo"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telephony/IPhoneSubInfo$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v0

    return-object v0
.end method

.method private getTelecomService()Lcom/android/internal/telecom/ITelecomService;
    .locals 1

    .prologue
    .line 2866
    const-string/jumbo v0, "telecom"

    invoke-static {v0}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Lcom/android/internal/telecom/ITelecomService$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telecom/ITelecomService;

    move-result-object v0

    return-object v0
.end method

.method public static getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p0, "phoneId"    # I
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defaultVal"    # Ljava/lang/String;

    .prologue
    .line 3560
    const/4 v1, 0x0

    .line 3561
    .local v1, "propVal":Ljava/lang/String;
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3562
    .local v0, "prop":Ljava/lang/String;
    const-string/jumbo v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getTelephonyProperty prop value= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3563
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 3564
    const-string/jumbo v3, ","

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 3565
    .local v2, "values":[Ljava/lang/String;
    if-ltz p0, :cond_0

    array-length v3, v2

    if-ge p0, v3, :cond_0

    aget-object v3, v2, p0

    if-eqz v3, :cond_0

    .line 3566
    aget-object v1, v2, p0

    .line 3569
    .end local v1    # "propVal":Ljava/lang/String;
    .end local v2    # "values":[Ljava/lang/String;
    :cond_0
    if-nez v1, :cond_1

    .end local p2    # "defaultVal":Ljava/lang/String;
    :goto_0
    return-object p2

    .restart local p2    # "defaultVal":Ljava/lang/String;
    :cond_1
    move-object p2, v1

    goto :goto_0
.end method

.method public static putIntAtIndex(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 8
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "index"    # I
    .param p3, "value"    # I

    .prologue
    .line 3520
    const-string/jumbo v0, ""

    .line 3521
    .local v0, "data":Ljava/lang/String;
    const/4 v4, 0x0

    .line 3522
    .local v4, "valArray":[Ljava/lang/String;
    invoke-static {p0, p1}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 3524
    .local v3, "v":Ljava/lang/String;
    const v5, 0x7fffffff

    if-ne p2, v5, :cond_0

    .line 3525
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "putIntAtIndex index == MAX_VALUE index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3527
    :cond_0
    if-gez p2, :cond_1

    .line 3528
    new-instance v5, Ljava/lang/RuntimeException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "putIntAtIndex index < 0 index="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 3530
    :cond_1
    if-eqz v3, :cond_2

    .line 3531
    const-string/jumbo v5, ","

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 3535
    .end local v4    # "valArray":[Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p2, :cond_4

    .line 3536
    const-string/jumbo v2, ""

    .line 3537
    .local v2, "str":Ljava/lang/String;
    if-eqz v4, :cond_3

    array-length v5, v4

    if-ge v1, v5, :cond_3

    .line 3538
    aget-object v2, v4, v1

    .line 3540
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3535
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3543
    .end local v2    # "str":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3546
    if-eqz v4, :cond_5

    .line 3547
    add-int/lit8 v1, p2, 0x1

    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_5

    .line 3548
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v4, v1

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3547
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 3551
    :cond_5
    invoke-static {p0, p1, v0}, Landroid/provider/Settings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    return v5
.end method

.method public static setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p0, "phoneId"    # I
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 3421
    const-string/jumbo v3, ""

    .line 3422
    .local v3, "propVal":Ljava/lang/String;
    const/4 v1, 0x0

    .line 3423
    .local v1, "p":[Ljava/lang/String;
    invoke-static {p1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 3425
    .local v2, "prop":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 3426
    const-string/jumbo p2, ""

    .line 3429
    :cond_0
    if-eqz v2, :cond_1

    .line 3430
    const-string/jumbo v5, ","

    invoke-virtual {v2, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 3433
    .end local v1    # "p":[Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v5

    if-nez v5, :cond_2

    .line 3434
    const-string/jumbo v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setTelephonyProperty: invalid phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3435
    const-string/jumbo v7, " property="

    .line 3434
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3435
    const-string/jumbo v7, " value: "

    .line 3434
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3435
    const-string/jumbo v7, " prop="

    .line 3434
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3436
    return-void

    .line 3439
    :cond_2
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, p0, :cond_4

    .line 3440
    const-string/jumbo v4, ""

    .line 3441
    .local v4, "str":Ljava/lang/String;
    if-eqz v1, :cond_3

    array-length v5, v1

    if-ge v0, v5, :cond_3

    .line 3442
    aget-object v4, v1, v0

    .line 3444
    :cond_3
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3439
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3447
    .end local v4    # "str":Ljava/lang/String;
    :cond_4
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3448
    if-eqz v1, :cond_5

    .line 3449
    add-int/lit8 v0, p0, 0x1

    :goto_1
    array-length v5, v1

    if-ge v0, v5, :cond_5

    .line 3450
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ","

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v1, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 3449
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3454
    :cond_5
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x1f

    if-gt v5, v6, :cond_6

    .line 3455
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0x5b

    if-le v5, v6, :cond_7

    .line 3456
    :cond_6
    const-string/jumbo v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setTelephonyProperty: property to long phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3457
    const-string/jumbo v7, " property="

    .line 3456
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3457
    const-string/jumbo v7, " value: "

    .line 3456
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3457
    const-string/jumbo v7, " propVal="

    .line 3456
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3458
    return-void

    .line 3461
    :cond_7
    const-string/jumbo v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "setTelephonyProperty: success phoneId="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3462
    const-string/jumbo v7, " property="

    .line 3461
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3462
    const-string/jumbo v7, " value: "

    .line 3461
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 3462
    const-string/jumbo v7, " propVal="

    .line 3461
    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3463
    invoke-static {p1, v3}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 3420
    return-void
.end method


# virtual methods
.method public answerRingingCall()V
    .locals 4

    .prologue
    .line 4104
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4105
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4106
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->answerRingingCall()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4102
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 4107
    :catch_0
    move-exception v0

    .line 4108
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#answerRingingCall"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "callingPackage"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 4079
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4080
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4081
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->call(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4077
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 4082
    :catch_0
    move-exception v0

    .line 4083
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#call"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public canChangeDtmfToneLength()Z
    .locals 5

    .prologue
    .line 4467
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4468
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4469
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->canChangeDtmfToneLength()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4473
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4474
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "Permission error calling ITelephony#canChangeDtmfToneLength"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4476
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 4471
    :catch_1
    move-exception v0

    .line 4472
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "Error calling ITelephony#canChangeDtmfToneLength"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkCarrierPrivilegesForPackage(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 4016
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4017
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4018
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->checkCarrierPrivilegesForPackage(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4021
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4022
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "checkCarrierPrivilegesForPackage NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4024
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 4019
    :catch_1
    move-exception v0

    .line 4020
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "checkCarrierPrivilegesForPackage RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I
    .locals 5
    .param p1, "pkgName"    # Ljava/lang/String;

    .prologue
    .line 4031
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4032
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4033
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->checkCarrierPrivilegesForPackageAnyPhone(Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4036
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4037
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "checkCarrierPrivilegesForPackageAnyPhone NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4039
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 4034
    :catch_1
    move-exception v0

    .line 4035
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "checkCarrierPrivilegesForPackageAnyPhone RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public dial(Ljava/lang/String;)V
    .locals 4
    .param p1, "number"    # Ljava/lang/String;

    .prologue
    .line 4067
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4068
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4069
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->dial(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4065
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 4070
    :catch_0
    move-exception v0

    .line 4071
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#dial"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public disableDataConnectivity()Z
    .locals 4

    .prologue
    .line 4332
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4333
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4334
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->disableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4335
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4336
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#disableDataConnectivity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4338
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 938
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->disableLocationUpdates(I)V

    .line 937
    return-void
.end method

.method public disableLocationUpdates(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 944
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 945
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 946
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->disableLocationUpdatesForSubscriber(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 942
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 947
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 948
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public enableDataConnectivity()Z
    .locals 4

    .prologue
    .line 4319
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4320
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4321
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->enableDataConnectivity()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4322
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4323
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#enableDataConnectivity"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4325
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 904
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->enableLocationUpdates(I)V

    .line 903
    return-void
.end method

.method public enableLocationUpdates(I)V
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 920
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 921
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 922
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->enableLocationUpdatesForSubscriber(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 918
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 923
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 924
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public enableVideoCalling(Z)V
    .locals 4
    .param p1, "enable"    # Z

    .prologue
    .line 4439
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4440
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4441
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->enableVideoCalling(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4437
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 4442
    :catch_0
    move-exception v0

    .line 4443
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#enableVideoCalling"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public endCall()Z
    .locals 4

    .prologue
    .line 4091
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4092
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4093
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->endCall()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4094
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4095
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#endCall"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4097
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public factoryReset(I)V
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 4998
    :try_start_0
    const-string/jumbo v2, "TelephonyManager"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "factoryReset: subId="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4999
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5000
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5001
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->factoryReset(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4996
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 5002
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3074
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3075
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 3076
    return-object v4

    .line 3077
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getAllCellInfo(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 3080
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3081
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 3078
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3079
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getCallState()I
    .locals 4

    .prologue
    .line 2686
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    .line 2687
    .local v1, "telecom":Lcom/android/internal/telecom/ITelecomService;
    if-eqz v1, :cond_0

    .line 2688
    invoke-interface {v1}, Lcom/android/internal/telecom/ITelecomService;->getCallState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 2690
    .end local v1    # "telecom":Lcom/android/internal/telecom/ITelecomService;
    :catch_0
    move-exception v0

    .line 2691
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelecomService#getCallState"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 2693
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public getCallState(I)I
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 2705
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2706
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 2707
    return v3

    .line 2708
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getCallStateForSubscriber(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 2712
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 2714
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 2709
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2711
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getCarrierPackageNamesForIntent(Landroid/content/Intent;)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4045
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/telephony/TelephonyManager;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;
    .locals 6
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "phoneId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "I)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4052
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4053
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4054
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->getCarrierPackageNamesForIntentAndPhone(Landroid/content/Intent;I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 4057
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4058
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getCarrierPackageNamesForIntentAndPhone NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4060
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    return-object v5

    .line 4055
    :catch_1
    move-exception v0

    .line 4056
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getCarrierPackageNamesForIntentAndPhone RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCdmaEriIconIndex()I
    .locals 1

    .prologue
    .line 2920
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconIndex(I)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconIndex(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, -0x1

    .line 2932
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2933
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 2934
    return v4

    .line 2935
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconIndexForSubscriber(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 2939
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 2940
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    .line 2936
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2938
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public getCdmaEriIconMode()I
    .locals 1

    .prologue
    .line 2955
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaEriIconMode(I)I

    move-result v0

    return v0
.end method

.method public getCdmaEriIconMode(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, -0x1

    .line 2970
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2971
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 2972
    return v4

    .line 2973
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriIconModeForSubscriber(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 2977
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 2978
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    .line 2974
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2976
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public getCdmaEriText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2991
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaEriText(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaEriText(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 3004
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3005
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 3006
    return-object v4

    .line 3007
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getCdmaEriTextForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 3011
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3012
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 3008
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3010
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getCdmaMdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3973
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaMdn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMdn(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 3980
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3981
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 3982
    return-object v3

    .line 3983
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getCdmaMdn(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 3986
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3987
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 3984
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3985
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getCdmaMin()Ljava/lang/String;
    .locals 1

    .prologue
    .line 3994
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCdmaMin(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCdmaMin(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 4001
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4002
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 4003
    return-object v3

    .line 4004
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getCdmaMin(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 4007
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4008
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 4005
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 4006
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 850
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 851
    .local v4, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v4, :cond_0

    .line 852
    const-string/jumbo v5, "TelephonyManager"

    const-string/jumbo v6, "getCellLocation returning null because telephony is null"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    return-object v8

    .line 856
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/ITelephony;->getCellLocation(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    .line 857
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 858
    const-string/jumbo v5, "TelephonyManager"

    const-string/jumbo v6, "getCellLocation returning null because bundle is empty"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    return-object v8

    .line 861
    :cond_1
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 862
    .local v1, "cl":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 863
    const-string/jumbo v5, "TelephonyManager"

    const-string/jumbo v6, "getCellLocation returning null because CellLocation is empty"

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 864
    return-object v8

    .line 866
    :cond_2
    return-object v1

    .line 870
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cl":Landroid/telephony/CellLocation;
    .end local v4    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v3

    .line 871
    .local v3, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCellLocation returning null due to NullPointerException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 872
    return-object v8

    .line 867
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 868
    .local v2, "ex":Landroid/os/RemoteException;
    const-string/jumbo v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "getCellLocation returning null due to RemoteException "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 869
    return-object v8
.end method

.method public getCellLocation(I)Landroid/telephony/CellLocation;
    .locals 6
    .param p1, "subId"    # I

    .prologue
    const/4 v5, 0x0

    .line 880
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    invoke-interface {v4, p1}, Lcom/android/internal/telephony/ITelephony;->getCellLocationById(I)Landroid/os/Bundle;

    move-result-object v0

    .line 881
    .local v0, "bundle":Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Bundle;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    return-object v5

    .line 882
    :cond_0
    invoke-static {v0}, Landroid/telephony/CellLocation;->newFromBundle(Landroid/os/Bundle;)Landroid/telephony/CellLocation;

    move-result-object v1

    .line 883
    .local v1, "cl":Landroid/telephony/CellLocation;
    invoke-virtual {v1}, Landroid/telephony/CellLocation;->isEmpty()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    if-eqz v4, :cond_1

    .line 884
    return-object v5

    .line 885
    :cond_1
    return-object v1

    .line 888
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "cl":Landroid/telephony/CellLocation;
    :catch_0
    move-exception v3

    .line 889
    .local v3, "ex":Ljava/lang/NullPointerException;
    return-object v5

    .line 886
    .end local v3    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v2

    .line 887
    .local v2, "ex":Landroid/os/RemoteException;
    return-object v5
.end method

.method public getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;
    .locals 6
    .param p1, "subId"    # I

    .prologue
    const/4 v5, 0x0

    .line 3774
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3775
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3776
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getCellNetworkScanResults(I)Lcom/android/internal/telephony/CellNetworkScanResult;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 3779
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3780
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getCellNetworkScanResults NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3782
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    return-object v5

    .line 3777
    :catch_1
    move-exception v0

    .line 3778
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getCellNetworkScanResults RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getCompleteVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2469
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCompleteVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCompleteVoiceMailNumber(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 2483
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2484
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2485
    return-object v3

    .line 2486
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getCompleteVoiceMailNumberForSubscriber(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2489
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2491
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 2487
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2488
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getCurrentPhoneType()I
    .locals 1

    .prologue
    .line 1000
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType(I)I

    move-result v0

    return v0
.end method

.method public getCurrentPhoneType(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, -0x1

    .line 1016
    if-ne p1, v4, :cond_0

    .line 1019
    const/4 v2, 0x0

    .line 1024
    .local v2, "phoneId":I
    :goto_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 1025
    .local v3, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_1

    if-eq p1, v4, :cond_1

    .line 1026
    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getActivePhoneTypeForSubscriber(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    return v4

    .line 1021
    .end local v2    # "phoneId":I
    .end local v3    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v2

    .restart local v2    # "phoneId":I
    goto :goto_0

    .line 1029
    .restart local v3    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_1
    :try_start_1
    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v4

    return v4

    .line 1035
    .end local v3    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 1038
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v4

    return v4

    .line 1031
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1034
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-direct {p0, v2}, Landroid/telephony/TelephonyManager;->getPhoneTypeFromProperty(I)I

    move-result v4

    return v4
.end method

.method public getDataActivity()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2744
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2745
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 2746
    return v3

    .line 2747
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataActivity()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 2751
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 2753
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 2748
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2750
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getDataActivity(I)I
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 2772
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2773
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 2774
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDataActivityForSubscriber(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 2777
    :cond_0
    return v3

    .line 2782
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 2784
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 2779
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2781
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getDataEnabled()Z
    .locals 1

    .prologue
    .line 4393
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDataEnabled(I)Z

    move-result v0

    return v0
.end method

.method public getDataEnabled(I)Z
    .locals 7
    .param p1, "subId"    # I

    .prologue
    .line 4399
    const/4 v2, 0x0

    .line 4401
    .local v2, "retVal":Z
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 4402
    .local v3, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_0

    .line 4403
    invoke-interface {v3, p1}, Lcom/android/internal/telephony/ITelephony;->getDataEnabled(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 4410
    .end local v2    # "retVal":Z
    .end local v3    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    const-string/jumbo v4, "TelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDataEnabled: retVal="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4411
    return v2

    .line 4406
    .restart local v2    # "retVal":Z
    :catch_0
    move-exception v1

    .line 4407
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v4, "TelephonyManager"

    const-string/jumbo v5, "Error calling ITelephony#getDataEnabled"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4408
    const/4 v2, 0x0

    goto :goto_0

    .line 4404
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 4405
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "TelephonyManager"

    const-string/jumbo v5, "Error calling ITelephony#getDataEnabled"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getDataNetworkType()I
    .locals 1

    .prologue
    .line 1563
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDataNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getDataNetworkType(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1580
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1581
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1582
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getDataNetworkTypeForSubscriber(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1585
    :cond_0
    return v4

    .line 1590
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 1592
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    .line 1587
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1589
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public getDataState()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2814
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2815
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 2816
    return v3

    .line 2817
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getDataState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 2821
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 2822
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 2818
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2820
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getDataState(I)I
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 2840
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2841
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 2842
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getDataStateForSubscriber(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 2845
    :cond_0
    return v3

    .line 2850
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 2851
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 2847
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2849
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getDefaultSim()I
    .locals 1

    .prologue
    .line 3412
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->getSlotId(I)I

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 729
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 730
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 731
    return-object v4

    .line 733
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getDeviceId(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 736
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 737
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 734
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 735
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getDeviceId(I)Ljava/lang/String;
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 753
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 754
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 755
    return-object v3

    .line 756
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceIdForPhone(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 759
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 760
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 757
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 758
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getDeviceSoftwareVersion()Ljava/lang/String;
    .locals 1

    .prologue
    .line 684
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getDeviceSoftwareVersion(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDeviceSoftwareVersion(I)Ljava/lang/String;
    .locals 8
    .param p1, "slotId"    # I

    .prologue
    const/4 v7, 0x0

    .line 699
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 700
    .local v3, "subId":[I
    if-eqz v3, :cond_0

    array-length v4, v3

    if-nez v4, :cond_1

    .line 701
    :cond_0
    return-object v7

    .line 704
    :cond_1
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 705
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_2

    .line 706
    return-object v7

    .line 708
    :cond_2
    const/4 v4, 0x0

    aget v4, v3, v4

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->getDeviceSvnUsingSubId(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 713
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 714
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v4, "TelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDeviceSoftwareVersion error, return null. (slotId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 715
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 716
    return-object v7

    .line 709
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 710
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v4, "TelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "getDeviceSoftwareVersion error, return null. (slotId: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ")"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 711
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    .line 712
    return-object v7
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2184
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2185
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2186
    return-object v4

    .line 2188
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2191
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2193
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 2189
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2190
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getGroupIdLevel1(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2209
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2210
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2211
    return-object v4

    .line 2213
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getGroupIdLevel1ForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2216
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2218
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 2214
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2215
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getIccSimChallengeResponse(IILjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I
    .param p2, "appType"    # I
    .param p3, "data"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3655
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 3656
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 3657
    return-object v3

    .line 3658
    :cond_0
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSimChallengeResponse(IILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 3661
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 3663
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 3659
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3660
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIccSimChallengeResponse(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "appType"    # I
    .param p2, "data"    # Ljava/lang/String;

    .prologue
    .line 3676
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->getIccSimChallengeResponse(IILjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 772
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getImei(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getImei(I)Ljava/lang/String;
    .locals 7
    .param p1, "slotId"    # I

    .prologue
    const/4 v6, 0x0

    .line 785
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 787
    .local v3, "subId":[I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 788
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 789
    return-object v6

    .line 791
    :cond_0
    const/4 v4, 0x0

    aget v4, v3, v4

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v4, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->getImeiForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    return-object v4

    .line 794
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 795
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v6

    .line 792
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 793
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v6
.end method

.method public getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "nonce"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3632
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 3633
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 3634
    return-object v3

    .line 3635
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimChallengeResponse(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 3638
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 3640
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 3636
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3637
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimDomain()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2625
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2626
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2627
    return-object v3

    .line 2628
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimDomain()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2631
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2633
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 2629
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2630
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimImpi()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2606
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2607
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2608
    return-object v3

    .line 2609
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpi()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2612
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2614
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 2610
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2611
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimImpu()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 2645
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2646
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2647
    return-object v3

    .line 2648
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimImpu()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2651
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2653
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 2649
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2650
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimIst()Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3590
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 3591
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 3592
    return-object v3

    .line 3593
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimIst()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 3596
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 3598
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 3594
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3595
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getIsimPcscf()[Ljava/lang/String;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 3610
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 3611
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 3612
    return-object v3

    .line 3613
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIsimPcscf()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 3616
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 3618
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v3

    .line 3614
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3615
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v3
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2331
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLine1AlphaTagForSubscriber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1AlphaTagForSubscriber(I)Ljava/lang/String;
    .locals 7
    .param p1, "subId"    # I

    .prologue
    const/4 v6, 0x0

    .line 2346
    const/4 v0, 0x0

    .line 2348
    .local v0, "alphaTag":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 2349
    .local v4, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_0

    .line 2351
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    .line 2350
    invoke-interface {v4, p1, v5}, Lcom/android/internal/telephony/ITelephony;->getLine1AlphaTagForDisplay(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v0

    .line 2355
    .end local v0    # "alphaTag":Ljava/lang/String;
    .end local v4    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    if-eqz v0, :cond_1

    .line 2356
    return-object v0

    .line 2359
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v3

    .line 2360
    .local v3, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v3, :cond_2

    .line 2361
    return-object v6

    .line 2362
    :cond_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, p1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1AlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    return-object v5

    .line 2365
    .end local v3    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v2

    .line 2367
    .local v2, "ex":Ljava/lang/NullPointerException;
    return-object v6

    .line 2363
    .end local v2    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v1

    .line 2364
    .local v1, "ex":Landroid/os/RemoteException;
    return-object v6

    .line 2352
    .end local v1    # "ex":Landroid/os/RemoteException;
    .restart local v0    # "alphaTag":Ljava/lang/String;
    :catch_2
    move-exception v1

    .restart local v1    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2353
    .end local v1    # "ex":Landroid/os/RemoteException;
    :catch_3
    move-exception v2

    .restart local v2    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2234
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLine1NumberForSubscriber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLine1NumberForSubscriber(I)Ljava/lang/String;
    .locals 7
    .param p1, "subId"    # I

    .prologue
    const/4 v6, 0x0

    .line 2252
    const/4 v3, 0x0

    .line 2254
    .local v3, "number":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v4

    .line 2255
    .local v4, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v4, :cond_0

    .line 2257
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, p1, v5}, Lcom/android/internal/telephony/ITelephony;->getLine1NumberForDisplay(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    .line 2261
    .end local v3    # "number":Ljava/lang/String;
    .end local v4    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 2262
    return-object v3

    .line 2265
    :cond_1
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2266
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_2

    .line 2267
    return-object v6

    .line 2269
    :cond_2
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, p1, v5}, Lcom/android/internal/telephony/IPhoneSubInfo;->getLine1NumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v5

    return-object v5

    .line 2272
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2274
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v6

    .line 2270
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2271
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v6

    .line 2258
    .end local v0    # "ex":Landroid/os/RemoteException;
    .restart local v3    # "number":Ljava/lang/String;
    :catch_2
    move-exception v0

    .restart local v0    # "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 2259
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_3
    move-exception v1

    .restart local v1    # "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getLocaleFromDefaultSim()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 5010
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5011
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5012
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getLocaleFromDefaultSim()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 5014
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5016
    :cond_0
    return-object v2
.end method

.method public getLteOnCdmaMode()I
    .locals 1

    .prologue
    .line 2100
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getLteOnCdmaMode(I)I

    move-result v0

    return v0
.end method

.method public getLteOnCdmaMode(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, -0x1

    .line 2119
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2120
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 2121
    return v4

    .line 2122
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getLteOnCdmaModeForSubscriber(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 2126
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 2128
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    .line 2123
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2125
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public getMergedSubscriberIds()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2381
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2382
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 2383
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getMergedSubscriberIds(Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 2384
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 2387
    :cond_0
    :goto_0
    return-object v4

    .line 2385
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public getMmsUAProfUrl()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3120
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-object v1

    .line 3121
    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3122
    const v1, 0x1040036

    .line 3121
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMmsUserAgent()Ljava/lang/String;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 3111
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-object v1

    .line 3112
    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3113
    const v1, 0x1040035

    .line 3112
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getModemActivityInfo()Landroid/telephony/ModemActivityInfo;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 5025
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 5026
    .local v1, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 5027
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->getModemActivityInfo()Landroid/telephony/ModemActivityInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 5029
    .end local v1    # "service":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 5030
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#getModemActivityInfo"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 5032
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    return-object v4
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2400
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getMsisdn(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getMsisdn(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2415
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2416
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2417
    return-object v4

    .line 2418
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getMsisdnForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2421
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2423
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 2419
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2420
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;
    .locals 2

    .prologue
    .line 180
    const-string/jumbo v1, "persist.radio.multisim.config"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 181
    .local v0, "mSimConfig":Ljava/lang/String;
    const-string/jumbo v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v1

    .line 183
    :cond_0
    const-string/jumbo v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 184
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->DSDA:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v1

    .line 185
    :cond_1
    const-string/jumbo v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 186
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->TSTS:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v1

    .line 188
    :cond_2
    sget-object v1, Landroid/telephony/TelephonyManager$MultiSimVariants;->UNKNOWN:Landroid/telephony/TelephonyManager$MultiSimVariants;

    return-object v1
.end method

.method public getNai()Ljava/lang/String;
    .locals 1

    .prologue
    .line 805
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNai(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNai(I)Ljava/lang/String;
    .locals 9
    .param p1, "slotId"    # I

    .prologue
    const/4 v8, 0x0

    .line 815
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v4

    .line 817
    .local v4, "subId":[I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 818
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 819
    return-object v8

    .line 821
    :cond_0
    const/4 v5, 0x0

    aget v5, v4, v5

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v2, v5, v6}, Lcom/android/internal/telephony/IPhoneSubInfo;->getNaiForSubscriber(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 822
    .local v3, "nai":Ljava/lang/String;
    const-string/jumbo v5, "TelephonyManager"

    const/4 v6, 0x2

    invoke-static {v5, v6}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 823
    const-string/jumbo v5, "TelephonyManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "Nai = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 825
    :cond_1
    return-object v3

    .line 828
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    .end local v3    # "nai":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 829
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v8

    .line 826
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 827
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v8
.end method

.method public getNeighboringCellInfo()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/telephony/NeighboringCellInfo;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 966
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 967
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 968
    return-object v4

    .line 970
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/android/internal/telephony/ITelephony;->getNeighboringCellInfo(Ljava/lang/String;)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 973
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 974
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 971
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 972
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getNetworkCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1331
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIsoForPhone(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1362
    const-string/jumbo v0, "gsm.operator.iso-country"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkCountryIsoForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1346
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1347
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1263
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorForPhone(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1294
    const-string/jumbo v0, "gsm.operator.numeric"

    const-string/jumbo v1, ""

    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1278
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1279
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNetworkOperatorName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1220
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getNetworkOperatorName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNetworkOperatorName(I)Ljava/lang/String;
    .locals 4
    .param p1, "subId"    # I

    .prologue
    .line 1238
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1239
    .local v0, "phoneId":I
    const-string/jumbo v1, "TelephonyManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getNetworkOperatorName phoneId= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1240
    if-ltz v0, :cond_3

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1241
    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 1242
    const-string/jumbo v1, "gsm.operator.alpha.4"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1243
    :cond_0
    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    .line 1244
    const-string/jumbo v1, "gsm.operator.alpha.3"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1245
    :cond_1
    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 1246
    const-string/jumbo v1, "gsm.operator.alpha.2"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1248
    :cond_2
    const-string/jumbo v1, "gsm.operator.alpha"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1251
    :cond_3
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getNetworkType()I
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1472
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1473
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1474
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getNetworkType()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1477
    :cond_0
    return v3

    .line 1482
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 1484
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 1479
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1481
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getNetworkType(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1519
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1520
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1521
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getNetworkTypeForSubscriber(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1524
    :cond_0
    return v4

    .line 1529
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 1531
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    .line 1526
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1528
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public getNetworkTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1685
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getNetworkType()I

    move-result v0

    invoke-static {v0}, Landroid/telephony/TelephonyManager;->getNetworkTypeName(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOtaSpNumberSchema(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 4776
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 4777
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->getOtaSpNumberSchemaForPhone(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getOtaSpNumberSchemaForPhone(ILjava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 4790
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4792
    const-string/jumbo v0, "ro.cdma.otaspnumschema"

    .line 4791
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4795
    :cond_0
    return-object p2
.end method

.method public getPcscfAddress(Ljava/lang/String;)[Ljava/lang/String;
    .locals 6
    .param p1, "apnType"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3687
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3688
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 3689
    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/String;

    return-object v3

    .line 3690
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getPcscfAddress(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 3693
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3694
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "Error calling ITelephony#getPcscfAddress"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3695
    new-array v3, v5, [Ljava/lang/String;

    return-object v3

    .line 3691
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3692
    .local v0, "e":Landroid/os/RemoteException;
    new-array v3, v5, [Ljava/lang/String;

    return-object v3
.end method

.method public getPhoneCount()I
    .locals 3

    .prologue
    .line 199
    const/4 v0, 0x1

    .line 200
    .local v0, "phoneCount":I
    invoke-static {}, Landroid/telephony/TelephonyManager;->-getandroid_telephony_TelephonyManager$MultiSimVariantsSwitchesValues()[I

    move-result-object v1

    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getMultiSimConfiguration()Landroid/telephony/TelephonyManager$MultiSimVariants;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager$MultiSimVariants;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 212
    :goto_0
    return v0

    .line 202
    :pswitch_0
    const/4 v0, 0x1

    .line 203
    goto :goto_0

    .line 206
    :pswitch_1
    const/4 v0, 0x2

    .line 207
    goto :goto_0

    .line 209
    :pswitch_2
    const/4 v0, 0x3

    .line 210
    goto :goto_0

    .line 200
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 1052
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isVoiceCapable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1053
    const/4 v0, 0x0

    return v0

    .line 1055
    :cond_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getCurrentPhoneType()I

    move-result v0

    return v0
.end method

.method public getPreferredNetworkType(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 3727
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3728
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3729
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getPreferredNetworkType(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3732
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3733
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getPreferredNetworkType NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3735
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, -0x1

    return v3

    .line 3730
    :catch_1
    move-exception v0

    .line 3731
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getPreferredNetworkType RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getSimCount()I
    .locals 1

    .prologue
    .line 3576
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->isMultiSimEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3577
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v0

    return v0

    .line 3579
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public getSimCountryIso()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2002
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIso(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 2013
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIsoForPhone(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 2041
    const-string/jumbo v0, "gsm.sim.operator.iso-country"

    const-string/jumbo v1, ""

    .line 2040
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimCountryIsoForSubscription(I)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 2025
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2030
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 2031
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimCountryIsoForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2026
    .end local v0    # "phoneId":I
    :cond_1
    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "getSimCountryIso return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2027
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getSimOperator()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1880
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperator(I)Ljava/lang/String;
    .locals 1
    .param p1, "subId"    # I

    .prologue
    .line 1895
    invoke-virtual {p0, p1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForSubscription(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1965
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v0}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1970
    :cond_0
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 1966
    :cond_1
    const-string/jumbo v0, "TelephonyManager"

    const-string/jumbo v1, "getSimOperator return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1967
    const-string/jumbo v0, ""

    return-object v0
.end method

.method public getSimOperatorNameForPhone(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1995
    const-string/jumbo v0, "gsm.sim.operator.alpha"

    const-string/jumbo v1, ""

    .line 1994
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorNameForSubscription(I)Ljava/lang/String;
    .locals 2
    .param p1, "subId"    # I

    .prologue
    .line 1984
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1985
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNameForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimOperatorNumeric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1908
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    .line 1909
    .local v0, "subId":I
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1910
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSmsSubId()I

    move-result v0

    .line 1911
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1912
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultVoiceSubId()I

    move-result v0

    .line 1913
    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->isUsableSubIdValue(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1914
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultSubId()I

    move-result v0

    .line 1918
    :cond_0
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForSubscription(I)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getSimOperatorNumericForPhone(I)Ljava/lang/String;
    .locals 2
    .param p1, "phoneId"    # I

    .prologue
    .line 1953
    const-string/jumbo v0, "gsm.sim.operator.numeric"

    const-string/jumbo v1, ""

    .line 1952
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimOperatorNumericForSubscription(I)Ljava/lang/String;
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1934
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1939
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1940
    .local v0, "phoneId":I
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 1935
    .end local v0    # "phoneId":I
    :cond_1
    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "getSimOperator return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1936
    const-string/jumbo v1, ""

    return-object v1
.end method

.method public getSimSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2052
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimSerialNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSimSerialNumber(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2066
    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v3, :cond_0

    iget-object v3, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v3}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 2072
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 2073
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_2

    .line 2074
    return-object v4

    .line 2067
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_1
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "getSimSerialNumber return: 3gdatasms MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2068
    const-string/jumbo v3, ""

    return-object v3

    .line 2076
    .restart local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :cond_2
    :try_start_1
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getIccSerialNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0

    move-result-object v3

    return-object v3

    .line 2079
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2081
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 2077
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2078
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getSimState()I
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1821
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v2

    .line 1824
    .local v2, "slotIdx":I
    if-gez v2, :cond_2

    .line 1827
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v3

    if-ge v0, v3, :cond_1

    .line 1828
    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v1

    .line 1829
    .local v1, "simState":I
    if-eq v1, v7, :cond_0

    .line 1830
    const-string/jumbo v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSimState: default sim:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", sim state for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1831
    const-string/jumbo v5, "slotIdx="

    .line 1830
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1831
    const-string/jumbo v5, " is "

    .line 1830
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1831
    const-string/jumbo v5, ", return state as unknown"

    .line 1830
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1832
    return v6

    .line 1827
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1835
    .end local v1    # "simState":I
    :cond_1
    const-string/jumbo v3, "TelephonyManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "getSimState: default sim:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", all SIMs absent, return "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1836
    const-string/jumbo v5, "state as absent"

    .line 1835
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1837
    return v7

    .line 1839
    .end local v0    # "i":I
    :cond_2
    invoke-virtual {p0, v2}, Landroid/telephony/TelephonyManager;->getSimState(I)I

    move-result v3

    return v3
.end method

.method public getSimState(I)I
    .locals 3
    .param p1, "slotIdx"    # I

    .prologue
    .line 1860
    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/telephony/TelephonyManager;->mOnlyOwnerSimSupport:Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;

    invoke-interface {v1}, Lcom/mediatek/common/telephony/IOnlyOwnerSimSupport;->isCurrentUserOwner()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1866
    :cond_0
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSimStateForSlotIdx(I)I

    move-result v0

    .line 1868
    .local v0, "simState":I
    return v0

    .line 1861
    .end local v0    # "simState":I
    :cond_1
    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "getSimState return: 3gdatasms  MTK_ONLY_OWNER_SIM_SUPPORT "

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1862
    const/4 v1, 0x0

    return v1
.end method

.method public getSmsReceiveCapable(Z)Z
    .locals 2
    .param p1, "defaultValue"    # Z

    .prologue
    .line 4807
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 4808
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->getSmsReceiveCapableForPhone(IZ)Z

    move-result v1

    return v1
.end method

.method public getSmsReceiveCapableForPhone(IZ)Z
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "defaultValue"    # Z

    .prologue
    .line 4821
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4823
    const-string/jumbo v0, "telephony.sms.receive"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 4822
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 4826
    :cond_0
    return p2
.end method

.method public getSmsSendCapable(Z)Z
    .locals 2
    .param p1, "defaultValue"    # Z

    .prologue
    .line 4838
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 4839
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->getSmsSendCapableForPhone(IZ)Z

    move-result v1

    return v1
.end method

.method public getSmsSendCapableForPhone(IZ)Z
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "defaultValue"    # Z

    .prologue
    .line 4852
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4854
    const-string/jumbo v0, "telephony.sms.send"

    invoke-static {p2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 4853
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0

    .line 4857
    :cond_0
    return p2
.end method

.method public getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I
    .locals 3
    .param p1, "phoneAccount"    # Landroid/telecom/PhoneAccount;

    .prologue
    .line 4979
    const/4 v1, -0x1

    .line 4981
    .local v1, "retval":I
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4982
    .local v2, "service":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4983
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getSubIdForPhoneAccount(Landroid/telecom/PhoneAccount;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 4988
    .end local v2    # "service":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return v1

    .line 4985
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2146
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getSubscriberId(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSubscriberId(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2162
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2163
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2164
    return-object v4

    .line 2166
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getSubscriberIdForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2169
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2171
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 2167
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2168
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getTetherApnRequired()I
    .locals 5

    .prologue
    .line 3858
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3859
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3860
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getTetherApnRequired()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3863
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3864
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "hasMatchedTetherApnSetting NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3866
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x2

    return v3

    .line 3861
    :catch_1
    move-exception v0

    .line 3862
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "hasMatchedTetherApnSetting RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2572
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailAlphaTag(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailAlphaTag(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2587
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2588
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2589
    return-object v4

    .line 2590
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailAlphaTagForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2593
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2595
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 2591
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2592
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 2434
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMailNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceMailNumber(I)Ljava/lang/String;
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 2448
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getSubscriberInfo()Lcom/android/internal/telephony/IPhoneSubInfo;

    move-result-object v2

    .line 2449
    .local v2, "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    if-nez v2, :cond_0

    .line 2450
    return-object v4

    .line 2451
    :cond_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/IPhoneSubInfo;->getVoiceMailNumberForSubscriber(ILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 2454
    .end local v2    # "info":Lcom/android/internal/telephony/IPhoneSubInfo;
    :catch_0
    move-exception v1

    .line 2456
    .local v1, "ex":Ljava/lang/NullPointerException;
    return-object v4

    .line 2452
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2453
    .local v0, "ex":Landroid/os/RemoteException;
    return-object v4
.end method

.method public getVoiceMessageCount()I
    .locals 1

    .prologue
    .line 2539
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceMessageCount(I)I

    move-result v0

    return v0
.end method

.method public getVoiceMessageCount(I)I
    .locals 4
    .param p1, "subId"    # I

    .prologue
    const/4 v3, 0x0

    .line 2552
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2553
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 2554
    return v3

    .line 2555
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->getVoiceMessageCountForSubscriber(I)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 2558
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 2560
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 2556
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 2557
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public getVoiceNetworkType()I
    .locals 1

    .prologue
    .line 1605
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->getVoiceNetworkType(I)I

    move-result v0

    return v0
.end method

.method public getVoiceNetworkType(I)I
    .locals 5
    .param p1, "subId"    # I

    .prologue
    const/4 v4, 0x0

    .line 1618
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1619
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 1620
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, p1, v3}, Lcom/android/internal/telephony/ITelephony;->getVoiceNetworkTypeForSubscriber(ILjava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1623
    :cond_0
    return v4

    .line 1628
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 1630
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v4

    .line 1625
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1627
    .local v0, "ex":Landroid/os/RemoteException;
    return v4
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 4
    .param p1, "dialString"    # Ljava/lang/String;

    .prologue
    .line 4243
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4244
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4245
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->handlePinMmi(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4246
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4247
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#handlePinMmi"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4249
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public handlePinMmiForSubscriber(ILjava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "dialString"    # Ljava/lang/String;

    .prologue
    .line 4256
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4257
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4258
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->handlePinMmiForSubscriber(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4259
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4260
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#handlePinMmi"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4262
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public hasCarrierPrivileges()Z
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3893
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3894
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_1

    .line 3895
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->getCarrierPrivilegeStatus()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v5

    if-ne v5, v3, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0

    .line 3898
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3899
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v5, "hasCarrierPrivileges NPE"

    invoke-static {v3, v5, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3901
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_1
    :goto_1
    return v4

    .line 3896
    :catch_1
    move-exception v0

    .line 3897
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v5, "hasCarrierPrivileges RemoteException"

    invoke-static {v3, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public hasIccCard()Z
    .locals 1

    .prologue
    .line 1781
    invoke-virtual {p0}, Landroid/telephony/TelephonyManager;->getDefaultSim()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->hasIccCard(I)Z

    move-result v0

    return v0
.end method

.method public hasIccCard(I)Z
    .locals 4
    .param p1, "slotId"    # I

    .prologue
    const/4 v3, 0x0

    .line 1794
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 1795
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 1796
    return v3

    .line 1797
    :cond_0
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->hasIccCardUsingSlotId(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 1801
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 1803
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 1798
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 1800
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public iccCloseLogicalChannel(I)Z
    .locals 4
    .param p1, "channel"    # I

    .prologue
    .line 3163
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3164
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3165
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->iccCloseLogicalChannel(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    return v3

    .line 3166
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 3169
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 3167
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public iccCloseLogicalChannel(II)Z
    .locals 3
    .param p1, "slot"    # I
    .param p2, "channel"    # I

    .prologue
    .line 5069
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->iccCloseLogicalChannelUsingSlot(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    return v2

    .line 5070
    :catch_0
    move-exception v0

    .line 5073
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 5071
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public iccExchangeSimIO(IIIIILjava/lang/String;)[B
    .locals 9
    .param p1, "fileID"    # I
    .param p2, "command"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "filePath"    # Ljava/lang/String;

    .prologue
    .line 3256
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3257
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 3258
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony;->iccExchangeSimIO(IIIIILjava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 3259
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v7

    .line 3262
    :cond_0
    :goto_0
    const/4 v1, 0x0

    return-object v1

    .line 3260
    :catch_1
    move-exception v8

    .local v8, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public iccOpenLogicalChannel(ILjava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 3
    .param p1, "slot"    # I
    .param p2, "AID"    # Ljava/lang/String;

    .prologue
    .line 5050
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannelUsingSlot(ILjava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v2

    return-object v2

    .line 5051
    :catch_0
    move-exception v0

    .line 5054
    :goto_0
    const/4 v2, 0x0

    return-object v2

    .line 5052
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    .locals 4
    .param p1, "AID"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 3139
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3140
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3141
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->iccOpenLogicalChannel(Ljava/lang/String;)Landroid/telephony/IccOpenLogicalChannelResponse;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 3142
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 3145
    :cond_0
    :goto_0
    return-object v3

    .line 3143
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    .locals 9
    .param p1, "cla"    # I
    .param p2, "instruction"    # I
    .param p3, "p1"    # I
    .param p4, "p2"    # I
    .param p5, "p3"    # I
    .param p6, "data"    # Ljava/lang/String;

    .prologue
    .line 3228
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3229
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move-object v6, p6

    .line 3230
    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduBasicChannel(IIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 3232
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v7

    .line 3235
    :cond_0
    :goto_0
    const-string/jumbo v1, ""

    return-object v1

    .line 3233
    :catch_1
    move-exception v8

    .local v8, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public iccTransmitApduLogicalChannel(IIIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 11
    .param p1, "slot"    # I
    .param p2, "channel"    # I
    .param p3, "cla"    # I
    .param p4, "instruction"    # I
    .param p5, "p1"    # I
    .param p6, "p2"    # I
    .param p7, "p3"    # I
    .param p8, "data"    # Ljava/lang/String;

    .prologue
    .line 5097
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduLogicalChannelUsingSlot(IIIIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    return-object v0

    .line 5099
    :catch_0
    move-exception v9

    .line 5102
    :goto_0
    const-string/jumbo v0, ""

    return-object v0

    .line 5100
    :catch_1
    move-exception v10

    .local v10, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    .locals 10
    .param p1, "channel"    # I
    .param p2, "cla"    # I
    .param p3, "instruction"    # I
    .param p4, "p1"    # I
    .param p5, "p2"    # I
    .param p6, "p3"    # I
    .param p7, "data"    # Ljava/lang/String;

    .prologue
    .line 3196
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    .line 3197
    .local v0, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    .line 3198
    invoke-interface/range {v0 .. v7}, Lcom/android/internal/telephony/ITelephony;->iccTransmitApduLogicalChannel(IIIIIILjava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v1

    return-object v1

    .line 3200
    .end local v0    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v8

    .line 3203
    :cond_0
    :goto_0
    const-string/jumbo v1, ""

    return-object v1

    .line 3201
    :catch_1
    move-exception v9

    .local v9, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public invokeOemRilRequestRaw([B[B)I
    .locals 4
    .param p1, "oemReq"    # [B
    .param p2, "oemResp"    # [B

    .prologue
    .line 4426
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4427
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4428
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->invokeOemRilRequestRaw([B[B)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    return v3

    .line 4429
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4432
    :cond_0
    :goto_0
    const/4 v3, -0x1

    return v3

    .line 4430
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public isDataConnectivityPossible()Z
    .locals 4

    .prologue
    .line 4345
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4346
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4347
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->isDataConnectivityPossible()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4348
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4349
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#isDataConnectivityPossible"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4351
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isHearingAidCompatibilitySupported()Z
    .locals 5

    .prologue
    .line 4525
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4526
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4527
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isHearingAidCompatibilitySupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4531
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4532
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "Permission error calling ITelephony#isHearingAidCompatibilitySupported"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4534
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 4529
    :catch_1
    move-exception v0

    .line 4530
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "Error calling ITelephony#isHearingAidCompatibilitySupported"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isIdle()Z
    .locals 4

    .prologue
    .line 4152
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4153
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4154
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isIdle(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4155
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4156
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#isIdle"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4158
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x1

    return v2
.end method

.method public isImsRegistered()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4581
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4582
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-nez v2, :cond_0

    .line 4583
    return v3

    .line 4584
    :cond_0
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isImsRegistered()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4587
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4588
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 4585
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 4586
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isMultiSimEnabled()Z
    .locals 2

    .prologue
    .line 222
    sget-object v0, Landroid/telephony/TelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string/jumbo v1, "dsds"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Landroid/telephony/TelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string/jumbo v1, "dsda"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 223
    sget-object v0, Landroid/telephony/TelephonyManager;->multiSimConfig:Ljava/lang/String;

    const-string/jumbo v1, "tsts"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 222
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public isNetworkRoaming()Z
    .locals 1

    .prologue
    .line 1304
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/telephony/TelephonyManager;->isNetworkRoaming(I)Z

    move-result v0

    return v0
.end method

.method public isNetworkRoaming(I)Z
    .locals 3
    .param p1, "subId"    # I

    .prologue
    .line 1317
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getPhoneId(I)I

    move-result v0

    .line 1319
    .local v0, "phoneId":I
    const-string/jumbo v1, "gsm.operator.isroaming"

    const/4 v2, 0x0

    .line 1318
    invoke-static {v0, v1, v2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public isOffhook()Z
    .locals 4

    .prologue
    .line 4126
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4127
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4128
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isOffhook(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4129
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4130
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#isOffhook"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4132
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isRadioOn()Z
    .locals 4

    .prologue
    .line 4165
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4166
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4167
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isRadioOn(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4168
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4169
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#isRadioOn"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4171
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isRinging()Z
    .locals 4

    .prologue
    .line 4139
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4140
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4141
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isRinging(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4142
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4143
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#isRinging"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4145
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isSimPinEnabled()Z
    .locals 4

    .prologue
    .line 4178
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4179
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4180
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isSimPinEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4181
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4182
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#isSimPinEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4184
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isSmsCapable()Z
    .locals 2

    .prologue
    .line 3046
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3047
    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3048
    const v1, 0x1120055

    .line 3047
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isTtyModeSupported()Z
    .locals 5

    .prologue
    .line 4505
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4506
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4507
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isTtyModeSupported()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4511
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4512
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "Permission error calling ITelephony#isTtyModeSupported"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4514
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 4509
    :catch_1
    move-exception v0

    .line 4510
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "Error calling ITelephony#isTtyModeSupported"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public isVideoCallingEnabled()Z
    .locals 4

    .prologue
    .line 4451
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4452
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4453
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telephony/ITelephony;->isVideoCallingEnabled(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4454
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4455
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#isVideoCallingEnabled"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4457
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public isVideoTelephonyAvailable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4612
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isVideoTelephonyAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4615
    :catch_0
    move-exception v1

    .line 4616
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 4613
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 4614
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isVoiceCapable()Z
    .locals 2

    .prologue
    .line 3031
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 3032
    :cond_0
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 3033
    const v1, 0x1120053

    .line 3032
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public isVolteAvailable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4598
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isVolteAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4601
    :catch_0
    move-exception v1

    .line 4602
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 4599
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 4600
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isWifiCallingAvailable()Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 4626
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isWifiCallingAvailable()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4629
    :catch_0
    move-exception v1

    .line 4630
    .local v1, "ex":Ljava/lang/NullPointerException;
    return v3

    .line 4627
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 4628
    .local v0, "ex":Landroid/os/RemoteException;
    return v3
.end method

.method public isWorldPhone()Z
    .locals 5

    .prologue
    .line 4486
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 4487
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 4488
    invoke-interface {v2}, Lcom/android/internal/telephony/ITelephony;->isWorldPhone()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 4492
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 4493
    .local v1, "e":Ljava/lang/SecurityException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "Permission error calling ITelephony#isWorldPhone"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4495
    .end local v1    # "e":Ljava/lang/SecurityException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 4490
    :catch_1
    move-exception v0

    .line 4491
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "Error calling ITelephony#isWorldPhone"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public listen(Landroid/telephony/PhoneStateListener;I)V
    .locals 9
    .param p1, "listener"    # Landroid/telephony/PhoneStateListener;
    .param p2, "events"    # I

    .prologue
    .line 2899
    iget-object v0, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-nez v0, :cond_0

    return-void

    .line 2901
    :cond_0
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    .line 2902
    .local v8, "notifyNow":Ljava/lang/Boolean;
    sget-object v0, Landroid/telephony/TelephonyManager;->sRegistry:Lcom/android/internal/telephony/ITelephonyRegistry;

    iget v1, p1, Landroid/telephony/PhoneStateListener;->mSubId:I

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    .line 2903
    iget-object v3, p1, Landroid/telephony/PhoneStateListener;->callback:Lcom/android/internal/telephony/IPhoneStateListener;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    move v4, p2

    .line 2902
    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/ITelephonyRegistry;->listenForSubscriber(ILjava/lang/String;Lcom/android/internal/telephony/IPhoneStateListener;IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2898
    .end local v8    # "notifyNow":Ljava/lang/Boolean;
    :goto_1
    return-void

    .line 2901
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 2904
    :catch_0
    move-exception v6

    .local v6, "ex":Landroid/os/RemoteException;
    goto :goto_1

    .line 2906
    .end local v6    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v7

    .local v7, "ex":Ljava/lang/NullPointerException;
    goto :goto_1
.end method

.method public needsOtaServiceProvisioning()Z
    .locals 4

    .prologue
    .line 4358
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4359
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4360
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->needsOtaServiceProvisioning()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4361
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4362
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#needsOtaServiceProvisioning"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4364
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public nvReadItem(I)Ljava/lang/String;
    .locals 5
    .param p1, "itemID"    # I

    .prologue
    .line 3305
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3306
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3307
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->nvReadItem(I)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    return-object v3

    .line 3310
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3311
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "nvReadItem NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3313
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const-string/jumbo v3, ""

    return-object v3

    .line 3308
    :catch_1
    move-exception v0

    .line 3309
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "nvReadItem RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public nvResetConfig(I)Z
    .locals 5
    .param p1, "resetType"    # I

    .prologue
    .line 3385
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3386
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3387
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->nvResetConfig(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3390
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3391
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "nvResetConfig NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3393
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 3388
    :catch_1
    move-exception v0

    .line 3389
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "nvResetConfig RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public nvWriteCdmaPrl([B)Z
    .locals 5
    .param p1, "preferredRoamingList"    # [B

    .prologue
    .line 3358
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3359
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3360
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->nvWriteCdmaPrl([B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3363
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3364
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "nvWriteCdmaPrl NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3366
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 3361
    :catch_1
    move-exception v0

    .line 3362
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "nvWriteCdmaPrl RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public nvWriteItem(ILjava/lang/String;)Z
    .locals 5
    .param p1, "itemID"    # I
    .param p2, "itemValue"    # Ljava/lang/String;

    .prologue
    .line 3332
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3333
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3334
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->nvWriteItem(ILjava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3337
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3338
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "nvWriteItem NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3340
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 3335
    :catch_1
    move-exception v0

    .line 3336
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "nvWriteItem RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "content"    # Ljava/lang/String;

    .prologue
    .line 3281
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3282
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3283
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->sendEnvelopeWithStatus(Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    return-object v3

    .line 3284
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 3287
    :cond_0
    :goto_0
    const-string/jumbo v3, ""

    return-object v3

    .line 3285
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setBasebandVersion(Ljava/lang/String;)V
    .locals 1
    .param p1, "version"    # Ljava/lang/String;

    .prologue
    .line 4721
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 4722
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setBasebandVersionForPhone(ILjava/lang/String;)V

    .line 4720
    return-void
.end method

.method public setBasebandVersionForPhone(ILjava/lang/String;)V
    .locals 3
    .param p1, "phoneId"    # I
    .param p2, "version"    # Ljava/lang/String;

    .prologue
    .line 4733
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4734
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "gsm.version.baseband"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 4735
    if-nez p1, :cond_1

    const-string/jumbo v1, ""

    .line 4734
    :goto_0
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 4736
    .local v0, "prop":Ljava/lang/String;
    invoke-static {v0, p2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 4732
    .end local v0    # "prop":Ljava/lang/String;
    :cond_0
    return-void

    .line 4735
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setCellInfoListRate(I)V
    .locals 3
    .param p1, "rateInMillis"    # I

    .prologue
    .line 3099
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3100
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3101
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setCellInfoListRate(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    .line 3097
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 3102
    :catch_0
    move-exception v0

    .local v0, "ex":Landroid/os/RemoteException;
    goto :goto_0

    .line 3103
    .end local v0    # "ex":Landroid/os/RemoteException;
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setDataEnabled(IZ)V
    .locals 7
    .param p1, "subId"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 4376
    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/telephony/TelephonyManager;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    .line 4377
    .local v2, "pck":Ljava/lang/String;
    :goto_0
    const-string/jumbo v4, "TelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDataEnabled "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " by "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4379
    :try_start_0
    const-string/jumbo v4, "TelephonyManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setDataEnabled: enabled="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4380
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v3

    .line 4381
    .local v3, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v3, :cond_0

    .line 4382
    invoke-interface {v3, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setDataEnabled(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4375
    .end local v3    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_1
    return-void

    .line 4376
    .end local v2    # "pck":Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "<unknown>"

    .restart local v2    # "pck":Ljava/lang/String;
    goto :goto_0

    .line 4385
    :catch_0
    move-exception v1

    .line 4386
    .local v1, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v4, "TelephonyManager"

    const-string/jumbo v5, "Error calling ITelephony#setDataEnabled"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 4383
    .end local v1    # "e":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 4384
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "TelephonyManager"

    const-string/jumbo v5, "Error calling ITelephony#setDataEnabled"

    invoke-static {v4, v5, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public setDataEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 4370
    invoke-static {}, Landroid/telephony/SubscriptionManager;->getDefaultDataSubId()I

    move-result v0

    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataEnabled(IZ)V

    .line 4369
    return-void
.end method

.method public setDataNetworkType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 4956
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 4957
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setDataNetworkTypeForPhone(II)V

    .line 4955
    return-void
.end method

.method public setDataNetworkTypeForPhone(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "type"    # I

    .prologue
    .line 4967
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4969
    const-string/jumbo v0, "gsm.network.type"

    .line 4970
    invoke-static {p2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v1

    .line 4968
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 4966
    :cond_0
    return-void
.end method

.method public setImsRegistrationState(Z)V
    .locals 2
    .param p1, "registered"    # Z

    .prologue
    .line 3707
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 3708
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 3709
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setImsRegistrationState(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3705
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 3710
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public setLine1NumberForDisplay(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2292
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 2312
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2313
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 2314
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setLine1NumberForDisplayForSubscriber(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    return v3

    .line 2315
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 2318
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 2316
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setNetworkCountryIso(Ljava/lang/String;)V
    .locals 1
    .param p1, "iso"    # Ljava/lang/String;

    .prologue
    .line 4932
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 4933
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setNetworkCountryIsoForPhone(ILjava/lang/String;)V

    .line 4931
    return-void
.end method

.method public setNetworkCountryIsoForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "iso"    # Ljava/lang/String;

    .prologue
    .line 4944
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4946
    const-string/jumbo v0, "gsm.operator.iso-country"

    .line 4945
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 4943
    :cond_0
    return-void
.end method

.method public setNetworkOperatorName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 4866
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 4867
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNameForPhone(ILjava/lang/String;)V

    .line 4865
    return-void
.end method

.method public setNetworkOperatorNameForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 4877
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4878
    const-string/jumbo v0, "gsm.operator.alpha"

    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 4876
    :cond_0
    return-void
.end method

.method public setNetworkOperatorNumeric(Ljava/lang/String;)V
    .locals 1
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    .line 4888
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 4889
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setNetworkOperatorNumericForPhone(ILjava/lang/String;)V

    .line 4887
    return-void
.end method

.method public setNetworkOperatorNumericForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "numeric"    # Ljava/lang/String;

    .prologue
    .line 4899
    const-string/jumbo v0, "gsm.operator.numeric"

    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 4898
    return-void
.end method

.method public setNetworkRoaming(Z)V
    .locals 1
    .param p1, "isRoaming"    # Z

    .prologue
    .line 4908
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 4909
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setNetworkRoamingForPhone(IZ)V

    .line 4907
    return-void
.end method

.method public setNetworkRoamingForPhone(IZ)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "isRoaming"    # Z

    .prologue
    .line 4919
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4920
    const-string/jumbo v1, "gsm.operator.isroaming"

    .line 4921
    if-eqz p2, :cond_1

    const-string/jumbo v0, "true"

    .line 4920
    :goto_0
    invoke-static {p1, v1, v0}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 4918
    :cond_0
    return-void

    .line 4921
    :cond_1
    const-string/jumbo v0, "false"

    goto :goto_0
.end method

.method public setNetworkSelectionModeAutomatic(I)V
    .locals 5
    .param p1, "subId"    # I

    .prologue
    .line 3749
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3750
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3751
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setNetworkSelectionModeAutomatic(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3747
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 3754
    :catch_0
    move-exception v1

    .line 3755
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setNetworkSelectionModeAutomatic NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 3752
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 3753
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setNetworkSelectionModeAutomatic RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "operator"    # Lcom/android/internal/telephony/OperatorInfo;

    .prologue
    .line 3797
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3798
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3799
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setNetworkSelectionModeManual(ILcom/android/internal/telephony/OperatorInfo;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3802
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3803
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setNetworkSelectionModeManual NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3805
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 3800
    :catch_1
    move-exception v0

    .line 3801
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setNetworkSelectionModeManual RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setOperatorBrandOverride(Ljava/lang/String;)Z
    .locals 5
    .param p1, "brand"    # Ljava/lang/String;

    .prologue
    .line 3920
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3921
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3922
    invoke-interface {v2, p1}, Lcom/android/internal/telephony/ITelephony;->setOperatorBrandOverride(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3925
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3926
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setOperatorBrandOverride NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3928
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 3923
    :catch_1
    move-exception v0

    .line 3924
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setOperatorBrandOverride RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPhoneType(I)V
    .locals 1
    .param p1, "type"    # I

    .prologue
    .line 4748
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 4749
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setPhoneType(II)V

    .line 4747
    return-void
.end method

.method public setPhoneType(II)V
    .locals 2
    .param p1, "phoneId"    # I
    .param p2, "type"    # I

    .prologue
    .line 4761
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->isValidPhoneId(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4763
    const-string/jumbo v0, "gsm.current.phone-type"

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    .line 4762
    invoke-static {p1, v0, v1}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 4760
    :cond_0
    return-void
.end method

.method public setPolicyDataEnableForSubscriber(IZ)V
    .locals 3
    .param p1, "subId"    # I
    .param p2, "enabled"    # Z

    .prologue
    .line 5113
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setPolicyDataEnableForSubscriber(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5111
    :goto_0
    return-void

    .line 5116
    :catch_0
    move-exception v1

    .line 5117
    .local v1, "ex":Ljava/lang/NullPointerException;
    invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V

    goto :goto_0

    .line 5114
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :catch_1
    move-exception v0

    .line 5115
    .local v0, "ex":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public setPreferredNetworkType(II)Z
    .locals 5
    .param p1, "subId"    # I
    .param p2, "networkType"    # I

    .prologue
    .line 3823
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3824
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3825
    invoke-interface {v2, p1, p2}, Lcom/android/internal/telephony/ITelephony;->setPreferredNetworkType(II)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3828
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3829
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setPreferredNetworkType NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3831
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 3826
    :catch_1
    move-exception v0

    .line 3827
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setPreferredNetworkType RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setPreferredNetworkTypeToGlobal()Z
    .locals 2

    .prologue
    .line 3844
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    .line 3845
    const/16 v1, 0xa

    .line 3844
    invoke-virtual {p0, v0, v1}, Landroid/telephony/TelephonyManager;->setPreferredNetworkType(II)Z

    move-result v0

    return v0
.end method

.method public setRadio(Z)Z
    .locals 4
    .param p1, "turnOn"    # Z

    .prologue
    .line 4281
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4282
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4283
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4284
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4285
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#setRadio"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4287
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setRadioPower(Z)Z
    .locals 4
    .param p1, "turnOn"    # Z

    .prologue
    .line 4294
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4295
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4296
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->setRadioPower(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4297
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4298
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#setRadioPower"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4300
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 3954
    .local p1, "gsmRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "gsmNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p3, "cdmaRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p4, "cdmaNonRoamingList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 3955
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 3956
    invoke-interface {v2, p1, p2, p3, p4}, Lcom/android/internal/telephony/ITelephony;->setRoamingOverride(Ljava/util/List;Ljava/util/List;Ljava/util/List;Ljava/util/List;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 3960
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v1

    .line 3961
    .local v1, "ex":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setRoamingOverride NPE"

    invoke-static {v3, v4, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 3963
    .end local v1    # "ex":Ljava/lang/NullPointerException;
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 3958
    :catch_1
    move-exception v0

    .line 3959
    .local v0, "ex":Landroid/os/RemoteException;
    const-string/jumbo v3, "TelephonyManager"

    const-string/jumbo v4, "setRoamingOverride RemoteException"

    invoke-static {v3, v4, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public setSimCountryIso(Ljava/lang/String;)V
    .locals 1
    .param p1, "iso"    # Ljava/lang/String;

    .prologue
    .line 4680
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 4681
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimCountryIsoForPhone(ILjava/lang/String;)V

    .line 4679
    return-void
.end method

.method public setSimCountryIsoForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "iso"    # Ljava/lang/String;

    .prologue
    .line 4691
    const-string/jumbo v0, "gsm.sim.operator.iso-country"

    .line 4690
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 4689
    return-void
.end method

.method public setSimOperatorName(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 4660
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 4661
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimOperatorNameForPhone(ILjava/lang/String;)V

    .line 4659
    return-void
.end method

.method public setSimOperatorNameForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 4671
    const-string/jumbo v0, "gsm.sim.operator.alpha"

    .line 4670
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 4669
    return-void
.end method

.method public setSimOperatorNumeric(Ljava/lang/String;)V
    .locals 1
    .param p1, "numeric"    # Ljava/lang/String;

    .prologue
    .line 4640
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 4641
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimOperatorNumericForPhone(ILjava/lang/String;)V

    .line 4639
    return-void
.end method

.method public setSimOperatorNumericForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "numeric"    # Ljava/lang/String;

    .prologue
    .line 4651
    const-string/jumbo v0, "gsm.sim.operator.numeric"

    .line 4650
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 4649
    return-void
.end method

.method public setSimState(Ljava/lang/String;)V
    .locals 1
    .param p1, "state"    # Ljava/lang/String;

    .prologue
    .line 4700
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultPhone()I

    move-result v0

    .line 4701
    .local v0, "phoneId":I
    invoke-virtual {p0, v0, p1}, Landroid/telephony/TelephonyManager;->setSimStateForPhone(ILjava/lang/String;)V

    .line 4699
    return-void
.end method

.method public setSimStateForPhone(ILjava/lang/String;)V
    .locals 1
    .param p1, "phoneId"    # I
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    .line 4711
    const-string/jumbo v0, "gsm.sim.state"

    .line 4710
    invoke-static {p1, v0, p2}, Landroid/telephony/TelephonyManager;->setTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)V

    .line 4709
    return-void
.end method

.method public setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "subId"    # I
    .param p2, "alphaTag"    # Ljava/lang/String;
    .param p3, "number"    # Ljava/lang/String;

    .prologue
    .line 2521
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v2

    .line 2522
    .local v2, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v2, :cond_0

    .line 2523
    invoke-interface {v2, p1, p2, p3}, Lcom/android/internal/telephony/ITelephony;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    return v3

    .line 2524
    .end local v2    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 2527
    :cond_0
    :goto_0
    const/4 v3, 0x0

    return v3

    .line 2525
    :catch_1
    move-exception v1

    .local v1, "ex":Ljava/lang/NullPointerException;
    goto :goto_0
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p1, "alphaTag"    # Ljava/lang/String;
    .param p2, "number"    # Ljava/lang/String;

    .prologue
    .line 2505
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefaultSubscription()I

    move-result v0

    invoke-virtual {p0, v0, p1, p2}, Landroid/telephony/TelephonyManager;->setVoiceMailNumber(ILjava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public silenceRinger()V
    .locals 3

    .prologue
    .line 4116
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getTelecomService()Lcom/android/internal/telecom/ITelecomService;

    move-result-object v1

    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getOpPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/android/internal/telecom/ITelecomService;->silenceRinger(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4114
    :goto_0
    return-void

    .line 4117
    :catch_0
    move-exception v0

    .line 4118
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "TelephonyManager"

    const-string/jumbo v2, "Error calling ITelecomService#silenceRinger"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public supplyPin(Ljava/lang/String;)Z
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 4191
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4192
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4193
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPin(Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4194
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4195
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#supplyPin"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4197
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public supplyPinReportResult(Ljava/lang/String;)[I
    .locals 4
    .param p1, "pin"    # Ljava/lang/String;

    .prologue
    .line 4217
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4218
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4219
    invoke-interface {v1, p1}, Lcom/android/internal/telephony/ITelephony;->supplyPinReportResult(Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 4220
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4221
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#supplyPinReportResult"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4223
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [I

    return-object v2
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 4204
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4205
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4206
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPuk(Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 4207
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4208
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#supplyPuk"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4210
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 4
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "pin"    # Ljava/lang/String;

    .prologue
    .line 4230
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4231
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4232
    invoke-interface {v1, p1, p2}, Lcom/android/internal/telephony/ITelephony;->supplyPukReportResult(Ljava/lang/String;Ljava/lang/String;)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 4233
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :catch_0
    move-exception v0

    .line 4234
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#]"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 4236
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    const/4 v2, 0x0

    new-array v2, v2, [I

    return-object v2
.end method

.method public toggleRadioOnOff()V
    .locals 4

    .prologue
    .line 4269
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4270
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4271
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->toggleRadioOnOff()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4267
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 4272
    :catch_0
    move-exception v0

    .line 4273
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#toggleRadioOnOff"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public updateServiceLocation()V
    .locals 4

    .prologue
    .line 4307
    :try_start_0
    invoke-direct {p0}, Landroid/telephony/TelephonyManager;->getITelephony()Lcom/android/internal/telephony/ITelephony;

    move-result-object v1

    .line 4308
    .local v1, "telephony":Lcom/android/internal/telephony/ITelephony;
    if-eqz v1, :cond_0

    .line 4309
    invoke-interface {v1}, Lcom/android/internal/telephony/ITelephony;->updateServiceLocation()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4305
    .end local v1    # "telephony":Lcom/android/internal/telephony/ITelephony;
    :cond_0
    :goto_0
    return-void

    .line 4310
    :catch_0
    move-exception v0

    .line 4311
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v2, "TelephonyManager"

    const-string/jumbo v3, "Error calling ITelephony#updateServiceLocation"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
