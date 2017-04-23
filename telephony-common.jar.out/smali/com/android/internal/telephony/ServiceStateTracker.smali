.class public abstract Lcom/android/internal/telephony/ServiceStateTracker;
.super Landroid/os/Handler;
.source "ServiceStateTracker.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;,
        Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;
    }
.end annotation


# static fields
.field protected static final ACTION_RADIO_OFF:Ljava/lang/String; = "android.intent.action.ACTION_RADIO_OFF"

.field protected static final DBG:Z = true

.field public static final DEFAULT_GPRS_CHECK_PERIOD_MILLIS:I = 0xea60

.field protected static final EVENT_CDMA_IMSI_READY_TO_QUERY:I = 0xce

.field protected static final EVENT_CDMA_PRL_VERSION_CHANGED:I = 0x28

.field protected static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0x27

.field protected static final EVENT_CHANGE_IMS_STATE:I = 0x2d

.field protected static final EVENT_CHECK_REPORT_GPRS:I = 0x16

.field protected static final EVENT_DATA_CONNECTION_DETACHED:I = 0x64

.field protected static final EVENT_DISABLE_EMMRRS_STATUS:I = 0x68

.field protected static final EVENT_ENABLE_EMMRRS_STATUS:I = 0x69

.field protected static final EVENT_ERI_FILE_LOADED:I = 0x24

.field protected static final EVENT_ETS_DEV_CHANGED:I = 0xcb

.field protected static final EVENT_ETS_DEV_CHANGED_LOGGER:I = 0xcd

.field protected static final EVENT_FEMTO_CELL_INFO:I = 0x6b

.field protected static final EVENT_GET_CELL_INFO_LIST:I = 0x2b

.field protected static final EVENT_GET_CELL_INFO_LIST_BY_RATE:I = 0x6c

.field protected static final EVENT_GET_LOC_DONE:I = 0xf

.field protected static final EVENT_GET_LOC_DONE_CDMA:I = 0x1f

.field protected static final EVENT_GET_NITZ_TIME:I = 0xc9

.field protected static final EVENT_GET_PREFERRED_NETWORK_TYPE:I = 0x13

.field protected static final EVENT_GET_SIGNAL_STRENGTH:I = 0x3

.field protected static final EVENT_GET_SIGNAL_STRENGTH_CDMA:I = 0x1d

.field protected static final EVENT_GET_SIGNAL_STRENGTH_ONLY:I = 0x74

.field public static final EVENT_ICC_CHANGED:I = 0x2a

.field protected static final EVENT_ICC_REFRESH:I = 0x6a

.field protected static final EVENT_IMEI_LOCK:I = 0x67

.field protected static final EVENT_IMS_CAPABILITY_CHANGED:I = 0x30

.field protected static final EVENT_IMS_DISABLED_URC:I = 0x6f

.field protected static final EVENT_IMS_REGISTRATION_INFO:I = 0x70

.field protected static final EVENT_IMS_STATE_CHANGED:I = 0x2e

.field protected static final EVENT_IMS_STATE_DONE:I = 0x2f

.field protected static final EVENT_INVALID_SIM_INFO:I = 0x65

.field protected static final EVENT_LOCATION_UPDATES_ENABLED:I = 0x12

.field protected static final EVENT_NETWORK_STATE_CHANGED:I = 0x2

.field protected static final EVENT_NETWORK_STATE_CHANGED_CDMA:I = 0x1e

.field protected static final EVENT_NETWORK_TYPE_CHANGED:I = 0xca

.field protected static final EVENT_NITZ_TIME:I = 0xb

.field protected static final EVENT_NV_LOADED:I = 0x21

.field protected static final EVENT_NV_READY:I = 0x23

.field protected static final EVENT_OTA_PROVISION_STATUS_CHANGE:I = 0x25

.field protected static final EVENT_POLL_SIGNAL_STRENGTH:I = 0xa

.field protected static final EVENT_POLL_SIGNAL_STRENGTH_CDMA:I = 0x1c

.field protected static final EVENT_POLL_STATE_CDMA_SUBSCRIPTION:I = 0x22

.field protected static final EVENT_POLL_STATE_GPRS:I = 0x5

.field protected static final EVENT_POLL_STATE_NETWORK_SELECTION_MODE:I = 0xe

.field protected static final EVENT_POLL_STATE_OPERATOR:I = 0x6

.field protected static final EVENT_POLL_STATE_OPERATOR_CDMA:I = 0x19

.field protected static final EVENT_POLL_STATE_REGISTRATION:I = 0x4

.field protected static final EVENT_POLL_STATE_REGISTRATION_CDMA:I = 0x18

.field protected static final EVENT_PS_NETWORK_STATE_CHANGED:I = 0x66

.field protected static final EVENT_PS_NETWORK_TYPE_CHANGED:I = 0x71

.field protected static final EVENT_QUERY_NITZ_TIME:I = 0xc8

.field protected static final EVENT_RADIO_AVAILABLE:I = 0xd

.field protected static final EVENT_RADIO_ON:I = 0x29

.field protected static final EVENT_RADIO_STATE_CHANGED:I = 0x1

.field protected static final EVENT_REG_SUSPENDED:I = 0x72

.field protected static final EVENT_RESET_PREFERRED_NETWORK_TYPE:I = 0x15

.field protected static final EVENT_RESTRICTED_STATE_CHANGED:I = 0x17

.field protected static final EVENT_RESUME_CAMPING:I = 0x73

.field protected static final EVENT_RUIM_READY:I = 0x1a

.field protected static final EVENT_RUIM_RECORDS_LOADED:I = 0x1b

.field protected static final EVENT_SET_IMS_DISABLE_DONE:I = 0x6e

.field protected static final EVENT_SET_IMS_ENABLED_DONE:I = 0x6d

.field protected static final EVENT_SET_MDN_DONE:I = 0xcc

.field protected static final EVENT_SET_PREFERRED_NETWORK_TYPE:I = 0x14

.field protected static final EVENT_SET_RADIO_POWER_OFF:I = 0x26

.field protected static final EVENT_SIGNAL_STRENGTH_UPDATE:I = 0xc

.field protected static final EVENT_SIM_READY:I = 0x11

.field protected static final EVENT_SIM_RECORDS_LOADED:I = 0x10

.field protected static final EVENT_UNSOL_CELL_INFO_LIST:I = 0x2c

.field protected static final GMT_COUNTRY_CODES:[Ljava/lang/String;

.field private static final LAST_CELL_INFO_LIST_MAX_AGE_MS:J = 0x7d0L

.field private static final LOG_TAG:Ljava/lang/String; = "SST"

.field public static final OTASP_NEEDED:I = 0x2

.field public static final OTASP_NOT_NEEDED:I = 0x3

.field public static final OTASP_UNINITIALIZED:I = 0x0

.field public static final OTASP_UNKNOWN:I = 0x1

.field protected static final POLL_PERIOD_MILLIS:I = 0x2710

.field protected static final PROPERTY_AUTO_RAT_SWITCH:Ljava/lang/String; = "persist.radio.autoratswitch"

.field protected static final PROP_FORCE_ROAMING:Ljava/lang/String; = "telephony.test.forceRoaming"

.field protected static final REGISTRATION_DENIED_AUTH:Ljava/lang/String; = "Authentication Failure"

.field protected static final REGISTRATION_DENIED_GEN:Ljava/lang/String; = "General"

.field protected static final TIMEZONE_PROPERTY:Ljava/lang/String; = "persist.sys.timezone"

.field protected static final VDBG:Z


# instance fields
.field protected ROAMING_OPERATOR_NUMERIC:Ljava/lang/String;

.field protected ROAMING_START_TIME:Ljava/lang/String;

.field protected mAlarmSwitch:Z

.field protected mAttachedRegistrants:Landroid/os/RegistrantList;

.field protected final mCellInfo:Landroid/telephony/CellInfo;

.field protected mCellInfoRate:I

.field protected mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mCurDataSpn:Ljava/lang/String;

.field protected mCurPlmn:Ljava/lang/String;

.field protected mCurShowPlmn:Z

.field protected mCurShowSpn:Z

.field protected mCurSpn:Ljava/lang/String;

.field protected mCurrCellCid:I

.field protected mCurrCellLac:I

.field protected mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

.field protected mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

.field protected mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

.field protected mDesiredPowerState:Z

.field protected mDetachedRegistrants:Landroid/os/RegistrantList;

.field protected mDeviceShuttingDown:Z

.field protected mDontPollSignalStrength:Z

.field protected mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mImsRegistered:Z

.field protected mImsRegistrationOnOff:Z

.field protected mIntentFilter:Landroid/content/IntentFilter;

.field protected mLastCellCid:I

.field protected mLastCellInfoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/telephony/CellInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected mLastCellInfoListTime:J

.field protected mLastCellLac:I

.field protected mLastSignalStrength:Landroid/telephony/SignalStrength;

.field protected mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

.field protected mNewSS:Landroid/telephony/ServiceState;

.field protected final mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

.field protected mOutOfServiceTime:J

.field protected mPendingPsRestrictDisabledNotify:Z

.field protected mPendingRadioPowerOffAfterDataOff:Z

.field protected mPendingRadioPowerOffAfterDataOffTag:I

.field protected mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

.field protected mPollingContext:[I

.field protected mPowerOffDelayNeed:Z

.field protected mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

.field protected mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

.field protected mRadioOffIntent:Landroid/app/PendingIntent;

.field public mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

.field protected mRoamingOperator:Ljava/lang/String;

.field protected mRoamingStartTime:J

.field public mSS:Landroid/telephony/ServiceState;

.field protected mSignalStrength:Landroid/telephony/SignalStrength;

.field protected mSignalStrengthChangedRegistrants:Landroid/os/RegistrantList;

.field protected mSmsCapable:Z

.field protected mSpnUpdatePending:Z

.field protected mSubId:I

.field protected mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

.field protected mSubscriptionManager:Landroid/telephony/SubscriptionManager;

.field protected mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

.field protected mVoiceCapable:Z

.field protected mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

.field protected mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

.field private mWantContinuousLocationUpdates:Z

.field private mWantSingleLocationUpdate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 257
    const/16 v0, 0x14

    new-array v0, v0, [Ljava/lang/String;

    .line 258
    const-string/jumbo v1, "bf"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 259
    const-string/jumbo v1, "ci"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 260
    const-string/jumbo v1, "eh"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 261
    const-string/jumbo v1, "fo"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 262
    const-string/jumbo v1, "gb"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 263
    const-string/jumbo v1, "gh"

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 264
    const-string/jumbo v1, "gm"

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 265
    const-string/jumbo v1, "gn"

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 266
    const-string/jumbo v1, "gw"

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 267
    const-string/jumbo v1, "ie"

    const/16 v2, 0x9

    aput-object v1, v0, v2

    .line 268
    const-string/jumbo v1, "lr"

    const/16 v2, 0xa

    aput-object v1, v0, v2

    .line 269
    const-string/jumbo v1, "is"

    const/16 v2, 0xb

    aput-object v1, v0, v2

    .line 270
    const-string/jumbo v1, "ma"

    const/16 v2, 0xc

    aput-object v1, v0, v2

    .line 271
    const-string/jumbo v1, "ml"

    const/16 v2, 0xd

    aput-object v1, v0, v2

    .line 272
    const-string/jumbo v1, "mr"

    const/16 v2, 0xe

    aput-object v1, v0, v2

    .line 273
    const-string/jumbo v1, "pt"

    const/16 v2, 0xf

    aput-object v1, v0, v2

    .line 274
    const-string/jumbo v1, "sl"

    const/16 v2, 0x10

    aput-object v1, v0, v2

    .line 275
    const-string/jumbo v1, "sn"

    const/16 v2, 0x11

    aput-object v1, v0, v2

    .line 276
    const-string/jumbo v1, "st"

    const/16 v2, 0x12

    aput-object v1, v0, v2

    .line 277
    const-string/jumbo v1, "tg"

    const/16 v2, 0x13

    aput-object v1, v0, v2

    .line 257
    sput-object v0, Lcom/android/internal/telephony/ServiceStateTracker;->GMT_COUNTRY_CODES:[Ljava/lang/String;

    .line 81
    return-void
.end method

.method protected constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/CommandsInterface;Landroid/telephony/CellInfo;)V
    .locals 6
    .param p1, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;
    .param p3, "cellInfo"    # Landroid/telephony/CellInfo;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, -0x1

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 411
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 89
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 90
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 91
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 99
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 100
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    .line 104
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 107
    const v0, 0x7fffffff

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfoRate:I

    .line 113
    new-instance v0, Landroid/telephony/SignalStrength;

    invoke-direct {v0}, Landroid/telephony/SignalStrength;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 116
    new-instance v0, Lcom/android/internal/telephony/RestrictedState;

    invoke-direct {v0}, Lcom/android/internal/telephony/RestrictedState;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    .line 137
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    .line 139
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    .line 140
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    .line 141
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    .line 142
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    .line 143
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    .line 144
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    .line 145
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    .line 146
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    .line 147
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    .line 148
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    .line 150
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrengthChangedRegistrants:Landroid/os/RegistrantList;

    .line 153
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    .line 154
    iput v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    .line 157
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingPsRestrictDisabledNotify:Z

    .line 289
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistrationOnOff:Z

    .line 290
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAlarmSwitch:Z

    .line 291
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mIntentFilter:Landroid/content/IntentFilter;

    .line 292
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRadioOffIntent:Landroid/app/PendingIntent;

    .line 294
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPowerOffDelayNeed:Z

    .line 295
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    .line 297
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSpnUpdatePending:Z

    .line 298
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurSpn:Ljava/lang/String;

    .line 299
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurDataSpn:Ljava/lang/String;

    .line 300
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurPlmn:Ljava/lang/String;

    .line 301
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowPlmn:Z

    .line 302
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurShowSpn:Z

    .line 303
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubId:I

    .line 305
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    .line 308
    const-string/jumbo v0, "roaming_operator_numeric"

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ROAMING_OPERATOR_NUMERIC:Ljava/lang/String;

    .line 309
    const-string/jumbo v0, "roaming_start_time"

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ROAMING_START_TIME:Ljava/lang/String;

    .line 311
    iput-wide v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingStartTime:J

    .line 312
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOperator:Ljava/lang/String;

    .line 314
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellLac:I

    .line 315
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellCid:I

    .line 316
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrCellLac:I

    .line 317
    iput v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCurrCellCid:I

    .line 318
    iput-wide v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOutOfServiceTime:J

    .line 324
    new-instance v0, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;)V

    .line 323
    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    .line 458
    iput-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    .line 412
    iput-object p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    .line 413
    iput-object p3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    .line 414
    iput-object p2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 415
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 416
    const v1, 0x1120053

    .line 415
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceCapable:Z

    .line 418
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 419
    const v1, 0x1120055

    .line 418
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSmsCapable:Z

    .line 420
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 421
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/16 v1, 0x2a

    invoke-virtual {v0, p0, v1, v3}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 422
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0xc

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->setOnSignalStrengthUpdate(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 423
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x2c

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForCellInfoList(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 425
    invoke-static {}, Lcom/android/internal/telephony/SubscriptionController;->getInstance()Lcom/android/internal/telephony/SubscriptionController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionController:Lcom/android/internal/telephony/SubscriptionController;

    .line 426
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/telephony/SubscriptionManager;->from(Landroid/content/Context;)Landroid/telephony/SubscriptionManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 427
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 428
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    .line 427
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->addOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 430
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    const-string/jumbo v1, "gsm.network.type"

    .line 431
    invoke-static {v2}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    .line 430
    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 432
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x2e

    invoke-interface {v0, p0, v1, v3}, Lcom/android/internal/telephony/CommandsInterface;->registerForImsNetworkStateChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 411
    return-void
.end method

.method public static containsCdmaApp(I)Z
    .locals 2
    .param p0, "cardType"    # I

    .prologue
    const/4 v1, 0x0

    .line 1470
    and-int/lit8 v0, p0, 0x4

    if-gtz v0, :cond_0

    .line 1471
    and-int/lit8 v0, p0, 0x8

    if-lez v0, :cond_1

    .line 1472
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 1474
    :cond_1
    return v1
.end method

.method public static containsUsimApp(I)Z
    .locals 2
    .param p0, "cardType"    # I

    .prologue
    const/4 v1, 0x0

    .line 1483
    and-int/lit8 v0, p0, 0x2

    if-lez v0, :cond_0

    .line 1484
    const/4 v0, 0x1

    return v0

    .line 1486
    :cond_0
    return v1
.end method

.method private isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 2
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;
    .param p3, "key"    # Ljava/lang/String;

    .prologue
    .line 1326
    invoke-virtual {p1, p3}, Landroid/os/BaseBundle;->getStringArray(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 1328
    .local v0, "networks":[Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, p2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1329
    const/4 v1, 0x1

    return v1

    .line 1331
    :cond_0
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method protected CollectLostServiceInfo(Ljava/lang/String;)V
    .locals 4
    .param p1, "infoString"    # Ljava/lang/String;

    .prologue
    .line 1491
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOutOfServiceTime:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1, p1}, Lcom/lenovo/datamining/avatar/phone/PhoneDataCollect;->lossSignalInfo(JLjava/lang/String;)V

    .line 1490
    return-void
.end method

.method protected final alwaysOnHomeNetwork(Landroid/os/BaseBundle;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;

    .prologue
    .line 1311
    const-string/jumbo v0, "force_home_network_bool"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected cancelPollState()V
    .locals 1

    .prologue
    .line 1013
    const/4 v0, 0x1

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    .line 1011
    return-void
.end method

.method protected checkCorrectThread()V
    .locals 2

    .prologue
    .line 1213
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v1

    if-eq v0, v1, :cond_0

    .line 1214
    new-instance v0, Ljava/lang/RuntimeException;

    .line 1215
    const-string/jumbo v1, "ServiceStateTracker must be used from within one thread"

    .line 1214
    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1212
    :cond_0
    return-void
.end method

.method protected collectRoamingState()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 1496
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getRoaming()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1497
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getStoredRoamingOperNum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOperator:Ljava/lang/String;

    .line 1498
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getStoredRoamingStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingStartTime:J

    .line 1499
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOperator:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1500
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOperator:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1501
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "avatar data collect, roaming over operators, mRoamingOperator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1502
    const-string/jumbo v1, ",mRoamingTime = "

    .line 1501
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1502
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingStartTime:J

    sub-long/2addr v2, v4

    .line 1501
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1503
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOperator:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingStartTime:J

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/lenovo/datamining/avatar/phone/PhoneDataCollect;->roamingInfo(Ljava/lang/String;J)V

    .line 1504
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOperator:Ljava/lang/String;

    .line 1505
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingStartTime:J

    .line 1506
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOperator:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->storeRoamingOperNum(Ljava/lang/String;)V

    .line 1507
    iget-wide v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingStartTime:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->storeRoamingStartTime(J)V

    .line 1495
    :cond_0
    :goto_0
    return-void

    .line 1510
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingStartTime:J

    .line 1511
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->storeRoamingOperNum(Ljava/lang/String;)V

    .line 1512
    iget-wide v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingStartTime:J

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->storeRoamingStartTime(J)V

    goto :goto_0

    .line 1515
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getStoredRoamingOperNum()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOperator:Ljava/lang/String;

    .line 1516
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getStoredRoamingStartTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingStartTime:J

    .line 1517
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOperator:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-wide v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingStartTime:J

    cmp-long v0, v0, v6

    if-lez v0, :cond_0

    .line 1518
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Avatar data collect, mRoamingOperator = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOperator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1519
    const-string/jumbo v1, ", roaming time =  "

    .line 1518
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1519
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingStartTime:J

    sub-long/2addr v2, v4

    .line 1518
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1520
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingOperator:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRoamingStartTime:J

    sub-long/2addr v2, v4

    invoke-static {v0, v2, v3}, Lcom/lenovo/datamining/avatar/phone/PhoneDataCollect;->roamingInfo(Ljava/lang/String;J)V

    .line 1521
    invoke-virtual {p0, v6, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->storeRoamingStartTime(J)V

    goto :goto_0
.end method

.method public disableLocationUpdates()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 666
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    .line 667
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-eqz v0, :cond_1

    .line 665
    :cond_0
    :goto_0
    return-void

    .line 668
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method protected disableSingleLocationUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 659
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    .line 660
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-eqz v0, :cond_1

    .line 658
    :cond_0
    :goto_0
    return-void

    .line 661
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    goto :goto_0
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSignalStrengthUpdate(Landroid/os/Handler;)V

    .line 448
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 449
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForCellInfoList(Landroid/os/Handler;)V

    .line 450
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSubscriptionManager:Landroid/telephony/SubscriptionManager;

    .line 451
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mOnSubscriptionsChangedListener:Lcom/android/internal/telephony/ServiceStateTracker$SstSubscriptionsChangedListener;

    .line 450
    invoke-virtual {v0, v1}, Landroid/telephony/SubscriptionManager;->removeOnSubscriptionsChangedListener(Landroid/telephony/SubscriptionManager$OnSubscriptionsChangedListener;)V

    .line 446
    return-void
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 1187
    const-string/jumbo v0, "ServiceStateTracker:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1188
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1189
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mNewSS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1190
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mCellInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1192
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mRestrictedState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1193
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mPollingContext="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPollingContext:[I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mDesiredPowerState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1195
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mDontPollSignalStrength="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDontPollSignalStrength:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1196
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mPendingRadioPowerOffAfterDataOff="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1197
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, " mPendingRadioPowerOffAfterDataOffTag="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1198
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 1186
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 653
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 654
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    .line 655
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    .line 652
    return-void
.end method

.method public enableSingleLocationUpdate()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 647
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantContinuousLocationUpdates:Z

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 648
    :cond_1
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mWantSingleLocationUpdate:Z

    .line 649
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setLocationUpdates(ZLandroid/os/Message;)V

    .line 646
    return-void
.end method

.method public getAllCellInfo()Ljava/util/List;
    .locals 9
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
    const/4 v8, 0x0

    .line 1081
    new-instance v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;

    invoke-direct {v2, p0, v8}, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;)V

    .line 1082
    .local v2, "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    const-string/jumbo v4, "SST.getAllCellInfo(): E"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1083
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRilVersion()I

    move-result v3

    .line 1084
    .local v3, "ver":I
    const/16 v4, 0x8

    if-lt v3, v4, :cond_2

    .line 1085
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isCallerOnDifferentThread()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1086
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    sub-long/2addr v4, v6

    .line 1087
    const-wide/16 v6, 0x7d0

    .line 1086
    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 1088
    const/16 v4, 0x2b

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1089
    .local v1, "msg":Landroid/os/Message;
    iget-object v5, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 1090
    const/4 v4, 0x0

    :try_start_0
    iput-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    .line 1091
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCellInfoList(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1093
    :try_start_1
    iget-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    const-wide/16 v6, 0x1388

    invoke-virtual {v4, v6, v7}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v5

    .line 1110
    .end local v1    # "msg":Landroid/os/Message;
    :goto_1
    iget-object v5, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 1111
    :try_start_2
    iget-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 1112
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "SST.getAllCellInfo(): X size="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1113
    const-string/jumbo v6, " list="

    .line 1112
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1113
    iget-object v6, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    .line 1112
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1114
    iget-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    monitor-exit v5

    return-object v4

    .line 1094
    .restart local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 1095
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_3
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 1089
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1099
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const-string/jumbo v4, "SST.getAllCellInfo(): return last, back to back calls"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1100
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    iput-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    goto :goto_1

    .line 1103
    :cond_1
    const-string/jumbo v4, "SST.getAllCellInfo(): return last, same thread can\'t block"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1104
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    iput-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    goto :goto_1

    .line 1107
    :cond_2
    const-string/jumbo v4, "SST.getAllCellInfo(): not implemented"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1108
    iput-object v8, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    goto :goto_1

    .line 1116
    :cond_3
    :try_start_4
    const-string/jumbo v4, "SST.getAllCellInfo(): X size=0 list=null"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    monitor-exit v5

    .line 1117
    return-object v8

    .line 1110
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4
.end method

.method protected getAllCellInfoByRate()Ljava/util/List;
    .locals 8
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
    const/4 v5, 0x0

    .line 1124
    new-instance v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;

    invoke-direct {v2, p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;-><init>(Lcom/android/internal/telephony/ServiceStateTracker;Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;)V

    .line 1125
    .local v2, "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    const-string/jumbo v4, "SST.getAllCellInfoByRate(): enter"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1127
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4}, Lcom/android/internal/telephony/CommandsInterface;->getRilVersion()I

    move-result v3

    .line 1129
    .local v3, "ver":I
    const/16 v4, 0x8

    if-lt v3, v4, :cond_2

    .line 1130
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->isCallerOnDifferentThread()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1131
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    sub-long/2addr v4, v6

    .line 1132
    const-wide/16 v6, 0x7d0

    .line 1131
    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    .line 1133
    const/16 v4, 0x6c

    invoke-virtual {p0, v4, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1134
    .local v1, "msg":Landroid/os/Message;
    iget-object v5, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 1135
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v4, v1}, Lcom/android/internal/telephony/CommandsInterface;->getCellInfoList(Landroid/os/Message;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1137
    :try_start_1
    iget-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit v5

    .line 1156
    .end local v1    # "msg":Landroid/os/Message;
    :goto_1
    iget-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    if-eqz v4, :cond_3

    .line 1157
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "SST.getAllCellInfo(): X size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1158
    const-string/jumbo v5, " list="

    .line 1157
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 1158
    iget-object v5, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    .line 1157
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1163
    :goto_2
    iget-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    return-object v4

    .line 1138
    .restart local v1    # "msg":Landroid/os/Message;
    :catch_0
    move-exception v0

    .line 1139
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    .line 1140
    const/4 v4, 0x0

    iput-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 1134
    .end local v0    # "e":Ljava/lang/InterruptedException;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1144
    .end local v1    # "msg":Landroid/os/Message;
    :cond_0
    const-string/jumbo v4, "SST.getAllCellInfo(): return last, back to back calls"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1145
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    iput-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    goto :goto_1

    .line 1148
    :cond_1
    const-string/jumbo v4, "SST.getAllCellInfo(): return last, same thread can\'t block"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1149
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    iput-object v4, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    goto :goto_1

    .line 1152
    :cond_2
    const-string/jumbo v4, "SST.getAllCellInfo(): not implemented"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1153
    iput-object v5, v2, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    goto :goto_1

    .line 1160
    :cond_3
    const-string/jumbo v4, "SST.getAllCellInfo(): X size=0 list=null"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_2
.end method

.method public getCardType(I)I
    .locals 4
    .param p1, "simId"    # I

    .prologue
    .line 1457
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v1

    .line 1458
    .local v1, "phoneNum":I
    new-array v0, v1, [I

    .line 1459
    .local v0, "cardType":[I
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccController;->getC2KWPCardType()[I

    move-result-object v0

    .line 1460
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "[getCardType]: SIM"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, v0, p1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1461
    aget v2, v0, p1

    return v2
.end method

.method public abstract getCurrentDataConnectionState()I
.end method

.method public getDesiredPowerState()Z
    .locals 1

    .prologue
    .line 455
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    return v0
.end method

.method protected getHomeOperatorNumeric()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1272
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1273
    const-string/jumbo v1, "phone"

    .line 1272
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    .line 1274
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v1

    .line 1272
    invoke-virtual {v0, v1}, Landroid/telephony/TelephonyManager;->getSimOperatorNumericForPhone(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected abstract getPhone()Lcom/android/internal/telephony/Phone;
.end method

.method protected getPhoneId()I
    .locals 1

    .prologue
    .line 1278
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    return v0
.end method

.method protected getPreferredNetworkModeSettings(I)I
    .locals 7
    .param p1, "phoneId"    # I

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 1360
    const/4 v2, -0x1

    .line 1361
    .local v2, "networkType":I
    invoke-static {p1}, Landroid/telephony/SubscriptionManager;->getSubId(I)[I

    move-result-object v3

    .line 1362
    .local v3, "subId":[I
    if-eqz v3, :cond_0

    aget v4, v3, v5

    invoke-static {v4}, Landroid/telephony/SubscriptionManager;->isValidSubscriptionId(I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1364
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    aget v5, v3, v5

    .line 1363
    invoke-static {v4, v5}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;I)I

    move-result v2

    .line 1395
    :goto_0
    return v2

    .line 1366
    :cond_0
    invoke-static {}, Lcom/mediatek/internal/telephony/cdma/CdmaFeatureOptionUtils;->isCdmaLteDcSupport()Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1368
    const-string/jumbo v4, "persist.radio.simswitch"

    .line 1367
    invoke-static {v4, v6}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1369
    .local v0, "capabilityPhoneId":I
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "capabilityPhoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, ", phoneId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1370
    invoke-static {}, Landroid/telephony/TelephonyManager;->getDefault()Landroid/telephony/TelephonyManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/telephony/TelephonyManager;->getPhoneCount()I

    move-result v4

    if-eq v4, v6, :cond_1

    .line 1371
    add-int/lit8 v4, v0, -0x1

    if-ne p1, v4, :cond_5

    .line 1373
    :cond_1
    const/4 v1, 0x0

    .line 1374
    .local v1, "iccCardExist":Z
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v4, :cond_2

    .line 1375
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v4, v5, :cond_3

    const/4 v1, 0x1

    .line 1380
    :cond_2
    :goto_1
    if-nez v1, :cond_4

    .line 1382
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    .line 1381
    invoke-static {v4}, Lcom/android/internal/telephony/PhoneFactory;->calculatePreferredNetworkType(Landroid/content/Context;)I

    move-result v2

    .line 1383
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Card absent, set network type to "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1375
    :cond_3
    const/4 v1, 0x0

    goto :goto_1

    .line 1385
    :cond_4
    const-string/jumbo v4, "Invalid subId, return invalid networkType"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 1388
    .end local v1    # "iccCardExist":Z
    :cond_5
    const-string/jumbo v4, "Invalid subId and not capability phone, return invalid networkType"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1391
    .end local v0    # "capabilityPhoneId":I
    :cond_6
    const-string/jumbo v4, "Invalid subId, return invalid networkType"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0
.end method

.method public getSignalStrength()Landroid/telephony/SignalStrength;
    .locals 2

    .prologue
    .line 1181
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v0

    .line 1182
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    .line 1181
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method protected getStoredRoamingOperNum()Ljava/lang/String;
    .locals 3

    .prologue
    .line 1534
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1535
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ROAMING_OPERATOR_NUMERIC:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method protected getStoredRoamingStartTime()J
    .locals 4

    .prologue
    .line 1546
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 1547
    .local v0, "sp":Landroid/content/SharedPreferences;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ROAMING_START_TIME:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    return-wide v2
.end method

.method public getSvlteServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 1404
    const/4 v0, 0x0

    return-object v0
.end method

.method public getSystemProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "property"    # Ljava/lang/String;
    .param p2, "defValue"    # Ljava/lang/String;

    .prologue
    .line 1074
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v0

    invoke-static {v0, p1, p2}, Landroid/telephony/TelephonyManager;->getTelephonyProperty(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 8
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 674
    iget v6, p1, Landroid/os/Message;->what:I

    sparse-switch v6, :sswitch_data_0

    .line 754
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Unhandled message with number: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->what:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 673
    :cond_0
    :goto_0
    return-void

    .line 676
    :sswitch_0
    monitor-enter p0

    .line 677
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-eqz v4, :cond_1

    .line 678
    iget v4, p1, Landroid/os/Message;->arg1:I

    iget v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    if-ne v4, v5, :cond_1

    .line 679
    const-string/jumbo v4, "EVENT_SET_RADIO_OFF, turn radio off now."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 680
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 681
    iget v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    .line 682
    const/4 v4, 0x0

    iput-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_1
    monitor-exit p0

    goto :goto_0

    .line 684
    :cond_1
    :try_start_1
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EVENT_SET_RADIO_OFF is stale arg1="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 685
    const-string/jumbo v5, "!= tag="

    .line 684
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 685
    iget v5, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    .line 684
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 676
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 691
    :sswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->onUpdateIccAvailability()V

    goto :goto_0

    .line 697
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 698
    .local v0, "ar":Landroid/os/AsyncResult;
    iget-object v3, v0, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v3, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;

    .line 699
    .local v3, "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    iget-object v5, v3, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    monitor-enter v5

    .line 700
    :try_start_2
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_2

    .line 701
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "EVENT_GET_CELL_INFO_LIST: error ret null, e="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 702
    const/4 v4, 0x0

    iput-object v4, v3, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    .line 711
    :goto_2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    iput-wide v6, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    .line 712
    iget-object v4, v3, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    iput-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 713
    iget v4, p1, Landroid/os/Message;->what:I

    const/16 v6, 0x6c

    if-ne v4, v6, :cond_3

    .line 714
    const-string/jumbo v4, "EVENT_GET_CELL_INFO_LIST_BY_RATE notify result"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 715
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    iget-object v6, v3, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    invoke-virtual {v4, v6}, Lcom/android/internal/telephony/PhoneBase;->notifyCellInfo(Ljava/util/List;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_3
    monitor-exit v5

    goto/16 :goto_0

    .line 704
    :cond_2
    :try_start_3
    iget-object v4, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v4, Ljava/util/List;

    iput-object v4, v3, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    .line 707
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "EVENT_GET_CELL_INFO_LIST: size="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v6, v3, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 708
    const-string/jumbo v6, " list="

    .line 707
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 708
    iget-object v6, v3, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->list:Ljava/util/List;

    .line 707
    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_2

    .line 699
    :catchall_1
    move-exception v4

    monitor-exit v5

    throw v4

    .line 717
    :cond_3
    :try_start_4
    iget-object v4, v3, Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;->lockObj:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->notify()V

    .line 718
    const-string/jumbo v4, "EVENT_GET_CELL_INFO_LIST notify result"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_3

    .line 725
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v3    # "result":Lcom/android/internal/telephony/ServiceStateTracker$CellInfoResult;
    :sswitch_3
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 726
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v4, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v4, :cond_4

    .line 727
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EVENT_UNSOL_CELL_INFO_LIST: error ignoring, e="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 729
    :cond_4
    iget-object v1, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/List;

    .line 731
    .local v1, "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "EVENT_UNSOL_CELL_INFO_LIST: size="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 732
    const-string/jumbo v5, " list="

    .line 731
    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 734
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoListTime:J

    .line 735
    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastCellInfoList:Ljava/util/List;

    .line 736
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4, v1}, Lcom/android/internal/telephony/PhoneBase;->notifyCellInfo(Ljava/util/List;)V

    goto/16 :goto_0

    .line 742
    .end local v0    # "ar":Landroid/os/AsyncResult;
    .end local v1    # "list":Ljava/util/List;, "Ljava/util/List<Landroid/telephony/CellInfo;>;"
    :sswitch_4
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v5, 0x2f

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(I)Landroid/os/Message;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/android/internal/telephony/CommandsInterface;->getImsRegistrationState(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 746
    :sswitch_5
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 747
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    iget-object v6, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v6, :cond_0

    .line 748
    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v2, [I

    .line 749
    .local v2, "responseArray":[I
    aget v6, v2, v5

    if-ne v6, v4, :cond_5

    :goto_4
    iput-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    goto/16 :goto_0

    :cond_5
    move v4, v5

    goto :goto_4

    .line 674
    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_0
        0x2a -> :sswitch_1
        0x2b -> :sswitch_2
        0x2c -> :sswitch_3
        0x2e -> :sswitch_4
        0x2f -> :sswitch_5
        0x6c -> :sswitch_2
    .end sparse-switch
.end method

.method protected abstract handlePollStateResult(ILandroid/os/AsyncResult;)V
.end method

.method protected abstract hangupAndPowerOff()V
.end method

.method protected inSameCountry(Ljava/lang/String;)Z
    .locals 10
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x5

    const/4 v8, 0x3

    const/4 v7, 0x0

    .line 1238
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v9, :cond_1

    .line 1240
    :cond_0
    return v7

    .line 1242
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getHomeOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    .line 1243
    .local v2, "homeNumeric":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v6, v9, :cond_3

    .line 1245
    :cond_2
    return v7

    .line 1247
    :cond_3
    const/4 v3, 0x1

    .line 1248
    .local v3, "inSameCountry":Z
    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 1249
    .local v5, "networkMCC":Ljava/lang/String;
    invoke-virtual {v2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 1250
    .local v1, "homeMCC":Ljava/lang/String;
    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v4

    .line 1251
    .local v4, "networkCountry":Ljava/lang/String;
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v6

    invoke-static {v6}, Lcom/android/internal/telephony/MccTable;->countryCodeForMcc(I)Ljava/lang/String;

    move-result-object v0

    .line 1252
    .local v0, "homeCountry":Ljava/lang/String;
    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_4

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1254
    :cond_4
    return v7

    .line 1256
    :cond_5
    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 1257
    .local v3, "inSameCountry":Z
    if-eqz v3, :cond_6

    .line 1258
    return v3

    .line 1261
    :cond_6
    const-string/jumbo v6, "us"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    const-string/jumbo v6, "vi"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1262
    const/4 v3, 0x1

    .line 1266
    .end local v3    # "inSameCountry":Z
    :cond_7
    :goto_0
    return v3

    .line 1263
    .restart local v3    # "inSameCountry":Z
    :cond_8
    const-string/jumbo v6, "vi"

    invoke-virtual {v6, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    const-string/jumbo v6, "us"

    invoke-virtual {v6, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 1264
    const/4 v3, 0x1

    .local v3, "inSameCountry":Z
    goto :goto_0
.end method

.method protected isCallerOnDifferentThread()Z
    .locals 3

    .prologue
    .line 1220
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Looper;->getThread()Ljava/lang/Thread;

    move-result-object v2

    if-eq v1, v2, :cond_0

    const/4 v0, 0x1

    .line 1222
    .local v0, "value":Z
    :goto_0
    return v0

    .line 1220
    .end local v0    # "value":Z
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "value":Z
    goto :goto_0
.end method

.method public abstract isConcurrentVoiceAndDataAllowed()Z
.end method

.method public isHPlmn(Ljava/lang/String;)Z
    .locals 1
    .param p1, "plmn"    # Ljava/lang/String;

    .prologue
    .line 1448
    const/4 v0, 0x0

    return v0
.end method

.method public isImsRegistered()Z
    .locals 1

    .prologue
    .line 1202
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mImsRegistered:Z

    return v0
.end method

.method protected final isNonRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;

    .prologue
    .line 1347
    const-string/jumbo v0, "cdma_nonroaming_networks_string_array"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final isNonRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;

    .prologue
    .line 1339
    const-string/jumbo v0, "gsm_nonroaming_networks_string_array"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isPsRegStateRoamByUnsol()Z
    .locals 1

    .prologue
    .line 776
    const/4 v0, 0x0

    return v0
.end method

.method protected final isRoamingInCdmaNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;

    .prologue
    .line 1343
    const-string/jumbo v0, "cdma_roaming_networks_string_array"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected final isRoamingInGsmNetwork(Landroid/os/BaseBundle;Ljava/lang/String;)Z
    .locals 1
    .param p1, "b"    # Landroid/os/BaseBundle;
    .param p2, "network"    # Ljava/lang/String;

    .prologue
    .line 1335
    const-string/jumbo v0, "gsm_roaming_networks_string_array"

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->isInNetwork(Landroid/os/BaseBundle;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method protected abstract log(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected notifyDataRegStateRilRadioTechnologyChanged()V
    .locals 6

    .prologue
    .line 486
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    .line 487
    .local v1, "rat":I
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v0

    .line 488
    .local v0, "drs":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "notifyDataRegStateRilRadioTechnologyChanged: drs="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " rat="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 489
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    const-string/jumbo v3, "gsm.network.type"

    .line 490
    invoke-static {v1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v4

    .line 489
    invoke-virtual {v2, v3, v4}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 491
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    new-instance v3, Landroid/util/Pair;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 485
    return-void
.end method

.method protected notifySignalStrength()Z
    .locals 5

    .prologue
    .line 460
    const/4 v1, 0x0

    .line 461
    .local v1, "notified":Z
    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfo:Landroid/telephony/CellInfo;

    monitor-enter v3

    .line 462
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2, v4}, Landroid/telephony/SignalStrength;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-nez v2, :cond_0

    .line 465
    :try_start_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "notifySignalStrength: mSignalStrength.getLevel="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 466
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v4}, Landroid/telephony/SignalStrength;->getLevel()I

    move-result v4

    .line 465
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 468
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->notifySignalStrength()V

    .line 469
    new-instance v2, Landroid/telephony/SignalStrength;

    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-direct {v2, v4}, Landroid/telephony/SignalStrength;-><init>(Landroid/telephony/SignalStrength;)V

    iput-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;
    :try_end_1
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 470
    const/4 v1, 0x1

    :cond_0
    :goto_0
    monitor-exit v3

    .line 477
    return v1

    .line 471
    :catch_0
    move-exception v0

    .line 472
    .local v0, "ex":Ljava/lang/NullPointerException;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "updateSignalStrength() Phone already destroyed: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 473
    const-string/jumbo v4, "SignalStrength not notified"

    .line 472
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/ServiceStateTracker;->loge(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 461
    .end local v0    # "ex":Ljava/lang/NullPointerException;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public onImsCapabilityChanged()V
    .locals 0

    .prologue
    .line 772
    return-void
.end method

.method protected onSignalStrengthResult(Landroid/os/AsyncResult;Z)Z
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "isGsm"    # Z

    .prologue
    .line 982
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 984
    .local v0, "oldSignalStrength":Landroid/telephony/SignalStrength;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_0

    .line 985
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSignalStrengthResult():  LastSignalStrength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 986
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v2

    .line 985
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 992
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 993
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/SignalStrength;

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 994
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->validateInput()V

    .line 995
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, p2}, Landroid/telephony/SignalStrength;->setGsm(Z)V

    .line 996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSignalStrengthResult():new mSignalStrength="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1002
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifySignalStrength()Z

    move-result v1

    return v1

    .line 998
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onSignalStrengthResult() Exception from RIL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 999
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1, p2}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    goto :goto_0
.end method

.method protected abstract onUpdateIccAvailability()V
.end method

.method public abstract pollState()V
.end method

.method public powerOffRadioSafely(Lcom/android/internal/telephony/dataconnection/DcTrackerBase;)V
    .locals 6
    .param p1, "dcTracker"    # Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .prologue
    .line 913
    monitor-enter p0

    .line 914
    :try_start_0
    iget-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-nez v4, :cond_2

    .line 919
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 920
    const v5, 0x1070040

    .line 919
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v3

    .line 921
    .local v3, "networkNotClearData":[Ljava/lang/String;
    iget-object v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v4}, Landroid/telephony/ServiceState;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v0

    .line 922
    .local v0, "currentNetwork":Ljava/lang/String;
    if-eqz v3, :cond_1

    if-eqz v0, :cond_1

    .line 923
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_1

    .line 924
    aget-object v4, v3, v1

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 927
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Not disconnecting data for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 928
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    .line 929
    return-void

    .line 923
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 935
    .end local v1    # "i":I
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isDisconnected()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 937
    const-string/jumbo v4, "radioTurnedOff"

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 938
    const-string/jumbo v4, "Data disconnected, turn off radio right away."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 939
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v0    # "currentNetwork":Ljava/lang/String;
    .end local v3    # "networkNotClearData":[Ljava/lang/String;
    :cond_2
    :goto_1
    monitor-exit p0

    .line 912
    return-void

    .line 941
    .restart local v0    # "currentNetwork":Ljava/lang/String;
    .restart local v3    # "networkNotClearData":[Ljava/lang/String;
    :cond_3
    :try_start_2
    const-string/jumbo v4, "radioTurnedOff"

    invoke-virtual {p1, v4}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->cleanUpAllConnections(Ljava/lang/String;)V

    .line 942
    invoke-static {p0}, Landroid/os/Message;->obtain(Landroid/os/Handler;)Landroid/os/Message;

    move-result-object v2

    .line 943
    .local v2, "msg":Landroid/os/Message;
    const/16 v4, 0x26

    iput v4, v2, Landroid/os/Message;->what:I

    .line 944
    iget v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    iput v4, v2, Landroid/os/Message;->arg1:I

    .line 945
    const-wide/16 v4, 0x1388

    invoke-virtual {p0, v2, v4, v5}, Lcom/android/internal/telephony/ServiceStateTracker;->sendMessageDelayed(Landroid/os/Message;J)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 946
    const-string/jumbo v4, "Wait upto 5s for data to disconnect, then turn off radio."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 947
    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    .line 913
    .end local v0    # "currentNetwork":Ljava/lang/String;
    .end local v2    # "msg":Landroid/os/Message;
    .end local v3    # "networkNotClearData":[Ljava/lang/String;
    :catchall_0
    move-exception v4

    monitor-exit p0

    throw v4

    .line 949
    .restart local v0    # "currentNetwork":Ljava/lang/String;
    .restart local v2    # "msg":Landroid/os/Message;
    .restart local v3    # "networkNotClearData":[Ljava/lang/String;
    :cond_4
    :try_start_3
    const-string/jumbo v4, "Cannot send delayed Msg, turn off radio right away."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 950
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1
.end method

.method public processPendingRadioPowerOffAfterDataOff()Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 963
    monitor-enter p0

    .line 964
    :try_start_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z

    if-eqz v0, :cond_0

    .line 965
    const-string/jumbo v0, "Process pending request to turn radio off."

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 966
    iget v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOffTag:I

    .line 967
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->hangupAndPowerOff()V

    .line 968
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPendingRadioPowerOffAfterDataOff:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 969
    const/4 v0, 0x1

    monitor-exit p0

    return v0

    :cond_0
    monitor-exit p0

    .line 971
    return v1

    .line 963
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public reRegisterNetwork(Landroid/os/Message;)V
    .locals 2
    .param p1, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 622
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 623
    const/16 v1, 0x13

    invoke-virtual {p0, v1, p1}, Lcom/android/internal/telephony/ServiceStateTracker;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 622
    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getPreferredNetworkType(Landroid/os/Message;)V

    .line 621
    return-void
.end method

.method public refreshSpnDisplay()V
    .locals 0

    .prologue
    .line 774
    return-void
.end method

.method public registerForDataConnectionAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 785
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 786
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 788
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-nez v1, :cond_0

    .line 789
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 784
    :cond_0
    return-void
.end method

.method public registerForDataConnectionDetached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 803
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 804
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 806
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 807
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 802
    :cond_0
    return-void
.end method

.method public registerForDataRegStateOrRatChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 824
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 825
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 826
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->notifyDataRegStateRilRadioTechnologyChanged()V

    .line 823
    return-void
.end method

.method public registerForDataRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 600
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 601
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 603
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 604
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 599
    :cond_0
    return-void
.end method

.method public registerForDataRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 579
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 580
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 582
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 583
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 578
    :cond_0
    return-void
.end method

.method public registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 839
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 841
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 842
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-nez v1, :cond_0

    .line 843
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 838
    :cond_0
    return-void
.end method

.method public registerForPsRestrictedDisabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 876
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 877
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 879
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 880
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 875
    :cond_0
    return-void
.end method

.method public registerForPsRestrictedEnabled(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 857
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 858
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 860
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mRestrictedState:Lcom/android/internal/telephony/RestrictedState;

    invoke-virtual {v1}, Lcom/android/internal/telephony/RestrictedState;->isPsRestricted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 861
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 856
    :cond_0
    return-void
.end method

.method public registerForSignalStrengthChanged(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 895
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 896
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrengthChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 894
    return-void
.end method

.method public registerForVoiceRoamingOff(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 558
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 559
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 561
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v1

    if-nez v1, :cond_0

    .line 562
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 557
    :cond_0
    return-void
.end method

.method public registerForVoiceRoamingOn(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 537
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 538
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 540
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRoaming()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 541
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 536
    :cond_0
    return-void
.end method

.method requestShutdown()V
    .locals 4

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 436
    iget-boolean v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    if-eqz v1, :cond_0

    return-void

    .line 437
    :cond_0
    iput-boolean v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDeviceShuttingDown:Z

    .line 438
    iput-boolean v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 442
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->getPhone()Lcom/android/internal/telephony/Phone;

    move-result-object v1

    invoke-interface {v1}, Lcom/android/internal/telephony/Phone;->getPhoneId()I

    move-result v0

    .line 443
    .local v0, "phoneId":I
    invoke-static {}, Lcom/mediatek/internal/telephony/RadioManager;->getInstance()Lcom/mediatek/internal/telephony/RadioManager;

    move-result-object v1

    shl-int/2addr v2, v0

    invoke-virtual {v1, v3, v2}, Lcom/mediatek/internal/telephony/RadioManager;->setModemPower(ZI)V

    .line 435
    return-void
.end method

.method protected resetServiceStateInIwlanMode()V
    .locals 4

    .prologue
    const/16 v3, 0x12

    .line 1285
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v1}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_OFF:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    if-ne v1, v2, :cond_1

    .line 1286
    const/4 v0, 0x0

    .line 1287
    .local v0, "resetIwlanRatVal":Z
    const-string/jumbo v1, "set service state as POWER_OFF"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1289
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getRilDataRadioTechnology()I

    move-result v1

    .line 1288
    if-ne v3, v1, :cond_0

    .line 1290
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pollStateDone: mNewSS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1291
    const-string/jumbo v1, "pollStateDone: reset iwlan RAT value"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1292
    const/4 v0, 0x1

    .line 1294
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->setStateOff()V

    .line 1295
    if-eqz v0, :cond_1

    .line 1296
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v3}, Landroid/telephony/ServiceState;->setRilDataRadioTechnology(I)V

    .line 1297
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/telephony/ServiceState;->setDataRegState(I)V

    .line 1298
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "pollStateDone: mNewSS = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1284
    .end local v0    # "resetIwlanRatVal":Z
    :cond_1
    return-void
.end method

.method public setCellInfoRate(I)V
    .locals 1
    .param p1, "rateInMillis"    # I

    .prologue
    .line 1167
    const-string/jumbo v0, "SST.setCellInfoRate()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1168
    iput p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mCellInfoRate:I

    .line 1169
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->updateCellInfoRate()V

    .line 1166
    return-void
.end method

.method protected abstract setDeviceRatMode(I)V
.end method

.method public abstract setImsRegistrationState(Z)V
.end method

.method protected abstract setPowerStateToDesired()V
.end method

.method public setRadioPower(Z)V
    .locals 0
    .param p1, "power"    # Z

    .prologue
    .line 628
    iput-boolean p1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDesiredPowerState:Z

    .line 630
    invoke-virtual {p0}, Lcom/android/internal/telephony/ServiceStateTracker;->setPowerStateToDesired()V

    .line 627
    return-void
.end method

.method protected abstract setRoamingType(Landroid/telephony/ServiceState;)V
.end method

.method protected setSignalStrength(Landroid/os/AsyncResult;Z)V
    .locals 3
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .param p2, "isGsm"    # Z

    .prologue
    .line 1414
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1416
    .local v0, "oldSignalStrength":Landroid/telephony/SignalStrength;
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    if-eqz v1, :cond_0

    .line 1417
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Before combine Signal Strength, setSignalStrength(): isGsm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1418
    const-string/jumbo v2, " LastSignalStrength = "

    .line 1417
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1419
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mLastSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1417
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1425
    :cond_0
    iget-object v1, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v1, :cond_1

    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1426
    iget-object v1, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Landroid/telephony/SignalStrength;

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    .line 1427
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1}, Landroid/telephony/SignalStrength;->validateInput()V

    .line 1428
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v1, p2}, Landroid/telephony/SignalStrength;->setGsm(Z)V

    .line 1430
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Before combine Signal Strength, setSignalStrength(): isGsm = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1431
    const-string/jumbo v2, "new mSignalStrength = "

    .line 1430
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1432
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    invoke-virtual {v2}, Landroid/telephony/SignalStrength;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1430
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1413
    :goto_0
    return-void

    .line 1435
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Before combine Signal Strength, setSignalStrength() Exception from RIL : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1436
    iget-object v2, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1435
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1437
    new-instance v1, Landroid/telephony/SignalStrength;

    invoke-direct {v1, p2}, Landroid/telephony/SignalStrength;-><init>(Z)V

    iput-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrength:Landroid/telephony/SignalStrength;

    goto :goto_0
.end method

.method public setSvlteServiceStateTracker(Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;)V
    .locals 0
    .param p1, "lteSST"    # Lcom/mediatek/internal/telephony/ltedc/svlte/SvlteServiceStateTracker;

    .prologue
    .line 1356
    return-void
.end method

.method protected shouldFixTimeZoneNow(Lcom/android/internal/telephony/PhoneBase;Ljava/lang/String;Ljava/lang/String;Z)Z
    .locals 10
    .param p1, "phoneBase"    # Lcom/android/internal/telephony/PhoneBase;
    .param p2, "operatorNumeric"    # Ljava/lang/String;
    .param p3, "prevOperatorNumeric"    # Ljava/lang/String;
    .param p4, "needToFixTimeZone"    # Z

    .prologue
    const/4 v9, 0x0

    .line 1035
    const/4 v7, 0x0

    const/4 v8, 0x3

    :try_start_0
    invoke-virtual {p2, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 1048
    .local v4, "mcc":I
    const/4 v7, 0x0

    const/4 v8, 0x3

    :try_start_1
    invoke-virtual {p3, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v5

    .line 1054
    .local v5, "prevMcc":I
    :goto_0
    const/4 v3, 0x0

    .line 1055
    .local v3, "iccCardExist":Z
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v7, :cond_0

    .line 1056
    iget-object v7, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mUiccApplcation:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-eq v7, v8, :cond_1

    const/4 v3, 0x1

    .line 1060
    :cond_0
    :goto_1
    if-eqz v3, :cond_2

    if-eq v4, v5, :cond_2

    const/4 v6, 0x1

    .line 1062
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 1063
    .local v0, "ctm":J
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "shouldFixTimeZoneNow: retVal="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1064
    const-string/jumbo v8, " iccCardExist="

    .line 1063
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1065
    const-string/jumbo v8, " operatorNumeric="

    .line 1063
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1065
    const-string/jumbo v8, " mcc="

    .line 1063
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1066
    const-string/jumbo v8, " prevOperatorNumeric="

    .line 1063
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1066
    const-string/jumbo v8, " prevMcc="

    .line 1063
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1067
    const-string/jumbo v8, " needToFixTimeZone="

    .line 1063
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1068
    const-string/jumbo v8, " ltod="

    .line 1063
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1068
    invoke-static {v0, v1}, Landroid/util/TimeUtils;->logTimeOfDay(J)Ljava/lang/String;

    move-result-object v8

    .line 1063
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1070
    return v6

    .line 1036
    .end local v0    # "ctm":J
    .end local v3    # "iccCardExist":Z
    .end local v4    # "mcc":I
    .end local v5    # "prevMcc":I
    :catch_0
    move-exception v2

    .line 1038
    .local v2, "e":Ljava/lang/Exception;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "shouldFixTimeZoneNow: no mcc, operatorNumeric="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1039
    const-string/jumbo v8, " retVal=false"

    .line 1038
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1041
    return v9

    .line 1049
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v4    # "mcc":I
    :catch_1
    move-exception v2

    .line 1050
    .restart local v2    # "e":Ljava/lang/Exception;
    add-int/lit8 v5, v4, 0x1

    .restart local v5    # "prevMcc":I
    goto/16 :goto_0

    .line 1056
    .end local v2    # "e":Ljava/lang/Exception;
    .restart local v3    # "iccCardExist":Z
    :cond_1
    const/4 v3, 0x0

    goto/16 :goto_1

    .line 1060
    :cond_2
    move v6, p4

    .local v6, "retVal":Z
    goto/16 :goto_2
.end method

.method protected storeRoamingOperNum(Ljava/lang/String;)V
    .locals 4
    .param p1, "operatorNumeric"    # Ljava/lang/String;

    .prologue
    .line 1527
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1528
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1529
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ROAMING_OPERATOR_NUMERIC:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1530
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1526
    return-void
.end method

.method protected storeRoamingStartTime(J)V
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 1539
    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1540
    .local v1, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1541
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->ROAMING_START_TIME:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v3}, Lcom/android/internal/telephony/PhoneBase;->getPhoneId()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1542
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1538
    return-void
.end method

.method public unregisterForDataConnectionAttached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 793
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 792
    return-void
.end method

.method public unregisterForDataConnectionDetached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 811
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDetachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 810
    return-void
.end method

.method public unregisterForDataRegStateOrRatChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 829
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRegStateOrRatChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 828
    return-void
.end method

.method public unregisterForDataRoamingOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 609
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 608
    return-void
.end method

.method public unregisterForDataRoamingOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 588
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mDataRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 587
    return-void
.end method

.method public unregisterForNetworkAttached(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNetworkAttachedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 846
    return-void
.end method

.method public unregisterForPsRestrictedDisabled(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 885
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictDisabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 884
    return-void
.end method

.method public unregisterForPsRestrictedEnabled(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 866
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPsRestrictEnabledRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 865
    return-void
.end method

.method public unregisterForSignalStrengthChanged(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 904
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSignalStrengthChangedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 903
    return-void
.end method

.method public unregisterForVoiceRoamingOff(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 567
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOffRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 566
    return-void
.end method

.method public unregisterForVoiceRoamingOn(Landroid/os/Handler;)V
    .locals 1
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mVoiceRoamingOnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 545
    return-void
.end method

.method protected updateCarrierMccMncConfiguration(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p1, "newOp"    # Ljava/lang/String;
    .param p2, "oldOp"    # Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 1227
    if-nez p1, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1229
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "update mccmnc="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, " fromServiceState=true"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1230
    const/4 v0, 0x1

    invoke-static {p3, p1, v0}, Lcom/android/internal/telephony/MccTable;->updateMccMncConfiguration(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 1225
    :cond_0
    return-void

    .line 1228
    :cond_1
    if-eqz p1, :cond_0

    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0
.end method

.method protected updateCellInfoRate()V
    .locals 1

    .prologue
    .line 1173
    const-string/jumbo v0, "SST.updateCellInfoRate()"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 1172
    return-void
.end method

.method protected updatePhoneObject()V
    .locals 3

    .prologue
    .line 515
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 516
    const v2, 0x1120091

    .line 515
    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 518
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    if-eqz v1, :cond_0

    .line 519
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    const/4 v0, 0x1

    .line 520
    .local v0, "isRegistered":Z
    :goto_0
    if-nez v0, :cond_2

    .line 521
    const-string/jumbo v1, "SST"

    const-string/jumbo v2, "updatePhoneObject: Ignore update"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    return-void

    .line 518
    .end local v0    # "isRegistered":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "isRegistered":Z
    goto :goto_0

    .line 519
    .end local v0    # "isRegistered":Z
    :cond_1
    const/4 v0, 0x0

    .restart local v0    # "isRegistered":Z
    goto :goto_0

    .line 524
    :cond_2
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mPhoneBase:Lcom/android/internal/telephony/PhoneBase;

    iget-object v2, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    invoke-virtual {v2}, Landroid/telephony/ServiceState;->getRilVoiceRadioTechnology()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/PhoneBase;->updatePhoneObject(I)V

    .line 514
    .end local v0    # "isRegistered":Z
    :cond_3
    return-void
.end method

.method protected abstract updateSpnDisplay()V
.end method

.method protected useDataRegStateForDataOnlyDevices()V
    .locals 2

    .prologue
    .line 501
    iget-boolean v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mSmsCapable:Z

    if-nez v0, :cond_0

    .line 503
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "useDataRegStateForDataOnlyDevice: VoiceRegState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getVoiceRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 504
    const-string/jumbo v1, " DataRegState="

    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 504
    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    .line 503
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/ServiceStateTracker;->log(Ljava/lang/String;)V

    .line 507
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    iget-object v1, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    invoke-virtual {v1}, Landroid/telephony/ServiceState;->getDataRegState()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setVoiceRegState(I)V

    .line 510
    iget-object v0, p0, Lcom/android/internal/telephony/ServiceStateTracker;->mNewSS:Landroid/telephony/ServiceState;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/telephony/ServiceState;->setRegState(I)V

    .line 498
    :cond_0
    return-void
.end method
